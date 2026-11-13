"""Full-resolution screening of frozen F06 for a 2900 rpm starter-generator."""
from argparse import ArgumentParser
import hashlib
import json
from pathlib import Path
import sys
sys.dont_write_bytecode = True
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np
from f02_figures import read, compact, episodes

EXTRA = ('Iq_request', 'torque', 'Uq_limit', 'Ud_raw', 'Uq_raw',
         'integrator_fw', 'fw_e_norm', 'Iq_voltLim_used', 'Iq_curLim')


def event_summary(t, mask, duration=.02):
    ev = episodes(t, mask)
    return {'totalDuration': sum(e['duration'] for e in ev),
            'longestDuration': max((e['duration'] for e in ev), default=0.),
            'prolongedOrOpen': [e for e in ev if e['duration'] > duration or e['open']]}


def assess(folder, spec, output, tool_sha):
    tag = spec['id']; s = json.loads((folder/'summary.json').read_text())[tag]
    t, d = read(folder, tag, s, False, EXTRA)
    p = s['parameters']; ts = p['FocDiscrTime']
    assert abs(s['controlStructure']['actualSampleTime']-ts) < 1e-12
    limit = spec['speedLimitRadPerSec']
    assert abs(limit - 2900*np.pi/30) < 1e-10
    assert max(abs(d['speed'])) <= limit+1e-4
    for name in ('Psi', 'Lq'):
        np.testing.assert_allclose(d[name+'_used'], d[name+'_est'], atol=1e-12, rtol=0)
    idr, iqr = d['Iref_dq'].T
    d['de'] = abs(d['Id']-idr)
    # Determine settled input windows from EXTERNAL requests, not from a
    # possibly moving internal current limiter. Ramps are never called settled.
    changes = np.r_[True, (abs(np.diff(d['Iq_request'])) > 1e-6) |
                           (abs(np.diff(d['speed'])) > 1e-6)]
    last_change = np.maximum.accumulate(np.where(changes, t, 0.))
    settled = (t-last_change >= .05) & (t >= .05)
    nonzero = settled & (abs(iqr) >= 10)
    zero = settled & (abs(d['Iq_request']) < 1e-6)
    rs, ld, lq, psi = (p[n]*(1+p['delta'+n]) for n in ('Rs','Ld','Lq','Psi'))
    we = d['speed']*p['PolePairs']
    d['Uss_ref'] = np.hypot(rs*idr-we*lq*iqr, rs*iqr+we*(psi+ld*idr))
    d['Pmech'] = d['torque']*d['speed']/1000
    d['Pcommand'] = 1.5*p['PolePairs']*(psi+(ld-lq)*idr)*iqr*d['speed']/1000
    calculated_torque = 1.5*p['PolePairs']*(psi+(ld-lq)*d['Id'])*d['Iq']
    torque_residual = float(max(abs(calculated_torque-d['torque'])))
    torque_relative = torque_residual/max(float(max(abs(calculated_torque))), 1.)
    assert torque_relative < 1e-3, (tag, torque_relative)
    at_limit = abs(d['speed']-limit) < .05
    a = {**compact(s,t,d), 'id': tag, 'scenario': spec,
         'toolSha256': tool_sha, 'actualFwPeriod': s['controlStructure']['actualSampleTime'],
         'fwVerification': s['fwVerification'],
         'peakTime': float(t[np.argmax(d['imeas'])]),
         'torqueFormulaMaxResidualNm': torque_residual,
         'torqueFormulaRelativeToPeakResidual': torque_relative,
         'maxCurrentAt2900rpm': float(d['imeas'][at_limit].max()) if at_limit.any() else None,
         'maxSpeed': float(d['speed'].max()),
         'speedLimitRadPerSec': limit,
         'maxRpm': float(d['speed'].max()*30/np.pi),
         'maxQErrorAfter50ms': float(d['qerror'][t>=.05].max()),
         'maxDErrorAfter50ms': float(d['de'][t>=.05].max()),
         'settledInputDuration': float(settled.sum()*ts),
         'settledMaxQError': float(d['qerror'][settled].max()) if settled.any() else None,
         'settledMaxDError': float(d['de'][settled].max()) if settled.any() else None,
         'zeroRequestMaxIq': float(abs(d['Iq'][zero]).max()) if zero.any() else None,
         'wrongIqSignWhenSettled': event_summary(t,nonzero & (d['Iq']*iqr < 0)),
         'stationaryVoltageExcessWhenSettled': event_summary(t,settled & (d['Uss_ref'] > d['Ulim']+1e-6)),
         'currentExcess': event_summary(t,d['imeas'] > 1.05*p['Is_max']),
         'selectedEstimatesMatchEstimatorOutputs': True,
         'parameterRangesAfter50ms': {}, 'settledSpeedBands': [], 'samples': []}
    for name in ('Psi','Lq'):
        v=d[name+'_used'][t>=.05]
        a['parameterRangesAfter50ms'][name]={'min':float(v.min()),'max':float(v.max()),
            'tailMean':float(d[name+'_used'][t>=24].mean()),'truePlantValue':p[name]*(1+p['delta'+name])}
    for speed in (0,50,60,100,120,180,200,204,300,limit):
        w=settled & (abs(d['speed']-speed)<.05)
        if w.any():
            a['settledSpeedBands'].append({'speed':speed,'duration':float(w.sum()*ts),
                'maxCurrent':float(d['imeas'][w].max()),'maxQError':float(d['qerror'][w].max()),
                'maxDError':float(d['de'][w].max())})
    a['regressionPass'] = bool(a['referenceWithinLimit'] and a['measuredWithinLimit'] and
        a['dutyWithinLimit'] and a['tracking_d']['prolongedCount']==0 and a['tracking_q']['prolongedCount']==0)
    # Additional engineering screen, not a user-approved release specification.
    a['qualityToleranceA']=max(5.,.02*p['Is_max'])
    a['settledQualityPass'] = bool(settled.any() and a['settledMaxQError']<=a['qualityToleranceA']
                                 and a['settledMaxDError']<=a['qualityToleranceA'])
    chosen=[a['peakTime'], float(t[np.argmax(d['iref'])])]
    if at_limit.any(): chosen.append(float(t[np.argmax(np.where(at_limit,d['imeas'],-1))]))
    qev=a['tracking_q']['prolongedOrOpenEvents']
    chosen += [e['start']+.03 for e in qev[:3]]
    if settled.any(): chosen.append(float(t[np.argmax(np.where(settled,d['qerror'],-1))]))
    for time in chosen:
        k=int(np.argmin(abs(t-time)))
        a['samples'].append({'time':float(t[k]),'Idref':float(idr[k]),'Iqref':float(iqr[k]),
            **{n:float(d[n][k]) for n in ('speed','Id','Iq','Iq_request','Ud','Uq','Uq_limit',
                 'Ud_raw','Uq_raw','Uss_ref','Pmech','Pcommand','Psi_used','Lq_used')}})
    (output/(tag+'.json')).write_text(json.dumps(a,ensure_ascii=False,indent=2,allow_nan=False)+'\n')
    fig,axes=plt.subplots(6,1,figsize=(13,14),sharex=True,layout='constrained')
    axes[0].plot(t,d['speed'],label='ωm',lw=.8)
    axes[1].plot(t,d['Id'],label='Id',lw=.8);axes[1].plot(t,idr,'--',label='Idref',lw=.8)
    axes[2].plot(t,d['Iq_request'],color='0.75',label='Исходный запрос q',lw=.7)
    axes[2].plot(t,d['Iq'],label='Iq',lw=.8);axes[2].plot(t,iqr,'--',label='Iqref после ограничений',lw=.8)
    axes[3].plot(t,d['imeas'],label='Модуль фактического тока',lw=.8)
    axes[3].plot(t,d['iref'],'--',label='Модуль задания',lw=.8)
    axes[3].axhline(1.05*p['Is_max'],color='k',ls=':',label='Порог 1,05 Imax')
    for name in ('Ud','Uq','Uq_limit'): axes[4].plot(t,d[name],label=name,lw=.8)
    axes[5].plot(t,d['Pmech'],label='T·ωm, факт',lw=.8)
    axes[5].plot(t,d['Pcommand'],'--',label='По заданной паре токов',lw=.8)
    for ax,ylabel in zip(axes,('ωm, рад/с','Ток d, А','Ток q, А','Модуль тока, А','Напряжение, В','Мощность, кВт')):
        ax.set(xlim=(0,spec['stopTime']),ylabel=ylabel);ax.grid(alpha=.25);ax.legend(fontsize=8,loc='best')
    axes[-1].set_xlabel('Время, с')
    fig.suptitle(f"F06 до 2900 об/мин · {tag}\nδLd={p['deltaLd']:+.0%}, δLq={p['deltaLq']:+.0%}, δΨ={p['deltaPsi']:+.0%}; оценки Ψ/Lq включены",fontsize=12)
    fig.savefig(output/(tag+'.png'),dpi=130,bbox_inches='tight');plt.close(fig)
    peak = a['peakTime']
    end = max([peak+.55] + [e['end']+.1 for e in a['dSaturation']['episodesOver20msOrOpen']
                           if e['start'] <= peak+.005 and e['end'] >= peak])
    focus(t,d,p,tag,'peak',max(0.,peak-.08),min(spec['stopTime'],end),output)
    print(tag,'Imax',round(a['maxMeasuredCurrent'],3),'settled q/d',a['settledMaxQError'],a['settledMaxDError'],
          'regression',a['regressionPass'],'quality',a['settledQualityPass'],flush=True)
    return a


