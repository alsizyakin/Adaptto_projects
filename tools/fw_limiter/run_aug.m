function run_aug(tag, stopTime, overrides, blockParams, decim, runDir, sourceModel)
% Simulate a copy of ideal_source_drive_Idff_aug_param with the key control
% signals logged. The original model is not modified.
%   overrides   struct of model-workspace variables, e.g. struct('deltaLd', 0.2)
%   blockParams N-by-3 cell {block, parameter, value} applied to the copy
%   decim       logging decimation
%   runDir      output folder (default from fwl_dirs)
%   sourceModel optional frozen source SLX (default: working model)
% Result: <runDir>/aug_<tag>.mat, one struct {t, y} per logged signal.
if nargin < 3, overrides = struct(); end
if nargin < 4, blockParams = cell(0, 3); end
if nargin < 5, decim = 10; end
if nargin < 6, runDir = ''; end
d = fwl_dirs(runDir);
if nargin < 7, sourceModel = d.model; end
sourceModel = char(java.io.File(sourceModel).getCanonicalPath());
m = ['aug_' tag];

% separate build cache per run so that parallel sessions do not collide;
% work inside it: rapid accelerator refuses to build when the current folder
% holds other build artifacts (the repository root has slprj/ and *.slxc)
cache = fullfile(d.runs, ['cache_' tag]);
Simulink.fileGenControl('set', 'CacheFolder', cache, 'CodeGenFolder', cache, 'createDir', true);
restoreCache = onCleanup(@() Simulink.fileGenControl('reset'));
oldDir = cd(cache);
restoreDir = onCleanup(@() cd(oldDir));

dst = fullfile(d.runs, [m '.slx']);
copyfile(sourceModel, dst);
sourceSha256 = fwl_sha256(dst);
load_system(dst);
closeModel = onCleanup(@() close_system(m, 0));
hws = get_param(m, 'ModelWorkspace');
fn = fieldnames(overrides);
for k = 1:numel(fn), hws.assignin(fn{k}, overrides.(fn{k})); end
for k = 1:size(blockParams, 1)
    set_param([m '/' blockParams{k, 1}], blockParams{k, 2}, blockParams{k, 3});
end
% F06 moved trim/state into a MATLAB Function. Follow the active Sum6 input;
% never mistake the commented legacy PID for the running controller.
trimPorts = get_param([m '/Sum6'], 'PortConnectivity');
trimName = get_param(trimPorts(1).SrcBlock, 'Name');
isF06 = ~strcmp(trimName, 'PID Controller');
if isF06
    fwBlock = [m '/' trimName];
    cfg = get_param(fwBlock, 'MATLABFunctionConfiguration');
    assert(contains(cfg.FunctionScript, 'fw_trim_persistent'), ...
        'fwl:unknownFW', 'Unknown active FW controller; update logging explicitly.');
    fwPorts = get_param(fwBlock, 'PortConnectivity');
    handles = get_param(fwBlock, 'PortHandles');
    assert(numel(handles.Inport) == 6 && numel(handles.Outport) == 4);
    add_block('simulink/Signal Routing/Mux', [m '/Observe_fw_input_mux'], 'Inputs', '6');
    add_block('simulink/Discrete/Zero-Order Hold', [m '/Observe_fw_inputs'], ...
        'SampleTime', cfg.SampleTime);
    add_block('simulink/Sinks/Terminator', [m '/Observe_fw_inputs_sink']);
    for k = 1:6
        source = get_param(fwPorts(k).SrcBlock, 'Name');
        add_line(m, [source '/' num2str(fwPorts(k).SrcPort+1)], ...
            ['Observe_fw_input_mux/' num2str(k)]);
    end
    add_line(m, 'Observe_fw_input_mux/1', 'Observe_fw_inputs/1');
    add_line(m, 'Observe_fw_inputs/1', 'Observe_fw_inputs_sink/1');
