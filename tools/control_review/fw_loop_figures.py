#!/usr/bin/env python3
"""Equation-based FW-loop analysis and original diagrams. No closed-loop SLX run.

Run from any directory. NumPy, Matplotlib and Graphviz are required.
The parameters belong to the pinned reviewed model, not a new controller.
"""
import hashlib
import json
from pathlib import Path
import subprocess

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT/'docs/img/fw_loop'
SHA = '787414147bdaf4768b4a89b4972d52522646af209e6cf770d9879a9e244c6160'
P = dict(Rs=.02, Ld=.00031, Lq=.000305, Psi=.1024, we=5000., Vdc=440., Imax=420.)
LIMIT = .99*P['Vdc']/np.sqrt(3)
TARGET = .95*P['Vdc']/np.sqrt(3)


def volts(id_, iq):
    return P['Rs']*id_-P['we']*P['Lq']*iq, P['Rs']*iq+P['we']*(P['Psi']+P['Ld']*id_)


def local_model(id_, iq=150.):
    d, q = volts(id_, iq)
    v = np.hypot(d, q)
    g = (P['Rs']*d+P['we']*P['Ld']*q)/v
    h = P['Ld']*d/v
    raw_sens = (q-P['Rs']*iq)/v  # positive speed, filters settled
    used_sens = np.where(raw_sens >= 0, 1., -1.)*np.maximum(np.abs(raw_sens), .1)
    return d, q, v, g, h, P['we']*P['Ld']*raw_sens, P['we']*P['Ld']*used_sens


def save(fig, name):
    fig.savefig(OUT/f'{name}.png', dpi=160, facecolor='white', bbox_inches='tight')
    plt.close(fig)


def static_budget():
    x = np.linspace(-400, 0, 800)
    fig, axes = plt.subplots(1, 2, figsize=(11.8, 4.8), layout='constrained')
    for iq, c in [(100., '#247b91'), (150., '#7257a5'), (180., '#b35a25')]:
        d, q = volts(x, iq)
        axes[0].plot(x, np.hypot(d, q), color=c, label=f'Iq = {iq:g} А')
    axes[0].axhline(LIMIT, color='#555', ls='--', label='0,99 Vdc / √3 ≈ 251,5 В')
    axes[0].axhline(TARGET, color='#8996a4', ls=':', label='Цель ОП ≈ 241,3 В')
    axes[0].set(xlabel='Id, А', ylabel='Установившееся Us, В', ylim=(130, 580), title='При фиксированном Iq есть минимум Us')
    axes[0].legend(fontsize=9)
    d, q = volts(x, 150.)
    axes[1].plot(x, np.abs(d), label='|Ud|', color='#b35a25')
    axes[1].plot(x, np.abs(q), label='|Uq|', color='#247b91')
    axes[1].plot(x, np.hypot(d, q), label='Us', color='#7257a5', lw=2)
    axes[1].set(xlabel='Id, А', ylabel='Напряжение, В', title='Iq = 150 А: Ud остаётся большим')
    axes[1].legend()
    for ax in axes: ax.grid(alpha=.18)
    fig.suptitle('Параметры Adaptto, ωe = 5000 рад/с: расчёт установившихся напряжений')
    fig.supxlabel('Границы Id и Iq на этих кривых не оптимизируются; это сечения модели, а не рабочая траектория.', fontsize=9)
    save(fig, '01_static_budget')