def focus(t,d,p,tag,name,start,end,output):
    window=(t>=start)&(t<=end); x=t[window]
    idr,iqr=d['Iref_dq'][window].T
    fig,axes=plt.subplots(6,1,figsize=(12,12),sharex=True,layout='constrained')
    axes[0].plot(x,d['Id'][window],label='Id'); axes[0].plot(x,idr,'--',label='Idref')
    axes[1].plot(x,d['Iq_request'][window],color='.65',label='Исходный запрос q')
    axes[1].plot(x,d['Iq'][window],label='Iq'); axes[1].plot(x,iqr,'--',label='Iqref')
    axes[2].plot(x,d['imeas'][window],label='Фактический модуль')
    axes[2].plot(x,d['iref'][window],'--',label='Модуль задания')
    axes[2].axhline(1.05*p['Is_max'],color='k',ls=':',label='Порог 441 А')
    for key in ('Ud','Uq','Uq_limit','Uq_raw'):
        axes[3].plot(x,d[key][window],label=key,lw=.9,ls='--' if key=='Uq_raw' else '-')
    for key in ('Psi','Lq'):
        true=p[key]*(1+p['delta'+key])
        axes[4].plot(x,100*d[key+'_used'][window]/true,label=key+' used / true')
    axes[4].axhline(100,color='k',ls=':')
    axes[5].plot(x,d['Pmech'][window],label='T·ωm, факт')
    axes[5].plot(x,d['Pcommand'][window],'--',label='По заданной паре токов')
    saturation=(abs(d['Ud'])>=d['Ulim']-1e-6)&(abs(d['Uq'])<.1)
    for ax,ylabel in zip(axes,('Ток d, А','Ток q, А','Модуль тока, А','Напряжение, В','Оценка / истина, %','Мощность, кВт')):
        for event in episodes(x,saturation[window]):
            ax.axvspan(event['start'],event['end'],color='tab:red',alpha=.08)
        ax.set(xlim=(start,end),ylabel=ylabel); ax.grid(alpha=.25);ax.legend(fontsize=8,loc='best')
    axes[-1].set_xlabel('Время, с')
    w=d['speed'][window]
    fig.suptitle(f"F06 · {tag} · {name}\nωm = {w.min():.1f}…{w.max():.1f} рад/с; max |I| = {d['imeas'][window].max():.2f} А\nКрасная область: |Ud| на пределе, |Uq| < 0,1 В",fontsize=11)
    fig.savefig(output/(tag+'_'+name+'.png'),dpi=130,bbox_inches='tight');plt.close(fig)


