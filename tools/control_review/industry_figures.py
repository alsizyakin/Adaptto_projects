#!/usr/bin/env python3
"""Original illustrations for docs/industry_field_weakening.md; no closed-loop simulation.

Requires NumPy, Matplotlib and Graphviz. Source attribution is in the document
and docs/img/industry_fw/README.md. All voltages/currents in the geometry plots
are illustrative, except the explicitly labelled instantaneous equation example.
"""
import argparse
from pathlib import Path
import subprocess

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.patches import Arc
import numpy as np

ROOT = Path(__file__).resolve().parents[2]
COLORS = dict(raw='#697586', priority='#b35a25', capped='#7257a5', radial='#247b91')


def graph(folder, name, body):
    source = '''digraph G {
      graph [bgcolor="white", pad="0.25", nodesep="0.35", ranksep="0.5", dpi=150];
      node [shape=box, style="rounded,filled", fillcolor="#eef3f8", color="#596c7e",
            fontname="DejaVu Sans", fontsize=12, margin="0.16,0.12"];
      edge [color="#596c7e", fontname="DejaVu Sans", fontsize=10, arrowsize=0.8];
    ''' + body + '\n}\n'
    dot = folder / f'{name}.dot'
    dot.write_text(source)
    subprocess.run(['dot', '-Tpng', str(dot), '-o', str(folder / f'{name}.png')], check=True)


def draw_limiter_comparison(path):
    fig, axes = plt.subplots(1, 2, figsize=(12, 5.5), layout='constrained')
    theta = np.linspace(0, 2*np.pi, 600)
    kd = .98
    samples = [np.array([-1.15, .85]), np.array([1.5, .7])]
    titles = ['Запрос в двигательном режиме', 'Положительный Ud при снятии ОП']
    for ax, raw, title in zip(axes, samples, titles):
        ax.plot(np.cos(theta), np.sin(theta), color='#8996a4', lw=1.3)
        ax.axvline(-kd, color=COLORS['capped'], ls=':', lw=1)
        ax.axvline(kd, color=COLORS['capped'], ls=':', lw=1)
        dp = np.clip(raw[0], -1, 1)
        dc = np.clip(raw[0], -kd, kd)
        values = [
            (raw, 'raw', 'Запрос U*'),
            (np.array([dp, np.clip(raw[1], -np.sqrt(max(0, 1-dp*dp)), np.sqrt(max(0, 1-dp*dp)))]),
             'priority', 'Приоритет d до Ulim'),
            (np.array([dc, np.clip(raw[1], -np.sqrt(1-dc*dc), np.sqrt(1-dc*dc))]),
             'capped', 'Приоритет d до 0,98 Ulim'),
            (raw / max(1, np.linalg.norm(raw)), 'radial', 'Радиальное ограничение'),
        ]
        for v, color, label in values:
            ax.annotate('', xy=v, xytext=(0, 0),
                        arrowprops=dict(arrowstyle='->', color=COLORS[color], lw=2))
            ax.scatter(*v, color=COLORS[color], s=35, label=label, zorder=4)
        ax.axhline(0, color='#bcc4cc', lw=.7)
        ax.axvline(0, color='#bcc4cc', lw=.7)
        ax.set(xlim=(-1.5, 1.7), ylim=(-1.15, 1.2), aspect='equal',
               xlabel='Ud / Ulim', ylabel='Uq / Ulim', title=title)
        ax.grid(alpha=.15)
    handles, labels = axes[0].get_legend_handles_labels()
    fig.legend(handles, labels, loc='outside lower center', ncol=2, frameon=False)
    fig.suptitle('Геометрия трёх ограничителей — условные векторы, не результаты прогонов')
    fig.savefig(path, dpi=160, facecolor='white', bbox_inches='tight')
    plt.close(fig)