def inverse_response():
    t = np.r_[np.linspace(-.0015, -1e-8, 100), np.linspace(0, .006, 600)]
    step = t >= 0
    id_ = np.full_like(t, -300.)
    did = np.zeros_like(t)
    id_[step] -= 10*(1-np.exp(-t[step]/.001))
    did[step] = -10000*np.exp(-t[step]/.001)
    d, q = volts(id_, 150.)
    steady = np.hypot(d, q)
    dynamic = np.hypot(d+P['Ld']*did, q)
    fig, axes = plt.subplots(1, 2, figsize=(11.5, 4.6), layout='constrained')
    axes[0].plot(t*1000, id_, color='#7257a5', lw=2)
    axes[0].set(xlabel='Время, мс', ylabel='Id, А', title='Заданный переход Id: −300 → −310 А')
    axes[1].plot(t*1000, dynamic, color='#b35a25', lw=2, label='С членом Ld·dId/dt')
    axes[1].plot(t*1000, steady, color='#247b91', ls='--', label='Без производной тока')
    axes[1].set(xlabel='Время, мс', ylabel='Us, В', ylim=(236.8,245.2), title='Начальная и конечная реакции противоположны')
    axes[1].legend(loc='upper right', fontsize=9)
    for ax in axes:
        ax.axvline(0, color='#8996a4', ls=':', lw=1)
        ax.grid(alpha=.18)
    fig.suptitle('Расчёт по уравнениям: Iq = 150 А, ωe = 5000 рад/с, τ перехода = 1 мс')
    fig.supxlabel('Траектория токов задана извне. PI, насыщение и замкнутый контур ОП не моделируются.', fontsize=9)
    save(fig, '02_inverse_response')
    return dict(before_V=float(dynamic[0]), initial_V=float(dynamic[step][0]), final_V=float(np.hypot(*volts(-310.,150.))))


def sensitivity():
    x = np.linspace(-340, -295, 1600)
    d, q, v, g, h, gr, gu = local_model(x)
    fig, axes = plt.subplots(1, 2, figsize=(11.8, 4.8), layout='constrained')
    axes[0].plot(x, g, color='#247b91', lw=2, label='gd: точная статическая производная')
    axes[0].plot(x, gr, color='#8996a4', ls=':', label='Ld·|ωe|·sens до нижнего предела')
    axes[0].plot(x, gu, color='#b35a25', ls='--', label='После |sens| ≥ 0,1')
    axes[0].axhline(0, color='#8996a4', lw=.8)
    axes[0].set(xlabel='Id, А', ylabel='В/А', title='Статическая чувствительность и её нормировка')
    axes[0].legend(loc='upper left', fontsize=8.3)
    mask = g > 0
    axes[1].semilogy(x[mask], (-g[mask]/h[mask])/(2*np.pi), color='#7257a5', lw=2)
    axes[1].scatter([-300,-320,-330], [-local_model(i)[3]/local_model(i)[4]/(2*np.pi) for i in [-300,-320,-330]], color='#7257a5')
    axes[1].set(xlabel='Id, А', ylabel='Частота нуля z / (2π), Гц', title='Положительный нуль упрощённого канала')
    for ax in axes: ax.grid(alpha=.18, which='both')
    fig.suptitle('Iq = 150 А, ωe = 5000 рад/с; фильтры считаются установившимися')
    fig.supxlabel('Токи совпадают с заданиями; до насыщения. Полоса полного регулятора здесь не вычисляется.', fontsize=9)
    save(fig, '03_sensitivity')


def frequency():
    f = np.logspace(-2, 3.5, 600)
    s = 2j*np.pi*f
    wc = 6000.
    fig, axes = plt.subplots(2, 1, figsize=(9.5, 6.1), sharex=True, layout='constrained')
    for id_, c in [(-300., '#247b91'),(-320.,'#7257a5'),(-330.,'#b35a25')]:
        _,_,_,g,h,_,_ = local_model(id_)
        tf = (g+h*s)*wc/(s+wc)/g
        label=f'Id = {id_:g} А; z/(2π) = {-g/h/(2*np.pi):.2f} Гц'
        axes[0].semilogx(f,20*np.log10(np.abs(tf)),color=c,label=label)
        axes[1].semilogx(f,np.unwrap(np.angle(tf))*180/np.pi,color=c)
    axes[0].set(ylabel='|P / gd|, дБ', title='Условный канал Idref → Us: Ti(s) = 6000 / (s + 6000)')
    axes[0].legend(fontsize=9)
    axes[1].set(xlabel='Частота, Гц', ylabel='Фаза, градусы', ylim=(-185,5))
    for ax in axes: ax.grid(alpha=.18, which='both')
    fig.supxlabel('Iq = 150 А; без ОП, фильтров, задержек и насыщения. Это расчёт модели P(s), не измеренная АЧХ SLX.', fontsize=9)
    save(fig,'08_local_frequency')


