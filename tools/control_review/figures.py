#!/usr/bin/env python3
"""Export evidence from run_review.m, or redraw PNGs from committed CSV files.

python3 tools/control_review/figures.py --runs work/control_review
python3 tools/control_review/figures.py

Needs numpy, scipy (only for --runs), matplotlib, and Graphviz 'dot'.
No simulation of the proposed controller is performed here.
"""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "docs/data/control_review"
IMG = ROOT / "docs/img/control_review"
P = dict(Ld=0.00031, Lq=0.000305, Psi=0.1024, Rs=0.02, p=11, Is=420, Vdc=440)
VMAX = 0.995 * P["Vdc"] / np.sqrt(3)
SIGNALS = ["Id", "Iq", "Idreq", "Iqreq", "Idreq_f", "Psi_est", "Lq_est",
           "Ud", "Uq", "speed", "IqLim"]


def interp(r, name, t, hold=False):
    """ZOH for discrete controller outputs; linear interpolation otherwise."""
    x = r[name]
    tx, ix = np.unique(x["t"], return_index=True)
    y = x["y"][ix]
    if hold:
        return y[np.clip(np.searchsorted(tx, t, side="right") - 1, 0, len(tx) - 1)]
    return np.interp(t, tx, y)


def export_runs(folder):
    from scipy.io import loadmat
    tags = ["review_nom", "review_ldp20", "review_zeroiq", "review_reverse"]
    # Hash the source copies belonging to these runs, not today's working model.
    hashes = {hashlib.sha256((folder / ("aug_" + tag + ".slx")).read_bytes()).hexdigest()
              for tag in tags}
    if len(hashes) != 1:
        raise ValueError("The four runs must use the same source model.")
    out = {"model": "ideal_source_drive_Idff_aug_param.slx",
           "model_sha256": hashes.pop(),
           "parameters": P, "runs": {}}
    for tag in tags:
        f = folder / ("aug_" + tag + ".mat")
        r = loadmat(f, simplify_cells=True)
        t = r["Idreq"]["t"]
        # Match the previous review's metrics; logging rates differ by signal.
        ir = np.hypot(r["Idreq"]["y"], interp(r, "Iqreq", t))
        im = np.hypot(r["Id"]["y"], interp(r, "Iq", r["Id"]["t"]))
        tq = r["Iq"]["t"]
        error = r["Iq"]["y"] - interp(r, "Iqreq", tq)
        edges = np.diff(np.r_[False, np.abs(error) > 100, False].astype(int))
        starts, stops = np.flatnonzero(edges == 1), np.flatnonzero(edges == -1) - 1
        intervals = [[float(tq[a]), float(tq[b])] for a, b in zip(starts, stops)
                     if tq[b] - tq[a] > 0.02]
        out["runs"][tag] = dict(
            source_sha256=hashlib.sha256(f.read_bytes()).hexdigest(),
            stop_s=float(r["stopTime"]), elapsed_s=float(r["elapsed"]),
            max_Iref_A=float(ir.max()), max_I_A=float(im.max()),
            min_Lq_est_H=float(r["Lq_est"]["y"].min()),
            final_Lq_est_H=float(r["Lq_est"]["y"][-1]),
            abs_Iq_error_over_100A_longer_20ms=intervals,
            overrides={"deltaLd": 0.2} if tag == "review_ldp20" else {},
        )
        if tag == "review_ldp20":
            point = {s: float(interp(r, s, 10.4)) for s in SIGNALS}
            w = P["p"] * point["speed"]
            ud = P["Rs"] * point["Idreq"] - w * P["Lq"] * point["Iqreq"]
            uq = P["Rs"] * point["Iqreq"] + w * (P["Psi"] + 1.2 * P["Ld"] * point["Idreq"])
            point["required_Vss_V"] = float(np.hypot(ud, uq))
            point["d_raw_if_integrator_zero_V"] = (
                6000 * P["Ld"] * (point["Idreq"] - point["Id"])
                - w * point["Lq_est"] * point["Iq"])
            out["latch_at_10_4s"] = point
        window = {"review_nom": (1.63, 1.72), "review_ldp20": (10.05, 10.6),
                  "review_zeroiq": (0, 2)}.get(tag)
        if window:
            # Export actual Idref timestamps; thin only the long no-load trace.
            ts = t[(t >= window[0]) & (t <= window[1])]
            if tag == "review_zeroiq":
                ts = ts[::24]
            cols = [ts] + [interp(r, s, ts, hold=s in {
                "Idreq", "Idreq_f", "Psi_est", "Lq_est", "Ud", "Uq"}) for s in SIGNALS]
            np.savetxt(DATA / (tag + ".csv"), np.column_stack(cols), delimiter=",",
                       header="t," + ",".join(SIGNALS), comments="", fmt="%.12g")
    out["runs"]["review_zeroiq"]["block_override"] = "Repeating Sequence/rep_seq_y = [0 0 0 0 0]"
    out["runs"]["review_reverse"]["block_override"] = "Negate the original speed lookup table; Iq request unchanged"
    out["sampling_note"] = (
        "Summary maxima use full logged data and linear interpolation onto Id/Idreq grids. "
        "CSV is a plot excerpt, not a full run. Discrete control outputs use ZOH in CSV. "
        "Intervals touching the stop time are right-censored.")
    (DATA / "summary.json").write_text(json.dumps(out, indent=2, ensure_ascii=False) + "\n")


