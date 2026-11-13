function test_fw_trim_persistent(outDir)
% Compare persistent state against the verified F06 Unit Delay realization.
% Never opens or changes a drive model. outDir must be new.
if nargin == 0
    outDir = fullfile('tmp', ['f06_persistent_' datestr(now, 'yyyymmdd_HHMMSS')]);
end
assert(~isfolder(outDir), 'f06:existingOutput', 'Use a new result directory.');
mkdir(outDir);
outDir = char(java.io.File(outDir).getCanonicalPath());
diary(fullfile(outDir, 'verification.txt'));
diaryCleanup = onCleanup(@() diary('off')); %#ok<NASGU>
fprintf('F06 persistent equivalence, %s\nMATLAB %s\n', datestr(now, 31), version);
fprintf('Component checks only; full drive simulation pending.\n');
fprintf('FocDiscrTime is a non-tunable MATLAB Function parameter and the block sample time.\n');
for f = {'fw_trim_persistent', 'fw_trim_projected'}
    src = which(f{1});
    fprintf('%s SHA-256: %s\n', f{1}, fwl_sha256(src));
    copyfile(src, fullfile(outDir, [f{1} '.m']));
end
Ts = 1/12000; Kpsi = 2.5; Ufw = 0.95*440/sqrt(3);
lo = -1.2*0.1024; hi = 0; tol = 1e-12;

% Preserve Forward Euler timing: initialize, output old state, then integrate.
clear fw_trim_persistent
[trim, state, cmd, ev] = fw_trim_persistent(0, -10, Ufw, lo, hi, Kpsi, Ts);
assert(trim == 0 && state == 0 && cmd == 0 && ev < 0);
[trim, state] = fw_trim_persistent(0, -10, Ufw, lo, hi, Kpsi, Ts);
assert(abs(state + Ts*Kpsi*10/Ufw) < tol && abs(trim-state) < tol);
clear fw_trim_persistent
[trim, state] = fw_trim_persistent(0, -10, Ufw, lo, hi, Kpsi, Ts);
assert(trim == 0 && state == 0);
fprintf('PASS: first call integrates without early return; outputs retain old-state timing; clear resets MATLAB state.\n');

% Compare long state histories, not just isolated arithmetic calls. Include
% moving FF/bounds, prolonged limits, headroom, and large voltage errors.
clear fw_trim_persistent
rng(61113, 'twister');
refState = 0;
for k = 1:6000
    if k <= 1000
        ff = 0; eu = Ufw; lower = lo; upper = hi;
    elseif k <= 2000
        ff = -0.08; eu = -Ufw; lower = lo; upper = hi;
    elseif k <= 3000
        ff = 0; eu = Ufw; lower = lo; upper = hi;
    else
        ff = 0.4*rand-0.3; eu = 1e4*(rand-0.5);
        upper = -0.02*rand; lower = upper-0.01-0.2*rand;
    end
    [a, b, c, d] = fw_trim_persistent(ff, eu, Ufw, lower, upper, Kpsi, Ts);
    [ar, next, cr, dr] = fw_trim_projected(refState, ff, eu, Ufw, lower, upper, Kpsi, Ts);
    assert(max(abs([a-ar, b-refState, c-cr, d-dr])) < tol);
    assert(c >= lower-tol && c <= upper+tol && isfinite(b));
    refState = next;
end
clear fw_trim_persistent
fprintf('PASS: 6000 MATLAB samples match the external-state reference.\n');
runHarness(outDir, Ts, Kpsi, Ufw, lo, hi);
fprintf('ALL F06 PERSISTENT CHECKS PASSED. No drive stability claim.\n');
end

function runHarness(outDir, Ts, Kpsi, Ufw, lo, hi)
oldCfg = Simulink.fileGenControl('getConfig');
cfgCleanup = onCleanup(@() Simulink.fileGenControl('setConfig', 'config', oldCfg)); %#ok<NASGU>
Simulink.fileGenControl('set', 'CacheFolder', fullfile(outDir, 'cache'), ...
    'CodeGenFolder', fullfile(outDir, 'cache'), 'createDir', true);
mdl = 'f06_persistent_comparison';
assert(~bdIsLoaded(mdl), 'f06:loadedHarness', 'Close the previous harness first.');
new_system(mdl);
mdlCleanup = onCleanup(@() closeHarness(mdl)); %#ok<NASGU>
mw = get_param(mdl, 'ModelWorkspace');
assignin(mw, 'FocDiscrTime', Ts);
set_param(mdl, 'SolverType', 'Fixed-step', 'Solver', 'FixedStepDiscrete', ...
    'FixedStep', num2str(Ts, 17), 'StopTime', '0.1', ...
    'AlgebraicLoopMsg', 'error', 'ReturnWorkspaceOutputs', 'on');
blocks = {'Reference', 'PersistentA', 'PersistentB'};
sources = {'fw_trim_projected', 'fw_trim_persistent', 'fw_trim_persistent'};
for k = 1:3
    block = [mdl '/' blocks{k}];
    add_block('simulink/User-Defined Functions/MATLAB Function', block);
    cfg = get_param(block, 'MATLABFunctionConfiguration');
    cfg.FunctionScript = fileread(which(sources{k}));
    cfg.UpdateMethod = 'Discrete'; cfg.SampleTime = 'FocDiscrTime';
    cfg.AllowDirectFeedthrough = true;
    if k > 1
        chart = find(sfroot, '-isa', 'Stateflow.EMChart', 'Path', block);
        param = find(chart, '-isa', 'Stateflow.Data', 'Name', 'FocDiscrTime');
        assert(isscalar(param));
        param.Scope = 'Parameter'; param.Tunable = false;
    end