def paths():
    id_ = np.linspace(-320,-180,500)
    iq_fixed = np.full_like(id_,150.)
    imag = np.hypot(-300,150)
    iq_circle = np.sqrt(imag**2-id_**2)
    fig, axes = plt.subplots(1,2,figsize=(11.8,4.9),layout='constrained')
    for q,name,c in [(iq_fixed,'Iq = 150 А','#247b91'),(iq_circle,f'Is = {imag:.1f} А','#7257a5')]:
        axes[0].plot(id_,q,color=c,label=name)
        axes[1].plot(id_,np.hypot(*volts(id_,q)),color=c,label=name)
    axes[0].scatter([-300],[150],color='#333',zorder=4)
    axes[0].set(xlabel='Id, А',ylabel='Iq, А',title='Два направления изменения задания')
    axes[1].axhline(LIMIT,color='#8996a4',ls='--',label='Предел ≈ 251,5 В')
    axes[1].set(xlabel='Id, А',ylabel='Установившееся Us, В',title='Разная чувствительность одной машины')
    for ax in axes: ax.grid(alpha=.18); ax.legend(fontsize=9)
    fig.suptitle('Усиление ОП — движение влево; фиксированный Iq и поворот при постоянном Is')
    fig.supxlabel('Собственная статическая иллюстрация. Она не подтверждает устойчивость управления углом тока.',fontsize=9)
    save(fig,'07_current_paths')


def graph(name, body):
    common='''
      graph [bgcolor="white",pad="0.25",nodesep="0.35",ranksep="0.45",dpi=145];
      node [shape=box,style="rounded,filled",fillcolor="#eef4fa",color="#526777",
            fontname="DejaVu Sans",fontsize=12,margin="0.16,0.11"];
      edge [color="#526777",fontname="DejaVu Sans",fontsize=10,arrowsize=0.75];
    '''
    dot=OUT/f'{name}.dot'; dot.write_text('digraph G {\n'+common+body+'\n}\n')
    subprocess.run(['dot','-Tpng',str(dot),'-o',str(OUT/f'{name}.png')],check=True)