def read_csv(tag):
    return np.genfromtxt(DATA / (tag + ".csv"), delimiter=",", names=True)


def save(fig, name):
    fig.savefig(IMG / (name + ".png"), dpi=160, facecolor="white", bbox_inches="tight")
    plt.close(fig)


def plot_current():
    r = read_csv("review_nom")
    t = r["t"]
    fig, ax = plt.subplots(2, 1, figsize=(10.5, 6.5), sharex=True, layout="constrained")
    ax[0].plot(t, -r["Idreq"], label="−Idreq — в регулятор")
    ax[0].plot(t, -r["Idreq_f"], label="−LPF(Idreq) — для лимита Iq")
    ax[0].plot(t, r["Iqreq"], label="Iqreq")
    ax[0].set(ylabel="Ток, А", title="Номинал: фильтр оставляет лишний токовый бюджет")
    ax[0].legend(loc="lower right", ncol=1)
    ax[1].plot(t, np.hypot(r["Idreq"], r["Iqreq"]), label="Модуль задания")
    ax[1].plot(t, np.hypot(r["Id"], r["Iq"]), label="Измеренный ток", alpha=.8)
    ax[1].axhline(P["Is"], color="#c0392b", ls="--", label="Is_max = 420 А")
    ax[1].set(xlabel="Время, с", ylabel="Модуль тока, А")
    ax[1].legend()
    for a in ax:
        a.grid(alpha=.22)
    save(fig, "03_current_budget")


def plot_latch():
    r = read_csv("review_ldp20")
    t = r["t"]
    w = P["p"] * r["speed"]
    vss = np.hypot(P["Rs"] * r["Idreq"] - w * P["Lq"] * r["Iqreq"],
                   P["Rs"] * r["Iqreq"] + w * (P["Psi"] + 1.2 * P["Ld"] * r["Idreq"]))
    fig, ax = plt.subplots(3, 1, figsize=(10.5, 8), sharex=True, layout="constrained")
    ax[0].plot(t, r["Id"], label="Id")
    ax[0].plot(t, r["Idreq"], "--", label="Idreq")
    ax[0].plot(t, r["Iq"], label="Iq")
    ax[0].plot(t, r["Iqreq"], "--", label="Iqreq")
    ax[0].set(title="Ld +20%: достижимость задания возвращается, управление — нет", ylabel="Ток, А")
    ax[0].legend(ncol=4)
    ax[1].plot(t, r["Ud"], label="Ud — команда")
    ax[1].plot(t, r["Uq"], label="Uq — команда")
    ax[1].set(ylabel="Напряжение, В")
    ax[1].legend(ncol=2)
    ax[2].plot(t, vss, label="Нужно заданию в установившемся режиме")
    ax[2].axhline(VMAX, color="#c0392b", ls="--", label="Предел регулятора")
    ax[2].set(ylabel="Модуль напряжения, В", xlabel="Время, с")
    ax[2].legend()
    for a in ax:
        a.grid(alpha=.22)
        a.axvline(10.4, color="gray", ls=":", alpha=.6)
    save(fig, "02_latch_replay")


