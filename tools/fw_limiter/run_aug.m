function run_aug(tag, stopTime, overrides, blockParams, decim, runDir)
% Simulate a copy of ideal_source_drive_Idff_aug_param with the key control
% signals logged. The original model is not modified.
%   overrides   struct of model-workspace variables, e.g. struct('deltaLd', 0.2)
%   blockParams N-by-3 cell {block, parameter, value} applied to the copy
%   decim       logging decimation
%   runDir      output folder (default from fwl_dirs)
% Result: <runDir>/aug_<tag>.mat, one struct {t, y} per logged signal.
if nargin < 3, overrides = struct(); end
if nargin < 4, blockParams = cell(0, 3); end
if nargin < 5, decim = 10; end
if nargin < 6, runDir = ''; end
d = fwl_dirs(runDir);
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
copyfile(d.model, dst);
load_system(dst);
closeModel = onCleanup(@() close_system(m, 0));
hws = get_param(m, 'ModelWorkspace');
fn = fieldnames(overrides);
for k = 1:numel(fn), hws.assignin(fn{k}, overrides.(fn{k})); end
for k = 1:size(blockParams, 1)
    set_param([m '/' blockParams{k, 1}], blockParams{k, 2}, blockParams{k, 3});
end

sig = { % block, output port, logged name
    'Bus Selector', 1, 'Id'
    'Bus Selector', 2, 'Iq'
    'Unit Delay1', 1, 'Idreq'
    'Min3', 1, 'Iqreq'
    'Min_smooth_ab', 1, 'IqLim'
    'Low-Pass Filter (Discrete or Continuous)7', 1, 'Psi_est'
    'Low-Pass Filter (Discrete or Continuous)9', 1, 'Lq_est'
    'VectorBase', 1, 'vRef'
    'VectorBase', 3, 'Ud'
    'VectorBase', 4, 'Uq'
    'Gain8', 1, 'Vs_max'
    'Sqrt1', 1, 'Vabs_f'
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
    };
for k = 1:size(sig, 1)
    ph = get_param([m '/' sig{k, 1}], 'PortHandles');
    set_param(ph.Outport(sig{k, 2}), 'DataLogging', 'on', 'DataLoggingNameMode', 'Custom', ...
        'DataLoggingName', sig{k, 3}, 'DataLoggingDecimateData', 'on', ...
        'DataLoggingDecimation', num2str(decim));
end
set_param(m, 'SignalLogging', 'on', 'SignalLoggingName', 'logsout', 'StopTime', num2str(stopTime));

tic;
out = sim(m, 'ReturnWorkspaceOutputs', 'on');
el = toc;
R = struct();
for k = 1:out.logsout.numElements
    e = out.logsout.getElement(k);
    R.(e.Name) = struct('t', e.Values.Time, 'y', squeeze(e.Values.Data));
end
R.elapsed = el; R.overrides = overrides; R.blockParams = blockParams; R.stopTime = stopTime;
save(fullfile(d.runs, [m '.mat']), '-struct', 'R');
fprintf('%s done in %.1f s\n', m, el);
end
