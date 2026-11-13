"""Plot verified F05-I gain comparisons and the startup mechanism."""
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
from f05i_analysis import EXTRA


def main():
    ap = ArgumentParser(description=__doc__)
    ap.add_argument("root", type=Path)
    ap.add_argument("before", type=Path)
    ap.add_argument("output", type=Path)
    args = ap.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    metrics = json.loads((args.root / "analysis.json").read_text())["cases"]
    loaded = {}
    for c in metrics:
        folder, tag = Path(c["folder"]), c["tag"]
        s = json.loads((folder / "summary.json").read_text())[tag]
        t, d = read(folder, tag, s, True, EXTRA)
        loaded[(c["profile"], c["deltaLd"], c["gainI"])] = (t, d, s)

    for delta, oldtag, title in ((.2, "ldp20", "Ld +20%"), (0, "nom", "Номинал"), (-.2, "ldm20", "Ld −20%")):
        entries = sorted((gain, value) for (profile, dl, gain), value in loaded.items() if profile == "saved" and dl == delta)
        if not entries:
            continue
        fig, axes = plt.subplots(4, 2, figsize=(14, 11), layout="constrained")
        before_folder = args.before / ("sweep738_ldm20" if delta < 0 else "sweep738")
        s = json.loads((before_folder / "summary.json").read_text())[oldtag]
        t0, d0 = read(before_folder, oldtag, s, True, EXTRA)
        series = [(None, (t0, d0, s))] + entries
        for index, (gain, (t, d, s)) in enumerate(series):
            label = "F05-W: подстройка = 0" if gain is None else f"I = {gain:g}"
            color = "0.55" if gain is None else f"C{index - 1}"
            for col, limits in enumerate(((0, 25), (0, 3))):
                w = (t >= limits[0]) & (t <= limits[1])
                for row, y in enumerate((d["imeas"], d["qerror"], d["Psi_trim"] / s["parameters"]["Ld"], d["Iref_dq"][:, 0])):
                    axes[row, col].plot(t[w], y[w], label=label, color=color, lw=.8)
        for col, limits in enumerate(((0, 25), (0, 3))):
            axes[0, col].set_title("Полный прогон" if col == 0 else "Начало и вход в ослабление")
            for row, ylabel in enumerate(("Модуль тока, А", "|Iq − Iqref|, А", "Подстройка / Ld, А", "Итоговое Idref, А")):
                axes[row, col].set(xlim=limits, xlabel="Время, с", ylabel=ylabel)
                axes[row, col].grid(alpha=.25)
                if row < 2:
                    axes[row, col].axhline(441 if row == 0 else 100, color="k", ls="--", lw=.7)
            axes[0, col].legend(fontsize=8, loc="upper right")
        fig.suptitle(f"F05-I · {title} · изменён только коэффициент наружного I-регулятора", fontsize=14)
        fig.savefig(args.output / f"gain_{oldtag}.png", dpi=150, bbox_inches="tight", pad_inches=.15)
        plt.close(fig)

    t, d, s = loaded[("saved", .2, 15)]
    ld = s["parameters"]["Ld"]
    fig, axes = plt.subplots(5, 2, figsize=(14, 13), layout="constrained")
    for col, limits in enumerate(((0, .03), (0, 2.8))):
        w = (t >= limits[0]) & (t <= limits[1]); x = t[w]
        axes[0, col].plot(x, d["speed"][w], label="Измеренная скорость")
        for key, label in (("Psi_d_ff", "FF / Ld"), ("Psi_trim", "trim / Ld")):
            axes[1, col].plot(x, d[key][w] / ld, label=label, lw=1)
        axes[1, col].plot(x, d["Iref_dq"][w, 0], "k--", label="Idref", lw=.8)
        axes[2, col].plot(x, d["imeas"][w], label="Измеренный ток", lw=.8)
        axes[2, col].plot(x, d["iref"][w], "--", label="Модуль задания", lw=.8)
        axes[2, col].axhline(441, color="k", ls="--", lw=.7, label="Порог 441 А")
        axes[3, col].plot(x, d["integrator_fw"][w], label="Внутреннее состояние", lw=1)
        axes[3, col].plot(x, d["Psi_trim"][w], label="Ограниченный выход", lw=.8)
        axes[3, col].set_yscale("symlog", linthresh=.155)
        axes[3, col].axhline(.155, color="0.5", ls="--", lw=.7)
        axes[3, col].axhline(-.155, color="0.5", ls="--", lw=.7)
        axes[4, col].step(x, d["reset"][w], where="post", label="reset, режим either", lw=.8)
        axes[4, col].axhline(1, color="C1", ls="--", label="Разрешение интегрирования = 1")
        for row, ylabel in enumerate(("Скорость, рад/с", "Слагаемые и задание, А", "Ток, А", "Состояние / выход, Вб", "Логические сигналы")):
            axes[row, col].set(xlim=limits, xlabel="Время, с", ylabel=ylabel)
            axes[row, col].grid(alpha=.25); axes[row, col].legend(fontsize=8, loc="best")
    axes[0, 0].set_title("Первые 30 мс")
    axes[0, 1].set_title("Последующее движение подстройки")
    fig.suptitle("F05-I · I = 15, Ld +20% · интегрирование разрешено и вне области ОП", fontsize=14)
    fig.savefig(args.output / "startup_k15.png", dpi=150, bbox_inches="tight", pad_inches=.15)
    plt.close(fig)

    if ("saved", -.2, 150) in loaded:
        t, d, s = loaded[("saved", -.2, 150)]
        w = (t >= 6.4) & (t <= 7.4); x = t[w]; ld = s["parameters"]["Ld"]
        fig, axes = plt.subplots(3, 2, figsize=(14, 9), layout="constrained")
        for row, key in enumerate(("Id", "Iq")):
            axes[row, 0].plot(x, d[key][w], label=key, lw=.8)
            axes[row, 0].plot(x, d["Iref_dq"][w, row], "--", label=key + "ref", lw=.8)
        axes[2, 0].plot(x, d["Vabs_f"][w], label="Обратная связь напряжения")
        axes[2, 0].plot(x, d["Vs_max"][w], "k--", label="Цель ОП")
        axes[0, 1].plot(x, d["Psi_d_ff"][w] / ld, label="FF / Ld")
        axes[0, 1].plot(x, d["Psi_trim"][w] / ld, label="trim / Ld")
        axes[0, 1].plot(x, d["Iref_dq"][w, 0], "k--", label="Итоговое Idref")
        axes[1, 1].plot(x, d["sens"][w], label="sens")
        axes[2, 1].plot(x, d["fw_input_gated"][w], label="Вход I-регулятора")
        for row in (1, 2):
            axes[row, 1].axhline(0, color="0.4", ls="--", lw=.7)
        for row, labels in enumerate((("Id, А", "Слагаемые и задание, А"), ("Iq, А", "sens"), ("Напряжение, В", "Ошибка потока, Вб"))):
            for col in range(2):
                axes[row, col].set(xlim=(6.4, 7.4), xlabel="Время, с", ylabel=labels[col])
                axes[row, col].grid(alpha=.25); axes[row, col].legend(fontsize=8)
        fig.suptitle("F05-I · I = 150, Ld −20% · положительная коррекция отменяет ослабление", fontsize=14)
        fig.savefig(args.output / "ldm20_direction.png", dpi=150, bbox_inches="tight", pad_inches=.15)
        plt.close(fig)

    keys = [(profile, delta, gain) for profile in ("saved", "hold204") for delta in (0, .2) for gain in (15, 150)]
    if all(k in loaded for k in keys):
        fig, axes = plt.subplots(4, 2, figsize=(14, 11), layout="constrained")
        for col, (profile, title) in enumerate((("hold204", "408 → 204 рад/с"), ("saved", "До 738 рад/с со снижением"))):
            axes[0, col].set_title(title)
            for di, delta in enumerate((0, .2)):
                for gain, color in ((15, "C0"), (150, "C1")):
                    t, d, s = loaded[(profile, delta, gain)]
                    for offset, key in enumerate(("imeas", "qerror")):
                        axes[2 * di + offset, col].plot(t, d[key], label=f"I = {gain}", color=color, lw=.8)
                for offset, (ylabel, limit) in enumerate((("Модуль тока, А", 441), ("|Iq − Iqref|, А", 100))):
                    ax = axes[2 * di + offset, col]
                    ax.axhline(limit, color="k", ls="--", lw=.7)
                    ax.set(xlim=(0, 25), xlabel="Время, с", ylabel=("Номинал: " if delta == 0 else "Ld +20%: ") + ylabel)
                    ax.grid(alpha=.25); ax.legend(fontsize=8)
        fig.suptitle("F05-I · исходный I = 15 и кандидат I = 150 · оба прежних профиля", fontsize=14)
        fig.savefig(args.output / "baseline_two_profiles.png", dpi=150, bbox_inches="tight", pad_inches=.15)
        plt.close(fig)


if __name__ == "__main__":
    main()
