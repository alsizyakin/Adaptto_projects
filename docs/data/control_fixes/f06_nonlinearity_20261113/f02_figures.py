"""Compare F02 (fixed controller parameters) against F01 on matched profiles."""
from argparse import ArgumentParser
import hashlib
import json
from pathlib import Path
import sys

sys.dont_write_bytecode = True
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
from scipy.io import loadmat
from scipy.signal import periodogram

from baseline_comparison import compact_tracking


SIGNALS = ("Id", "Iq", "Iref_dq", "Ud", "Uq", "Ulim", "Vabs_f", "Vs_max",
           "Psi_est", "Lq_est", "Psi_used", "Lq_used", "Psi_d_ff", "Psi_trim", "sens", "sens_filt", "speed")
PARAMETERS = ("Is_max", "FocDiscrTime", "Ld", "Lq", "Psi", "Rs", "PolePairs", "VDC",
              "mMaxPWM", "mMaxCurrent", "mFW", "deltaLd", "deltaLq", "deltaPsi", "deltaRs")


def digest(path):
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def held(signal, t):
    st, rev = np.unique(signal["t"][::-1], return_index=True)
    sy = signal["y"][len(signal["t"]) - 1 - rev]
    i = np.searchsorted(st, t, side="right") - 1
    assert np.all(i >= 0) and t[-1] <= st[-1] + 1e-12
    return sy[i]


def read(folder, tag, summary, fixed, extra=()):
    path = folder / f"aug_{tag}.mat"
    assert digest(path) == summary["matSha256"]
    r = loadmat(path, simplify_cells=True, variable_names=list(SIGNALS) + list(extra))
    t = r["Id"]["t"]
    for key in ("Iq", "Iref_dq"):
        np.testing.assert_array_equal(t, r[key]["t"])
    data = {k: held(v, t) for k, v in r.items() if not k.startswith("__")}
    assert all(np.isfinite(v).all() for v in data.values())
    data["iref"] = np.linalg.norm(data["Iref_dq"], axis=1)
    data["imeas"] = np.hypot(data["Id"], data["Iq"])
    data["qerror"] = np.abs(data["Iq"] - data["Iref_dq"][:, 1])
    for name, key in (("maxReferenceCurrent", "iref"), ("maxMeasuredCurrent", "imeas")):
        np.testing.assert_allclose(data[key].max(), summary[name], atol=1e-6, rtol=0)
    assert all(summary[k] for k in ("completed", "finite", "coverage", "fullResolution", "jointReferenceLog"))
    if fixed:
        for name in ("Psi", "Lq"):
            np.testing.assert_allclose(data[name + "_used"], summary["parameters"][name], rtol=0, atol=1e-12)
    return t, data


def episodes(t, mask):
    edges = np.diff(np.r_[False, mask, False].astype(int))
    starts = np.flatnonzero(edges == 1)
    ends = np.flatnonzero(edges == -1)
    return [{"start": float(t[a]), "end": float(t[min(b, len(t) - 1)]),
             "duration": float(t[min(b, len(t) - 1)] - t[a]), "open": bool(b == len(t))}
            for a, b in zip(starts, ends)]


def compact(summary, t, d):
    e = episodes(t, (np.abs(d["Ud"]) >= d["Ulim"] - 1e-6) & (np.abs(d["Uq"]) < 0.1))
    return {**{k: summary[k] for k in ("maxReferenceCurrent", "maxMeasuredCurrent", "referenceWithinLimit",
                                      "measuredWithinLimit", "dutyWithinLimit", "matSha256", "sourceSha256")},
            "tracking_d": compact_tracking(summary["tracking_d"]),
            "tracking_q": compact_tracking(summary["tracking_q"]),
            "dSaturation": {"definition": "abs(Ud)>=Ulim-1e-6 V and abs(Uq)<0.1 V, no gap merging",
                            "longestDuration": max((x["duration"] for x in e), default=0),
                            "totalDuration": sum(x["duration"] for x in e),
                            "episodesOver20msOrOpen": [x for x in e if x["duration"] > .02 or x["open"]]}}


