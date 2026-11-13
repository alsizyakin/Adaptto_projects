function S = inspect_f06_model(sourceModel, outputDir)
% Inspect a saved model, without saving or changing any control block.
sourceModel = char(java.io.File(sourceModel).getCanonicalPath());
[~, m] = fileparts(sourceModel);
assert(~bdIsLoaded(m), 'f06:loaded', 'Inspect an isolated saved copy.');
load_system(sourceModel);
cleanup = onCleanup(@() close_system(m, 0)); %#ok<NASGU>
ws = get_param(m, 'ModelWorkspace');
S.source = sourceModel; S.sha256 = fwl_sha256(sourceModel);
for name = {'Is_max','FocDiscrTime','Ld','Lq','Psi','Rs','PolePairs', ...
        'VDC','mMaxPWM','mMaxCurrent','mFW','deltaLd','deltaLq','deltaPsi','deltaRs'}
    S.parameters.(name{1}) = ws.getVariable(name{1});
end
pc = get_param([m '/Sum6'], 'PortConnectivity');
fwBlock = getfullname(pc(1).SrcBlock);
S.fwBlock = get_param(fwBlock, 'Name');
cfg = get_param(fwBlock, 'MATLABFunctionConfiguration');
S.updateMethod = cfg.UpdateMethod; S.sampleTimeExpression = cfg.SampleTime;
S.configuredFunctionSampleTime = ws.evalin(cfg.SampleTime);
S.subsystemSampleTimeExpression = get_param(fwBlock, 'SystemSampleTime');
S.subsystemSampleTime = ws.evalin(S.subsystemSampleTimeExpression);
% Inherited (-1) is a setting, not an execution period. Actual time is taken
% from native state timestamps after simulation, not inferred from this field.
S.directFeedthrough = cfg.AllowDirectFeedthrough;
S.legacyPIDCommented = get_param([m '/PID Controller'], 'Commented');
S.idReferenceDelay = ws.evalin(get_param([m '/Unit Delay1'], 'SampleTime'));
chart = find(sfroot, '-isa', 'Stateflow.EMChart', 'Path', fwBlock);
data = find(chart, '-isa', 'Stateflow.Data', 'Name', 'FocDiscrTime');
S.timeDataScope = data.Scope; S.timeDataTunable = data.Tunable;
reference = fileread(which('fw_trim_persistent'));
S.codeMatchesReferenceIgnoringComments = strcmp(stripCode(cfg.FunctionScript), stripCode(reference));
assert(S.codeMatchesReferenceIgnoringComments, 'f06:code', 'The FW law differs from the prepared source.');
assert(strcmp(S.legacyPIDCommented, 'on'));
assert(strcmp(data.Scope, 'Parameter'));
pc = get_param(fwBlock, 'PortConnectivity');
names = {'psi_ff', 'eU', 'Ufw', 'psi_min', 'psi_max', 'Kpsi'};
for k = 1:6
    src = pc(k).SrcBlock;
    S.inputs.(names{k}).block = get_param(src, 'Name');
    S.inputs.(names{k}).port = pc(k).SrcPort + 1;
    if strcmp(get_param(src, 'BlockType'), 'Constant')
        S.inputs.(names{k}).value = ws.evalin(get_param(src, 'Value'));
    end
end
S.dLimitGain = ws.evalin(get_param([m '/VectorBase/Gain1'], 'Gain'));
S.qBudgetGain = ws.evalin(get_param([m '/Gain15'], 'Gain'));
pc = get_param([m '/Simulink-PS Converter1'], 'PortConnectivity');
src = pc(1).SrcBlock;
S.speedProfile.block = strrep(get_param(src, 'Name'), newline, ' ');
S.speedProfile.time = ws.evalin(get_param(src, 'BreakpointsForDimension1'));
S.speedProfile.speed = ws.evalin(get_param(src, 'Table'));
S.stopTime = ws.evalin(get_param(m, 'StopTime'));
if nargin > 1
    if ~isfolder(outputDir), mkdir(outputDir); end
    fid = fopen(fullfile(outputDir, 'inspection.json'), 'w'); assert(fid >= 0);
    fprintf(fid, '%s\n', jsonencode(S, PrettyPrint=true)); fclose(fid);
    fid = fopen(fullfile(outputDir, 'fw_trim.m'), 'w'); assert(fid >= 0);
    fprintf(fid, '%s', cfg.FunctionScript); fclose(fid);
end
fprintf('FW %s: method=%s, function period=%s, subsystem period=%s, integration step=%.9g s, Kpsi=%g\n', ...
    S.fwBlock, S.updateMethod, S.sampleTimeExpression, S.subsystemSampleTimeExpression, ...
    S.parameters.FocDiscrTime, S.inputs.Kpsi.value);
fprintf('Saved plant deltaLd=%g, code matches=%d, delay Idref=%.9g s\n', ...
    S.parameters.deltaLd, S.codeMatchesReferenceIgnoringComments, S.idReferenceDelay);
end

function s = stripCode(s)
s = regexprep(s, '%[^\r\n]*', '');
s = regexprep(s, '\s+', '');
end
