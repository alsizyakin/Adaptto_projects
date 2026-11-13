"""F05-W: compare saved woFreeze (gate=0) with D06; assess negative Ld error."""
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

from f02_figures import PARAMETERS, compact, read, episodes
from f04_figures import window_metrics


EXTRA = ("torque", "fw_input_gated", "integrator_fw", "Psi_candidate", "Ud_raw", "Uq_raw")


def assess_new(folder, tag, summary):
    t, d = read(folder, tag, summary, True, EXTRA)
    p = summary["parameters"]
    native = loadmat(folder / f"aug_{tag}.mat", simplify_cells=True, variable_names=["freeze_used"])
    gate = native["freeze_used"]
    assert np.isfinite(gate["y"]).all() and np.max(np.abs(gate["y"])) == 0
    assert summary["controlStructure"]["freezeTagSource"] == "Constant16"
    assert summary["controlStructure"]["trimUpperFlux"] == 500 * p["Ld"]
    assert summary["controlStructure"]["trimLowerFlux"] == -500 * p["Ld"]
    checks = {
        "freezeUsedMaxAbs": float(np.max(np.abs(gate["y"]))),
        "integratorInputMaxAbs": float(np.max(np.abs(d["fw_input_gated"]))),
        "trimMaxAbsA": float(np.max(np.abs(d["Psi_trim"])) / p["Ld"]),
        "integratorStateMaxAbs": float(np.max(np.abs(d["integrator_fw"]))),
        "sumMinusFFMaxAbs": float(np.max(np.abs(d["Psi_candidate"] - d["Psi_d_ff"]))),
    }
    assert all(v < 1e-12 for v in checks.values()), checks
    idref, iqref = d["Iref_dq"].T
    we = p["PolePairs"] * d["speed"]
    ld = p["Ld"] * (1 + p["deltaLd"])
    lq = p["Lq"] * (1 + p["deltaLq"])
    rs = p["Rs"] * (1 + p["deltaRs"])
    psi = p["Psi"] * (1 + p["deltaPsi"])
    d["UssRef"] = np.hypot(rs * idref - we * lq * iqref, rs * iqref + we * (psi + ld * idref))
    d["fluxAtRef"] = psi + ld * idref
    case = {**compact(summary, t, d), "disabledTrimChecks": checks,
            "maxStationaryReferenceVoltage": float(d["UssRef"].max()),
            "stationaryReferenceAboveHardLimitFraction": float(np.mean(d["UssRef"] > d["Ulim"] + 1e-6)),
            "parameters": p}
    k = int(np.argmin(d["Iq"]))
    after_start = t >= .05
    errors = np.where(after_start, d["qerror"], -1)
    ke = int(np.argmax(errors))
    case["transientDiagnostics"] = {
        "minIq": float(d["Iq"][k]), "minIqTime": float(t[k]),
        "IqrefAtMinIq": float(iqref[k]),
        "maxQErrorAfter50ms": float(errors[ke]), "maxQErrorTime": float(t[ke]),
        "qErrorEpisodesAfter50ms": [e for e in episodes(t, d["qerror"] > 100) if e["start"] >= .05],
        "minimumTorqueOnCurrentGrid": float(d["torque"].min()),
    }
    case["selectedSamples"] = []
    for requested in (2.8, 3.3, 6.8, 7.532333333333333, 20.0):
        j = int(np.argmin(np.abs(t - requested)))
        case["selectedSamples"].append({
            "time": float(t[j]), "speed": float(d["speed"][j]),
            "Id": float(d["Id"][j]), "Iq": float(d["Iq"][j]),
            "Idref": float(idref[j]), "Iqref": float(iqref[j]),
            "Ud": float(d["Ud"][j]), "Uq": float(d["Uq"][j]),
            "UssReference": float(d["UssRef"][j]), "Ulim": float(d["Ulim"][j]),
            "fluxAtReference": float(d["fluxAtRef"][j]),
        })
    return t, d, case


