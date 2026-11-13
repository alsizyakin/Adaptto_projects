"""Analyze the saved F06 with corrected execution period; no model edits."""
from argparse import ArgumentParser
import json
from pathlib import Path
import sys
sys.dont_write_bytecode = True
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np
from f02_figures import read, compact, episodes

EXTRA = ('torque', 'Iq_request', 'IqLim', 'Uq_limit', 'Ud_raw', 'Uq_raw',
         'PI_d_raw', 'PI_q_raw', 'integrator_d', 'integrator_q',
         'integrator_fw', 'fw_e_norm', 'fw_psi_cmd', 'Uq_decoupling')


def load_case(folder, tag):
    summary = json.loads((folder / 'summary.json').read_text())[tag]
    t, d = read(folder, tag, summary, True, EXTRA)
    p = summary['parameters']
    we = d['speed'] * p['PolePairs']
    rs, ld, lq, psi = (p[n] * (1 + p['delta' + n]) for n in ('Rs', 'Ld', 'Lq', 'Psi'))
    idr, iqr = d['Iref_dq'].T
    d['Idref'], d['Iqref'] = idr, iqr
    d['lambda_true'] = psi + ld * d['Id']
    d['lambda_est'] = p['Psi'] + p['Ld'] * d['Id']
    d['Pmech'] = d['torque'] * d['speed'] / 1000
    calculated = 1.5 * p['PolePairs'] * (psi + (ld-lq)*d['Id']) * d['Iq']
    torque_residual = float(np.max(abs(calculated-d['torque'])))
    # Physical sensor and logged dq are not an exact algebraic identity.
    # Check sign/scaling to 0.1% of peak torque and report the actual residual.
    relative_residual = torque_residual/max(float(np.max(abs(calculated))), 1.)
    assert relative_residual < 1e-3, relative_residual
    d['Pcommand'] = 1.5 * p['PolePairs'] * (psi + (ld-lq)*idr) * iqr * d['speed'] / 1000
    d['Uss_ref'] = np.hypot(rs*idr-we*lq*iqr, rs*iqr+we*(psi+ld*idr))
    d['de'] = abs(d['Id']-idr)
    d['ffA'] = d['Psi_d_ff'] / p['Ld']
    d['trimA'] = d['Psi_trim'] / p['Ld']
    # Offline directional diagnostic only, not a simulation of a new law.
    d['Ud_target_qref'] = p['Rs']*d['Id']-we*d['Lq_used']*iqr
    direction = np.where(we >= 0, 1., -1.)
    d['Uq_target_positive_branch'] = direction*np.sqrt(np.maximum(
        d['Vs_max']**2-d['Ud_target_qref']**2, 0))
    d['candidate_q_error'] = direction*(d['Uq_target_positive_branch']-d['Uq'])/np.maximum(d['Vs_max'], 1.)
    result = {**compact(summary, t, d), 'parameters': p,
              'actualFwSampleTime': summary['controlStructure']['actualSampleTime'],
              'fwVerification': summary['fwVerification'],
              'torqueFormulaMaxResidualNm': torque_residual,
              'torqueFormulaRelativeToPeakResidual': relative_residual,
              'currentPeakTime': float(t[np.argmax(d['imeas'])]),
              'maxDCurrentError': float(d['de'].max()),
              'maxQCurrentError': float(d['qerror'].max()),
              'speedProfile': summary['speedProfile'],
              'sourceSummary': str(folder/'summary.json')}
    iqbad = episodes(t, (abs(iqr+42) < 1e-6) & (d['Iq'] > 0))
    result['positiveIqDuringNegativeCommand'] = [e for e in iqbad if e['duration'] > .02]
    result['samples'] = []
    fields = ('speed', 'Idref', 'Id', 'Iq_request', 'Iqref', 'Iq', 'Ud_raw', 'Ud',
              'Uq_raw', 'Uq', 'Uq_limit', 'Vabs_f', 'Vs_max', 'Uss_ref', 'Pmech',
              'Pcommand', 'ffA', 'trimA', 'integrator_fw', 'fw_e_norm',
              'integrator_d', 'integrator_q', 'lambda_true', 'lambda_est',
              'Ud_target_qref', 'Uq_target_positive_branch', 'candidate_q_error')
    for time in (.8, 1.4, 1.8, 2.8, 4.5, 4.57, 4.58, 4.59, 4.6, 4.8, 5.2,
                 6.4, 6.8, 7.4, 8.4, 12.4, 16.4, 19.4, 24.4, result['currentPeakTime']):
        k = int(np.argmin(abs(t-time)))
        result['samples'].append({'time': float(t[k]), **{n: float(d[n][k]) for n in fields}})
    result['windows'] = []
    for start, end in ((.05, 3), (4.6, 4.7), (6.3, 6.5), (6.8, 6.98), (7.2, 9), (14.2, 19.4), (24, 25)):
        w = (t >= start) & (t < end)
        result['windows'].append({'start': start, 'endExclusive': end,
            **{n: {'min': float(d[n][w].min()), 'max': float(d[n][w].max()),
                   'mean': float(d[n][w].mean()), 'peakToPeak': float(np.ptp(d[n][w]))}
               for n in ('Id', 'Idref', 'Iq', 'Iqref', 'Pmech', 'Pcommand', 'Uss_ref', 'de', 'qerror')}})
    return t, d, summary, result