end
% One logged vector at the actual current-controller reference inputs.
add_block('simulink/Signal Routing/Mux', [m '/VectorBase/Reference_dq'], 'Inputs', '2');
add_block('simulink/Sinks/Terminator', [m '/VectorBase/Reference_log_sink']);
add_line([m '/VectorBase'], 'Idreq/1', 'Reference_dq/1');
add_line([m '/VectorBase'], 'Iqreq/1', 'Reference_dq/2');
add_line([m '/VectorBase'], 'Reference_dq/1', 'Reference_log_sink/1');

% Log the parameters actually delivered through the Goto tags separately
% from the estimator outputs. Unity gains give these observations their own
% nonvirtual ports without changing any controller connection.
for entry = {'Psi', 'Lq'}
    name = entry{1};
    from = ['Observe_' name '_from'];
    gain = ['Observe_' name '_used'];
    sink = ['Observe_' name '_sink'];
    add_block('simulink/Signal Routing/From', [m '/' from], 'GotoTag', [name '_est']);
    add_block('simulink/Math Operations/Gain', [m '/' gain], 'Gain', '1');
    add_block('simulink/Sinks/Terminator', [m '/' sink]);
    add_line(m, [from '/1'], [gain '/1']);
    add_line(m, [gain '/1'], [sink '/1']);
end

% Follow the active tag drivers: the user may replace smoothmin/Min3 while
% leaving their old blocks disconnected for comparison.
qLimitGoto = find_system(m, 'SearchDepth', 1, 'BlockType', 'Goto', 'GotoTag', 'IqLim');
qRequestGoto = find_system(m, 'SearchDepth', 1, 'BlockType', 'Goto', 'GotoTag', 'Iqreq');
assert(numel(qLimitGoto)==1 && numel(qRequestGoto)==1, 'fwl:iqTags', 'Expected one driver per q tag.');
qLimitPort = get_param(qLimitGoto{1}, 'PortConnectivity');
qRequestPort = get_param(qRequestGoto{1}, 'PortConnectivity');
qLimitName = get_param(qLimitPort(1).SrcBlock, 'Name');
qRequestName = get_param(qRequestPort(1).SrcBlock, 'Name');
budgetPorts = get_param(qLimitPort(1).SrcBlock, 'PortConnectivity');
assert(numel(budgetPorts)>=3 && budgetPorts(2).SrcBlock>0, 'fwl:iqBudget', 'Expected two active budget inputs.');
% Keep Divide4 too, so the reserve gain remains separately verifiable.
budgetSource = get_param(budgetPorts(2).SrcBlock, 'Name');
add_block('simulink/Math Operations/Gain', [m '/Observe_Iq_voltage_used'], 'Gain', '1');
add_block('simulink/Sinks/Terminator', [m '/Observe_Iq_voltage_sink']);
add_line(m, [budgetSource '/' num2str(budgetPorts(2).SrcPort + 1)], 'Observe_Iq_voltage_used/1');
add_line(m, 'Observe_Iq_voltage_used/1', 'Observe_Iq_voltage_sink/1');

% The FW feedback moved after a scalar magnitude filter in F04. Observe the
% actual negative input of the voltage-error sum, independent of block names.
feedbackPorts = get_param([m '/Sum11'], 'PortConnectivity');
feedbackSource = get_param(feedbackPorts(2).SrcBlock, 'Name');
add_block('simulink/Math Operations/Gain', [m '/Observe_Vabs_feedback'], 'Gain', '1');
add_block('simulink/Sinks/Terminator', [m '/Observe_Vabs_sink']);
add_line(m, [feedbackSource '/' num2str(feedbackPorts(2).SrcPort + 1)], 'Observe_Vabs_feedback/1');
add_line(m, 'Observe_Vabs_feedback/1', 'Observe_Vabs_sink/1');

% Keep the computed legacy gate separate from the signal actually used by
% Product1. The woFreeze source overrides the freeze tag with a constant.
gatePorts = get_param([m '/Product1'], 'PortConnectivity');
gateSource = get_param(gatePorts(1).SrcBlock, 'Name');
add_block('simulink/Math Operations/Gain', [m '/Observe_freeze_used'], 'Gain', '1');
add_block('simulink/Sinks/Terminator', [m '/Observe_freeze_sink']);
add_line(m, [gateSource '/' num2str(gatePorts(1).SrcPort + 1)], 'Observe_freeze_used/1');
add_line(m, 'Observe_freeze_used/1', 'Observe_freeze_sink/1');

