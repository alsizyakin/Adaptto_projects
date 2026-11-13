function summary = run_baseline(runDir, sourceModel)
% Two full 25 s diagnostic runs after modulation changes. Failures of current
% or tracking criteria are reported, not suppressed: this is a baseline.
if nargin < 1, runDir = fullfile(fileparts(fileparts(fileparts(mfilename('fullpath')))), ...
        'tmp', ['control_baseline_' char(datetime('now', 'Format', 'yyyyMMdd_HHmmss'))]); end
d = fwl_dirs(runDir);
if nargin < 2, sourceModel = d.model; end
frozen = fullfile(d.runs, 'baseline_source.slx');
assert(~isfile(frozen), 'fwl:exists', 'Use a new results directory; baseline already exists.');
copyfile(sourceModel, frozen);
summary = struct();
summary.sourceSha256 = fwl_sha256(frozen);
summary.source = sourceModel;
summary.matlabVersion = version;
summary.created = char(datetime('now', 'TimeZone', 'local', 'Format', 'yyyy-MM-dd HH:mm:ss Z'));
summary.note = 'Raw errors: no feasibility or transition-window gating; not final drive acceptance.';
test_fwl_assess();
tags = {'nom', 'ldp20'};
nominal = struct('deltaLd', 0, 'deltaLq', 0, 'deltaPsi', 0, 'deltaRs', 0);
ldp20 = nominal; ldp20.deltaLd = 0.2;
overrides = {nominal, ldp20};
for k = 1:numel(tags)
    run_aug(tags{k}, 25, overrides{k}, cell(0, 3), 1, d.runs, frozen);
    R = load(fullfile(d.runs, ['aug_' tags{k} '.mat']));
    A = fwl_assess(R);
    assert(all(isfield(R, R.signalMap(:, 3))), 'fwl:logging', 'Some requested signals were not logged.');
    A.sourceSha256 = R.sourceSha256; A.modelSha256 = R.modelSha256;
    A.parameters = R.parameters; A.overrides = R.overrides; A.elapsed = R.elapsed;
    A.finalTime = R.finalTime; A.signalCount = size(R.signalMap, 1) + 2;
    summary.(tags{k}) = A;
    fid = fopen(fullfile(d.runs, 'summary.json'), 'w');
    assert(fid >= 0);
    fprintf(fid, '%s\n', jsonencode(summary, PrettyPrint=true)); fclose(fid);
    assert(A.completed && A.coverage && A.finite && A.fullResolution && A.jointReferenceLog, ...
        'fwl:baseline', 'Baseline is incomplete, nonfinite, or decimated; inspect the saved logs.');
    fprintf('%s: max Iref %.3f A, max I %.3f A, q prolonged=%d, q open=%d\n', ...
        tags{k}, A.maxReferenceCurrent, A.maxMeasuredCurrent, ...
        A.tracking_q.prolongedCount, A.tracking_q.activeAtEnd);
end
end
