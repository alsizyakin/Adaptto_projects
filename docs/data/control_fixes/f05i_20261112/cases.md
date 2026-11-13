# Проверенные случаи F05-I

Все случаи: 25 с, разрешение 1, reset `either`, пределы ±500·Ld, постоянные Psi/Lq.

| Каталог | Профиль | I, с⁻¹ | deltaLd | Max I, А | Материалы |
|---|---|---:|---:|---:|---|
| hold204_k150_ldp20 | hold204 | 150 | +0.2 | 709.325271 | [Сводка](hold204_k150_ldp20/summary.json) · [модель](hold204_k150_ldp20/baseline_source.slx) · [лог](hold204_k150_ldp20/verification.txt) |
| hold204_k150_nom | hold204 | 150 | +0 | 759.268658 | [Сводка](hold204_k150_nom/summary.json) · [модель](hold204_k150_nom/baseline_source.slx) · [лог](hold204_k150_nom/verification.txt) |
| hold204_k15_ldp20 | hold204 | 15 | +0.2 | 709.327118 | [Сводка](hold204_k15_ldp20/summary.json) · [модель](hold204_k15_ldp20/baseline_source.slx) · [лог](hold204_k15_ldp20/verification.txt) |
| hold204_k15_nom | hold204 | 15 | +0 | 759.264286 | [Сводка](hold204_k15_nom/summary.json) · [модель](hold204_k15_nom/baseline_source.slx) · [лог](hold204_k15_nom/verification.txt) |
| sweep738_k150_ldm20 | saved | 150 | -0.2 | 863.493451 | [Сводка](sweep738_k150_ldm20/summary.json) · [модель](sweep738_k150_ldm20/baseline_source.slx) · [лог](sweep738_k150_ldm20/verification.txt) |
| sweep738_k150_ldp20 | saved | 150 | +0.2 | 442.503409 | [Сводка](sweep738_k150_ldp20/summary.json) · [модель](sweep738_k150_ldp20/baseline_source.slx) · [лог](sweep738_k150_ldp20/verification.txt) |
| sweep738_k150_nom | saved | 150 | +0 | 421.203678 | [Сводка](sweep738_k150_nom/summary.json) · [модель](sweep738_k150_nom/baseline_source.slx) · [лог](sweep738_k150_nom/verification.txt) |
| sweep738_k15_ldm20 | saved | 15 | -0.2 | 863.493451 | [Сводка](sweep738_k15_ldm20/summary.json) · [модель](sweep738_k15_ldm20/baseline_source.slx) · [лог](sweep738_k15_ldm20/verification.txt) |
| sweep738_k15_ldp20 | saved | 15 | +0.2 | 712.276074 | [Сводка](sweep738_k15_ldp20/summary.json) · [модель](sweep738_k15_ldp20/baseline_source.slx) · [лог](sweep738_k15_ldp20/verification.txt) |
| sweep738_k15_nom | saved | 15 | +0 | 752.386901 | [Сводка](sweep738_k15_nom/summary.json) · [модель](sweep738_k15_nom/baseline_source.slx) · [лог](sweep738_k15_nom/verification.txt) |
| sweep738_k1p5_ldp20 | saved | 1.5 | +0.2 | 1130.579884 | [Сводка](sweep738_k1p5_ldp20/summary.json) · [модель](sweep738_k1p5_ldp20/baseline_source.slx) · [лог](sweep738_k1p5_ldp20/verification.txt) |
| sweep738_k450_ldp20 | saved | 450 | +0.2 | 442.478454 | [Сводка](sweep738_k450_ldp20/summary.json) · [модель](sweep738_k450_ldp20/baseline_source.slx) · [лог](sweep738_k450_ldp20/verification.txt) |
| sweep738_k45_ldp20 | saved | 45 | +0.2 | 687.997996 | [Сводка](sweep738_k45_ldp20/summary.json) · [модель](sweep738_k45_ldp20/baseline_source.slx) · [лог](sweep738_k45_ldp20/verification.txt) |
| sweep738_k45_nom | saved | 45 | +0 | 742.167782 | [Сводка](sweep738_k45_nom/summary.json) · [модель](sweep738_k45_nom/baseline_source.slx) · [лог](sweep738_k45_nom/verification.txt) |

`saved` — профиль до 738 рад/с со снижением; `hold204` — 408 → 204 рад/с.
Модель в строке содержит выбранный I и профиль. Ошибка Ld вводится в диагностическую копию при запуске.
Для hold204 общий лог содержит два последовательных случая одного коэффициента; каждый имеет отдельную JSON-сводку.

Воспроизведение из корня проекта в новом каталоге:

```matlab
addpath tools/fw_limiter
source = 'docs/data/control_fixes/f05i_20261112/user_source.slx';
run_gain_check('tmp/f05i_repeat/hold204_k150_ldp20', 'k150h_ldp20', 150, 0.2, 'hold204', source)
run_gain_check('tmp/f05i_repeat/hold204_k150_nom', 'k150h_nom', 150, 0, 'hold204', source)
run_gain_check('tmp/f05i_repeat/hold204_k15_ldp20', 'k15h_ldp20', 15, 0.2, 'hold204', source)
run_gain_check('tmp/f05i_repeat/hold204_k15_nom', 'k15h_nom', 15, 0, 'hold204', source)
run_gain_check('tmp/f05i_repeat/sweep738_k150_ldm20', 'k150_ldm20', 150, -0.2, 'saved', source)
run_gain_check('tmp/f05i_repeat/sweep738_k150_ldp20', 'k150_ldp20', 150, 0.2, 'saved', source)
run_gain_check('tmp/f05i_repeat/sweep738_k150_nom', 'k150_nom', 150, 0, 'saved', source)
run_gain_check('tmp/f05i_repeat/sweep738_k15_ldm20', 'k15_ldm20', 15, -0.2, 'saved', source)
run_gain_check('tmp/f05i_repeat/sweep738_k15_ldp20', 'k15_ldp20', 15, 0.2, 'saved', source)
run_gain_check('tmp/f05i_repeat/sweep738_k15_nom', 'k15_nom', 15, 0, 'saved', source)
run_gain_check('tmp/f05i_repeat/sweep738_k1p5_ldp20', 'k1p5_ldp20', 1.5, 0.2, 'saved', source)
run_gain_check('tmp/f05i_repeat/sweep738_k450_ldp20', 'k450_ldp20', 450, 0.2, 'saved', source)
run_gain_check('tmp/f05i_repeat/sweep738_k45_ldp20', 'k45_ldp20', 45, 0.2, 'saved', source)
run_gain_check('tmp/f05i_repeat/sweep738_k45_nom', 'k45_nom', 45, 0, 'saved', source)
```
