"""Static FW sensitivity and rate bounds; archived traces are observations only."""
from pathlib import Path
from argparse import ArgumentParser
import hashlib
import json
import sys
sys.dont_write_bytecode = True
import numpy as np
from scipy.io import loadmat
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from f02_figures import held


def voltage_and_slope(id_, iq, wm, p):
    we = wm*p['PolePairs']
    ud = p['Rs']*id_-we*p['Lq']*iq
    uq = p['Rs']*iq+we*(p['Psi']+p['Ld']*id_)
    u = np.hypot(ud, uq)
    slope = (p['Rs']*ud+we*p['Ld']*uq)/u
    return u, slope


def main():
    ap = ArgumentParser(description=__doc__)
    ap.add_argument('root', type=Path)
    args = ap.parse_args(); out = args.root; out.mkdir(exist_ok=True, parents=True)
    p = json.loads((out/'parameters.json').read_text())
    K = 2.5; ufw = p['VDC']*p['mFW']/np.sqrt(3)
    umax = p['VDC']*p['mMaxCurrent']/np.sqrt(3)
    # Nominal plant, fixed speed and q current; the actual saved plant has
    # parameter offsets. This is geometry, not a new closed-loop simulation.
    rng = np.random.default_rng(61113)
    id_ = rng.uniform(-420, 0, 2000); iq = rng.uniform(-420, 420, len(id_))
    wm = rng.uniform(-738, 738, len(id_))
    h = .001
    _, analytical = voltage_and_slope(id_, iq, wm, p)
    fd = (voltage_and_slope(id_+h, iq, wm, p)[0]-voltage_and_slope(id_-h, iq, wm, p)[0])/(2*h)
    err = float(np.max(abs(fd-analytical)))
    assert err < 1e-6, err
    u = np.linspace(0, umax, 1001)
    e = np.clip((ufw-u)/ufw, -1, 1)
    assert np.isclose(e.min(), 1-p['mMaxCurrent']/p['mFW'])
    slopes = []
    for wm in (204., 300., 738.):
        for c in (1., .5, .1, 0., -.1):
            g = abs(wm*p['PolePairs'])/ufw*c  # Rs=0, Ld plant/controller equal.
            slopes.append({'wm':wm,'fluxDirectionCosine':c,'gainPerWb':g,
                           'localDecayRatePerSecond':K*g,
                           'idealLocalTimeConstantSeconds':1/(K*g) if g > 0 else None})
    examples = []
    for iq in (100.,200.,230.,232.,233.,234.,240.):
        we = 300*p['PolePairs']; r,ld,lq,psi=(p[n] for n in ('Rs','Ld','Lq','Psi'))
        aa=r*r+(we*ld)**2
        bb=we*we*ld*psi+we*r*(ld-lq)*iq
        idmin=-bb/aa
        umin=float(voltage_and_slope(idmin,iq,300,p)[0])
        roots=np.roots([aa,2*bb,(we*lq*iq)**2+(r*iq+we*psi)**2-ufw**2])
        valid=[]
        for root in roots:
            if abs(root.imag)<1e-8:
                x=float(root.real); uu, ss=voltage_and_slope(x,iq,300,p)
                assert abs(uu-ufw)<1e-8
                valid.append({'Id':x,'currentMagnitude':float(np.hypot(x,iq)),
                              'within420A':bool(np.hypot(x,iq)<=p['Is_max']),
                              'voltageSlopeVPerA':float(ss)})
        examples.append({'Iq':iq,'minimumVoltageId':idmin,'minimumVoltage':umin,
                         'targetAchievableAtFixedIq':bool(umin<=ufw),'equilibria':valid})
    result={'parametersNominal':p,'Kpsi':K,'Ufw':ufw,'Umax':umax,
            'normalizedErrorMinimumAfterVoltageLimit':float(e.min()),
            'maximumMoreNegativeIdRateAperS':K*abs(float(e.min()))/p['Ld'],
            'maximumRestorationIdRateAperS':K/p['Ld'],
            'minimumTimeFor100AMoreNegativeWithFixedFF':100*p['Ld']/(K*abs(float(e.min()))),
            'conditionsForRates':'Constant FF and limits, valid fixed Vdc, post-limit feedback after its transient; projection can only reduce the integral step.',
            'finiteDifferenceMaxErrorVPerA':err,'fixedIqEquilibria':examples,
            'idealLocalDynamicsRsZero':slopes,
            'limitations':'No new Simulink run. Frozen-Iq static slopes do not identify the saturated coupled dynamic plant.'}

    grid=np.linspace(-420,0,2501)
    fig,ax=plt.subplots(2,1,figsize=(11,9),sharex=True,layout='constrained')
    for iq in (0,100,200,233,240):
        v,s=voltage_and_slope(grid,iq,300,p)
        valid=grid**2+iq**2<=p['Is_max']**2
        line=ax[0].plot(grid,np.where(valid,v/ufw,np.nan),label=f'Iq = {iq} А')[0]
        color=line.get_color()
        ax[0].plot(grid,np.where(~valid,v/ufw,np.nan),ls='--',color=color,alpha=.5)
        ax[1].plot(grid,np.where(valid,K*s/(ufw*p['Ld']),np.nan),color=color)
        ax[1].plot(grid,np.where(~valid,K*s/(ufw*p['Ld']),np.nan),ls='--',color=color,alpha=.5)
    for aa in ax:
        aa.axvline(-p['Psi']/p['Ld'],color='.4',ls=':',label='Ψ + Ld·Id = 0' if aa is ax[0] else None)
        aa.grid(alpha=.25);aa.set_xlim(-420,0)
    ax[0].axhline(1,color='k',ls=':',label='Цель U/Ufw = 1')
    ax[0].set_ylabel('Стационарное U / Ufw');ax[0].legend(ncol=3,fontsize=8)
    ax[1].axhline(0,color='k',lw=.8)
    ax[1].set(ylabel='Kψ · ∂(U/Ufw)/∂z, 1/с',xlabel='Id, А')
    fig.suptitle('Нормировка не выпрямляет характеристику U(Id)\nωm = 300 рад/с; номинальные параметры; Iq фиксирован; пунктиром |I| > 420 А',fontsize=11)
    fig.savefig(out/'static_sensitivity.png',dpi=150);plt.close(fig)

    # Read the previous B trace, verifying its own source and MAT manifest.
    folder=Path('tmp/f06_components_20261113/chk_sg2900_cycles_user')
    tag=folder.name
    s=json.loads((folder/'summary.json').read_text())[tag]
    mat=folder/f'aug_{tag}.mat'
    with mat.open('rb') as stream:assert hashlib.file_digest(stream,'sha256').hexdigest()==s['matSha256']
    names=['Id','Iq','Iref_dq','Ud','Uq','Vs_max','Vabs_f','fw_e_norm','Psi_d_ff','fw_psi_cmd']
    native=loadmat(mat,simplify_cells=True,variable_names=names)
    # Preserve the recorded sample-and-hold semantics for mixed-rate logs;
    # the DC-derived voltage target also has continuous solver timestamps.
    t=native['Id']['t']
    for name in ('Iq','Iref_dq','fw_e_norm'):np.testing.assert_array_equal(t,native[name]['t'])
    d={name:held(native[name],t) for name in names}
    window=(t>=9.19)&(t<=9.61);tt=t[window]
    selected=(t>=9.3)&(t<=9.5)
    result['archivedTrace']={'case':tag,'matSha256':s['matSha256'],'sourceSnapshotSha256':s['userSourceSha256'],
                             'window':[9.3,9.5],
                             'minimumNormalizedError':float(d['fw_e_norm'][selected].min()),
                             'maximumNormalizedError':float(d['fw_e_norm'][selected].max()),
                             'note':'Previous B autosave, not the current saved SLX. Observation of clipped feedback, not plant identification.'}
    fig,ax=plt.subplots(4,1,figsize=(11,11),sharex=True,layout='constrained')
    ax[0].plot(tt,d['Id'][window],label='Id');ax[0].plot(tt,d['Iref_dq'][window,0],'--',label='Idref')
    ax[1].plot(tt,d['Iq'][window],label='Iq');ax[1].plot(tt,d['Iref_dq'][window,1],'--',label='Iqref')
    ax[2].plot(tt,np.hypot(d['Ud'][window],d['Uq'][window]),label='Модуль ограниченного вектора')
    ax[2].plot(tt,d['Vabs_f'][window],label='Модуль после фильтра')
    ax[2].plot(tt,d['Vs_max'][window],'--',label='Ufw')
    ax[3].plot(tt,100*d['fw_e_norm'][window],label='Относительная ошибка, %')
    for aa,yl in zip(ax,('Ток d, А','Ток q, А','Напряжение, В','Ошибка, %')):
        aa.set(ylabel=yl,xlim=(tt[0],tt[-1]));aa.grid(alpha=.25);aa.legend(fontsize=8)
    ax[-1].set_xlabel('Время, с')
    fig.suptitle('Архив C01, снимок B: одинаковая ошибка при потерянном слежении\nFF подключён; Gain1 = 0,98; это прежний прогон, не новая симуляция',fontsize=11)
    fig.savefig(out/'clipped_feedback.png',dpi=150);plt.close(fig)
    (out/'analysis.json').write_text(json.dumps(result,ensure_ascii=False,indent=2,allow_nan=False)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k not in ['parametersNominal','fixedIqEquilibria','idealLocalDynamicsRsZero']},ensure_ascii=False,indent=2))


if __name__=='__main__':main()