def oscillation(t, d, p, start, end):
    # Quantifies the selected constant-speed window, not global stability.
    s = (t >= start) & (t < end)
    y = d["Id"][s]
    freq, power = periodogram(y, fs=1 / p["FocDiscrTime"], window="hann", detrend="constant")
    band = (freq >= 50) & (freq <= 2000)
    mid = len(y) // 2
    q = d["Iref_dq"][s, 1]
    we = d["speed"][s] * p["PolePairs"]
    resistance = p["Rs"] * (1 + p["deltaRs"])
    ld = p["Ld"] * (1 + p["deltaLd"])
    lq = p["Lq"] * (1 + p["deltaLq"])
    psi = p["Psi"] * (1 + p["deltaPsi"])
    # Unconstrained minimum over Id for a fixed Iq. If even this minimum
    # exceeds the FW target, no Id (including constrained choices) can help.
    denominator = resistance**2 + (we * ld)**2
    idopt = (resistance * we * lq * q - we * ld * (resistance * q + we * psi)) / denominator
    umin = np.hypot(resistance * idopt - we * lq * q,
                    resistance * q + we * (psi + ld * idopt))
    cross_form = np.abs((resistance**2 + we**2 * ld * lq) * q + resistance * we * psi) / np.sqrt(denominator)
    np.testing.assert_allclose(umin, cross_form, rtol=1e-12, atol=1e-12)
    qmax = (d["Vs_max"][s] * np.sqrt(denominator) - resistance * we * psi) / (resistance**2 + we**2 * ld * lq)
    return {"start": start, "endExclusive": end, "samples": int(s.sum()),
            "speedMin": float(d["speed"][s].min()), "speedMax": float(d["speed"][s].max()),
            "IdPeakToPeak": float(np.ptp(y)), "IqPeakToPeak": float(np.ptp(d["Iq"][s])),
            "IdrefPeakToPeak": float(np.ptp(d["Iref_dq"][s, 0])),
            "IqrefPeakToPeak": float(np.ptp(d["Iref_dq"][s, 1])),
            "IdErrorPeak": float(np.max(np.abs(d["Id"][s] - d["Iref_dq"][s, 0]))),
            "IqErrorPeak": float(np.max(np.abs(d["Iq"][s] - d["Iref_dq"][s, 1]))),
            "IdDominantFrequency50to2000Hz": float(freq[band][np.argmax(power[band])]),
            "frequencyBinHz": float(freq[1] - freq[0]),
            "IdStdFirstHalf": float(np.std(y[:mid])), "IdStdSecondHalf": float(np.std(y[mid:])),
            "FFEquivalentPeakToPeakA": float(np.ptp(d["Psi_d_ff"][s]) / p["Ld"]),
            "trimEquivalentPeakToPeakA": float(np.ptp(d["Psi_trim"][s]) / p["Ld"]),
            "sensMinimum": float(d["sens"][s].min()), "sensMaximum": float(d["sens"][s].max()),
            "IqrefMean": float(q.mean()), "stationaryOptimumIdMean": float(idopt.mean()),
            "stationaryMinimumVoltageMin": float(umin.min()), "stationaryMinimumVoltageMax": float(umin.max()),
            "fwTargetMin": float(d["Vs_max"][s].min()), "fwTargetMax": float(d["Vs_max"][s].max()),
            "stationaryMaxPositiveIqAtFWTargetMin": float(qmax.min()),
            "stationaryMaxPositiveIqAtFWTargetMax": float(qmax.max())}


