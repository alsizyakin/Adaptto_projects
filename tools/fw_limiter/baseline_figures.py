"""Plot the full native-rate baseline logs; no interpolation of references."""
from argparse import ArgumentParser
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
from scipy.io import loadmat


def main():
    parser = ArgumentParser(description=__doc__)
    parser.add_argument("runs", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    fig, axes = plt.subplots(3, 2, figsize=(14, 9), sharex=True)
    for col, (tag, title) in enumerate((("nom", "Номинальные параметры"), ("ldp20", "Ld +20%"))):
        r = loadmat(args.runs / f"aug_{tag}.mat", simplify_cells=True,
                    variable_names=["Id", "Iq", "Iref_dq", "Ud", "Uq", "parameters"])
        t = r["Id"]["t"]
        np.testing.assert_array_equal(t, r["Iq"]["t"])
        ref = r["Iref_dq"]
        limit = r["parameters"]["Is_max"]
        if col == 1:
            peak_time = t[np.argmax(np.hypot(r["Id"]["y"], r["Iq"]["y"]))]
        ax = axes[0, col]
        ax.plot(t, np.hypot(r["Id"]["y"], r["Iq"]["y"]), lw=0.8, label="Измеренный ток")
        ax.step(ref["t"], np.linalg.norm(ref["y"], axis=1), where="post", lw=0.8, label="Задание пары")
        ax.axhline(limit, color="black", ls="--", lw=1, label=f"Imax = {limit:g} А")
        ax.axhline(1.05 * limit, color="firebrick", ls=":", lw=1, label="1,05·Imax")
        ax.set_title(title)
        ax.set_ylabel("Модуль тока, А")
        ax = axes[1, col]
        ax.plot(t, r["Iq"]["y"], lw=0.8, label="Iq")
        ax.step(ref["t"], ref["y"][:, 1], where="post", lw=0.8, label="Iqref на входе PI")
        ax.set_ylabel("Ток q, А")
        ax = axes[2, col]
        for name in ("Ud", "Uq"):
            ax.plot(r[name]["t"], r[name]["y"], lw=0.8, label=name)
        ax.set_ylabel("Напряжение после ограничения, В")
        ax.set_xlabel("Время, с")
    for ax in axes.flat:
        ax.grid(alpha=0.25)
        ax.legend(loc="upper right", fontsize=8)
        ax.set_xlim(0, 25)
    axes[0, 1].legend(loc="upper right" if peak_time < 12.5 else "upper left", fontsize=8)
    fig.suptitle("Контрольная база: mMaxPWM = mMaxCurrent = 0,99; mFW = 0,95", fontsize=14)
    fig.tight_layout(rect=(0, 0, 1, 0.96))
    args.output.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(args.output, dpi=150)
    plt.close(fig)


if __name__ == "__main__":
    main()