def plot_lq():
    r = read_csv("review_zeroiq")
    fig, ax = plt.subplots(3, 1, figsize=(10.5, 7), sharex=True, layout="constrained")
    ax[0].plot(r["t"], r["speed"])
    ax[0].set(ylabel="ωm, рад/с", title="Нулевое задание Iq: оценка Lq деградирует без возбуждения")
    ax[1].plot(r["t"], r["Iq"], label="Измеренный Iq")
    ax[1].plot(r["t"], r["Iqreq"], "--", label="Iqreq = 0")
    ax[1].set(ylabel="Ток, А")
    ax[1].legend()
    ax[2].plot(r["t"], 1000 * r["Lq_est"], label="Lq_est")
    ax[2].axhline(1000 * P["Lq"], color="#238b45", ls="--", label="Истинная Lq")
    ax[2].axhline(100 * P["Lq"], color="#c0392b", ls=":", label="Нижний предел 0,1·Lq")
    ax[2].set(ylabel="Индуктивность, мГн", xlabel="Время, с")
    ax[2].legend(ncol=3)
    for a in ax:
        a.grid(alpha=.22)
    save(fig, "04_lq_no_excitation")


def plot_pwm():
    angle = np.linspace(0, np.pi / 3, 501)
    fig, ax = plt.subplots(1, 2, figsize=(11, 4.2), layout="constrained")
    for m, style, label in [(.995, "-", "m = 0,995"), (.99, "--", "m = 0,990")]:
        t1, t2 = m * np.sin(np.pi / 3 - angle), m * np.sin(angle)
        high = (1 + t1 + t2) / 2
        low = (1 - t1 - t2) / 2
        ax[0].plot(np.degrees(angle), high, style, label=label)
        ax[1].plot(np.degrees(angle), low, style, label=label)
    ax[0].axhline(.995, color="#c0392b", ls=":", label="dutyMax")
    ax[1].axhline(.005, color="#c0392b", ls=":", label="dutyMin")
    for a, title in zip(ax, ["Максимальная скважность до обрезки", "Минимальная скважность до обрезки"]):
        a.set(xlabel="Угол внутри сектора, градусы", ylabel="Скважность", title=title)
        a.grid(alpha=.22)
        a.legend()
    fig.suptitle("Статический расчёт SVPWM: без экстраполяции и мёртвого времени")
    save(fig, "05_pwm_limits")


def plot_projection():
    from industry_figures import draw_limiter_comparison
    draw_limiter_comparison(IMG / "07_voltage_projection.png")


