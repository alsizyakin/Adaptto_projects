function A = run_gain_check(runDir, tag, gainI, deltaLd, profile, sourceModel)
% Full 25 s experiment changing only the outer I gain and test scenario.
% The caller supplies an immutable gate=1 source; user models are never saved.
assert(isscalar(gainI) && isfinite(gainI) && gainI >= 0);
assert(isscalar(deltaLd) && isfinite(deltaLd) && deltaLd > -1);
assert(any(strcmp(profile, {'saved', 'hold204'})));
d = fwl_dirs(runDir);
sourceModel = char(java.io.File(sourceModel).getCanonicalPath());
prepared = fullfile(d.runs, 'gain_source.slx');
assert(~isfile(prepared), 'fwl:exists', 'Use a new results directory.');
copyfile(sourceModel, prepared);
m = 'gain_source'; load_system(prepared);
cleanup = onCleanup(@() close_system(m, 0));
ws = get_param(m, 'ModelWorkspace');
assert(ws.evalin(get_param([m '/Constant16'], 'Value')) == 1);
assert(strcmp(get_param([m '/PID Controller'], 'Controller'), 'I'));
originalI = get_param([m '/PID Controller'], 'I');
originalReset = get_param([m '/PID Controller'], 'ExternalReset');
if ws.evalin(originalI) ~= gainI
    set_param([m '/PID Controller'], 'I', num2str(gainI, 17));
end
if strcmp(profile, 'hold204')
    pc = get_param([m '/Simulink-PS Converter1'], 'PortConnectivity');
    oldName = get_param(pc(1).SrcBlock, 'Name');
    newName = get_param([m '/1-D Lookup Table4'], 'Name');
    converterName = get_param([m '/Simulink-PS Converter1'], 'Name');
    if ~strcmp(oldName, newName)
        delete_line(m, [oldName '/1'], [converterName '/1']);
        add_line(m, [newName '/1'], [converterName '/1'], 'autorouting', 'on');
        monitor = get_param([m '/Scope6'], 'PortConnectivity');
        if monitor(1).SrcBlock ~= -1 && strcmp(get_param(monitor(1).SrcBlock, 'Name'), oldName)
            delete_line(m, [oldName '/1'], 'Scope6/1');
            add_line(m, [newName '/1'], 'Scope6/1', 'autorouting', 'on');
        end
    end
end
save_system(m, prepared); clear cleanup;
A = run_parameter_check(d.runs, tag, ...
    struct('deltaLd', deltaLd, 'deltaLq', 0, 'deltaPsi', 0, 'deltaRs', 0), prepared);
actual = ['aug_' tag]; load_system(fullfile(d.runs, [actual '.slx']));
cleanupActual = onCleanup(@() close_system(actual, 0));
ws = get_param(actual, 'ModelWorkspace');
A.controlStructure.gainIExpression = get_param([actual '/PID Controller'], 'I');
A.controlStructure.gainI = ws.evalin(A.controlStructure.gainIExpression);
A.controlStructure.trimReset = get_param([actual '/PID Controller'], 'ExternalReset');
assert(A.controlStructure.gainI == gainI);
assert(strcmp(A.controlStructure.trimReset, originalReset));
assert(A.controlStructure.freezeUsedMinimum == 1 && A.controlStructure.freezeUsedMaximum == 1);
assert(A.controlStructure.trimUpperFlux == 500*A.parameters.Ld);
assert(A.controlStructure.trimLowerFlux == -500*A.parameters.Ld);
assert(A.controlParameters.Psi.maxNominalDeviation < 1e-12);
assert(A.controlParameters.Lq.maxNominalDeviation < 1e-12);
A.gainExperiment = struct('originalExpression', originalI, 'gainI', gainI, ...
    'profile', profile, 'deltaLd', deltaLd, 'parentSourceSha256', fwl_sha256(sourceModel));
summary = struct('sourceSha256', A.sourceSha256, 'parentSourceSha256', fwl_sha256(sourceModel));
summary.(tag) = A;
fid = fopen(fullfile(d.runs, 'summary.json'), 'w'); assert(fid >= 0);
fprintf(fid, '%s\n', jsonencode(summary, PrettyPrint=true)); fclose(fid);
fprintf('Gain experiment verified: I=%.9g, deltaLd=%.3g, profile=%s, gate=1, reset=%s\n', ...
    gainI, deltaLd, profile, A.controlStructure.trimReset);
end
