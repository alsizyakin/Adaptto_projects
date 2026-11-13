"""F01 waveforms and numerical comparison of the current-budget correction."""
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

from baseline_comparison import compact_tracking


SIGNALS = ["Id", "Iq", "Iref_dq", "Idreq", "Idreq_f", "Iq_curLim", "speed", "Ud", "Uq"]
PARAMETERS = ("Is_max", "FocDiscrTime", "Ld", "Lq", "Psi", "Rs", "PolePairs", "VDC",
              "mMaxPWM", "mMaxCurrent", "mFW")


def read_case(folder, tag, summary):
    r = loadmat(folder / f"aug_{tag}.mat", simplify_cells=True, variable_names=SIGNALS)
    np.testing.assert_array_equal(r["Id"]["t"], r["Iq"]["t"])
    np.testing.assert_allclose(r["Id"]["t"], r["Iref_dq"]["t"], rtol=0, atol=1e-12)
    r["t"] = r["Id"]["t"]
    r["iref"] = np.linalg.norm(r["Iref_dq"]["y"], axis=1)
    r["imeas"] = np.hypot(r["Id"]["y"], r["Iq"]["y"])
    r["qerror"] = np.abs(r["Iq"]["y"] - r["Iref_dq"]["y"][:, 1])
    for key, signal in (("maxReferenceCurrent", "iref"), ("maxMeasuredCurrent", "imeas")):
        np.testing.assert_allclose(r[signal].max(), summary[key], rtol=0, atol=1e-6)
    np.testing.assert_allclose(r["qerror"].max(), summary["tracking_q"]["maxAbsoluteError"], rtol=0, atol=1e-6)
    assert all(summary[k] for k in ("completed", "finite", "coverage", "fullResolution", "jointReferenceLog"))
    return r


def budget_residual(r, current_limit):
    # Compare on the budget's native timestamps, holding the discrete Idreq.
    t, ix = np.unique(r["Idreq"]["t"], return_index=True)
    q = r["Iq_curLim"]
    idx = np.searchsorted(t, q["t"], side="right") - 1
    assert np.all(idx >= 0)
    expected = np.sqrt(np.maximum(0, current_limit ** 2 - r["Idreq"]["y"][ix[idx]] ** 2))
    return float(np.max(np.abs(q["y"] - expected)))


def short_case(s):
    return {**{k: s[k] for k in ("maxReferenceCurrent", "maxMeasuredCurrent", "referenceWithinLimit",
                                "measuredWithinLimit", "dutyWithinLimit", "sourceSha256", "matSha256")},
            "tracking_d": compact_tracking(s["tracking_d"]), "tracking_q": compact_tracking(s["tracking_q"])}