def diagrams():
    common = '''
      graph [bgcolor="white", pad="0.3", nodesep="0.35", ranksep="0.55", dpi=150];
      node [shape=box, style="rounded,filled", fillcolor="#eef4fa", color="#526777",
            fontname="DejaVu Sans", fontsize=12, margin="0.16,0.11"];
      edge [color="#526777", fontname="DejaVu Sans", fontsize=10, arrowsize=0.8];
    '''
    sources = {
        "01_existing_control": r'''
          rankdir=TB;
          req [label="Запрос Iq\nRepeating Sequence"];
          fw [label="FF ослабления поля + Psi_trim\nпо Psi_est, Lq_est и Ud/Uq"];
          id [label="Idreq: ограничение по Psi_est\nзадержка Ts/2"];
          filt [label="LPF(Idreq), τ = 8,3 мс\nостаток бюджета тока → IqLim", fillcolor="#fff0dc"];
          iq [label="Iqreq = min(запрос, IqLim)\nнижнего ограничения нет", fillcolor="#fff0dc"];
          pi [label="VectorBase: PI_d, PI_q + развязка\nclamping отдельно по осям"];
          lim [label="Сначала Ud, затем остаток для Uq\nпри |Ud| ≈ Vmax → Uq ≈ 0", fillcolor="#fce7e5"];
          pwm [label="SVPWM → обрезка → задержка\nидеальные источники → PMSM"];
          est [label="Оценщики Psi_est и Lq_est\nпо командам Ud/Uq и токам"];
          { rank=same; req; fw; }
          req -> iq; fw -> id; id -> filt; filt -> iq;
          id -> pi; iq -> pi; pi -> lim; lim -> pwm;
          pwm -> pi [label="токи", style=dashed, constraint=false];
          lim -> fw [label="Ud/Uq", style=dashed, constraint=false];
          lim -> est; pwm -> est [label="токи"];
          est -> fw [style=dashed, constraint=false];
        ''',
        "06_proposed_control": r'''
          rankdir=TB;
          req [label="Запрос момента / Iq\nверхние ограничения"];
          refs [label="Совместные Id/Iq и траектория\nток, напряжение, предел Id\nдополнительный предел доли Ud"];
          hard [label="Жёсткий ограничитель Id/Iq\nодин такт, |Iref| ≤ Is_max\nобе полярности", fillcolor="#e6f4ea"];
          pi [label="PI_d и PI_q + развязка\nU* = Kp·e + x + Uff"];
          proj [label="Выбранный ограничитель напряжения\nприоритет d / ограниченная доля d\nили радиальная проекция", fillcolor="#e9e5f3"];
          act [label="ШИМ → машина\nмодель ограничения и восстановление Udq"];
          aw [label="Согласованный anti-windup\nограниченная команда и U*\nразвязка и время учтены"];
          obs [label="Параметры регулятора\nфиксированные или valid / hold"];
          trim [label="Коррекция ОП\nзапас напряжения и слежение\nконтроль направления изменения Id"];
          { rank=same; aw; pi; }
          { rank=same; hard; trim; }
          req -> refs [weight=10]; refs -> hard [weight=10];
          hard -> pi [weight=10]; pi -> proj [weight=10]; proj -> act [weight=10];
          act -> pi [label="токи", style=dashed, constraint=false];
          pi -> aw [label="U*", constraint=false];
          act -> aw [label="модель ограничения", constraint=false];
          aw -> pi [label="x", color="#238b45", constraint=false];
          act -> obs;
          obs -> refs [style=dashed, constraint=false];
          obs -> pi [style=dashed, constraint=false];
          pi -> trim [label="U*", constraint=false];
          proj -> trim [label="насыщение", constraint=false];
          trim -> refs [style=dashed, constraint=false];
        ''',
    }
    for name, body in sources.items():
        src = "digraph G {\n" + common + body + "\n}\n"
        (IMG / (name + ".dot")).write_text(src)
        subprocess.run(["dot", "-Tpng", str(IMG / (name + ".dot")),
                        "-o", str(IMG / (name + ".png"))], check=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--runs", type=Path, help="Full MATLAB result directory; refresh CSV and summary")
    args = parser.parse_args()
    DATA.mkdir(parents=True, exist_ok=True)
    IMG.mkdir(parents=True, exist_ok=True)
    if args.runs:
        export_runs(args.runs)
    plt.rcParams.update({"font.family": "DejaVu Sans", "font.size": 11,
                         "axes.spines.top": False, "axes.spines.right": False})
    plot_current()
    plot_latch()
    plot_lq()
    plot_pwm()
    plot_projection()
    diagrams()
    print(f"Generated 7 figures in {IMG}")


if __name__ == "__main__":
    main()