end
add_block('simulink/Discrete/Unit Delay', [mdl '/RefState'], ...
    'SampleTime', num2str(Ts, 17), 'InitialCondition', '0');
add_line(mdl, 'RefState/1', 'Reference/1');
add_line(mdl, 'Reference/2', 'RefState/1');

t = (0:1200)'*Ts;
ff = zeros(size(t)); ff(t >= 0.025 & t < 0.06) = -0.08;
eu = -10*ones(size(t)); eu(t >= 0.02 & t < 0.075) = Ufw;
lower = lo*ones(size(t)); lower(t >= 0.04 & t < 0.05) = -0.06;
inputs = {ff, eu, Ufw+zeros(size(t)), lower, hi+zeros(size(t)), ...
    Kpsi+zeros(size(t)), Ts+zeros(size(t))};
for p = 1:7
    name = sprintf('Input%d', p);
    assignin(mw, name, [t, inputs{p}]);
    add_block('simulink/Sources/From Workspace', [mdl '/' name], ...
        'VariableName', name, 'SampleTime', num2str(Ts, 17), 'Interpolate', 'off', ...
        'OutputAfterFinalValue', 'Holding final value');
    add_line(mdl, [name '/1'], sprintf('Reference/%d', p+1));
    if p < 7 % FocDiscrTime is resolved from the model workspace, not wired.
        add_line(mdl, [name '/1'], sprintf('PersistentA/%d', p));
        if p ~= 2
            add_line(mdl, [name '/1'], sprintf('PersistentB/%d', p));
        end
    end
end
% A second block has a different input to expose accidentally shared state.
add_block('simulink/Math Operations/Gain', [mdl '/InvertError'], 'Gain', '-1');
add_line(mdl, 'Input2/1', 'InvertError/1');
add_line(mdl, 'InvertError/1', 'PersistentB/2');
for k = 1:3
    for p = 1:4
        name = sprintf('log%d_%d', k, p);
        add_block('simulink/Sinks/To Workspace', [mdl '/' name], ...
            'VariableName', name, 'SaveFormat', 'Timeseries', 'MaxDataPoints', 'inf');
        source = sprintf('%s/%d', blocks{k}, p);
        if k == 1 && p == 2
            source = 'RefState/1'; % compare the state AT ENTRY, not x_next
        end
        add_line(mdl, source, [name '/1']);
    end
end
Simulink.BlockDiagram.arrangeSystem(mdl);
set_param(mdl, 'SimulationCommand', 'update');
for k = 2:3
    block = [mdl '/' blocks{k}];
    ports = get_param(block, 'PortHandles');
    assert(numel(ports.Inport) == 6);
    cfg = get_param(block, 'MATLABFunctionConfiguration');
    assert(strcmp(cfg.SampleTime, 'FocDiscrTime'));
    chart = find(sfroot, '-isa', 'Stateflow.EMChart', 'Path', block);
    param = find(chart, '-isa', 'Stateflow.Data', 'Name', 'FocDiscrTime');
    assert(strcmp(param.Scope, 'Parameter') && ~param.Tunable);
end
fprintf('PASS: six signal ports; FocDiscrTime resolves from model workspace as Parameter, Tunable off.\n');
save_system(mdl, fullfile(outDir, [mdl '.slx']));

% Independent expected trajectories for the two block instances.
expected = zeros(numel(t), 4, 2);
for branch = 1:2
    state = 0; direction = 3-2*branch;
    for k = 1:numel(t)
        [a, next, c, d] = fw_trim_projected(state, ff(k), direction*eu(k), ...
            Ufw, lower(k), hi, Kpsi, Ts);
        expected(k, :, branch) = [a, state, c, d]; state = next;
    end
end
assert(expected(end, 2, 1) < 0); % ensure next run must actually reinitialize
assert(any(abs(expected(:, 2, 1)-expected(:, 2, 2)) > 1e-6));
maxError = 0;
for run = 1:4
    if run == 3
        set_param(mdl, 'FastRestart', 'on');
    end
    out = sim(mdl);
    for k = 1:3
        branch = max(k-1, 1);
        for p = 1:4
            s = out.get(sprintf('log%d_%d', k, p));
            assert(numel(s.Time) == numel(t) && max(abs(s.Time-t)) < 1e-12);
            err = max(abs(s.Data(:)-expected(:, p, branch)));
            assert(err < 1e-12);
            maxError = max(maxError, err);
        end
    end
    fprintf('PASS: Simulink run %d, FastRestart=%s, 1201 samples; both instances and reference match.\n', ...
        run, get_param(mdl, 'FastRestart'));
end
set_param(mdl, 'FastRestart', 'off');
save(fullfile(outDir, 'comparison.mat'), 'out', 'expected', 't', 'ff', 'eu', 'lower', 'maxError');
fprintf('PASS: normal/Fast Restart reinitialization; instance isolation; max error %.3g.\n', maxError);
end

function closeHarness(mdl)
if bdIsLoaded(mdl)
    set_param(mdl, 'FastRestart', 'off');
    close_system(mdl, 0);
end
end
