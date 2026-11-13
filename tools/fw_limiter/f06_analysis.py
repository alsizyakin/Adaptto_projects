"""Inspect a verified F06 run and compare it with the matched F05-I trace."""
from argparse import ArgumentParser
import json
from pathlib import Path
import sys

sys.dont_write_bytecode = True
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
from scipy.io import loadmat
from f02_figures import read, compact, episodes
from f04_figures import window_metrics

EXTRA = ("torque", "integrator_fw", "Ud_raw", "Uq_raw", "Uq_limit", "PI_d_raw",
         "PI_q_raw", "integrator_d", "integrator_q", "Vabs_sqrt")


def load(folder, tag, f06=False):
    s = json.loads((folder / "summary.json").read_text())[tag]
    extra = EXTRA + (("fw_psi_cmd", "fw_e_norm") if f06 else ())
    t, d = read(folder, tag, s, True, extra)
    p = s["parameters"]
    we = d["speed"] * p["PolePairs"]
    ld, lq = p["Ld"] * (1+p["deltaLd"]), p["Lq"] * (1+p["deltaLq"])
    rs, psi = p["Rs"] * (1+p["deltaRs"]), p["Psi"] * (1+p["deltaPsi"])
    idr, iqr = d["Iref_dq"].T
    d["Uss_ref"] = np.hypot(rs*idr-we*lq*iqr, rs*iqr+we*(psi+ld*idr))
    d["lambda_d"] = psi+ld*d["Id"]
    udss = rs*d["Id"]-we*lq*d["Iq"]
    uqss = rs*d["Iq"]+we*d["lambda_d"]
    d["stationary_dU_dId"] = (rs*udss+we*ld*uqss)/np.maximum(np.hypot(udss, uqss), 1e-6)
    determinant = rs*rs+we*we*ld*lq
    d["Iq_voltage_equilibrium"] = (-we*ld*d["Ud"]+rs*(d["Uq"]-we*psi))/determinant
    d["Id_voltage_equilibrium"] = (rs*d["Ud"]+we*lq*(d["Uq"]-we*psi))/determinant
    d["de"] = np.abs(d["Id"]-idr)
    return t, d, s


def sample(t, d, requested, ld):
    k = int(np.argmin(abs(t-requested)))
    return {"time": float(t[k]), **{name: float(d[name][k]) for name in
            ("speed", "Id", "Iq", "Ud", "Uq", "Ulim", "Uq_limit", "Vabs_f", "Vs_max",
             "Uss_ref", "lambda_d", "stationary_dU_dId", "PI_d_raw", "PI_q_raw", "integrator_d", "integrator_q",
             "Iq_voltage_equilibrium", "Id_voltage_equilibrium")},
            "Idref": float(d["Iref_dq"][k, 0]), "Iqref": float(d["Iref_dq"][k, 1]),
            "ffA": float(d["Psi_d_ff"][k]/ld), "trimA": float(d["Psi_trim"][k]/ld),
            "stateFlux": float(d["integrator_fw"][k])}


def analyze(t, d, s):
    p = s["parameters"]
    events = episodes(t, d["qerror"] > 100)
    prolonged = [e for e in events if e["duration"] > .02 or e["open"]]
    first = next((e["start"] for e in prolonged if e["start"] > .05), float(t[np.argmax(d["qerror"])]))
    masks = {"0_to_30ms": t < .03, "0_to_0p2s": t < .2, "0_to_1s": t < 1,
             "0_to_2s": t < 2, "after_2s": t >= 2,
             "0p05_to_3s": (t >= .05) & (t < 3)}
    a = {**compact(s, t, d), "parameters": p, "firstProlongedQStart": first,
         "currentPeakTime": float(t[np.argmax(d["imeas"])]),
         "maxAbsFWStateWb": float(np.max(abs(d["integrator_fw"]))),
         "startup": {key: {"maxCurrent": float(d["imeas"][w].max()),
                           "maxQError": float(d["qerror"][w].max()),
                           "maxDError": float(d["de"][w].max()),
                           "maxAbsFWStateWb": float(np.max(abs(d["integrator_fw"][w])))}
                     for key, w in masks.items()}, "windows": [], "selectedSamples": []}
    for start in (.8, 1.8, 2.8, 3.8, 4.8, 5.8, 6.8):
        a["windows"].append(window_metrics(t, d, p, start, start+.18))
    for point in sorted(set([0, .2, 1.4, first-.005, first, first+.005, first+.02, first+.1,
                             2.8, 3.8, 4.8, 5.8, 6.8, 10.15, 10.18, 10.2, 12.18,
                             12.2, 13.5, 14, 16, 19.48, 20, 24.8, a["currentPeakTime"]])):
        a["selectedSamples"].append(sample(t, d, point, p["Ld"]))
    crossing = np.flatnonzero(d["imeas"] > 1.05*p["Is_max"])
    a["firstCurrentAbove441"] = float(t[crossing[0]]) if len(crossing) else None
    w = (t >= 14.2) & (t < 19.4)
    a["lateVoltageEquilibriumDiagnostic"] = {
        "interval": [14.2, 19.4], "IqRmsDifferenceA": float(np.sqrt(np.mean((d["Iq"][w]-d["Iq_voltage_equilibrium"][w])**2))),
        "IdRmsDifferenceA": float(np.sqrt(np.mean((d["Id"][w]-d["Id_voltage_equilibrium"][w])**2))),
        "note": "Stationary calculation from actual allocated voltage and true plant parameters; excludes derivative terms."}
    return a


