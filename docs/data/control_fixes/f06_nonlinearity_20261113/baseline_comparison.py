"""Compare two verified speed-profile baselines, each with nom and ldp20."""
from argparse import ArgumentParser
import json
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
from scipy.io import loadmat


def compact_tracking(tracking):
    events = tracking["events"]
    if isinstance(events, dict):
        events = [events]
    return {**{k: v for k, v in tracking.items() if k != "events"},
            "episodeCount": len(events),
            "prolongedOrOpenEvents": [e for e in events if e["prolonged"] or e["open"]]}


def main():
    parser = ArgumentParser(description=__doc__)
    parser.add_argument("hold_runs", type=Path)
    parser.add_argument("sweep_runs", type=Path)
    parser.add_argument("output", type=Path, help="PNG path; JSON is saved alongside")
    args = parser.parse_args()
    modes = (("hold204", "408 → 204 рад/с", args.hold_runs, "tab:blue"),
             ("sweep738", "Разгон до 738 рад/с и снижение", args.sweep_runs, "tab:orange"))
    summaries = [json.loads((runs / "summary.json").read_text()) for _, _, runs, _ in modes]
    # Compare only profiles: physical/controller parameters and error cases must match.
    for tag in ("nom", "ldp20"):
        a, b = (s[tag] for s in summaries)
        for key in ("Is_max", "FocDiscrTime", "Ld", "Lq", "Psi", "Rs", "PolePairs", "VDC",
                    "mMaxPWM", "mMaxCurrent", "mFW"):
            assert a["parameters"][key] == b["parameters"][key], key
        assert a["actualDeltas"] == b["actualDeltas"]
        for s in (a, b):
            assert all(s[k] for k in ("completed", "finite", "coverage", "fullResolution", "jointReferenceLog"))

    fig = plt.figure(figsize=(14, 10), layout="constrained")
    grid = fig.add_gridspec(3, 2, height_ratios=(0.65, 1, 1))
    speed_ax = fig.add_subplot(grid[0, :])
    currents = [fig.add_subplot(grid[1, c]) for c in range(2)]
    errors = [fig.add_subplot(grid[2, c]) for c in range(2)]
    result = {"note": "Same controller and machine parameters; different speed trajectories. Raw errors are not feasibility-gated.", "cases": []}
    for mode_index, (mode, label, runs, color) in enumerate(modes):
        for col, tag in enumerate(("nom", "ldp20")):
            s = summaries[mode_index][tag]
            r = loadmat(runs / f"aug_{tag}.mat", simplify_cells=True,
                        variable_names=["Id", "Iq", "Iref_dq", "speed", "torque"])
            t = r["Id"]["t"]
            np.testing.assert_array_equal(t, r["Iq"]["t"])
            np.testing.assert_allclose(t, r["Iref_dq"]["t"], rtol=0, atol=1e-12)
            measured = np.hypot(r["Id"]["y"], r["Iq"]["y"])
            reference = np.linalg.norm(r["Iref_dq"]["y"], axis=1)
            q_error = np.abs(r["Iq"]["y"] - r["Iref_dq"]["y"][:, 1])
            np.testing.assert_allclose(measured.max(), s["maxMeasuredCurrent"], rtol=0, atol=1e-6)
            np.testing.assert_allclose(reference.max(), s["maxReferenceCurrent"], rtol=0, atol=1e-6)
            np.testing.assert_allclose(q_error.max(), s["tracking_q"]["maxAbsoluteError"], rtol=0, atol=1e-6)
            currents[col].plot(t, measured, color=color, lw=0.8, label=label)
            errors[col].plot(t, q_error, color=color, lw=0.8, label=label)
            speed = r["speed"]
            if col == 0:
                # The piecewise-linear speed is only thinned for plotting.
                idx = np.unique(np.r_[np.arange(0, speed["t"].size, max(1, speed["t"].size // 20000)), speed["t"].size - 1])
                speed_ax.plot(speed["t"][idx], speed["y"][idx], color=color, label=label)
            case = {"mode": mode, "scenario": tag, "sourceSha256": s["sourceSha256"],
                    "maxReferenceCurrent": float(reference.max()), "maxMeasuredCurrent": float(measured.max()),
                    "referencePeakTime": float(t[reference.argmax()]), "measuredPeakTime": float(t[measured.argmax()]),
                    "maxSpeed": float(speed["y"].max()), "finalSpeed": float(speed["y"][-1]),
                    "tracking_d": compact_tracking(s["tracking_d"]),
                    "tracking_q": compact_tracking(s["tracking_q"]),
                    "dutyWithinLimit": s["dutyWithinLimit"]}
            ts = r["torque"]["t"]
            sel = (ts >= 6.8) & (ts <= 6.99)
            actual_speed = np.interp(ts[sel], speed["t"], speed["y"])
            case["meanTorqueAt738"] = (float(r["torque"]["y"][sel].mean())
                                       if sel.any() and np.all(np.abs(actual_speed - 738) < 0.5) else None)
            result["cases"].append(case)
    speed_ax.set_ylabel("Скорость, рад/с")
    speed_ax.set_title("Два профиля скорости при одинаковом алгоритме управления")
    for col, title in enumerate(("Номинальные параметры", "Ld +20%")):
        currents[col].set_title(title)
        currents[col].axhline(420, color="black", lw=1, ls="--", label="Imax = 420 А")
        currents[col].axhline(441, color="firebrick", lw=1, ls=":", label="1,05·Imax = 441 А")
        currents[col].set_ylabel("Измеренный модуль тока, А")
        errors[col].axhline(100, color="black", lw=1, ls="--", label="Порог 100 А")
        errors[col].set_ylabel("|Iq − Iqref|, А")
    for ax in (speed_ax, *currents, *errors):
        ax.set_xlim(0, 25)
        ax.set_xlabel("Время, с")
        ax.grid(alpha=0.25)
        ax.legend(loc="upper right", fontsize=8)
    for ax in (currents[1], errors[1]):
        ax.legend(loc="upper left", fontsize=8)  # keep the late high-current peak visible
    args.output.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(args.output, dpi=150)
    plt.close(fig)
    args.output.with_suffix(".json").write_text(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False) + "\n")


if __name__ == "__main__":
    main()