def diagrams():
    graph('04_vesc_fw',r'''
      rankdir=TB; splines=polyline;
      duty [label="|duty| из обеих компонент mod_d / mod_q\nфильтр → m_duty_abs_filtered"];
      map [label="foc_run_fw: порог d_start\nлинейная карта duty → I_FW,target\nмаксимум зависит от backoff"];
      back [label="Знаковая ошибка Iq\nbackoff уменьшает I_FW,max",fillcolor="#fff0dc"];
      ramp [label="Необязательное ограничение темпа\nfoc_fw_ramp_time → m_i_fw_set"];
      refs [label="Id: выбор большего модуля из MTPA и −I_FW\nIq: отдельная добавка с foc_fw_q_current_factor\nзатем жёсткий токовый круг"];
      pi [label="Токовые контуры: PI + развязка\nограниченная доля d; остаток q\nограничение интегральных состояний"];
      plant [label="Модулятор и машина\nтоки; вектор напряжения"];
      duty -> map -> ramp -> refs -> pi -> plant;
      back -> map;
      pi:e -> duty:e [label="команда до модулятора",style=dashed,constraint=false];
      plant:w -> back:s [label="Iq и скорость",style=dashed,constraint=false];
      {rank=same; map; back;}
    ''')
    graph('05_vendor_loops',r'''
      rankdir=LR; newrank=true;
      subgraph cluster_ir {
        label="IR / Infineon AN-1090 — функциональная схема";fontname="DejaVu Sans";color="#cbd5df";
        i0 [label="Dv, Qv\nмодуляция"];
        i1 [label="Ошибка к FwkLvl\nусиление с поправкой по скорости"];
        i2 [label="Интегратор и предел\nFwk_Id → внутренний контур"];
        i0 -> i1 -> i2;
      }
      subgraph cluster_ti {
        label="TI TIDM-02017 — функциональная схема";fontname="DejaVu Sans";color="#cbd5df";
        t0 [label="Vd, Vq → Vs\nцель из Vbus"];
        t1 [label="FW PI → угол\nвыбор вместе с MTPA"];
        t2 [label="Is и угол\nсовместная пара Id / Iq"];
        t0 -> t1 -> t2;
      }
      subgraph cluster_cm {
        label="Cascadia: Internal PM DC Link FW — описание функции";fontname="DejaVu Sans";color="#cbd5df";
        c0 [label="Ограничение\nмодуляции"];
        c1 [label="Коррекция эффективного Vdc\nдля внутренних таблиц"];
        c2 [label="Таблицы Id / Iq\nновая пара заданий"];
        c0 -> c1 -> c2;
      }
      {rank=same;i0;t0;c0;} {rank=same;i1;t1;c1;} {rank=same;i2;t2;c2;}
    ''')
    graph('06_candidate_structure',r'''
      rankdir=TB;
      req [label="Исходный запрос момента\nограничения питания и машины"];
      plan [label="Расчёт или таблицы допустимой пары\nток, напряжение, Idmin, доля d\nвариант C: базовое задание + коррекция"];
      traj [label="Траектория Id / Iq\nпроверка Uss + L·dI/dt\nитоговый токовый круг",fillcolor="#e6f4ea"];
      ctrl [label="Токовые контуры и выбранный ограничитель\nсогласованный anti-windup"];
      plant [label="SVPWM и машина\nвсе стадии напряжения и токи"];
      trim [label="Медленная коррекция ОП\nсигнал напряжения, проверенная полоса\nограниченные усиление и темп"];
      status [label="Оценка достижимости и слежения\nпотеря Id / Iq, дефицит напряжения\nкоррекция допустимого момента",fillcolor="#fff0dc"];
      req -> plan -> traj -> ctrl -> plant;
      plant -> trim [label="обратная связь"];
      trim -> plan [style=dashed,constraint=false];
      traj -> trim [label="tracking окончательного задания",style=dashed,constraint=false];
      plant -> status;
      status -> plan [style=dashed,constraint=false];
      {rank=same;trim;status;}
    ''')


def main():
    actual=hashlib.sha256((ROOT/'ideal_source_drive_Idff_aug_param.slx').read_bytes()).hexdigest()
    if actual != SHA: raise ValueError('Reviewed SLX changed: update parameters and analysis before rendering.')
    OUT.mkdir(parents=True,exist_ok=True)
    plt.rcParams.update({'font.family':'DejaVu Sans','font.size':10.5,'axes.spines.top':False,'axes.spines.right':False})
    static_budget(); transient=inverse_response(); sensitivity(); diagrams(); paths(); frequency()
    rows=[]
    for id_ in [-300.,-310.,-320.,-330.]:
        d,q,v,g,h,gr,gu=local_model(id_)
        rows.append(dict(Id_A=id_,Iq_A=150.,Ud_V=float(d),Uq_V=float(q),Us_V=float(v),
                         gd_V_per_A=float(g),hd_V_s_per_A=float(h),zero_rad_s=float(-g/h),
                         zero_Hz=float(-g/h/(2*np.pi)),gain_norm_before_floor=float(gr),gain_norm_after_floor=float(gu)))
    result=dict(model_sha256=SHA,parameters=P,Ulim_V=float(LIMIT),VFW_V=float(TARGET),
                note='Equation-based calculations. No closed-loop MATLAB/Simulink run. Frequency curves use an assumed current response 6000/(s+6000).',
                transient=transient,local_points=rows,
                approximate_Iq_bound_A=float(LIMIT/(P['we']*P['Lq'])))
    (ROOT/'docs/data/fw_loop_analysis.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print(f'Generated 8 FW-loop illustrations and calculation metadata in {OUT}')


if __name__=='__main__': main()