def main():
    ap = ArgumentParser(description=__doc__)
    ap.add_argument("before", type=Path)
    ap.add_argument("after", type=Path)
    ap.add_argument("output", type=Path)
    args = ap.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    result = {"stage": "F05-W: freeze tag=0 disables correction; FF preserved; trim limits +/-500 A inactive", "cases": []}
    detail, da = plt.subplots(5, 2, figsize=(14, 13), layout="constrained")
    for profile, title in (("hold204", "408 → 204"), ("sweep738", "До 738 со снижением")):
        old = json.loads((args.before / profile / "summary.json").read_text())
        new = json.loads((args.after / profile / "summary.json").read_text())
        fig, axes = plt.subplots(4, 2, figsize=(14, 11), layout="constrained")
        fig.suptitle(f"F05-W · {title} рад/с · отключён вход подстройки, FF сохранён", fontsize=14)
        for col, tag in enumerate(("nom", "ldp20")):
            assert all(old[tag]["parameters"][k] == new[tag]["parameters"][k] for k in PARAMETERS)
            assert all(old[tag]["speedProfile"][k] == new[tag]["speedProfile"][k] for k in ("time", "speed"))
            case = {"profile": profile, "scenario": tag}
            for stage, folder, s, label, color in (
                    ("before", args.before / profile, old[tag], "D06: FF + подстройка", "tab:blue"),
                    ("after", args.after / profile, new[tag], "F05-W: FF, подстройка = 0", "tab:orange")):
                if stage == "after":
                    t, d, case[stage] = assess_new(folder, tag, s)
                else:
                    t, d = read(folder, tag, s, True, EXTRA)
                    case[stage] = compact(s, t, d)
                for row, key in enumerate(("iref", "imeas", "qerror", "torque")):
                    axes[row, col].plot(t, d[key], label=label, color=color, lw=.8)
                if profile == "sweep738":
                    case[stage]["windows"] = [window_metrics(t, d, s["parameters"], a, a + .18) for a in (4.8, 5.8, 6.8)]
                    if stage == "after":
                        for window in case[stage]["windows"]:
                            wi = (t >= window["start"]) & (t < window["endExclusive"])
                            window.update({
                                "meanId": float(np.mean(d["Id"][wi])),
                                "meanIdref": float(np.mean(d["Iref_dq"][wi, 0])),
                                "meanStationaryReferenceVoltage": float(np.mean(d["UssRef"][wi])),
                                "meanUd": float(np.mean(d["Ud"][wi])),
                                "meanUq": float(np.mean(d["Uq"][wi])),
                            })
                        w = (t >= 6.4) & (t <= 7.4); x = t[w]
                        for row, key in enumerate(("Id", "Iq")):
                            da[row, col].plot(x, d[key][w], label=key, lw=.8)
                            da[row, col].plot(x, d["Iref_dq"][w, row], "--", label=key + "ref", lw=1)
                        for key in ("Ud", "Uq"):
                            da[2, col].plot(x, d[key][w], label=key, lw=.8)
                        da[3, col].plot(x, np.hypot(d["Ud"][w], d["Uq"][w]), label="Модуль команды", lw=.7, color="0.65")
                        da[3, col].plot(x, d["Vabs_f"][w], label="Обратная связь", lw=1)
                        da[3, col].plot(x, d["Vs_max"][w], "k--", label="Цель ОП", lw=.8)
                        da[4, col].plot(x, d["Psi_d_ff"][w] / s["parameters"]["Ld"], label="FF / Ld", lw=1)
                        da[4, col].plot(x, d["Psi_trim"][w] / s["parameters"]["Ld"], label="trim / Ld", lw=1)
            result["cases"].append(case)
            axes[0, col].set_title("Номинал" if tag == "nom" else "Ld +20%")
            for row, (ylabel, limit) in enumerate((("Модуль задания, А", 420), ("Измеренный ток, А", 441),
                                                   ("|Iq − Iqref|, А", 100), ("Момент, Н·м", None))):
                if limit is not None:
                    axes[row, col].axhline(limit, color="k", ls="--", lw=.8, label=f"Порог {limit} А")
                axes[row, col].set(xlim=(0, 25), xlabel="Время, с", ylabel=ylabel)
                axes[row, col].grid(alpha=.25); axes[row, col].legend(fontsize=8, loc="upper left")
        fig.savefig(args.output / f"{profile}_comparison.png", dpi=150, bbox_inches="tight", pad_inches=.15)
        plt.close(fig)
    for col in range(2):
        da[0, col].set_title("Номинал" if col == 0 else "Ld +20%")
        for row, ylabel in enumerate(("Id, А", "Iq, А", "Ud / Uq, В", "Модуль напряжения, В", "Слагаемые задания, А")):
            da[row, col].set(xlim=(6.4, 7.4), xlabel="Время, с", ylabel=ylabel)
            da[row, col].grid(alpha=.25); da[row, col].legend(fontsize=8, loc="best")
    detail.suptitle("F05-W · переходы на 738 рад/с · фактическая подстройка равна нулю", fontsize=14)
    detail.savefig(args.output / "sweep738_transition.png", dpi=150, bbox_inches="tight", pad_inches=.15)
    plt.close(detail)

    folder = args.after / "sweep738_ldm20"
    s = json.loads((folder / "summary.json").read_text())["ldm20"]
    t, d, extra = assess_new(folder, "ldm20", s)
    extra["scenario"] = "Ld -20%, saved sweep738 profile; no before-run for this plant error"
    result["additionalScenario"] = extra
    events = extra["tracking_q"]["prolongedOrOpenEvents"]
    onset = events[0]["start"] if events else 6.6
    zoom = (max(0, onset - .2), min(25, onset + .5))
    fig, axes = plt.subplots(4, 2, figsize=(14, 11), layout="constrained")
    for col, window in enumerate(((0, 25), zoom)):
        w = (t >= window[0]) & (t <= window[1]); x = t[w]
        axes[0, col].plot(x, d["iref"][w], label="Модуль задания", lw=.8)
        axes[0, col].plot(x, d["imeas"][w], label="Модуль тока", lw=.8)
        axes[0, col].axhline(441, color="k", ls="--", label="Порог 441 А", lw=.8)
        for row, key in enumerate(("Id", "Iq"), 1):
            axes[row, col].plot(x, d[key][w], label=key, lw=.8)
            axes[row, col].plot(x, d["Iref_dq"][w, row - 1], "--", label=key + "ref", lw=.8)
        axes[3, col].plot(x, d["UssRef"][w], label="Uss задания по истинной Ld", lw=.8)
        axes[3, col].plot(x, d["Ulim"][w], "k--", label="Ulim", lw=.8)
        for row, ylabel in enumerate(("Ток, А", "Id, А", "Iq, А", "Стационарное U задания, В")):
            axes[row, col].set(xlim=window, xlabel="Время, с", ylabel=ylabel)
            axes[row, col].grid(alpha=.25); axes[row, col].legend(fontsize=8, loc="best")
    axes[0, 0].set_title("Полный прогон")
    axes[0, 1].set_title("Начало длительной ошибки q" if events else "Переход на полке 738")
    fig.suptitle("F05-W · дополнительный сценарий Ld −20% · логика управления сохранена", fontsize=14)
    fig.savefig(args.output / "ldm20_extra.png", dpi=150, bbox_inches="tight", pad_inches=.15)
    plt.close(fig)
    (args.output / "comparison.json").write_text(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False) + "\n")
    for c in result["cases"]:
        a = c["after"]
        print(c["profile"], c["scenario"], "maxI", a["maxMeasuredCurrent"], "q events", a["tracking_q"]["prolongedOrOpenEvents"])
    print("ldm20", extra["maxMeasuredCurrent"], extra["tracking_q"]["prolongedOrOpenEvents"])


if __name__ == "__main__":
    main()
