function A = run_parameter_check(runDir, tag, overrides, sourceModel)
% One extra 25 s parameter scenario on an unchanged saved controller.
% Only the four plant deltas are accepted here; no control-block overrides.
names = {'deltaLd', 'deltaLq', 'deltaPsi', 'deltaRs'};
assert(isequal(sort(fieldnames(overrides)), sort(names(:))));
d = fwl_dirs(runDir);
frozen = fullfile(d.runs, 'baseline_source.slx');
assert(~isfile(frozen), 'fwl:exists', 'Use a new directory.');
copyfile(sourceModel, frozen);
test_fwl_assess();
run_aug(tag, 25, overrides, cell(0, 3), 1, d.runs, frozen);
R = load(fullfile(d.runs, ['aug_' tag '.mat']));
A = fwl_assess(R);
assert(all(isfield(R, R.signalMap(:, 3))));
assert(A.completed && A.finite && A.coverage && A.fullResolution && A.jointReferenceLog);
assert(strcmp(R.sourceSha256, fwl_sha256(frozen)));
modelFile = fullfile(d.runs, ['aug_' tag '.slx']);
assert(strcmp(R.modelSha256, fwl_sha256(modelFile)));
assert(max(abs(R.Ud.y - R.PI_d_limited.y + R.Ud_decoupling_magnitude.y)) < 1e-9);
assert(max(abs(R.Uq.y - R.PI_q_limited.y - R.Uq_decoupling.y)) < 1e-9);
m = ['aug_' tag]; load_system(modelFile);
cleanup = onCleanup(@() close_system(m, 0));
ws = get_param(m, 'ModelWorkspace');
for k = 1:numel(names)
    name = names{k};
    actual = ws.getVariable(name);
    assert(actual == overrides.(name) && actual == R.parameters.(name));
    A.actualDeltas.(name) = actual;
end
ports = get_param([m '/Simulink-PS Converter1'], 'PortConnectivity');
source = ports(1).SrcBlock;
A.speedProfile.block = strrep(get_param(source, 'Name'), newline, ' ');
A.speedProfile.time = ws.evalin(get_param(source, 'BreakpointsForDimension1'));
A.speedProfile.speed = ws.evalin(get_param(source, 'Table'));
A.speedProfile.maxMeasuredSpeed = max(R.speed.y);
A.speedProfile.finalLoggedTime = R.speed.t(end);
A.speedProfile.finalMeasuredSpeed = R.speed.y(end);
for entry = {'Psi', 'Lq'}
    name = entry{1}; used = R.([name '_used']);
    A.controlParameters.(name).minimum = min(used.y);
    A.controlParameters.(name).maximum = max(used.y);
    A.controlParameters.(name).maxNominalDeviation = max(abs(used.y - R.parameters.(name)));
end
gate = get_param([m '/Goto9'], 'PortConnectivity');
A.controlStructure.freezeTagSource = get_param(gate(1).SrcBlock, 'Name');
A.controlStructure.freezeUsedMinimum = min(R.freeze_used.y);
A.controlStructure.freezeUsedMaximum = max(R.freeze_used.y);
A.controlStructure.trimUpperFlux = ws.evalin(get_param([m '/PID Controller'], 'UpperSaturationLimit'));
A.controlStructure.trimLowerFlux = ws.evalin(get_param([m '/PID Controller'], 'LowerSaturationLimit'));
A.sourceSha256 = R.sourceSha256; A.modelSha256 = R.modelSha256;
A.matSha256 = fwl_sha256(fullfile(d.runs, ['aug_' tag '.mat']));
A.parameters = R.parameters; A.overrides = R.overrides;
A.finalTime = R.finalTime; A.elapsed = R.elapsed;
A.signalCount = size(R.signalMap, 1) + 2;
A.verification = 'full native logs; source/model/MAT hashes; saved plant deltas; limited-voltage identities';
summary = struct(); summary.sourceSha256 = R.sourceSha256; summary.(tag) = A;
fid = fopen(fullfile(d.runs, 'summary.json'), 'w'); assert(fid >= 0);
fprintf(fid, '%s\n', jsonencode(summary, PrettyPrint=true)); fclose(fid);
fprintf('%s: verified, max Iref %.6f A, max I %.6f A, q prolonged=%d, recovery=%d\n', ...
    tag, A.maxReferenceCurrent, A.maxMeasuredCurrent, A.tracking_q.prolongedCount, A.tracking_q.recoveryObserved);
end
