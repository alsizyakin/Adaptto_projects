"""Component invariants in full F06 logs after the user's Iq limiter fixes."""
from argparse import ArgumentParser
from pathlib import Path
import hashlib
import json
import numpy as np
from scipy.io import loadmat
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import starter2900_analysis as core
from f02_figures import read

EXTRA = ('Iq_request', 'IqLim', 'Iq_curLim', 'Iq_voltLim_used', 'Psi_est_raw', 'Lq_est_raw',
         'w_el_sat', 'psi_speed_den', 'lq_speed_den', 'lq_current_den',
         'PI_d_upper', 'PI_d_lower', 'PI_q_upper', 'PI_q_lower', 'PI_d_raw', 'PI_q_raw',
         'PI_d_limited', 'PI_q_limited', 'integrator_d', 'integrator_q', 'Uq_limit',
         'fw_inputs', 'fw_psi_cmd', 'Psi_candidate')


def inspect(root, reference, spec, out, tool_sha):
    tag = spec['id']; ref = spec['referenceCase']
    ns = json.loads((root/tag/'summary.json').read_text())[tag]
    bs = json.loads((reference/ref/'summary.json').read_text())[ref]
    assert ns['parameters'] == bs['parameters']
    assert ns['controlStructure']['inputs']['Kpsi']['value']==bs['controlStructure']['inputs']['Kpsi']['value']==2.5
    assert ns['controlStructure']['dLimitGain']==spec['expectedDLimitGain']
    for key in ('speedTime', 'speedValues', 'iqTime', 'iqFraction', 'stopTime', 'VDC', 'Is_max'):
        assert spec[key] == bs['releaseScenario'][key]
    a = core.assess(root/tag, spec, out, tool_sha)
    t, d = read(root/tag, tag, ns, False, EXTRA)
    tb, b = read(reference/ref, ref, bs, False, ('Iq_request', 'IqLim'))
    np.testing.assert_array_equal(t, tb)
    np.testing.assert_allclose(d['Iq_request'], b['Iq_request'], atol=1e-9, rtol=0)
    p = ns['parameters']
    # Ulim is logged after VectorBase/Gain1: it is the d-axis ceiling.
    # The Uq circle still uses the unscaled DC voltage. For Gain1=0.98,
    # comparing the full stationary vector with Ulim would understate
    # available voltage. Preserve the older dSaturation metric's explicit
    # near-zero-Uq definition, and record ordinary d saturation separately.
    d_gain = ns['controlStructure']['dLimitGain']
    assert 0 < d_gain <= 1
    full_voltage_limit = d['Ulim']/d_gain
    np.testing.assert_allclose(full_voltage_limit, p['VDC']*p['mMaxCurrent']/np.sqrt(3), atol=1e-8, rtol=0)
    idr, iqr = d['Iref_dq'].T
    rs, ld, lq, psi = (p[n]*(1+p['delta'+n]) for n in ('Rs', 'Ld', 'Lq', 'Psi'))
    we = d['speed']*p['PolePairs']
    stationary_voltage = np.hypot(rs*idr-we*lq*iqr, rs*iqr+we*(psi+ld*idr))
    changes = np.r_[True, (abs(np.diff(d['Iq_request'])) > 1e-6) | (abs(np.diff(d['speed'])) > 1e-6)]
    last_change = np.maximum.accumulate(np.where(changes, t, 0.))
    settled = (t-last_change >= .05) & (t >= .05)
    a['stationaryVoltageExcessWhenSettled'] = core.event_summary(t, settled & (stationary_voltage > full_voltage_limit+1e-6))
    a['voltageLimitMeaning'] = {'loggedUlim': 'd-axis ceiling, includes VectorBase/Gain1',
                               'fullVectorLimitFormula': 'Ulim/dLimitGain = VDC*mMaxCurrent/sqrt(3)',
                               'dLimitGain': d_gain,
                               'fullVectorLimitV': float(full_voltage_limit[0])}
    a['dAxisSaturationRegardlessOfQ'] = {'definition': 'abs(Ud)>=Ulim-1e-6 V; no condition on Uq',
                                        **core.event_summary(t, abs(d['Ud']) >= d['Ulim']-1e-6)}
    limits = {}
    for axis in ('d', 'q'):
        lower, upper = (d['PI_'+axis+'_'+k] for k in ('lower', 'upper'))
        actual = d['PI_'+axis+'_limited']
        residual = float(abs(actual-np.clip(d['PI_'+axis+'_raw'], lower, upper)).max())
        excess = float(np.maximum(actual-upper, lower-actual).max())
        assert np.all(lower <= upper) and excess < 1e-8 and residual < 1e-8
        limits[axis] = {'orderedLimits': True, 'maxOutputExcess': max(0., excess),
                        'maxClampResidual': residual, 'maxIntegratorAbsolute': float(abs(d['integrator_'+axis]).max())}
    budget_error = float(abs(d['IqLim']-np.minimum(d['Iq_curLim'], d['Iq_voltLim_used'])).max())
    q_excess = float(np.maximum(abs(d['Iref_dq'][:, 1])-d['IqLim'], 0).max())
    assert d['IqLim'].min() >= 0 and budget_error < 1e-8 and q_excess < 1e-8
    # Native time stamps distinguish configured sample expressions from
    # actual execution times; no rate is inferred from SystemSampleTime alone.
    raw = loadmat(root/tag/('aug_'+tag+'.mat'), simplify_cells=True,
                  variable_names=['w_el_sat', 'psi_speed_den', 'lq_speed_den', 'lq_current_den'])
    rates = {k: float(np.median(np.diff(v['t']))) for k, v in raw.items() if not k.startswith('__')}
    stale_sign=(d['lq_current_den']*d['Iq']<0)&(abs(d['Iq'])>.1)&(abs(d['speed']*p['PolePairs'])>40)
    stale_points=[]
    if stale_sign.any():
        k=int(np.argmax(np.where(stale_sign,abs(d['Iq']),-1)))
        stale_points.append({'time':float(t[k]),'Iq':float(d['Iq'][k]),
                             'IqDenominator':float(d['lq_current_den'][k]),
                             'LqRaw':float(d['Lq_est_raw'][k]),'speed':float(d['speed'][k])})
    a['componentChecks'] = {'currentPI': limits, 'minimumIqBudget': float(d['IqLim'].min()),
                            'hardMinimumResidualA': budget_error, 'symmetricIqLimitExcessA': q_excess,
                            'nativeDenominatorPeriods': rates,
                            'staleIqDenominatorSign':{'durationSeconds':float(stale_sign.sum()*p['FocDiscrTime']),
                                                     'samples':int(stale_sign.sum()),'examples':stale_points}}
    mismatch = d['Psi_candidate']-d['fw_psi_cmd']
    expected_ff=spec['expectedFFConnectionsConsistent']
    a['ffConnectionCheck'] = {'maxFinalSumMinusInternalCommandWb': float(abs(mismatch).max()),
                              'maxFinalSumMinusInternalCommandA': float(abs(mismatch).max()/p['Ld']),
                              'residualAfterAddingUsedFFWb': float(abs(mismatch+d['fw_inputs'][:, 0]).max()),
                              'consistent': bool(abs(mismatch).max()<1e-9),
                              'interpretation': 'Later autosave: FF restored at both inputs AND d-limit gain reduced to 0.98. Not an isolated Iq-limiter comparison.' if expected_ff else
                              'Earlier autosave omits FF at Sum6 while passing FF to fw_trim. This is not an isolated Iq-limiter comparison.'}
    assert a['ffConnectionCheck']['consistent']==expected_ff
    if not expected_ff:assert a['ffConnectionCheck']['residualAfterAddingUsedFFWb']<1e-9
    a['comparison'] = {'referenceCase': ref, 'referenceMatSha256': bs['matSha256'],
                       'oldMaxCurrent': bs['maxMeasuredCurrent'], 'oldMaxReference': bs['maxReferenceCurrent'],
                       'oldQProlonged': bs['tracking_q']['prolongedCount'],
                       'oldDLimitGain': bs['controlStructure']['dLimitGain'],
                       'newDLimitGain': ns['controlStructure']['dLimitGain'],
                       'maximumSpeedDifference': float(abs(d['speed']-b['speed']).max())}
    snapshots = []
    if spec['profile'] == 'cycles':
        times = [7.6, 7.9, 8.3, 8.49, 8.9, 9., 9.21, 9.5]
    else:
        times = [a['peakTime'], 16., 16.02, 16.1]
    for time in times:
        k = int(np.argmin(abs(t-time)))
        snapshots.append({'time': float(t[k]), 'Idref': float(d['Iref_dq'][k, 0]),
                          'Iqref': float(d['Iref_dq'][k, 1]),
                          **{n: float(d[n][k]) for n in ('speed', 'Id', 'Iq', 'Ud', 'Uq', 'Psi_used', 'Lq_used',
                             'Psi_est_raw', 'Lq_est_raw', 'integrator_d', 'integrator_q', 'PI_d_raw', 'PI_q_raw')}})
    a['componentSnapshots'] = snapshots
    (out/(tag+'.json')).write_text(json.dumps(a, ensure_ascii=False, indent=2, allow_nan=False)+'\n')
    fig, ax = plt.subplots(5, 1, figsize=(12, 12), sharex=True, layout='constrained')
    ax[0].plot(t, d['speed']*30/np.pi, label='Скорость')
    label_new='Правки Iq; FF согласован; предел d × 0,98' if expected_ff else 'Autosave: FF не входит в Sum6'
    for x, color, label in ((b, 'tab:blue', 'Сохранённая F06'), (d, 'tab:orange', label_new)):
        ax[1].plot(t, x['imeas'], color=color, label=label, lw=.8)
        ax[2].plot(t, x['Iq'], color=color, label=label+' · Iq', lw=.8)
        ax[2].plot(t, x['Iref_dq'][:, 1], '--', color=color, label=label+' · Iqref', lw=.8)
    ax[1].axhline(441, color='k', ls=':', label='Порог 441 А')
    ax[3].plot(t, d['Ud'], label='Ud'); ax[3].plot(t, d['Uq_limit'], label='Доступный модуль Uq')
    for name in ('Psi', 'Lq'):
        true = p[name]*(1+p['delta'+name])
        ax[4].plot(t, 100*d[name+'_used']/true, label=name+' used / true')
    ax[4].axhline(100, color='k', ls=':')
    for aa, yl in zip(ax, ('об/мин', '|I|, А', 'Ток q, А', 'Напряжение, В', 'Оценка / истина, %')):
        aa.set(ylabel=yl, xlim=(0, spec['stopTime'])); aa.grid(alpha=.25); aa.legend(fontsize=8, ncol=2)
    ax[-1].set_xlabel('Время, с'); fig.suptitle('F06: аудит конфигурации autosave · '+tag)
    fig.savefig(out/(tag+'_comparison.png'), dpi=130); plt.close(fig)
    if spec['profile'] == 'hold':
        w=(t>=10.95)&(t<=11.8);tt=t[w]
        fig, ax=plt.subplots(4,1,figsize=(12,10),sharex=True,layout='constrained')
        ax[0].plot(tt,d['fw_psi_cmd'][w]/p['Ld'],label='Внутренняя команда fw_trim / Ld')
        ax[0].plot(tt,d['Psi_candidate'][w]/p['Ld'],label='Фактический выход Sum6 / Ld')
        ax[0].plot(tt,d['fw_inputs'][w,0]/p['Ld'],label='FF на входе fw_trim / Ld')
        ax[1].plot(tt,d['Id'][w],label='Id');ax[1].plot(tt,d['Iref_dq'][w,0],'--',label='Idref')
        ax[2].plot(tt,d['Iq'][w],label='Iq');ax[2].plot(tt,d['Iref_dq'][w,1],'--',label='Iqref')
        ax[3].plot(tt,d['Ud'][w],label='Ud');ax[3].plot(tt,d['Uq_limit'][w],label='Доступный модуль Uq')
        for aa,yl in zip(ax,('Эквивалент Id, А','Ток d, А','Ток q, А','Напряжение, В')):
            aa.set(ylabel=yl,xlim=(tt[0],tt[-1]));aa.grid(alpha=.25);aa.legend(fontsize=8)
        ax[-1].set_xlabel('Время, с');fig.suptitle(('Согласованное подключение FF' if expected_ff else 'Несогласованное подключение FF')+' · '+tag)
        fig.savefig(out/(tag+'_ff_connection.png'),dpi=130);plt.close(fig)
    if spec['profile'] == 'cycles':
        w = (t >= 7.5) & (t <= 9.65); tt = t[w]
        fig, ax = plt.subplots(5, 1, figsize=(12, 12), sharex=True, layout='constrained')
        ax[0].plot(tt, d['speed'][w], label='ωm')
        ax[1].plot(tt, d['Iq'][w], label='Iq'); ax[1].plot(tt, d['Iref_dq'][w, 1], '--', label='Iqref')
        ax[2].plot(tt, d['Psi_est_raw'][w], label='Ψ до ограничения', lw=.6)
        ax[2].plot(tt, d['Psi_used'][w], label='Ψ используемая')
        ax[2].axhline(p['Psi']*(1+p['deltaPsi']), color='k', ls=':', label='Истинная Ψ')
        ax[2].axhline(.6*p['Psi'], color='.5', ls=':', label='Нижний предел')
        # Raw Lq can diverge near zero Iq; show the actual clipped input of
        # its LPF alongside the selected estimate to keep this view legible.
        ax[3].plot(tt, 1e6*np.clip(d['Lq_est_raw'][w], .1*p['Lq'], 1.4*p['Lq']), label='Lq после ограничения', lw=.7)
        ax[3].plot(tt, 1e6*d['Lq_used'][w], label='Lq используемая')
        ax[3].axhline(1e6*p['Lq']*(1+p['deltaLq']), color='k', ls=':', label='Истинная Lq')
        ax[4].plot(tt, d['Ud'][w], label='Ud'); ax[4].plot(tt, d['Uq_limit'][w], label='Доступный модуль Uq')
        for aa, yl in zip(ax, ('ωm, рад/с', 'Ток q, А', 'Ψ, Вб', 'Lq, мкГн', 'Напряжение, В')):
            aa.set(ylabel=yl, xlim=(tt[0], tt[-1])); aa.grid(alpha=.25); aa.legend(fontsize=8, ncol=2)
        ax[-1].set_xlabel('Время, с'); fig.suptitle('Оценки на остановке и повторном разгоне · '+tag)
        fig.savefig(out/(tag+'_estimators_restart.png'), dpi=130); plt.close(fig)
        if expected_ff and stale_points:
            center=stale_points[0]['time']; w=(t>=center-.0025)&(t<=center+.0025);tt=(t[w]-center)*1000
            fig,ax=plt.subplots(3,1,figsize=(12,9),sharex=True,layout='constrained')
            ax[0].plot(tt,d['Iq'][w],label='Текущий Iq')
            ax[0].step(tt,d['lq_current_den'][w],where='post',label='Iq в знаменателе оценки')
            ax[1].plot(tt,d['Lq_est_raw'][w]*1e6,label='Сырая оценка Lq')
            ax[1].plot(tt,np.clip(d['Lq_est_raw'][w],.1*p['Lq'],1.4*p['Lq'])*1e6,label='После ограничителя')
            ax[2].plot(tt,d['Lq_used'][w]*1e6,label='Lq после фильтра, используется в управлении')
            ax[2].axhline(p['Lq']*(1+p['deltaLq'])*1e6,color='k',ls=':',label='Истинная Lq')
            for aa,yl in zip(ax,('Ток, А','Lq, мкГн','Lq, мкГн')):
                aa.set(ylabel=yl,xlim=(tt[0],tt[-1]));aa.axvline(0,color='.6',ls=':');aa.grid(alpha=.25);aa.legend(fontsize=8)
            ax[-1].set_xlabel(f'Время относительно t = {center:.6f} с, мс')
            fig.suptitle('Разные моменты выборки числителя и знаменателя Lq · '+tag)
            fig.savefig(out/(tag+'_denominator_timing.png'),dpi=130);plt.close(fig)
    print('AUDIT', tag, 'Imax', a['maxMeasuredCurrent'], 'q bound residual', q_excess, 'rates', rates, flush=True)
    return a


