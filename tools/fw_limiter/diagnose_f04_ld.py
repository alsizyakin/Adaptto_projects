"""Read-only F04 diagnosis: Ld error, stored FW correction and saturation."""
from argparse import ArgumentParser
import json
from pathlib import Path
import sys

sys.dont_write_bytecode = True
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

from f02_figures import read


def main():
    parser = ArgumentParser(description=__doc__)
    parser.add_argument("root", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    result = {"stage": "D05: analysis of existing F04 data; no new simulations", "cases": []}
    for profile, sample_times in (
            ("hold204", (1.05, 1.10, 1.13, 1.14, 1.145, 1.15, 1.18, 1.2, 1.4, 2.7)),
            ("sweep738", (3.1, 3.15, 3.17, 3.18, 3.3, 6.8, 12.1, 12.15, 12.17, 13))):
        summary = json.loads((args.root / profile / "summary.json").read_text())["ldp20"]
        t, d = read(args.root / profile, "ldp20", summary, True,
                    ("Ud_raw", "Uq_raw", "integrator_d", "integrator_q", "Uq_limit"))
        p = summary["parameters"]
        ld, lq, psi, rs = p["Ld"] * (1 + p["deltaLd"]), p["Lq"], p["Psi"], p["Rs"]
        assert p["deltaLd"] == .2 and all(p[k] == 0 for k in ("deltaLq", "deltaPsi", "deltaRs"))
        idref, iqref = d["Iref_dq"].T
        we = p["PolePairs"] * d["speed"]
        extra = {
            "Idref": idref, "Iqref": iqref,
            "IdFF": d["Psi_d_ff"] / p["Ld"], "trimA": d["Psi_trim"] / p["Ld"],
            "fluxTrue": psi + ld * d["Id"],
            "fluxModel": psi + p["Ld"] * d["Id"],
            "UssRef": np.hypot(rs * idref - we * lq * iqref,
                               rs * iqref + we * (psi + ld * idref)),
            "qFeedforwardError": we * (p["Ld"] - ld) * d["Id"],
        }
        keys = ("Id", "Iq", "speed", "Ud", "Uq", "Ud_raw", "Uq_raw", "integrator_d",
                "integrator_q", "Uq_limit", "sens")
        samples = []
        for when in sample_times:
            k = np.searchsorted(t, when + 1e-12, side="right") - 1
            samples.append({"time": float(t[k]), **{key: float(d[key][k]) for key in keys},
                            **{key: float(value[k]) for key, value in extra.items()}})
        result["cases"].append({"profile": profile, "sourceSha256": summary["sourceSha256"],
                                "matSha256": summary["matSha256"], "parameters": p, "samples": samples})
        if profile != "hold204":
            continue
        select = (t >= 1) & (t <= 1.45)
        x = t[select]
        fig, axes = plt.subplots(2, 2, figsize=(14, 8), layout="constrained")
        fig.suptitle("D05 · Ld +20% · F04, профиль 408 → 204 рад/с\n"
                     "Расчётное переослабление, снятие ослабления и последующее насыщение", fontsize=14)
        for key, label in (("IdFF", "FF / Ld"), ("trimA", "trim / Ld"), ("Idref", "Idref")):
            axes[0, 0].plot(x, extra[key][select], label=label, lw=1)
        axes[0, 0].set_ylabel("Формирование задания, А")
        axes[0, 1].plot(x, d["Id"][select], label="Id", lw=1)
        axes[0, 1].plot(x, idref[select], "--", label="Idref", lw=1)
        axes[0, 1].set_ylabel("Ток d, А")
        for key in ("Ud", "Uq"):
            axes[1, 0].plot(x, d[key][select], label=key, lw=1)
        axes[1, 0].plot(x, extra["UssRef"][select], label="Uss задания, без L·dI/dt", lw=1)
        axes[1, 0].plot(x, d["Ulim"][select], "k--", label="Ulim", lw=.8)
        axes[1, 0].set_ylabel("Напряжение, В")
        for key, label in (("integrator_d", "Интегратор d"), ("integrator_q", "Интегратор q")):
            axes[1, 1].plot(x, d[key][select], label=label, lw=1)
        axes[1, 1].set_ylabel("Выход интегратора, В")
        for ax in axes.flat:
            ax.set(xlim=(1, 1.45), xlabel="Время, с")
            ax.axvline(1.1446666666666667, color="0.5", ls=":", lw=.8)
            ax.grid(alpha=.25)
            ax.legend(fontsize=9, loc="best")
        fig.savefig(args.output / "ld_mismatch_onset.png", dpi=150)
        plt.close(fig)
    (args.output / "diagnosis.json").write_text(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False) + "\n")
    print("D05: input hashes, native grids, fixed parameters and reference maxima verified; figure and samples saved.")


if __name__ == "__main__":
    main()
