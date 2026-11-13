"""F04: scalar magnitude filtering, matched-run comparison and remaining ripple."""
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


EXTRA = ("Vabs_sqrt", "Uq_limit", "Vdc_filt", "Iq_voltLim", "Iq_voltLim_used", "torque")


def window_metrics(t, d, p, start, end):
    w = oscillation(t, d, p, start, end)
    select = (t >= start) & (t < end)
    norm = np.hypot(d["Ud"][select], d["Uq"][select])
    w.update(meanTorque=float(d["torque"][select].mean()), meanIq=float(d["Iq"][select].mean()),
             meanCommandMagnitude=float(norm.mean()), meanFWFeedback=float(d["Vabs_f"][select].mean()),
             UdPeakToPeak=float(np.ptp(d["Ud"][select])), UqPeakToPeak=float(np.ptp(d["Uq"][select])))
    return w


def main():
    parser = ArgumentParser(description=__doc__)
    parser.add_argument("before", type=Path)
    parser.add_argument("after", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    result = {"stage": "F04: filter magnitude rather than components; saved d-limit gain=1", "cases": []}
    feedback, fa = plt.subplots(4, 2, figsize=(14, 12), layout="constrained")
    transient, ta = plt.subplots(4, 2, figsize=(14, 11), layout="constrained")
    for profile, title in (("hold204", "408 → 204 рад/с"), ("sweep738", "До 738 рад/с со снижением")):
        old = json.loads((args.before / profile / "summary.json").read_text())
        new = json.loads((args.after / profile / "summary.json").read_text())
        fig, axes = plt.subplots(4, 2, figsize=(14, 12), layout="constrained")
        fig.suptitle(f"F04 · {title} · фильтрация модуля напряжения", fontsize=14)
        for col, tag in enumerate(("nom", "ldp20")):
            assert all(old[tag]["parameters"][k] == new[tag]["parameters"][k] for k in PARAMETERS)
            assert old[tag]["actualDeltas"] == new[tag]["actualDeltas"]
            assert all(old[tag]["speedProfile"][k] == new[tag]["speedProfile"][k] for k in ("time", "speed"))
            case = {"profile": profile, "scenario": tag}
            for stage, root, summary, label, color in (
                    ("before", args.before, old[tag], "F03: модуль после фильтров компонент", "tab:blue"),
                    ("after", args.after, new[tag], "F04: фильтр после модуля", "tab:orange")):
                t, d = read(root / profile, tag, summary, True, EXTRA)
                p = summary["parameters"]
                case[stage] = compact(summary, t, d)
                for row, key in enumerate(("iref", "imeas", "qerror", "torque")):
                    axes[row, col].plot(t, d[key], label=label, color=color, lw=.8)
                if stage == "after":
                    magnitude_residual = d["Vabs_sqrt"] - np.hypot(d["Ud"], d["Uq"])
                    q_budget_residual = d["Iq_voltLim_used"] - .95 * d["Iq_voltLim"]
                    ud_limit_residual = d["Ulim"] - p["mMaxCurrent"] * d["Vdc_filt"] / np.sqrt(3)
                    q_limit_residual = d["Uq_limit"] - np.sqrt(np.maximum(.001, d["Ulim"]**2 - d["Ud"]**2))
                    for key, residual in (("magnitudeResidual", magnitude_residual), ("qBudgetGainResidual", q_budget_residual),
                                          ("dLimitGainOneResidual", ud_limit_residual), ("qVoltageLimitResidual", q_limit_residual)):
                        case[stage][key] = float(np.max(np.abs(residual)))
                        assert case[stage][key] < 1e-6, (profile, tag, key, case[stage][key])
                if profile == "sweep738":
                    case[stage]["windows"] = [window_metrics(t, d, p, a, a + .18) for a in (4.8, 5.8, 6.8)]
                    case[stage]["feedbackWindows"] = []
                    for a, b in ((6.7, 6.8), (6.8, 6.9)):
                        s = (t >= a) & (t < b)
                        case[stage]["feedbackWindows"].append({"start": a, "endExclusive": b,
                            "commandNormMean": float(np.hypot(d["Ud"][s], d["Uq"][s]).mean()),
                            "feedbackMean": float(d["Vabs_f"][s].mean()),
                            "trimStartA": float(d["Psi_trim"][s][0] / p["Ld"]),
                            "trimEndA": float(d["Psi_trim"][s][-1] / p["Ld"])})
                    if tag == "nom":
                        c = 0 if stage == "before" else 1
                        select = (t >= 6.5) & (t <= 7.4)
                        x = t[select]
                        fa[0, c].plot(x, d["Id"][select], label="Id", lw=1)
                        fa[0, c].plot(x, d["Iref_dq"][select, 0], "--", label="Idref", lw=1)
                        fa[1, c].plot(x, np.hypot(d["Ud"][select], d["Uq"][select]), color="0.65", lw=.7, label="Модуль команды Ud/Uq")
                        fa[1, c].plot(x, d["Vabs_f"][select], label="Обратная связь ОП", lw=1)
                        fa[1, c].plot(x, d["Vs_max"][select], "k--", label="Цель ОП", lw=.8)
                        fa[2, c].plot(x, d["Psi_trim"][select] / p["Ld"], label="trim / Ld", lw=1)
                        for key in ("Ud", "Uq"):
                            fa[3, c].plot(x, d[key][select], label=key, lw=.8)
                        fa[0, c].set_title("F03" if stage == "before" else "F04 · Gain d = 1")
                    if stage == "after":
                        select = (t >= 6.50) & (t <= 6.80)
                        x = t[select]
                        for row, key in enumerate(("Id", "Iq")):
                            ta[row, col].plot(x, d[key][select], label=key, lw=1)
                            ta[row, col].plot(x, d["Iref_dq"][select, row], "--", label=key + "ref", lw=1)
                        for key in ("Ud", "Uq"):
                            ta[2, col].plot(x, d[key][select], label=key, lw=.8)
                        ta[3, col].plot(x, d["Uq_limit"][select], label="Доступный модуль Uq", lw=1)
                        ta[0, col].set_title("Номинал" if tag == "nom" else "Ld +20%")
                        case[stage]["loadStepWindow"] = window_metrics(t, d, p, 6.50, 6.80)
            result["cases"].append(case)
            axes[0, col].set_title("Номинал" if tag == "nom" else "Ld +20%")
            for row, (ylabel, limit) in enumerate((("Модуль задания, А", 420), ("Измеренный ток, А", 441),
                                                  ("|Iq − Iqref|, А", 100), ("Момент, Н·м", None))):
                if limit is not None:
                    axes[row, col].axhline(limit, color="black", ls="--", lw=.8, label=f"Порог {limit} А")
                axes[row, col].set(xlim=(0, 25), xlabel="Время, с", ylabel=ylabel)
                axes[row, col].grid(alpha=.25)
                axes[row, col].legend(fontsize=8, loc="upper left" if profile == "sweep738" else "upper right")
        fig.savefig(args.output / f"{profile}_comparison.png", dpi=150)
        plt.close(fig)
    feedback.suptitle("F04 · устранение занижения обратной связи ОП · номинальная машина", fontsize=14)
    transient.suptitle("F04 · оставшиеся переходные колебания при набросе Iq · 738 рад/с", fontsize=14)
    for col in range(2):
        for row, label in enumerate(("Id, А", "Модуль напряжения, В", "Подстройка в амперах Id", "Ud / Uq, В")):
            fa[row, col].set(xlim=(6.5, 7.4), xlabel="Время, с", ylabel=label)
            fa[row, col].grid(alpha=.25)
            fa[row, col].legend(fontsize=8, loc="best")
        for row, label in enumerate(("Id, А", "Iq, А", "Ud / Uq, В", "Предел Uq, В")):
            ta[row, col].set(xlim=(6.5, 6.8), xlabel="Время, с", ylabel=label)
            ta[row, col].grid(alpha=.25)
            ta[row, col].legend(fontsize=8, loc="best")
    feedback.savefig(args.output / "feedback_comparison.png", dpi=150)
    transient.savefig(args.output / "load_step_zoom.png", dpi=150)
    plt.close(feedback)
    plt.close(transient)
    (args.output / "comparison.json").write_text(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False) + "\n")
    for c in result["cases"]:
        print(c["profile"], c["scenario"], "Imax", c["after"]["maxMeasuredCurrent"],
              "d saturation max", c["after"]["dSaturation"]["longestDuration"])


if __name__ == "__main__":
    main()