def main():
    ap = ArgumentParser(description=__doc__)
    ap.add_argument('runs', type=Path); ap.add_argument('reference', type=Path); ap.add_argument('output', type=Path)
    ap.add_argument('--available', action='store_true'); args = ap.parse_args(); args.output.mkdir(exist_ok=True, parents=True)
    dependencies = [Path(__file__), Path(core.__file__), Path(__file__).with_name('f02_figures.py'), Path(__file__).with_name('baseline_comparison.py')]
    sha = hashlib.sha256(b''.join(p.read_bytes() for p in dependencies)).hexdigest()
    results = []; pending = []
    for spec in json.loads((args.runs/'cases.json').read_text()):
        path = args.runs/spec['id']/'summary.json'
        if not path.exists(): pending.append(spec['id']); continue
        ns = json.loads(path.read_text()).get(spec['id'], {})
        if 'releaseScenario' not in ns: pending.append(spec['id']); continue
        cached = args.output/(spec['id']+'.json')
        if cached.exists():
            old = json.loads(cached.read_text())
            if old.get('toolSha256') == sha and old.get('matSha256') == ns['matSha256'] and 'componentChecks' in old:
                results.append(old); continue
        results.append(inspect(args.runs, args.reference, spec, args.output, sha))
    assert args.available or not pending, pending
    (args.output/'summary.json').write_text(json.dumps({'cases': results, 'pending': pending, 'toolSha256': sha}, ensure_ascii=False, indent=2)+'\n')


if __name__ == '__main__':
    main()
