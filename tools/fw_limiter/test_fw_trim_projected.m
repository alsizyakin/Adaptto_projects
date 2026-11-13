function test_fw_trim_projected(outDir)
% Regression and isolated Simulink checks; never opens the drive models.
% outDir must be new. Generated harness/cache/logs belong in project tmp/.
if nargin == 0
    outDir = fullfile('tmp', ['f06_component_' datestr(now, 'yyyymmdd_HHMMSS')]);
end
assert(~isfolder(outDir), 'f06:existingOutput', 'Use a new result directory.');
mkdir(outDir);
outDir = char(java.io.File(outDir).getCanonicalPath());
diary(fullfile(outDir, 'verification.txt'));
diaryCleanup = onCleanup(@() diary('off')); %#ok<NASGU>
fprintf('F06 component checks, %s\nMATLAB %s\n', datestr(now, 31), version);
fprintf('Not a closed-loop drive simulation.\n');
src = which('fw_trim_projected');
fprintf('Source SHA-256: %s\n', fwl_sha256(src));
copyfile(src, fullfile(outDir, 'fw_trim_projected.m'));
Ts = 1/12000; Kpsi = 2.5; Psi = 0.1024; Ld = 0.00031;
Ufw = 0.95*440/sqrt(3); Ulim = 0.99*440/sqrt(3);
lo = -1.2*Psi; hi = 0; tol = 1e-12;

% Startup/headroom: no positive stored correction behind the final zero limit.
x = 0;
for k = 1:12000
    [trim, x, cmd] = fw_trim_projected(x, 0, Ufw, Ufw, lo, hi, Kpsi, Ts);
    assert(trim == 0 && x == 0 && cmd == 0);
end
fprintf('PASS: 1 s at FF = 0 and full voltage headroom; state stays zero.\n');

% A legacy overshoot (30 Wb), or a positive trim left after FF is removed,
% cannot remain hidden behind the final limit, even for one output sample.
for oldState = [30.166551565, 0.155, 275.93887*Ld]
    [trim, next, cmd] = fw_trim_projected(oldState, 0, 0, Ufw, lo, hi, Kpsi, Ts);
    assert(trim == 0 && next == 0 && cmd == 0);
end
fprintf('PASS: legacy positive hidden states projected out at the output and next state.\n');

% Positive trim is legitimate while cancelling part of negative FF.
[trim, next, cmd] = fw_trim_projected(0.03, -0.08, 0, Ufw, lo, hi, Kpsi, Ts);
assert(abs(trim-0.03) < tol && abs(next-0.03) < tol && abs(cmd+0.05) < tol);
[trim, next, cmd] = fw_trim_projected(next, 0, 0, Ufw, lo, hi, Kpsi, Ts);
assert(trim == 0 && next == 0 && cmd == 0);
fprintf('PASS: useful positive trim preserved with negative FF; removed when FF becomes zero.\n');

% Deficit sign from the F05-I Ld -20%% snapshot: new input is negative.
% This only checks the controller direction, not the physical plant gain.
[~, next, ~, ev] = fw_trim_projected(0, -0.09327481, ...
    Ufw-251.493779, Ufw, lo, hi, Kpsi, Ts);
assert(next < 0 && ev < 0);
fprintf('PASS: overvoltage gives negative correction, independent of old sens.\n');

% Final lower limit: outward integration is suppressed, inward integration
% starts on the very next step. No delay due to a large hidden state.
for ff = [0, -Psi, -0.2]
    [~, next, cmd] = fw_trim_projected(-100, ff, -1e9, Ufw, lo, hi, Kpsi, Ts);
    assert(cmd == lo && abs(next-(lo-ff)) < tol);
    [~, next2] = fw_trim_projected(next, ff, Ufw, Ufw, lo, hi, Kpsi, Ts);
    assert(abs((next2-next)-Ts*Kpsi) < tol);
end
fprintf('PASS: lower-limit anti-windup and immediate inward recovery.\n');

% At FF = 0, negative correction returns smoothly when headroom reappears.
x = -0.05;
for k = 1:300
    old = x;
    [~, x] = fw_trim_projected(x, 0, Ufw, Ufw, lo, hi, Kpsi, Ts);
    assert(x >= old-tol && x <= 0 && x-old <= Ts*Kpsi+tol);
end
assert(x == 0);
% Conversely FF = 0 does not disable correction if voltage is insufficient.
[~, next] = fw_trim_projected(0, 0, Ufw-Ulim, Ufw, lo, hi, Kpsi, Ts);
assert(next < 0);
fprintf('PASS: smooth return to zero; FF = 0 still allows correction for voltage deficit.\n');