sig = { % block, output port, logged name
    'Bus Selector', 1, 'Id'
    'Bus Selector', 2, 'Iq'
    'Unit Delay1', 1, 'Idreq'
    qRequestName, qRequestPort(1).SrcPort+1, 'Iqreq'
    qLimitName, qLimitPort(1).SrcPort+1, 'IqLim'
    'Low-Pass Filter (Discrete or Continuous)7', 1, 'Psi_est'
    'Low-Pass Filter (Discrete or Continuous)9', 1, 'Lq_est'
    'VectorBase', 1, 'vRef'
    'VectorBase', 3, 'Ud'
    'VectorBase', 4, 'Uq'
    'Gain8', 1, 'Vs_max'
    'Observe_Vabs_feedback', 1, 'Vabs_f'
    'Sqrt1', 1, 'Vabs_sqrt'
    'PID Controller', 1, 'Psi_trim'
    'Min1', 1, 'Psi_d_ff'
    'NOT', 1, 'freeze'
    'PS-Simulink Converter2', 1, 'speed'
    'PS-Simulink Converter3', 1, 'torque'
    'SVPWM1', 5, 'overmod'
    'Divide', 1, 'dPsi'
    'sat_signed4', 1, 'sens'
    'Divide4', 1, 'Iq_voltLim'
    'Low-Pass Filter (Discrete or Continuous)8', 1, 'Idreq_f'
    'Sqrt', 1, 'Iq_curLim'
    'Repeating Sequence', 1, 'Iq_request'
    'Gain1', 1, 'Id_preDelay'
    'SVPWM1', 1, 'duty_a'
    'SVPWM1', 2, 'duty_b'
    'SVPWM1', 3, 'duty_c'
    'SVPWM1', 6, 'duty_violation'
    'Constant7', 1, 'Vdc'
    'VectorBase', 8, 'Vdc_filt'
    'VectorBase/Gain', 1, 'Ulim'
    'Constant', 1, 'Imax'
    'Divide3', 1, 'sens_raw'
    'Low-Pass Filter (Discrete or Continuous)2', 1, 'sens_filt'
    'NOT1', 1, 'reset'
    'PID Controller/Integrator/Discrete/Integrator', 1, 'integrator_fw'
    'VectorBase/PID Controller3/Integrator/Discrete/Integrator', 1, 'integrator_d'
    'VectorBase/PID Controller4/Integrator/Discrete/Integrator', 1, 'integrator_q'
    'VectorBase/PID Controller3/Sum/Sum_PI/Sum', 1, 'PI_d_raw'
    'VectorBase/PID Controller4/Sum/Sum_PI/Sum', 1, 'PI_q_raw'
    'VectorBase/PID Controller3', 1, 'PI_d_limited'
    'VectorBase/PID Controller4', 1, 'PI_q_limited'
    'VectorBase/Product', 1, 'Ud_decoupling_magnitude'
    'VectorBase/Sum11', 1, 'Uq_decoupling'
    'VectorBase/Reference_dq', 1, 'Iref_dq'
    'Observe_Psi_used', 1, 'Psi_used'
    'Observe_Lq_used', 1, 'Lq_used'
    'Observe_Iq_voltage_used', 1, 'Iq_voltLim_used'
    'VectorBase/UqLimiter', 1, 'Uq_limit'
    'Sum6', 1, 'Psi_candidate'
    'Product1', 1, 'fw_input_gated'
    'AND', 1, 'fw_hold_lower'
    'AND1', 1, 'fw_hold_upper'
    'AND2', 1, 'fw_hold_base'
    'Divide9', 1, 'omega_base'
    'Observe_freeze_used', 1, 'freeze_used'
    'sat_signed5', 1, 'w_el_sat'
    'sat_signed1', 1, 'psi_speed_den'
    'sat_signed2', 1, 'lq_speed_den'
    'sat_signed3', 1, 'lq_current_den'
    'Sum12', 1, 'Psi_est_raw'
    'Divide8', 1, 'Lq_est_raw'
    'VectorBase/Sum9', 1, 'PI_d_upper'
    'VectorBase/Sum10', 1, 'PI_d_lower'
    'VectorBase/Sum7', 1, 'PI_q_upper'
    'VectorBase/Sum8', 1, 'PI_q_lower'
    };