def current_angle(folder):
    fig, ax = plt.subplots(figsize=(8, 6), layout='constrained')
    phi = np.linspace(np.pi/2, np.pi, 300)
    ax.plot(np.cos(phi), np.sin(phi), color='#8996a4', lw=1.5, label='Круг тока Imax')
    for beta, color, name in [(20, '#247b91', 'Исходный угол'), (55, '#7257a5', 'Большее ослабление')]:
        rad = np.radians(beta)
        v = np.array([-np.sin(rad), np.cos(rad)])
        ax.annotate('', xy=v, xytext=(0, 0), arrowprops=dict(arrowstyle='->', color=color, lw=2.5))
        ax.plot([v[0], v[0], 0], [0, v[1], v[1]], ls=':', color=color)
        ax.scatter(*v, color=color, s=45, label=f'{name}: β = {beta}°')
    ax.add_patch(Arc((0, 0), .65, .65, theta1=90, theta2=145, color='#7257a5'))
    ax.text(-.25, .36, 'β', color='#7257a5', fontsize=14)
    ax.axhline(0, color='#8996a4', lw=.8)
    ax.axvline(0, color='#8996a4', lw=.8)
    ax.set(xlim=(-1.12, .18), ylim=(-.08, 1.15), aspect='equal',
           xlabel='Id / Imax', ylabel='Iq / Imax',
           title='Поворот вектора тока при фиксированном модуле')
    ax.legend(loc='lower left', fontsize=10)
    ax.text(-1.08, 1.08, 'β отсчитывается от +q к −d; углы условные', fontsize=10)
    fig.savefig(folder/'05_current_angle.png', dpi=160, bbox_inches='tight', facecolor='white')
    plt.close(fig)


