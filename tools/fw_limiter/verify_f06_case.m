function A = verify_f06_case(runDir, tag, profile, deltaLd, sourceModel, expectedOverrides)
% Verify existing full native F06 logs; no simulation, no controller changes.
d = fwl_dirs(runDir);
frozen = fullfile(d.runs, 'baseline_source.slx');
S = inspect_f06_model(frozen, d.runs);
if nargin < 6
    expectedOverrides = struct('deltaLd', deltaLd, 'deltaLq', 0, 'deltaPsi', 0, 'deltaRs', 0);
end
overrides = expectedOverrides;
R = load(fullfile(d.runs, ['aug_' tag '.mat']));
A = fwl_assess(R);
assert(all(isfield(R, R.signalMap(:, 3))));
assert(A.completed && A.finite && A.coverage && A.fullResolution && A.jointReferenceLog);
assert(strcmp(R.sourceSha256, fwl_sha256(frozen)));
assert(strcmp(R.modelSha256, fwl_sha256(fullfile(d.runs, ['aug_' tag '.slx']))));
assert(max(abs(R.Ud.y - R.PI_d_limited.y + R.Ud_decoupling_magnitude.y)) < 1e-9);
assert(max(abs(R.Uq.y - R.PI_q_limited.y - R.Uq_decoupling.y)) < 1e-9);
assert(R.parameters.deltaLd == deltaLd);
for name = fieldnames(overrides)'
    assert(isfield(R.parameters, name{1}) && isequal(R.parameters.(name{1}), overrides.(name{1})), ...
        'f06:scenario', 'Logged parameter differs from expected scenario: %s', name{1});
end
assert(isequal(R.Psi_trim.t, R.integrator_fw.t, R.fw_e_norm.t, R.fw_psi_cmd.t));
t = R.integrator_fw.t;
S.actualSampleTime = median(diff(t));
assert(max(abs(diff(t)-S.actualSampleTime)) < 1e-9);
S.periodToIntegrationStepRatio = S.actualSampleTime / R.parameters.FocDiscrTime;
[ut, ix] = unique(R.fw_inputs.t, 'last');
[found, row] = ismembertol(t, ut, 1e-12, 'DataScale', 1);
assert(all(found), 'f06:inputGrid', 'Observation does not cover FW execution times.');
u = R.fw_inputs.y(ix(row), :); x = R.integrator_fw.y;
cmd = min(max(u(:, 1)+x, u(:, 4)), u(:, 5));
ev = min(max(u(:, 2)./max(u(:, 3), 1), -1), 1);
next = min(max(cmd+R.parameters.FocDiscrTime*u(:, 6).*ev, u(:, 4)), u(:, 5))-u(:, 1);
V = struct('cmdResidual', max(abs(cmd-R.fw_psi_cmd.y)), ...
    'trimResidual', max(abs(cmd-u(:, 1)-R.Psi_trim.y)), ...
    'errorResidual', max(abs(ev-R.fw_e_norm.y)), ...
    'nextStateResidual', max(abs(next(1:end-1)-x(2:end))));
assert(max(cell2mat(struct2cell(V))) < 1e-10);
A.fwVerification = V; A.controlStructure = S;
A.sourceSha256 = R.sourceSha256; A.modelSha256 = R.modelSha256;
A.matSha256 = fwl_sha256(fullfile(d.runs, ['aug_' tag '.mat']));
A.parameters = R.parameters; A.overrides = overrides; A.finalTime = R.finalTime;
A.elapsed = R.elapsed; A.signalCount = size(R.signalMap, 1)+2;
A.speedProfile = S.speedProfile; A.speedProfile.maxMeasuredSpeed = max(R.speed.y);
A.userSourceSha256 = fwl_sha256(sourceModel); A.profileSelection = profile;
summary = struct('sourceSha256', R.sourceSha256); summary.(tag) = A;
fid = fopen(fullfile(d.runs, 'summary.json'), 'w'); assert(fid >= 0);
fprintf(fid, '%s\n', jsonencode(summary, PrettyPrint=true)); fclose(fid);
fprintf('%s: complete=1, finite=1, native logs, Iref %.6f A, Imax %.6f A, FW ratio=%g\n', ...
    tag, A.maxReferenceCurrent, A.maxMeasuredCurrent, S.periodToIntegrationStepRatio);
end
