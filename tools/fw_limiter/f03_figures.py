"""Check the F03 q-voltage reserve, compare F02, and diagnose saturation onset."""
from argparse import ArgumentParser
import json
from pathlib import Path
import sys

sys.dont_write_bytecode = True
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

from f02_figures import PARAMETERS, compact, read, oscillation


EXTRA = ("Iq_voltLim", "Iq_voltLim_used", "Iq_request", "torque", "Ud_raw", "Uq_raw",
         "integrator_d", "integrator_q", "dPsi", "freeze", "reset", "PI_d_raw", "PI_q_raw")


def steady_voltage(d, p):
    refs = d["Iref_dq"]
    we = d["speed"] * p["PolePairs"]
    rs, ld, lq, psi = (p[n] * (1 + p["delta" + n]) for n in ("Rs", "Ld", "Lq", "Psi"))
    return np.hypot(rs * refs[:, 0] - we * lq * refs[:, 1],
                    rs * refs[:, 1] + we * (psi + ld * refs[:, 0]))


def point(t, d, when):
    i = np.searchsorted(t, when + 1e-12, side="right") - 1
    values = {k: float(d[k][i]) for k in ("Id", "Iq", "Ud", "Uq", "Ud_raw", "Uq_raw", "Ulim",
               "Uss", "speed", "integrator_d", "integrator_q", "Psi_d_ff", "Psi_trim", "sens", "sens_filt",
               "Vabs_f", "Vs_max", "dPsi", "freeze", "reset", "Iq_voltLim", "Iq_voltLim_used")}
    values.update(t=float(t[i]), Idref=float(d["Iref_dq"][i, 0]), Iqref=float(d["Iref_dq"][i, 1]))
    values["commandNorm"] = float(np.hypot(d["Ud"][i], d["Uq"][i]))
    return values


def main():
    parser = ArgumentParser(description=__doc__)
    parser.add_argument("before", type=Path)
    parser.add_argument("after", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    result = {"stage": "F03: 0.95 gain in the q-voltage-budget branch", "cases": []}
    for profile, title in (("hold204", "408 → 204 рад/с"), ("sweep738", "До 738 рад/с со снижением")):
        bs = json.loads((args.before / profile / "summary.json").read_text())
        fs = json.loads((args.after / profile / "summary.json").read_text())
        fig, ax = plt.subplots(4, 2, figsize=(14, 12), layout="constrained")
        fig.suptitle(f"F03 · {title} · запас напряженческого бюджета Iq", fontsize=14)
        for col, tag in enumerate(("nom", "ldp20")):
            before, after = bs[tag], fs[tag]
            assert all(before["parameters"][k] == after["parameters"][k] for k in PARAMETERS)
            assert before["actualDeltas"] == after["actualDeltas"]
            assert all(before["speedProfile"][k] == after["speedProfile"][k] for k in ("time", "speed"))
            case = {"profile": profile, "scenario": tag}
            for stage, folder, summary, label, color in (
                    ("before", args.before, before, "F02: без запаса q", "tab:blue"),
                    ("after", args.after, after, "F03: запас q, коэффициент 0,95", "tab:orange")):
                t, d = read(folder / profile, tag, summary, True, EXTRA)
                case[stage] = compact(summary, t, d)
                for row, key in enumerate(("iref", "imeas", "qerror", "torque")):
                    ax[row, col].plot(t, d[key], label=label, color=color, lw=.8)
                if profile == "sweep738":
                    windows = []
                    for start in (2.8, 3.8, 4.8, 5.8, 6.8):
                        w = oscillation(t, d, summary["parameters"], start, start + .18)
                        s = (t >= start) & (t < start + .18)
                        w["meanTorque"] = float(d["torque"][s].mean())
                        w["meanIq"] = float(d["Iq"][s].mean())
                        w["meanId"] = float(d["Id"][s].mean())
                        windows.append(w)
                    case[stage]["windows"] = windows
                if stage == "after":
                    residual = d["Iq_voltLim_used"] - .95 * d["Iq_voltLim"]
                    np.testing.assert_allclose(d["Iq_voltLim_used"], .95 * d["Iq_voltLim"], rtol=1e-12, atol=1e-8)
                    case[stage]["maxVoltageBudgetGainResidual"] = float(np.max(np.abs(residual)))
                    if profile == "sweep738":
                        d["Uss"] = steady_voltage(d, summary["parameters"])
                        events = summary["tracking_q"]["events"]
                        events = [events] if isinstance(events, dict) else events
                        long = [e for e in events if e["prolonged"]]
                        # F03 nominal growth begins before the 100 A / 20 ms
                        # tracking criterion; include it rather than centering
                        # the whole diagnosis on that later threshold crossing.
                        center = long[0]["start"] if long else 6.8
                        window = (6.1, 7.4) if tag == "nom" else (max(0, center - .15), min(25, center + .35))
                        case[stage]["diagnosticWindow"] = list(window)
                        sample_times = ([6.0, 6.6, 6.7, 6.8, 7.14, 7.15, 7.18, 7.3, 7.4] if tag == "nom"
                                        else [center + offset for offset in (-.1, -.04, -.01, 0, .02, .10, .25)])
                        case[stage]["diagnosticSamples"] = [point(t, d, when) for when in sample_times if 0 <= when <= 25]
                        if tag == "nom":
                            norm = np.hypot(d["Ud"], d["Uq"])
                            feedback_windows = []
                            for a, b in ((6.55, 6.6), (6.65, 6.7), (6.7, 6.8), (6.8, 6.9), (7.28, 7.32)):
                                s = (t >= a) & (t < b)
                                feedback_windows.append({"start": a, "endExclusive": b,
                                    "commandNormMin": float(norm[s].min()), "commandNormMean": float(norm[s].mean()),
                                    "commandNormMax": float(norm[s].max()),
                                    "feedbackMean": float(d["Vabs_f"][s].mean()),
                                    "feedbackMin": float(d["Vabs_f"][s].min()), "feedbackMax": float(d["Vabs_f"][s].max()),
                                    "trimStartA": float(d["Psi_trim"][s][0] / summary["parameters"]["Ld"]),
                                    "trimEndA": float(d["Psi_trim"][s][-1] / summary["parameters"]["Ld"])})
                            case[stage]["feedbackWindows"] = feedback_windows
                        plot_onset(t, d, summary["parameters"], tag, window, args.output)
            result["cases"].append(case)
            ax[0, col].set_title("Номинал" if tag == "nom" else "Ld +20%")
            for row, (ylabel, limit) in enumerate((("Модуль задания, А", 420), ("Измеренный ток, А", 441),
                                                   ("|Iq − Iqref|, А", 100), ("Момент, Н·м", None))):
                if limit is not None:
                    ax[row, col].axhline(limit, color="black", ls="--", lw=.8, label=f"Порог {limit} А")
                ax[row, col].set(xlim=(0, 25), xlabel="Время, с", ylabel=ylabel)
                ax[row, col].grid(alpha=.25)
                ax[row, col].legend(fontsize=8, loc="upper left" if profile == "sweep738" else "upper right")
        fig.savefig(args.output / f"{profile}_comparison.png", dpi=150)
        plt.close(fig)
    (args.output / "comparison.json").write_text(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False) + "\n")
    for c in result["cases"]:
        print(c["profile"], c["scenario"], "Imax", c["after"]["maxMeasuredCurrent"],
              "longest d saturation", c["after"]["dSaturation"]["longestDuration"])