% Moving FF/limits and extreme errors: command and stored next sum are always
% feasible. This also covers clipped error normalization and the voltage floor.
rng(61112, 'twister');
for k = 1:2000
    upper = -0.02*rand; lower = upper-0.01-0.2*rand;
    ff = 0.4*rand-0.3; old = 2*rand-1;
    u = [0, 0.5, Ufw]; u = u(mod(k, 3)+1);
    [trim, next, cmd, ev] = fw_trim_projected(old, ff, 1e5*(rand-0.5), ...
        u, lower, upper, Kpsi, Ts);
    assert(cmd >= lower-tol && cmd <= upper+tol);
    assert(ff+next >= lower-tol && ff+next <= upper+tol);
    assert(abs(ff+trim-cmd) < tol && abs(next-trim) <= Kpsi*Ts+tol);
    assert(isfinite(ev) && abs(ev) <= 1);
end
fprintf('PASS: 2000 changing-bound/FF cases; bounded state and increment.\n');

% A small independent harness checks MATLAB Function compilation, explicit
% discrete activation, Unit Delay wiring, and output/state sample alignment.
runHarness(outDir, Ts, Kpsi, Ufw, lo, hi);
fprintf('ALL F06 COMPONENT CHECKS PASSED. Full drive validation pending.\n');
end

function runHarness(outDir, Ts, Kpsi, Ufw, lo, hi)
oldCfg = Simulink.fileGenControl('getConfig');
cfgCleanup = onCleanup(@() Simulink.fileGenControl('setConfig', 'config', oldCfg)); %#ok<NASGU>
Simulink.fileGenControl('set', 'CacheFolder', fullfile(outDir, 'cache'), ...
    'CodeGenFolder', fullfile(outDir, 'cache'), 'createDir', true);
mdl = 'f06_trim_component';
assert(~bdIsLoaded(mdl), 'f06:loadedHarness', 'Close the previous test harness first.');
new_system(mdl);
mdlCleanup = onCleanup(@() close_system(mdl, 0)); %#ok<NASGU>
set_param(mdl, 'SolverType', 'Fixed-step', 'Solver', 'FixedStepDiscrete', ...
    'FixedStep', num2str(Ts, 17), 'StopTime', '0.1', ...
    'AlgebraicLoopMsg', 'error', 'SaveTime', 'on', 'ReturnWorkspaceOutputs', 'on');
add_block('simulink/User-Defined Functions/MATLAB Function', [mdl '/FWTrim']);
cfg = get_param([mdl '/FWTrim'], 'MATLABFunctionConfiguration');
cfg.FunctionScript = fileread(which('fw_trim_projected'));
cfg.UpdateMethod = 'Discrete';
cfg.SampleTime = num2str(Ts, 17);
add_block('simulink/Discrete/Unit Delay', [mdl '/TrimState'], ...
    'SampleTime', num2str(Ts, 17), 'InitialCondition', '0');
add_line(mdl, 'TrimState/1', 'FWTrim/1');
add_line(mdl, 'FWTrim/2', 'TrimState/1');

t = (0:1200)'*Ts;
ff = zeros(size(t)); ff(t >= 0.025 & t < 0.06) = -0.08;
e = Ufw*ones(size(t)); e(t >= 0.02 & t < 0.075) = -10;
lower = lo*ones(size(t)); lower(t >= 0.04 & t < 0.05) = -0.06;
mw = get_param(mdl, 'ModelWorkspace');
inputs = {ff, e, Ufw+zeros(size(t)), lower, hi+zeros(size(t)), ...
    Kpsi+zeros(size(t)), Ts+zeros(size(t))};
for p = 1:numel(inputs)
    name = sprintf('Input%d', p);
    assignin(mw, name, [t, inputs{p}]);
    add_block('simulink/Sources/From Workspace', [mdl '/' name], ...
        'VariableName', name, 'SampleTime', num2str(Ts, 17), 'Interpolate', 'off', ...
        'OutputAfterFinalValue', 'Holding final value');
    add_line(mdl, [name '/1'], sprintf('FWTrim/%d', p+1));
end
for p = 1:4
    name = sprintf('out%d', p);
    add_block('simulink/Sinks/To Workspace', [mdl '/' name], ...
        'VariableName', name, 'SaveFormat', 'Timeseries', 'MaxDataPoints', 'inf');
    add_line(mdl, sprintf('FWTrim/%d', p), [name '/1']);
end
Simulink.BlockDiagram.arrangeSystem(mdl);
save_system(mdl, fullfile(outDir, [mdl '.slx']));
out = sim(mdl);
expected = zeros(numel(t), 4); state = 0;
for k = 1:numel(t)
    [expected(k, 1), expected(k, 2), expected(k, 3), expected(k, 4)] = ...
        fw_trim_projected(state, ff(k), e(k), Ufw, lower(k), hi, Kpsi, Ts);
    state = expected(k, 2);
end
for p = 1:4
    s = out.get(sprintf('out%d', p));
    assert(numel(s.Time) == numel(t) && max(abs(s.Time-t)) < 1e-12);
    assert(max(abs(s.Data(:)-expected(:, p))) < 1e-12);
end
save(fullfile(outDir, 'component_result.mat'), 'out', 'expected', 't', 'ff', 'e', 'lower');
fprintf('PASS: Simulink harness, 1201 samples at Ts = %.9g s; all 4 outputs match.\n', Ts);
end
