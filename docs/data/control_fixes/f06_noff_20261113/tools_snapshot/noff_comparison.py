"""Paired F06 FF-on / FF-off experiment; no retuning or other logic changes."""
from argparse import ArgumentParser
from pathlib import Path
import hashlib
import json
import sys
sys.dont_write_bytecode = True
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import starter2900_analysis as core
from f02_figures import read, episodes

EXTRA = ('fw_inputs', 'Psi_candidate', 'torque', 'Uq_limit')


def metrics(t, d, start, end):
    w = (t >= start) & (t <= end)
    saturation = (abs(d['Ud']) >= d['Ulim']-1e-6) & (abs(d['Uq']) < .1)
    return {'start': start, 'end': end,
            'maxCurrent': float(d['imeas'][w].max()),
            'maxQError': float(d['qerror'][w].max()),
            'maxDError': float(abs(d['Id'][w]-d['Iref_dq'][w,0]).max()),
            'dSaturatedDuration': sum(e['duration'] for e in episodes(t[w], saturation[w]))}


def plot_pair(t, before, after, p, tag, output, start, end, suffix):
    w=(t>=start)&(t<=end);x=t[w]
    fig,axes=plt.subplots(7,1,figsize=(13,16),sharex=True,layout='constrained')
    axes[0].plot(x,before['speed'][w]*30/np.pi,label='Скорость, общий сценарий',lw=.8)
    axes[2].plot(x,before['Iq_request'][w],color='.7',label='Исходный запрос q',lw=.8)
    for d,color,label in ((before,'tab:blue','FF включён'),(after,'tab:orange','FF отключён')):
        axes[1].plot(x,d['Id'][w],color=color,label=label+' · Id',lw=.8)
        axes[1].plot(x,d['Iref_dq'][w,0],'--',color=color,label=label+' · Idref',lw=.8)
        axes[2].plot(x,d['Iq'][w],color=color,label=label+' · Iq',lw=.8)
        axes[2].plot(x,d['Iref_dq'][w,1],'--',color=color,label=label+' · Iqref',lw=.8)
        axes[3].plot(x,d['imeas'][w],color=color,label=label,lw=.8)
        axes[4].plot(x,d['fw_inputs'][w,0]/p['Ld'],color=color,label=label+' · FF используемый / Ld',lw=.8)
        axes[4].plot(x,d['Psi_trim'][w]/p['Ld'],'--',color=color,label=label+' · trim / Ld',lw=.8)
        axes[5].plot(x,d['Uq_limit'][w],color=color,label=label+' · предел |Uq|',lw=.8)
        axes[5].plot(x,d['Ud'][w],'--',color=color,label=label+' · Ud',lw=.8)
        axes[6].plot(x,d['torque'][w]*d['speed'][w]/1000,color=color,label=label,lw=.8)
    axes[3].axhline(1.05*p['Is_max'],color='k',ls=':',label='Порог 441 А')
    for ax,ylabel in zip(axes,('Частота, об/мин','Ток d, А','Ток q, А','Модуль тока, А','Вклады задания d, А','Напряжение, В','Мощность T·ω, кВт')):
        ax.set(xlim=(start,end),ylabel=ylabel);ax.grid(alpha=.25);ax.legend(fontsize=7,loc='best',ncol=2)
    axes[-1].set_xlabel('Время, с')
    fig.suptitle(f"F06: отдельное влияние FF · {tag}\nKψ = 2,5 в обоих вариантах; δLd={p['deltaLd']:+.0%}, δLq={p['deltaLq']:+.0%}, δΨ={p['deltaPsi']:+.0%}",fontsize=12)
    fig.savefig(output/(tag+'_'+suffix+'.png'),dpi=130,bbox_inches='tight');plt.close(fig)