def plot_onset(t, d, p, tag, window, output):
    fig, axes = plt.subplots(6, 1, figsize=(13, 15), layout="constrained")
    s = (t >= window[0]) & (t <= window[1])
    x = t[s]
    fig.suptitle(f"F03 · диагностический участок · {'Номинал' if tag == 'nom' else 'Ld +20%'}\n"
                 "Профиль до 738 рад/с; напряжения — команды, Uss — стационарный расчёт задания", fontsize=13)
    for row, key in enumerate(("Id", "Iq")):
        axes[row].plot(x, d[key][s], label=f"{key}: измерение", lw=1)
        axes[row].plot(x, d["Iref_dq"][s, row], "--", label=f"{key}: задание", lw=1)
    for key in ("Ud", "Uq"):
        axes[2].plot(x, d[key][s], label=key, lw=1)
    axes[2].plot(x, d["Ulim"][s], "k--", lw=.8, label="±Ulim")
    axes[2].plot(x, -d["Ulim"][s], "k--", lw=.8)
    axes[3].plot(x, np.hypot(d["Ud"][s], d["Uq"][s]), color="0.65", lw=.7, label="Модуль команды Ud/Uq")
    for key, label in (("Uss", "Uss заданной пары"), ("Vabs_f", "Обратная связь ОП"),
                       ("Vs_max", "Цель ОП"), ("Ulim", "Ulim")):
        axes[3].plot(x, d[key][s], label=label, lw=1)
    for key, label in (("Psi_d_ff", "FF/Ld"), ("Psi_trim", "trim/Ld")):
        axes[4].plot(x, d[key][s] / p["Ld"], label=label, lw=1)
    axes[5].plot(x, d["sens"][s], label="sens", lw=1)
    axes[5].plot(x, d["sens_filt"][s], label="sens до порога", lw=.8)
    for ax, ylabel in zip(axes, ("Id, А", "Iq, А", "Ud / Uq, В", "Модуль напряжения, В", "Эквивалент Id, А", "sens")):
        ax.set(xlim=window, xlabel="Время, с", ylabel=ylabel)
        ax.grid(alpha=.25)
        ax.legend(fontsize=8, loc="best")
    fig.savefig(output / f"sweep738_{tag}_onset.png", dpi=150)
    plt.close(fig)


if __name__ == "__main__":
    main()
