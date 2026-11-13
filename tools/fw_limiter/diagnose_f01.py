"""Diagnose the remaining saturation in F01 logs; does not run or edit a model."""
from argparse import ArgumentParser
import hashlib
import json
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
from scipy.io import loadmat


SIGNALS = ("Id", "Iq", "Iref_dq", "speed", "Ud", "Uq", "Ud_raw", "Uq_raw",
           "Ulim", "Psi_est", "Lq_est", "integrator_d", "integrator_q")


def sha256(path):
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def held(signal, times):
    t, reverse_index = np.unique(signal["t"][::-1], return_index=True)
    y = signal["y"][len(signal["t"]) - 1 - reverse_index]
    index = np.searchsorted(t, times, side="right") - 1
    assert np.all(index >= 0) and times[-1] <= t[-1] + 1e-12
    return y[index]


def read_case(folder):
    summary = json.loads((folder / "summary.json").read_text())["ldp20"]
    path = folder / "aug_ldp20.mat"
    assert sha256(path) == summary["matSha256"], path
    assert sha256(folder / "baseline_source.slx") == summary["sourceSha256"]
    assert all(summary[k] for k in ("finite", "completed", "fullResolution", "coverage"))
    r = loadmat(path, simplify_cells=True, variable_names=list(SIGNALS) + ["parameters"])
    t = r["Id"]["t"]
    for key in ("Iq", "Iref_dq"):
        np.testing.assert_array_equal(t, r[key]["t"])
    v = {key: held(r[key], t) for key in SIGNALS}
    assert all(np.isfinite(value).all() for value in v.values())
    p = r["parameters"]
    assert p["deltaLd"] == 0.2 and all(p[k] == 0 for k in ("deltaLq", "deltaPsi", "deltaRs"))
    d, q = v["Iref_dq"].T
    we = p["PolePairs"] * v["speed"]
    # Stationary voltage at the REQUESTED pair, not voltage at the actual current.
    v["Uss_true"] = np.hypot(p["Rs"] * d - we * p["Lq"] * q,
                              p["Rs"] * q + we * (p["Psi"] + 1.2 * p["Ld"] * d))
    v["Uss_est"] = np.hypot(p["Rs"] * d - we * v["Lq_est"] * q,
                             p["Rs"] * q + we * (v["Psi_est"] + p["Ld"] * d))
    np.testing.assert_allclose(np.hypot(v["Id"], v["Iq"]).max(), summary["maxMeasuredCurrent"], atol=1e-6, rtol=0)
    return t, v, p, summary


def main():
    parser = ArgumentParser(description=__doc__)
    parser.add_argument("f01_root", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    result = {"stage": "D02: diagnosis of F01; fixed-parameter experiment not yet run", "cases": []}
    fig, axes = plt.subplots(5, 2, figsize=(14, 14), layout="constrained")
    profiles = (("sweep738", "Профиль до 738 рад/с", (10.05, 10.45), [10.14, 10.30]),
                ("saved", "Профиль пользователя", (4.05, 4.45), [4.14, 4.30]))
    for col, (profile, title, window, sample_times) in enumerate(profiles):
        t, v, p, summary = read_case(args.f01_root / profile)
        select = (t >= window[0]) & (t <= window[1])
        x = t[select]
        axes[0, col].set_title(f"{title} · Ld +20%")
        for row, key in enumerate(("Id", "Iq")):
            axes[row, col].plot(x, v[key][select], label=f"{key}: измерение", lw=1)
            axes[row, col].plot(x, v["Iref_dq"][select, row], "--", label=f"{key}: задание", lw=1)
        for key in ("Ud", "Uq"):
            axes[2, col].plot(x, v[key][select], label=f"{key}: команда после ограничения", lw=1)
        axes[2, col].plot(x, v["Ulim"][select], "k--", lw=0.8, label="Ulim")
        axes[2, col].plot(x, -v["Ulim"][select], "k--", lw=0.8)
        for key, label in (("Uss_true", "По параметрам машины"), ("Uss_est", "По оценкам регулятора")):
            axes[3, col].plot(x, v[key][select], label=label, lw=1)
        axes[3, col].plot(x, v["Ulim"][select], "k--", lw=0.8, label="Ulim")
        axes[4, col].plot(x, v["Psi_est"][select] / p["Psi"], label="Psi_est / Psi", lw=1)
        axes[4, col].plot(x, v["Lq_est"][select] / p["Lq"], label="Lq_est / Lq", lw=1)
        axes[4, col].axhline(1, color="black", ls="--", lw=0.8, label="Номинал")
        labels = ("Id, А", "Iq, А", "Ud, Uq, В", "U для установившегося задания, В", "Отношение оценки к номиналу")
        for row, ylabel in enumerate(labels):
            ax = axes[row, col]
            ax.set(xlim=window, ylabel=ylabel, xlabel="Время, с")
            ax.grid(alpha=0.25)
            ax.legend(fontsize=8, loc="lower right" if row == 2 else "upper right" if row == 4 else "best")
        samples = []
        for requested_time in sample_times:
            i = np.searchsorted(t, requested_time + 1e-12, side="right") - 1
            values = {key: float(v[key][i]) for key in SIGNALS if key != "Iref_dq"}
            values.update(Idref=float(v["Iref_dq"][i, 0]), Iqref=float(v["Iref_dq"][i, 1]),
                          Uss_true=float(v["Uss_true"][i]), Uss_est=float(v["Uss_est"][i]),
                          t=float(t[i]), requestedTime=requested_time)
            samples.append(values)
        result["cases"].append({"profile": profile, "matSha256": summary["matSha256"],
                                "sourceSha256": summary["sourceSha256"], "parameters": p,
                                "samples": samples})
    fig.suptitle("D02 · срыв после F01: насыщение и оценки параметров\n"
                 "Расчёт U для задания — стационарный, без L·dI/dt; новых прогонов нет", fontsize=14)
    fig.savefig(args.output / "saturation_diagnosis.png", dpi=150)
    plt.close(fig)
    (args.output / "diagnosis.json").write_text(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False) + "\n")
    print(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False))


if __name__ == "__main__":
    main()
