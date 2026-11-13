"""Diagnose FW correction, integration gates and reset using full D06 logs."""
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

from f02_figures import read, compact, held


EXTRA = ("freeze", "reset", "Psi_candidate", "dPsi", "fw_input_gated",
         "fw_hold_lower", "fw_hold_upper", "fw_hold_base", "omega_base")
GATES = ("fw_hold_lower", "fw_hold_upper", "fw_hold_base")


def transitions(t, signal):
    return t[1:][np.diff(signal.astype(bool))]


def gate_metrics(t, d, p, native):
    trim = d["Psi_trim"] / p["Ld"]
    lower, upper = trim <= -49.99, trim >= 49.99
    hits = np.where(lower | upper)[0]
    boundary_sequence = upper[hits]
    edge_times = transitions(native["freeze"]["t"], native["freeze"]["y"])
    counts, bins = np.histogram(edge_times, bins=np.arange(.1, 25.10001, .1))
    peak = int(np.argmax(counts))
    return {
        "trimMinA": float(trim.min()), "trimMaxA": float(trim.max()),
        "trimSamplesNearLowerFraction": float(lower.mean()),
        "trimSamplesNearUpperFraction": float(upper.mean()),
        "boundaryToBoundaryCount": int(np.count_nonzero(np.diff(boundary_sequence))),
        "edgeCountsNative": {k: len(transitions(native[k]["t"], native[k]["y"])) for k in ("freeze", "reset") + GATES},
        "edgeCountsOnCurrentGrid": {k: len(transitions(t, d[k])) for k in ("freeze", "reset") + GATES},
        "holdFractionsOnCurrentGrid": {k: float(d[k].astype(bool).mean()) for k in GATES},
        "maxFreezeEdgesIn100ms": int(counts[peak]),
        "zoomStart": float(bins[peak]), "zoomEnd": float(bins[peak + 1]),
        "edgeRateMeaning": "Native combinational/solver events; both directions counted, not oscillation frequency. Separate counts on the 12 kHz current-controller grid.",
    }


