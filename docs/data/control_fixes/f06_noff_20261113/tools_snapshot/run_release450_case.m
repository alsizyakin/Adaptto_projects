function A = run_release450_case(runRoot, sourceModel, spec)
% Scenario-only preparation of a frozen user F06; controller logic untouched.
d = fwl_dirs(fullfile(runRoot, spec.id));
frozen = fullfile(d.runs, 'baseline_source.slx');
assert(~isfile(frozen), 'release450:exists', 'Use a fresh case folder.');
copyfile(sourceModel, frozen);
load_system(frozen); m = 'baseline_source';
cleanup = onCleanup(@() close_system(m, 0));
ws = get_param(m, 'ModelWorkspace');
parameters = {'deltaLd','deltaLq','deltaPsi','deltaRs','VDC','Is_max'};
overrides = struct();
for k = 1:numel(parameters)
    name = parameters{k}; value = spec.(name);
    ws.assignin(name, value); overrides.(name) = value;
end
pc = get_param([m '/Simulink-PS Converter1'], 'PortConnectivity');
speedBlock = getfullname(pc(1).SrcBlock);
assert(strcmp(get_param(speedBlock, 'BlockType'), 'Lookup_n-D'));
if ~strcmp(spec.profile, 'saved')
    assert(max(abs(spec.speedValues)) <= 450 && all(diff(spec.speedTime) > 0));
    set_param(speedBlock, 'BreakpointsForDimension1', mat2str(spec.speedTime(:)', 16), ...
        'Table', mat2str(spec.speedValues(:)', 16));
    assert(all(diff(spec.iqTime) > 0));
    set_param([m '/Repeating Sequence'], 'rep_seq_t', mat2str(spec.iqTime(:)', 16), ...
        'rep_seq_y', ['Is_max*' mat2str(spec.iqFraction(:)', 16)]);
end
set_param(m, 'StopTime', num2str(spec.stopTime, 16));
selection = struct();
for pair = {'Manual Switch', 'Manual Switch2'}
    name = pair{1}; key = matlab.lang.makeValidName(name);
    block = [m '/' name]; ports = get_param(block, 'PortConnectivity');
    selection.(key).setting = get_param(block, 'CurrentSetting');
    selection.(key).inputs = {get_param(ports(1).SrcBlock, 'Name'), get_param(ports(2).SrcBlock, 'Name')};
end
save_system(m, frozen); clear cleanup;
inspect_f06_model(frozen, d.runs);
writejson(fullfile(d.runs, 'scenario.json'), spec);
writejson(fullfile(d.runs, 'parameter_selection.json'), selection);
run_aug(spec.id, spec.stopTime, overrides, cell(0,3), 1, d.runs, frozen);
A = verify_f06_case(d.runs, spec.id, spec.profile, spec.deltaLd, sourceModel, overrides);
assert(abs(A.controlStructure.actualSampleTime-A.parameters.FocDiscrTime)<1e-12);
assert(A.speedProfile.maxMeasuredSpeed <= 450+1e-4, 'release450:speed', 'Speed exceeds test range.');
A.releaseScenario = spec; A.parameterSelection = selection;
summary = struct('sourceSha256', A.sourceSha256); summary.(spec.id) = A;
writejson(fullfile(d.runs, 'summary.json'), summary);
fprintf('RELEASE450 %s: Imax=%.6f A, q prolonged=%d, complete=1\n', ...
    spec.id, A.maxMeasuredCurrent, A.tracking_q.prolongedCount);
end

function writejson(path, value)
fid=fopen(path,'w'); assert(fid>=0); c=onCleanup(@() fclose(fid)); %#ok<NASGU>
fprintf(fid,'%s\n',jsonencode(value,PrettyPrint=true));
end