def decorate(axes):
    for ax in np.ravel(axes):
        ax.grid(alpha=.25)
        ax.set_xlabel('Время, с')
        if ax.lines:
            ax.legend(fontsize=8, loc='best')


def overview(cases, title, limits, output):
    fig, axes = plt.subplots(5, 2, figsize=(14, 13), layout='constrained')
    for col, (case, label) in enumerate(zip(cases, ('Номинальные параметры', 'Ld машины +20%'))):
        t, d, _, _ = case
        w = (t >= limits[0]) & (t <= limits[1]); tt = t[w]
        axes[0, col].plot(tt, d['speed'][w], label='ωm', lw=.8)
        for row, axis in ((1, 'd'), (2, 'q')):
            axes[row, col].plot(tt, d['I'+axis][w], label='I'+axis, lw=.8)
            axes[row, col].plot(tt, d['I'+axis+'ref'][w], '--', label='I'+axis+'ref', lw=.8)
        for name in ('Ud', 'Uq'):
            axes[3, col].plot(tt, d[name][w], label=name, lw=.8)
        axes[4, col].plot(tt, d['Pmech'][w], label='T·ωm, факт', lw=.8)
        axes[4, col].plot(tt, d['Pcommand'][w], '--', label='По заданной паре токов', lw=.8)
        for row, ylabel in enumerate(('Скорость, рад/с', 'Ток d, А', 'Ток q, А', 'Напряжение, В', 'Мощность, кВт')):
            axes[row, col].set(xlim=limits, ylabel=ylabel)
        axes[0, col].set_title(label)
    decorate(axes); fig.suptitle(title, fontsize=14)
    fig.savefig(output, dpi=150, bbox_inches='tight'); plt.close(fig)


def latch(case, output):
    t, d, s, _ = case
    fig, axes = plt.subplots(5, 2, figsize=(14, 13), layout='constrained')
    for col, limits in enumerate(((4.48, 4.72), (6., 7.))):
        w = (t >= limits[0]) & (t <= limits[1]); tt = t[w]
        for row, axis in ((0, 'd'), (1, 'q')):
            axes[row, col].plot(tt, d['I'+axis][w], label='I'+axis, lw=.9)
            axes[row, col].plot(tt, d['I'+axis+'ref'][w], '--', label='I'+axis+'ref', lw=.9)
        p = s['parameters']; zero = -p['Psi']/(p['Ld']*(1+p['deltaLd']))
        axes[0, col].axhline(zero, color='0.4', ls=':', label='Ψ + Ld·Id = 0')
        for name in ('Ud', 'Uq', 'Uq_limit'):
            axes[2, col].plot(tt, d[name][w], label=name, lw=.8)
        for name, label in (('Vabs_f', '|U| после фильтра'), ('Vs_max', 'Цель ОП'), ('Uss_ref', 'U заданной пары, стац.')):
            axes[3, col].plot(tt, d[name][w], label=label, lw=.8)
        for name, label in (('ffA', 'FF / Ld'), ('trimA', 'trim / Ld'), ('Idref', 'Idref')):
            axes[4, col].plot(tt, d[name][w], label=label, lw=.8)
        for row, ylabel in enumerate(('Ток d, А', 'Ток q, А', 'Напряжение, В', 'Модуль, В', 'Эквивалент тока, А')):
            axes[row, col].set(xlim=limits, ylabel=ylabel)
        axes[0, col].set_title('Вход в длительное насыщение' if col == 0 else 'Пульсации команды при 738 рад/с')
    decorate(axes); fig.suptitle('F06-T · Ld +20% · подстройка углубляет невыполняемое задание Id', fontsize=13)
    fig.savefig(output, dpi=150); plt.close(fig)


