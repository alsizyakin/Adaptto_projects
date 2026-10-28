# Скрипты к `docs/fw_limiter_issues.md`

Прогоны копии `ideal_source_drive_Idff_aug_param.slx` с логированием сигналов, сводные цифры и
рисунки документа. Исходная модель не меняется: каждый прогон работает с копией `aug_<tag>.slx`
в папке результатов.

Нужны MATLAB R2025a, Simulink, Simscape Electrical, Motor Control Blockset.

## Файлы

| Файл | Что делает |
|---|---|
| `fwl_scenarios.m` | Список сценариев: номинал, Ψ ±10 %, Lq ±20 %, Ld ±20 %, Rs +50 %, две попытки «лечения», два прогона для зум-рисунков, `smoke` для проверки окружения |
| `run_scenario.m` | Запуск одного сценария по имени |
| `run_aug.m` | Сам прогон: копия модели, подмена параметров, логирование, сохранение `aug_<tag>.mat` |
| `run_parallel.sh` | Параллельный запуск сценариев в отдельных сессиях MATLAB |
| `metrics.m` | Таблица из приложения документа, превышения Is_max, автоколебания в углу |
| `latch_table.m` | Таблица из раздела 2.2 (достижимость задания по напряжению во время защёлки) |
| `fig_doc.m` | Рисунки `docs/img/fw_limiter/*.png` |
| `fwl_dirs.m`, `fwl_machine.m` | Пути и номинальные параметры машины |

Результаты по умолчанию пишутся в `work/fw_limiter/` (в `.gitignore`): ~30 МБ на 25-секундный
прогон, ~120–150 МБ на прогоны `nomfine` и `ldp20fine` без прореживания.

## Как запустить

Из корня репозитория, все сценарии документа (12 прогонов, по 6 одновременно; 25-секундный прогон
~5 мин в Rapid Accelerator):

```bash
tools/fw_limiter/run_parallel.sh 6
```

Отдельные сценарии: `tools/fw_limiter/run_parallel.sh 2 "" ldp20 nomfine`
(пустая строка — папка результатов по умолчанию). Проверка окружения: `... 1 "" smoke`.

То же из MATLAB, последовательно:

```matlab
addpath tools/fw_limiter
s = fwl_scenarios(); for k = find([s.doc]), run_scenario(s(k).tag); end
metrics          % сводка
latch_table      % таблица раздела 2.2
fig_doc          % перезаписывает docs/img/fw_limiter/*.png
```

## Проверка исправлений

Порядок: внести правку в `ideal_source_drive_Idff_aug_param.slx` → прогнать сценарии в отдельную
папку (`run_parallel.sh 6 work/fw_fix`) → `metrics('work/fw_fix')` и сравнить с приложением
документа по критериям раздела 6. Если правка меняет имена блоков из списка `sig` в `run_aug.m`,
этот список нужно обновить.