def main():
    ap=ArgumentParser(description=__doc__);ap.add_argument('runs',type=Path);ap.add_argument('output',type=Path)
    ap.add_argument('--available',action='store_true');args=ap.parse_args();args.output.mkdir(parents=True,exist_ok=True)
    specs=json.loads((args.runs/'cases.json').read_text());sha=hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    results=[];pending=[]
    for spec in specs:
        folder=args.runs/spec['id'];summary=folder/'summary.json'
        if not summary.is_file():
            pending.append(spec['id']);continue
        # Initial verification writes summary before the scenario extension.
        s=json.loads(summary.read_text())[spec['id']]
        if 'releaseScenario' not in s:pending.append(spec['id']);continue
        cached=args.output/(spec['id']+'.json')
        if cached.is_file():
            old=json.loads(cached.read_text())
            if old.get('toolSha256')==sha and old['matSha256']==s['matSha256']:
                results.append(old);continue
        results.append(assess(folder,spec,args.output,sha))
    assert args.available or not pending, pending
    aggregate={'cases':results,'pending':pending,'sourceManifest':json.loads((args.runs/'source_manifest.json').read_text()),
        'settledDefinition':'External Iq_request and measured imposed speed unchanged for 50 ms; tolerance per sample 1e-6.',
        'qualityCriterion':'Provisional engineering screen: settled |dq error| <= max(5 A, 2% Imax); not an approved release specification.'}
    (args.output/'summary.json').write_text(json.dumps(aggregate,ensure_ascii=False,indent=2,allow_nan=False)+'\n')


if __name__=='__main__':main()