def main():
    parser = ArgumentParser(description=__doc__)
    parser.add_argument("before", type=Path)
    parser.add_argument("after", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    result = {"stage": "F02: fixed Psi and Lq; four 25 s runs", "cases": []}
    zoom, za = plt.subplots(5, 2, figsize=(14, 14), layout="constrained")
    for profile, title in (("hold204", "408 → 204 рад/с"), ("sweep738", "До 738 рад/с со снижением")):
        bs = json.loads((args.before / profile / "summary.json").read_text())
        fs = json.loads((args.after / profile / "summary.json").read_text())
        fig, ax = plt.subplots(3, 2, figsize=(14, 9), layout="constrained")
        fig.suptitle(f"F02 · {title} · оценки параметров / постоянные Psi и Lq", fontsize=14)
        for col, tag in enumerate(("nom", "ldp20")):
            before, after = bs[tag], fs[tag]
            assert all(before["parameters"][k] == after["parameters"][k] for k in PARAMETERS)
            assert before["actualDeltas"] == after["actualDeltas"]
            for k in ("time", "speed"):
                assert before["speedProfile"][k] == after["speedProfile"][k]
            case = {"profile": profile, "scenario": tag}
            for stage, folder, summary, label, color in (
                    ("before", args.before, before, "F01: оценки в управлении", "tab:blue"),
                    ("after", args.after, after, "F02: постоянные параметры", "tab:orange")):
                t, d = read(folder / profile, tag, summary, stage == "after")
                case[stage] = compact(summary, t, d)
                for row, key in enumerate(("iref", "imeas", "qerror")):
                    ax[row, col].plot(t, d[key], label=label, color=color, lw=.8)
                if profile == "sweep738":
                    case[stage]["oscillationWindows"] = [oscillation(t, d, summary["parameters"], a, a + .18)
                                                           for a in (4.8, 5.8, 6.8)]
                if profile == "sweep738" and stage == "after":
                    select = (t >= 6.80) & (t <= 6.86)
                    x = t[select]
                    for row, key in enumerate(("Id", "Iq")):
                        za[row, col].plot(x, d[key][select], label=f"{key}: измерение", lw=1)
                        za[row, col].plot(x, d["Iref_dq"][select, row], "--", label=f"{key}: задание", lw=1)
                    za[2, col].plot(x, d["Vabs_f"][select], label="Модуль отфильтрованных Ud/Uq", lw=1)
                    za[2, col].plot(x, d["Vs_max"][select], "--", label="Цель ОП", lw=.8)
                    za[2, col].plot(x, d["Ulim"][select], "k:", label="Ulim", lw=.8)
                    p = summary["parameters"]
                    we = d["speed"][select] * p["PolePairs"]
                    rs, ld, lq, psi = (p[n] * (1 + p["delta" + n]) for n in ("Rs", "Ld", "Lq", "Psi"))
                    umin = np.abs((rs**2 + we**2 * ld * lq) * d["Iref_dq"][select, 1] + rs * we * psi) / np.sqrt(rs**2 + (we * ld)**2)
                    za[2, col].plot(x, umin, "-.", label="Минимум Uss при данном Iqref", lw=.8)
                    for key, label in (("Psi_d_ff", "FF / Ld − среднее"), ("Psi_trim", "trim / Ld − среднее")):
                        y = d[key][select] / summary["parameters"]["Ld"]
                        centered = np.zeros_like(y) if np.ptp(y) < 1e-10 else y - y.mean()
                        za[3, col].plot(x, centered, label=label, lw=1)
                    za[4, col].plot(x, d["sens"][select], label="sens", lw=1)
                    za[4, col].plot(x, d["sens_filt"][select], label="До порога |sens| ≥ 0,1", lw=.8)
                    for row, ylabel in enumerate(("Id, А", "Iq, А", "Напряжение, В", "Отклонение эквивалента Id, А", "sens")):
                        za[row, col].set(xlim=(6.80, 6.86), xlabel="Время, с", ylabel=ylabel)
                        za[row, col].grid(alpha=.25)
                        za[row, col].legend(fontsize=8, loc="upper right")
                    za[0, col].set_title("Номинал" if tag == "nom" else "Ld +20%")
            result["cases"].append(case)
            ax[0, col].set_title("Номинал" if tag == "nom" else "Ld +20%")
            for row, (ylabel, limit) in enumerate((("Модуль задания, А", 420), ("Измеренный ток, А", 441), ("|Iq − Iqref|, А", 100))):
                ax[row, col].axhline(limit, color="black", ls="--", lw=.8, label=f"Порог {limit} А")
                ax[row, col].set(xlim=(0, 25), ylabel=ylabel, xlabel="Время, с")
                ax[row, col].grid(alpha=.25)
                ax[row, col].legend(fontsize=8, loc="upper left" if profile == "sweep738" and col == 1 else "upper right")
        fig.savefig(args.output / f"{profile}_comparison.png", dpi=150)
        plt.close(fig)
    zoom.suptitle("F02 · колебания при 738 рад/с, постоянных Psi и Lq\n"
                  "Окно графика 6,80–6,86 с; численные метрики 6,80–6,98 с", fontsize=14)
    zoom.savefig(args.output / "deep_fw_zoom.png", dpi=150)
    plt.close(zoom)
    (args.output / "comparison.json").write_text(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False) + "\n")
    for c in result["cases"]:
        a = c["after"]
        print(c["profile"], c["scenario"], "Iref", a["maxReferenceCurrent"], "I", a["maxMeasuredCurrent"],
              "d saturation longest", a["dSaturation"]["longestDuration"])


if __name__ == "__main__":
    main()