def compare(root, reference, spec, output, sha):
    tag=spec['id']; ref=spec['referenceCase']
    ns=json.loads((root/tag/'summary.json').read_text())[tag]
    bs=json.loads((reference/ref/'summary.json').read_text())[ref]
    assert ns['parameters']==bs['parameters']
    for key in ('speedTime','speedValues','iqTime','iqFraction','stopTime','VDC','Is_max'):
        assert spec[key]==bs['releaseScenario'][key],key
    assert ns['controlStructure']['inputs']['Kpsi']['value']==bs['controlStructure']['inputs']['Kpsi']['value']==2.5
    assert ns['controlStructure']['inputs']['psi_ff']['block']=='Experiment_FF_gain'
    assert ns['controlStructure']['inputs']['eU']['block']==bs['controlStructure']['inputs']['eU']['block']=='Sum11'
    a=core.assess(root/tag,spec,output,sha)
    tn,n=read(root/tag,tag,ns,False,EXTRA+('Iq_request',))
    tb,b=read(reference/ref,ref,bs,False,EXTRA+('Iq_request',))
    np.testing.assert_array_equal(tn,tb)
    np.testing.assert_allclose(n['Iq_request'],b['Iq_request'],rtol=0,atol=1e-9)
    # Identical imposed input tables were checked above. Simscape produces
    # tiny trajectory differences, especially near stops, with different loads.
    # Keep a 0.001 rad/s numerical check and report the actual maximum below.
    np.testing.assert_allclose(n['speed'],b['speed'],rtol=0,atol=1e-3)
    assert np.max(abs(n['fw_inputs'][:,0]))==0
    np.testing.assert_allclose(n['Psi_candidate'],n['Psi_trim'],rtol=0,atol=1e-12)
    assert np.max(abs(b['fw_inputs'][:,0]))>0
    critical={'hold':(15.95,16.8) if tag.endswith('_nom') else (5.95,6.8),
              'cycles':(9.,9.75),
              'startgen':(4.95,6.15) if tag.endswith('_nom') else (14.45,15.7)}[spec['profile']]
    a['ablationVerification']={'usedFFMaximumAbsolute':float(abs(n['fw_inputs'][:,0]).max()),
        'sumMinusTrimMaximumAbsolute':float(abs(n['Psi_candidate']-n['Psi_trim']).max()),
        'referenceUsedFFMaximumAbsolute':float(abs(b['fw_inputs'][:,0]).max()),
        'speedDifferenceMaximum':float(abs(n['speed']-b['speed']).max()),
        'sameParameters':True,'sameInputTables':True,'sameCurrentTimeGrid':True,'sameKpsi':2.5}
    a['comparison']={'referenceCase':ref,'referenceMatSha256':bs['matSha256'],
        'referenceMaxCurrent':bs['maxMeasuredCurrent'],
        'referenceMaxReferenceCurrent':bs['maxReferenceCurrent'],
        'referenceQProlongedCount':bs['tracking_q']['prolongedCount'],
        'startup':{'withFF':metrics(tn,b,0,1.1),'withoutFF':metrics(tn,n,0,1.1)},
        'criticalTransition':{'withFF':metrics(tn,b,*critical),'withoutFF':metrics(tn,n,*critical)}}
    plot_pair(tn,b,n,ns['parameters'],tag,output,0,spec['stopTime'],'comparison')
    plot_pair(tn,b,n,ns['parameters'],tag,output,*critical,'transition')
    (output/(tag+'.json')).write_text(json.dumps(a,ensure_ascii=False,indent=2,allow_nan=False)+'\n')
    print('PAIRED',tag,'with FF',bs['maxMeasuredCurrent'],'without FF',a['maxMeasuredCurrent'],
          'FF used',a['ablationVerification']['usedFFMaximumAbsolute'],flush=True)
    return a


def main():
    ap=ArgumentParser(description=__doc__);ap.add_argument('runs',type=Path);ap.add_argument('reference',type=Path)
    ap.add_argument('output',type=Path);ap.add_argument('--available',action='store_true');args=ap.parse_args()
    args.output.mkdir(parents=True,exist_ok=True)
    files=[Path(__file__),Path(core.__file__),Path(__file__).with_name('f02_figures.py'),Path(__file__).with_name('baseline_comparison.py')]
    sha=hashlib.sha256(b''.join(p.read_bytes() for p in files)).hexdigest()
    specs=json.loads((args.runs/'cases.json').read_text());results=[];pending=[]
    for spec in specs:
        tag=spec['id'];summary=args.runs/tag/'summary.json'
        if not summary.is_file():pending.append(tag);continue
        ns=json.loads(summary.read_text())[tag]
        if 'releaseScenario' not in ns:pending.append(tag);continue
        cached=args.output/(tag+'.json')
        if cached.is_file():
            old=json.loads(cached.read_text())
            if old.get('toolSha256')==sha and old['matSha256']==ns['matSha256'] and 'ablationVerification' in old:
                results.append(old);continue
        results.append(compare(args.runs,args.reference,spec,args.output,sha))
    assert args.available or not pending,pending
    aggregate={'cases':results,'pending':pending,'sourceManifest':json.loads((args.runs/'source_manifest.json').read_text()),
               'ablation':json.loads((args.runs/'ablation.json').read_text()),
               'comparisonToolSha256':sha,'interpretation':'FF contribution alone disabled; Kpsi and magnitude feedback retained. This is not a tuned feedback-only design or a closed-loop test of the historical Uq law.'}
    (args.output/'summary.json').write_text(json.dumps(aggregate,ensure_ascii=False,indent=2,allow_nan=False)+'\n')


if __name__=='__main__':main()
