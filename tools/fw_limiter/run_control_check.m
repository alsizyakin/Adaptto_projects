function summary = run_control_check(runDir, profile, sourceModel)
% Check one speed profile on copies of a user-edited controller.
% profile: saved (as connected), hold204 (Table4), sweep738 (Table2).
d = fwl_dirs(runDir);
if nargin < 3, sourceModel = d.model; end
assert(any(strcmp(profile, {'saved', 'hold204', 'sweep738'})), 'fwl:profile', 'Unknown speed profile.');
sourceModel = char(java.io.File(sourceModel).getCanonicalPath());
if strcmp(profile, 'saved')
    run_baseline(d.runs, sourceModel);
else
    prepared = fullfile(d.runs, 'profile_source.slx');
    assert(~isfile(prepared), 'fwl:exists', 'Use a new results directory.');
    copyfile(sourceModel, prepared);
    load_system(prepared);
    m = 'profile_source';
    cleanupModel = onCleanup(@() close_system(m, 0));
    if strcmp(profile, 'hold204'), lookup = '1-D Lookup Table4'; else, lookup = '1-D Lookup Table2'; end
    newName = get_param([m '/' lookup], 'Name');
    pc = get_param([m '/Simulink-PS Converter1'], 'PortConnectivity');
    converterName = get_param([m '/Simulink-PS Converter1'], 'Name');
    oldName = get_param(pc(1).SrcBlock, 'Name');
    if ~strcmp(oldName, newName)
        delete_line(m, [oldName '/1'], [converterName '/1']);
        add_line(m, [newName '/1'], [converterName '/1'], 'autorouting', 'on');
        % Keep the existing speed monitor consistent with the test input.
        monitor = get_param([m '/Scope6'], 'PortConnectivity');
        if monitor(1).SrcBlock ~= -1 && strcmp(get_param(monitor(1).SrcBlock, 'Name'), oldName)
            delete_line(m, [oldName '/1'], 'Scope6/1');
            add_line(m, [newName '/1'], 'Scope6/1', 'autorouting', 'on');
        end
    end
    save_system(m, prepared);
    clear cleanupModel;
    run_baseline(d.runs, prepared);
end
summary = verify_baseline(d.runs);
summary.userSourceSha256 = fwl_sha256(sourceModel);
summary.profileSelection = profile;
fid = fopen(fullfile(d.runs, 'summary.json'), 'w');
assert(fid >= 0);
fprintf(fid, '%s\n', jsonencode(summary, PrettyPrint=true)); fclose(fid);
end