def radial_initial(folder):
    # Instant after an imposed 10% voltage reduction at a stationary operating point.
    # No PI, anti-windup or field-weakening dynamics are simulated.
    ld, lq, rs, psi, w, id_, iq, alpha = .00031, .000305, .02, .1024, 5000., -200., 90., .9
    hold = np.array([rs*id_-w*lq*iq, rs*iq+w*(psi+ld*id_)])
    limited = alpha*hold
    rates = (limited-hold)/np.array([ld, lq])/1000  # A/ms
    fig, axes = plt.subplots(1, 2, figsize=(11, 5), layout='constrained')
    x = np.arange(2)
    axes[0].bar(x-.18, hold, .36, color='#697586', label='Для удержания токов')
    axes[0].bar(x+.18, limited, .36, color='#247b91', label='После умножения на 0,9')
    for offset, vals in [(-.18, hold), (.18, limited)]:
        for xx, y in zip(x+offset, vals):
            axes[0].text(xx, y+(6 if y>=0 else -6), f'{y:.1f}', ha='center',
                         va='bottom' if y>=0 else 'top', fontsize=10)
    axes[0].set(xticks=x, xticklabels=['Ud', 'Uq'], ylabel='Напряжение, В', ylim=(-205, 260))
    axes[0].legend(loc='upper left', fontsize=9)
    axes[1].bar(x, rates, .5, color=['#b35a25', '#247b91'])
    for xx, y in zip(x, rates):
        axes[1].text(xx, y+(3 if y>=0 else -3), f'{y:+.2f} А/мс', ha='center',
                     va='bottom' if y>=0 else 'top')
    axes[1].set(xticks=x, xticklabels=['dId/dt > 0\nослабление уменьшается',
                                     'dIq/dt < 0\nмоментный ток падает'],
                ylabel='Начальная производная, А/мс', ylim=(-100, 80))
    for ax in axes:
        ax.axhline(0, color='#8996a4', lw=.8)
        ax.grid(axis='y', alpha=.15)
    fig.suptitle('Начальная реакция на радиальное уменьшение напряжения')
    fig.supxlabel('Id = −200 А; Iq = 90 А; ωe = 5000 рад/с. Расчёт в момент t = 0+, не прогон FOC.', fontsize=10)
    fig.savefig(folder/'06_radial_initial.png', dpi=160, facecolor='white', bbox_inches='tight')
    plt.close(fig)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output', type=Path, default=ROOT/'docs/img/industry_fw')
    folder = p.parse_args().output
    folder.mkdir(parents=True, exist_ok=True)
    plt.rcParams.update({'font.family':'DejaVu Sans', 'font.size':11,
                         'axes.spines.top':False, 'axes.spines.right':False})
    graph(folder, '01_control_layers', r'''
      rankdir=TB;
      label="Обобщённая структура FOC — не схема одного изделия"; labelloc=t; fontname="DejaVu Sans";
      request [label="Запрос момента"];
      limits [label="Допустимый момент и ток\nпитание, нагрев, тяга / рекуперация"];
      refs [label="Совместные задания Id / Iq\nрасчёт, таблицы или угол тока"];
      pi [label="PI_d / PI_q + развязка\nнеограниченный запрос U*"];
      sat [label="Распределение доступного напряжения\nвыбранный ограничитель + anti-windup", fillcolor="#e9e5f3"];
      act [label="ШИМ и машина\nтоки, Vdc, реализованное напряжение"];
      fw [label="Коррекция ослабления поля\nзапас напряжения и потеря слежения", fillcolor="#e1f0f2"];
      request -> limits -> refs -> pi -> sat -> act;
      act -> fw [label="обратная связь"];
      fw -> refs [constraint=false];
      act -> pi [label="Id / Iq", style=dashed, constraint=false];
    ''')
    graph(folder, '02_vesc_control', r'''
      rankdir=TB;
      label="VESC — упрощённая схема по исходному коду 3ebf8d1"; labelloc=t; fontname="DejaVu Sans";
      duty [label="Фильтрованный модуль duty\nпорог и предел тока ОП"];
      back [label="FW backoff по знаковой ошибке Iq\nуменьшение допустимого тока ОП"];
      ref [label="Выбор Id из MTPA / ОП\nжёсткий круг Id² + Iq² ≤ Imax²"];
      ctrl [label="Токовые PI и развязка"];
      vd [label="Ограничение Ud и интегратора d\n|Ud| ≤ kd · Umax"];
      vq [label="Остаток напряжения для q\n|Uq| ≤ √(Umax² − Ud²)\nограничение интегратора q"];
      note [label="kd = 0,98 в общей конфигурации\nрезерв диапазона q ≈ 0,199 Umax\nне гарантия достаточного Uq", fillcolor="#fff0dc"];
      duty -> ref; back -> ref;
      ref -> ctrl -> vd -> vq;
      vd -> note [style=dashed];
    ''')
    draw_limiter_comparison(folder/'03_voltage_limiters.png')
    graph(folder, '04_cascadia_modes', r'''
      rankdir=LR;
      newrank=true;
      label="Cascadia / BorgWarner — три воздействия контура ОП по руководству, §6.2";
      labelloc=t; fontname="DejaVu Sans";
      subgraph cluster_s {
        label="Surface PM"; fontname="DejaVu Sans"; color="#ccd7e1";
        s0 [label="Предел\nмодуляции"];
        s1 [label="Коррекция\nотрицательного Id"];
        s0 -> s1;
      }
      subgraph cluster_i {
        label="Internal PM"; fontname="DejaVu Sans"; color="#ccd7e1";
        i0 [label="Предел\nмодуляции"];
        i1 [label="Уменьшение Iq\nId задают таблицы"];
        i0 -> i1;
      }
      subgraph cluster_v {
        label="Internal PM DC Link FW"; fontname="DejaVu Sans"; color="#ccd7e1";
        v0 [label="Предел\nмодуляции"];
        v1 [label="Эффективное Vdc\nна входе таблиц"];
        v2 [label="Новая пара\nId / Iq", fillcolor="#e1f0f2"];
        v0 -> v1 -> v2;
      }
      {rank=same; s0; i0; v0;}
      {rank=same; s1; i1; v1;}
    ''')
    current_angle(folder)
    radial_initial(folder)
    print(f'Generated 6 original illustrations in {folder}')


if __name__ == '__main__':
    main()