def main():
    parser = ArgumentParser(description=__doc__)
    parser.add_argument("root", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    result = {"stage": "D06: unchanged saved controller; extra probes for gate causes", "cases": []}
    zoom, za = plt.subplots(4, 2, figsize=(14, 11), layout="constrained")
    for pc, (profile, title) in enumerate((("hold204", "408 → 204"), ("sweep738", "До 738 со снижением"))):
        summary = json.loads((args.root / profile / "summary.json").read_text())
        fig, axes = plt.subplots(4, 2, figsize=(14, 11), layout="constrained")
        fig.suptitle(f"D06 · {title} рад/с · подстройка, sens и переключения\n"
                     "Обзор после 0,1 с; ошибка и sens — симметричная логарифмическая шкала", fontsize=14)
        best = None
        for col, tag in enumerate(("nom", "ldp20")):
            s = summary[tag]
            t, d = read(args.root / profile, tag, s, True, EXTRA)
            p = s["parameters"]
            native = loadmat(args.root / profile / f"aug_{tag}.mat", simplify_cells=True,
                             variable_names=["freeze", "reset", *GATES])
            nt = native["freeze"]["t"]
            np.testing.assert_array_equal(native["freeze"]["y"].astype(bool),
                ~np.logical_or.reduce([held(native[k], nt).astype(bool) for k in GATES]))
            np.testing.assert_array_equal(native["reset"]["y"].astype(bool),
                ~held(native["fw_hold_base"], native["reset"]["t"]).astype(bool))
            np.testing.assert_array_equal(d["freeze"].astype(bool),
                ~np.logical_or.reduce([d[k].astype(bool) for k in GATES]))
            np.testing.assert_array_equal(d["reset"].astype(bool), ~d["fw_hold_base"].astype(bool))
            residual = float(np.max(np.abs(d["fw_input_gated"] - d["freeze"] * d["dPsi"])))
            assert residual < 1e-10, residual
            gm = gate_metrics(t, d, p, native)
            result["cases"].append({"profile": profile, "scenario": tag,
                                    **compact(s, t, d), "logic": gm, "gateProductResidual": residual})
            if best is None or gm["maxFreezeEdgesIn100ms"] > best[0]:
                best = (gm["maxFreezeEdgesIn100ms"], tag, t, d, p, gm, native)
            ov = t >= .1
            ot = t[ov]
            axes[0, col].plot(ot, d["Psi_trim"][ov] / p["Ld"], label="trim / Ld", lw=.8)
            axes[0, col].axhline(50, color="0.4", ls="--", lw=.7)
            axes[0, col].axhline(-50, color="0.4", ls="--", lw=.7)
            axes[1, col].plot(ot, d["dPsi"][ov], label="До разрешения", lw=.7)
            axes[1, col].plot(ot, d["fw_input_gated"][ov], label="Вход I-регулятора", lw=.7, alpha=.7)
            axes[1, col].set_yscale("symlog", linthresh=.01)
            axes[2, col].step(ot, d["freeze"][ov], where="post", label="freeze: 1 = интегрировать", lw=.6)
            axes[2, col].step(ot, d["reset"][ov] + 1.5, where="post", label="reset: показан со сдвигом +1,5", lw=.6)
            axes[3, col].plot(ot, d["sens"][ov], label="sens", lw=.7)
            axes[3, col].set_yscale("symlog", linthresh=.1)
            axes[0, col].set_title("Номинал" if tag == "nom" else "Ld +20%")
            for row, ylabel in enumerate(("Подстройка, А", "Ошибка потока, Вб", "Логические сигналы", "sens")):
                axes[row, col].set(xlim=(.1, 25), xlabel="Время, с", ylabel=ylabel)
                axes[row, col].grid(alpha=.25)
                axes[row, col].legend(fontsize=8, loc="upper right")
        fig.savefig(args.output / f"{profile}_logic.png", dpi=150, bbox_inches="tight", pad_inches=.15)
        plt.close(fig)
        _, tag, t, d, p, gm, native = best
        a, b = gm["zoomStart"], gm["zoomEnd"]
        w = (t >= a) & (t <= b)
        x = t[w]
        za[0, pc].plot(x, d["Psi_trim"][w] / p["Ld"], label="trim / Ld", lw=1)
        za[0, pc].plot(x, d["Psi_candidate"][w] / p["Ld"], label="(FF + trim) / Ld", lw=1)
        za[1, pc].plot(x, d["dPsi"][w], label="До разрешения", lw=.8)
        za[1, pc].plot(x, d["fw_input_gated"][w], label="Вход I-регулятора", lw=.8)
        for key, offset, label in (("freeze", 0, "Разрешение"), ("reset", 1.5, "reset +1,5")):
            tt, yy = native[key]["t"], native[key]["y"]
            ww = (tt >= a) & (tt <= b)
            za[2, pc].step(tt[ww], yy[ww] + offset, where="post", label=label, lw=.8)
        for offset, key, name in ((0, GATES[0], "Нижний предел"), (1.5, GATES[1], "Верхний предел"),
                                   (3, GATES[2], "Базовая скорость + знак ошибки")):
            tt, yy = native[key]["t"], native[key]["y"]
            ww = (tt >= a) & (tt <= b)
            za[3, pc].step(tt[ww], yy[ww] + offset, where="post", label=name, lw=.8)
        za[0, pc].set_title(f"{title} · {tag} · {gm['maxFreezeEdgesIn100ms']} фронтов / 100 мс")
        for row, ylabel in enumerate(("Подстройка, А", "Ошибка потока, Вб", "Логические сигналы", "Причины блокировки")):
            za[row, pc].set(xlim=(a, b), xlabel="Время, с", ylabel=ylabel)
            za[row, pc].grid(alpha=.25)
            za[row, pc].legend(fontsize=8, loc="best")
        za[3, pc].set_yticks([0, 1, 1.5, 2.5, 3, 4], ["0", "1", "0", "1", "0", "1"])
    zoom.suptitle("D06 · окна с наибольшим числом переключений freeze после 0,1 с", fontsize=14)
    zoom.savefig(args.output / "logic_zoom.png", dpi=150, bbox_inches="tight", pad_inches=.15)
    plt.close(zoom)
    (args.output / "diagnosis.json").write_text(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False) + "\n")
    for c in result["cases"]:
        print(c["profile"], c["scenario"], json.dumps(c["logic"], ensure_ascii=False))


if __name__ == "__main__":
    main()