def main():
    parser = ArgumentParser(description=__doc__)
    parser.add_argument("before_hold", type=Path)
    parser.add_argument("before_sweep", type=Path)
    parser.add_argument("after_root", type=Path)
    parser.add_argument("output", type=Path, help="Directory for PNGs and comparison.json")
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    summary = {"correction": "F01: bypass LPF8 in the q-axis current budget", "cases": []}
    zoom, za = plt.subplots(3, 2, figsize=(14, 9), layout="constrained")
    for col, (mode, title, before_dir, window) in enumerate((
            ("hold204", "408 → 204 рад/с", args.before_hold, (3.60, 3.75)),
            ("sweep738", "До 738 рад/с со снижением", args.before_sweep, (1.60, 1.75)))):
        after_dir = args.after_root / mode
        before = json.loads((before_dir / "summary.json").read_text())
        after = json.loads((after_dir / "summary.json").read_text())
        fig, ax = plt.subplots(3, 2, figsize=(14, 9), layout="constrained")
        fig.suptitle(f"F01 · {title} · сравнение до и после обхода фильтра", fontsize=14)
        for scenario, tag in enumerate(("nom", "ldp20")):
            a, b = before[tag], after[tag]
            assert all(a["parameters"][p] == b["parameters"][p] for p in PARAMETERS)
            assert a["actualDeltas"] == b["actualDeltas"]
            for key in ("time", "speed"):
                assert a["speedProfile"][key] == b["speedProfile"][key]
            summary["cases"].append({"profile": mode, "scenario": tag,
                                     "before": short_case(a), "after": short_case(b)})
            for folder, s, label, color in ((before_dir, a, "До коррекции", "tab:blue"),
                                           (after_dir, b, "После коррекции", "tab:orange")):
                r = read_case(folder, tag, s)
                residual = budget_residual(r, s["parameters"]["Is_max"])
                stage = "before" if folder == before_dir else "after"
                summary["cases"][-1][stage]["maxCurrentBudgetResidual"] = residual
                if stage == "after":
                    assert residual < 1e-6, (mode, tag, "Current budget still differs from instantaneous Idreq", residual)
                for row, signal in enumerate(("iref", "imeas", "qerror")):
                    ax[row, scenario].plot(r["t"], r[signal], color=color, lw=0.8, label=label)
                if tag == "nom":
                    select = (r["t"] >= window[0]) & (r["t"] <= window[1])
                    za[0, col].step(r["t"][select], r["Iref_dq"]["y"][select, 0], where="post",
                                    color=color, label=f"Idref: {label.lower()}")
                    filt = r["Idreq_f"]
                    fs = (filt["t"] >= window[0]) & (filt["t"] <= window[1])
                    za[0, col].step(filt["t"][fs], filt["y"][fs], where="post", color=color, ls="--",
                                    label=f"Id после LPF8: {label.lower()}")
                    limit = r["Iq_curLim"]
                    ls = (limit["t"] >= window[0]) & (limit["t"] <= window[1])
                    za[1, col].step(limit["t"][ls], limit["y"][ls], where="post", color=color,
                                    label=f"Бюджет q: {label.lower()}")
                    za[1, col].step(r["t"][select], r["Iref_dq"]["y"][select, 1], where="post", color=color,
                                    ls=":", label=f"Iqref: {label.lower()}")
                    za[2, col].step(r["t"][select], r["iref"][select], where="post", color=color, label=label)
            ax[0, scenario].set_title("Номинал" if tag == "nom" else "Ld +20%")
            for row, limit, ylabel in ((0, 420, "Модуль задания, А"), (1, 441, "Измеренный ток, А"),
                                        (2, 100, "|Iq − Iqref|, А")):
                axis = ax[row, scenario]
                axis.axhline(limit, color="black", ls="--", lw=1, label=f"Порог {limit} А")
                axis.set(xlim=(0, 25), ylabel=ylabel, xlabel="Время, с")
                axis.grid(alpha=0.25)
                axis.legend(fontsize=8, loc="upper left" if scenario == 1 and mode == "sweep738" else "upper right")
        fig.savefig(args.output / f"{mode}_before_after.png", dpi=150)
        plt.close(fig)
        za[0, col].set_title(f"Номинал · {title}")
        for row, ylabel in enumerate(("Задание Id и выход LPF8, А", "Бюджет и задание Iq, А", "Модуль задания, А")):
            za[row, col].set(xlim=window, ylabel=ylabel, xlabel="Время, с")
            za[row, col].grid(alpha=0.25)
            za[row, col].legend(fontsize=8, loc="best")
        za[2, col].axhline(420, color="black", ls="--", lw=1)
    zoom.suptitle("F01 · задержка бюджета q и превышение токового круга", fontsize=14)
    zoom.savefig(args.output / "current_budget_zoom.png", dpi=150)
    plt.close(zoom)
    saved = json.loads((args.after_root / "saved" / "summary.json").read_text())
    for tag in ("nom", "ldp20"):
        r = read_case(args.after_root / "saved", tag, saved[tag])
        residual = budget_residual(r, saved[tag]["parameters"]["Is_max"])
        assert residual < 1e-6, ("saved", tag, residual)
        summary["cases"].append({"profile": "saved", "scenario": tag, "before": None,
                                 "after": short_case(saved[tag])})
        summary["cases"][-1]["after"]["maxCurrentBudgetResidual"] = residual
    (args.output / "comparison.json").write_text(json.dumps(summary, ensure_ascii=False, indent=2, allow_nan=False) + "\n")


if __name__ == "__main__":
    main()