if isF06
    sig(strcmp(sig(:, 3), 'Psi_trim'), 1:2) = {trimName, 1};
    sig(strcmp(sig(:, 3), 'integrator_fw'), 1:2) = {trimName, 2};
    sig = [sig; {trimName, 3, 'fw_psi_cmd'; trimName, 4, 'fw_e_norm'; ...
        'Observe_fw_inputs', 1, 'fw_inputs'}];
end
portsToLog = strcat(string(sig(:, 1)), "/", string(cell2mat(sig(:, 2))));
assert(numel(unique(portsToLog)) == size(sig, 1), 'fwl:duplicatePort', 'Each port must have one logging name.');
assert(numel(unique(string(sig(:, 3)))) == size(sig, 1), 'fwl:duplicateName', 'Logging names must be unique.');
for k = 1:size(sig, 1)
    ph = get_param([m '/' sig{k, 1}], 'PortHandles');
    set_param(ph.Outport(sig{k, 2}), 'DataLogging', 'on', 'DataLoggingNameMode', 'Custom', ...
        'DataLoggingName', sig{k, 3}, 'DataLoggingDecimateData', 'on', ...
        'DataLoggingDecimation', num2str(decim), 'DataLoggingLimitDataPoints', 'off');
end
set_param(m, 'SignalLogging', 'on', 'SignalLoggingName', 'logsout', 'StopTime', num2str(stopTime));
% Preserve the actual instrumented model, including scenario overrides.
save_system(m, dst);
parameters = struct();
for name = {'Is_max', 'FocDiscrTime', 'Ld', 'Lq', 'Psi', 'Rs', 'PolePairs', ...
        'VDC', 'mMaxPWM', 'mMaxCurrent', 'mFW', 'deltaLd', 'deltaLq', 'deltaPsi', 'deltaRs'}
    parameters.(name{1}) = hws.getVariable(name{1});
end

tic;
out = sim(m, 'ReturnWorkspaceOutputs', 'on');
el = toc;
R = struct();
try
    % A user model can contain extra logged lines, including unnamed ones.
    % Extract the explicit contract by name; never turn an empty name into
    % a MATLAB struct field or silently lose a required observation.
    for k = 1:size(sig, 1)
        name = sig{k, 3};
        e = out.logsout.getElement(name);
        R.(name) = struct('t', e.Values.Time, 'y', squeeze(e.Values.Data));
    end
catch extractionError
    rawLogs = out.logsout; finalTime = out.tout(end); %#ok<NASGU>
    save(fullfile(d.runs, [m '_raw_logs.mat']), 'rawLogs', 'finalTime', '-v7.3');
    rethrow(extractionError);
end
R.unrequestedSignalNames = setdiff(out.logsout.getElementNames, sig(:, 3));
R.elapsed = el; R.overrides = overrides; R.blockParams = blockParams; R.stopTime = stopTime;
R.parameters = parameters; R.decimation = decim; R.sourceModel = sourceModel;
R.finalTime = out.tout(end);
R.completed = abs(R.finalTime - stopTime) <= 1e-9 * max(1, stopTime);
R.signalMap = sig;
R.sourceSha256 = sourceSha256; R.modelSha256 = fwl_sha256(dst);
% Pre-limit voltages including feedforward, on the PI's own sample grid.
R.Ud_raw = rawVoltage(R.PI_d_raw, R.Ud_decoupling_magnitude, -1);
R.Uq_raw = rawVoltage(R.PI_q_raw, R.Uq_decoupling, 1);
save(fullfile(d.runs, [m '.mat']), '-struct', 'R');
fprintf('%s done in %.1f s\n', m, el);
end

function u = rawVoltage(pi, ff, signFF)
[t, ix] = unique(ff.t, 'last');
u = struct('t', pi.t, 'y', pi.y + signFF * interp1(t, ff.y(ix), pi.t, 'previous'));
end