def feasibility(case, output):
    t, d, s, _ = case; p = s['parameters']
    ld = p['Ld']*(1+p['deltaLd']); lq = p['Lq']; rs = p['Rs']; psi = p['Psi']
    fig, axes = plt.subplots(1, 2, figsize=(14, 6), layout='constrained')
    w = (t >= 6.) & (t <= 7.); tt = t[w]
    axes[0].plot(tt, d['Pmech'][w], label='Факт: T·ωm', lw=1)
    axes[0].plot(tt, d['Pcommand'][w], '--', label='По заданной паре токов', lw=1)
    axes[0].set(xlim=(6, 7), ylabel='Мощность, кВт', title='Момент не следует команде')
    decorate(axes[:1])
    a = axes[1]; idv, iqv = np.meshgrid(np.linspace(-450, 50, 600), np.linspace(-440, 440, 600))
    we = 738*p['PolePairs']; u = np.hypot(rs*idv-we*lq*iqv, rs*iqv+we*(psi+ld*idv))
    k = int(np.argmin(abs(t-6.4))); ulim = d['Ulim'][k]; ufw = d['Vs_max'][k]
    a.contourf(idv, iqv, u, levels=[0, ulim], colors=['#e8f2ff'])
    cs = a.contour(idv, iqv, u, levels=[ufw, ulim], colors=['C0', 'C3'], linestyles=['--', '-'])
    a.clabel(cs, fmt={ufw: 'U_FW', ulim: 'Ulim'}, fontsize=9)
    phi = np.linspace(0, 2*np.pi, 500)
    a.plot(p['Is_max']*np.cos(phi), p['Is_max']*np.sin(phi), color='0.5', ls=':', label='Токовый круг 420 А')
    for time, marker, color in ((6.4, 'o', 'C1'), (6.8, 's', 'C2')):
        k = int(np.argmin(abs(t-time)))
        a.plot(d['Idref'][k], d['Iqref'][k], marker=marker, color=color, ms=8, ls='', label=f'Задание в {time:g} с')
        a.plot(d['Id'][k], d['Iq'][k], marker=marker, color=color, ms=8, fillstyle='none', ls='', label=f'Факт в {time:g} с')
    a.set(xlim=(-450, 40), ylim=(-440, 440), xlabel='Id, А', ylabel='Iq, А', title='738 рад/с: допустимое стационарное напряжение')
    a.grid(alpha=.25); a.legend(fontsize=8, loc='lower right')
    fig.suptitle('F06-T · Ld +20% · постоянная мощность и недостижимые задания', fontsize=14)
    fig.savefig(output, dpi=150); plt.close(fig)


def main():
    parser = ArgumentParser(description=__doc__)
    parser.add_argument('runs', type=Path); parser.add_argument('output', type=Path)
    args = parser.parse_args(); args.output.mkdir(parents=True, exist_ok=True)
    cases = {}
    for name, tag in (('saved_nom', 'f06t_nom'), ('saved_ldp20', 'f06t_ldp20'),
                      ('hold204_nom', 'f06t_hold_nom'), ('hold204_ldp20', 'f06t_hold_ldp20')):
        cases[name] = load_case(args.runs/name, tag)
        r = cases[name][3]
        print(name, 'Imax=', r['maxMeasuredCurrent'], 'qError=', r['maxQCurrentError'],
              'dSaturationLongest=', r['dSaturation']['longestDuration'], flush=True)
    for a, b in (('saved_nom', 'saved_ldp20'), ('hold204_nom', 'hold204_ldp20')):
        for name in ('time', 'speed'):
            np.testing.assert_array_equal(cases[a][2]['speedProfile'][name], cases[b][2]['speedProfile'][name])
        np.testing.assert_array_equal(cases[a][0], cases[b][0])
    result = {'stage': 'F06-T: saved user timing correction, four full 25 s cases',
              'cases': {k: v[3] for k, v in cases.items()},
              'candidateQErrorNote': 'Offline directional diagnostic on unchanged trajectories; not a closed-loop test.'}
    (args.output/'analysis.json').write_text(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False)+'\n')
    overview([cases['saved_nom'], cases['saved_ldp20']], 'F06-T · профиль до 738 рад/с · полный прогон 25 с', (0, 25), args.output/'sweep_overview.png')
    overview([cases['hold204_nom'], cases['hold204_ldp20']], 'F06-T · 408 → 204 рад/с · первые 3 с полного прогона 25 с', (0, 3), args.output/'hold_overview.png')
    latch(cases['saved_ldp20'], args.output/'latch_zoom.png')
    feasibility(cases['saved_ldp20'], args.output/'feasibility_power.png')


if __name__ == '__main__':
    main()