def tidy(axes):
    for ax in np.ravel(axes):
        ax.grid(alpha=.25)
        ax.set_xlabel("Время, с")
        if ax.lines:
            ax.legend(fontsize=8, loc="best")


def main():
    ap = ArgumentParser(description=__doc__)
    ap.add_argument("folder", type=Path)
    ap.add_argument("tag")
    ap.add_argument("before", type=Path)
    ap.add_argument("before_tag")
    ap.add_argument("output", type=Path)
    args = ap.parse_args(); args.output.mkdir(parents=True, exist_ok=True)
    t, d, s = load(args.folder, args.tag, True)
    t0, d0, s0 = load(args.before, args.before_tag)
    for name, value in s["parameters"].items():
        assert value == s0["parameters"][name], name
    np.testing.assert_array_equal(t, t0)
    for key in ("time", "speed"):
        np.testing.assert_array_equal(s["speedProfile"][key], s0["speedProfile"][key])
    # Identical imposed lookup profiles can produce tiny differences in the
    # physical sensor trace with adaptive solver steps. Record this difference.
    speed_difference = float(np.max(abs(d["speed"]-d0["speed"])))
    assert speed_difference < 1e-4, speed_difference
    before, after = analyze(t0, d0, s0), analyze(t, d, s)
    raw = loadmat(args.folder / f"aug_{args.tag}.mat", simplify_cells=True,
                  variable_names=["integrator_fw", "fw_inputs", "fw_e_norm", "Psi_trim", "fw_psi_cmd"])
    tn = raw["integrator_fw"]["t"]
    dt = float(np.median(np.diff(tn)))
    after["implementation"] = s["controlStructure"]
    after["nativeFwPeriod"] = dt
    after["effectiveKpsiPerSecond"] = s["controlStructure"]["inputs"]["Kpsi"]["value"] * s["parameters"]["FocDiscrTime"]/dt
    after["fwVerification"] = s["fwVerification"]
    result = {"stage": "F06 saved user implementation; no controller edits",
              "maxMeasuredSpeedDifferenceBetweenRuns": speed_difference,
              "before": before, "after": after}
    (args.output/"analysis.json").write_text(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False)+"\n")

    fig, ax = plt.subplots(4, 2, figsize=(14, 11), layout="constrained")
    for col, lim in enumerate(((0, 25), (0, 3))):
        for tt, dd, label, color in ((t0, d0, "F05-I, I = 15", "0.55"), (t, d, "F06, сохранённая модель", "C0")):
            w = (tt >= lim[0]) & (tt <= lim[1])
            series = (dd["imeas"], dd["qerror"], dd["Iref_dq"][:, 0], dd["Psi_trim"]/s["parameters"]["Ld"])
            for row, y in enumerate(series):
                ax[row, col].plot(tt[w], y[w], label=label, color=color, lw=.8)
        ax[0, col].axhline(441, color="k", ls="--", lw=.7, label="Порог 441 А")
        ax[1, col].axhline(100, color="k", ls="--", lw=.7)
        for row, ylabel in enumerate(("Модуль тока, А", "|Iq − Iqref|, А", "Idref, А", "trim / Ld, А")):
            ax[row, col].set(xlim=lim, ylabel=ylabel)
        ax[0, col].set_title("Полный прогон" if col == 0 else "Начальные интервалы")
    tidy(ax)
    fig.suptitle("F06 · Ld +20% · тот же профиль до 738 рад/с", fontsize=14)
    fig.savefig(args.output/"comparison.png", dpi=150); plt.close(fig)

    event = after["firstProlongedQStart"]
    lim = (max(0, event-.45), min(25, event+.32))
    fig, ax = plt.subplots(5, 2, figsize=(14, 13), layout="constrained")
    for col, limits in enumerate((lim, (6.4, 7.4))):
        w = (t >= limits[0]) & (t <= limits[1]); tt = t[w]
        for row, axis in enumerate(("d", "q")):
            ax[row, col].plot(tt, d["I"+axis][w], label="I"+axis, lw=.8)
            ax[row, col].plot(tt, d["Iref_dq"][w, row], "--", label="I"+axis+"ref", lw=.8)
        for key in ("Ud", "Uq"):
            ax[2, col].plot(tt, d[key][w], label=key, lw=.8)
        ax[2, col].plot(tt, d["Uq_limit"][w], "k--", label="Предел Uq", lw=.7)
        ax[3, col].plot(tt, d["Vabs_f"][w], label="Vabs_f", lw=.8)
        ax[3, col].plot(tt, d["Vs_max"][w], "k--", label="U_FW", lw=.8)
        ax[3, col].plot(tt, d["Ulim"][w], ":", label="Ulim", lw=.8)
        ax[3, col].plot(tt, d["Uss_ref"][w], "--", label="U задания, стац. расчёт", lw=.8)
        for key, label in (("Psi_d_ff", "FF / Ld"), ("Psi_trim", "trim / Ld")):
            ax[4, col].plot(tt, d[key][w]/s["parameters"]["Ld"], label=label, lw=.8)
        ax[4, col].plot(tt, d["Iref_dq"][w, 0], "k--", label="Idref", lw=.8)
        for row, ylabel in enumerate(("Id, А", "Iq, А", "Напряжение dq, В", "Модуль напряжения, В", "Слагаемые Id, А")):
            ax[row, col].set(xlim=limits, ylabel=ylabel)
        ax[0, col].set_title("Первый длительный срыв слежения q" if col == 0 else "Глубокое ослабление, 738 рад/с")
    tidy(ax)
    fig.suptitle("F06 · переход к потере слежения и высокоскоростная полка", fontsize=14)
    fig.savefig(args.output/"collapse.png", dpi=150); plt.close(fig)

    en = raw["fw_e_norm"]["y"]
    indices = np.flatnonzero((en < -.001) & (tn > .1))
    center = float(tn[indices[0]]) if len(indices) else 1.5
    w = (tn >= center-2*dt) & (tn <= center+12*dt)
    fig, ax = plt.subplots(2, 1, figsize=(11, 6), layout="constrained")
    ax[0].step(tn[w], en[w], where="post", marker=".", label="Нормированная ошибка")
    ax[1].step(tn[w], raw["integrator_fw"]["y"][w]/s["parameters"]["Ld"], where="post", marker=".", label="Состояние / Ld")
    ax[1].step(tn[w], raw["Psi_trim"]["y"][w]/s["parameters"]["Ld"], where="post", label="Выход trim / Ld")
    ax[0].set_ylabel("e, о.е."); ax[1].set_ylabel("Поправка, А")
    tidy(ax)
    fig.suptitle(f"F06 · фактический такт {dt*1e6:.3f} мкс; шаг в формуле {s['parameters']['FocDiscrTime']*1e6:.3f} мкс", fontsize=13)
    fig.savefig(args.output/"fw_timing.png", dpi=150); plt.close(fig)

    fig, ax = plt.subplots(4, 1, figsize=(11, 10), layout="constrained")
    w = (t >= 12) & (t <= 20); tt = t[w]
    locked = w & (t >= 12.18) & (t < 19.489916666666666)
    ax[0].plot(tt, d["speed"][w], label="Навязанная скорость")
    ax[1].plot(tt, d["Id"][w], label="Id", lw=.8)
    ax[1].plot(tt, d["Iref_dq"][w, 0], "--", label="Idref", lw=.8)
    ax[2].plot(tt, d["Iq"][w], label="Iq", lw=1.3)
    ax[2].plot(tt, d["Iref_dq"][w, 1], "--", label="Iqref", lw=.8)
    ax[2].plot(t[locked], d["Iq_voltage_equilibrium"][locked], "k:", lw=1.3,
               label="Iq из стационарных уравнений при выделенных Ud/Uq")
    for key in ("Ud", "Uq"):
        ax[3].plot(tt, d[key][w], label=key, lw=.8)
    for a, ylabel in zip(ax, ("Скорость, рад/с", "Id, А", "Iq, А", "Ud / Uq, В")):
        a.set(xlim=(12, 20), ylabel=ylabel)
    tidy(ax)
    fig.suptitle("F06 · удержание Ud на пределе и рост тока при снижении скорости", fontsize=13)
    fig.savefig(args.output/"saturated_recovery.png", dpi=150); plt.close(fig)
    print(json.dumps({"beforeMaxI": before["maxMeasuredCurrent"], "afterMaxI": after["maxMeasuredCurrent"],
                      "firstLongQ": event, "fwPeriod": dt, "effectiveKpsi": after["effectiveKpsiPerSecond"],
                      "dSatLongest": after["dSaturation"]["longestDuration"]}, indent=2))


if __name__ == "__main__":
    main()
