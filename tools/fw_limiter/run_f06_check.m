function A = run_f06_check(runDir, tag, profile, deltaLd, sourceModel)
% Full 25 s F06 case; scenario/profile changes only, no controller edits.
assert(any(strcmp(profile, {'saved', 'hold204', 'sweep738'})));
d = fwl_dirs(runDir);
frozen = fullfile(d.runs, 'baseline_source.slx');
assert(~isfile(frozen), 'f06:exists', 'Use a new case directory.');
copyfile(sourceModel, frozen);
if ~strcmp(profile, 'saved')
    load_system(frozen); m = 'baseline_source';
    cleanup = onCleanup(@() close_system(m, 0));
    if strcmp(profile, 'hold204'), lookup = '1-D Lookup Table4'; else, lookup = '1-D Lookup Table2'; end
    newName = get_param([m '/' lookup], 'Name');
    pc = get_param([m '/Simulink-PS Converter1'], 'PortConnectivity');
    converter = get_param([m '/Simulink-PS Converter1'], 'Name');
    oldName = get_param(pc(1).SrcBlock, 'Name');
    if ~strcmp(oldName, newName)
        delete_line(m, [oldName '/1'], [converter '/1']);
        add_line(m, [newName '/1'], [converter '/1']);
        monitor = get_param([m '/Scope6'], 'PortConnectivity');
        if monitor(1).SrcBlock ~= -1 && strcmp(get_param(monitor(1).SrcBlock, 'Name'), oldName)
            delete_line(m, [oldName '/1'], 'Scope6/1');
            add_line(m, [newName '/1'], 'Scope6/1');
        end
    end
    save_system(m, frozen); clear cleanup;
end
S = inspect_f06_model(frozen, d.runs);
overrides = struct('deltaLd', deltaLd, 'deltaLq', 0, 'deltaPsi', 0, 'deltaRs', 0);
run_aug(tag, 25, overrides, cell(0, 3), 1, d.runs, frozen);
A = verify_f06_case(runDir, tag, profile, deltaLd, sourceModel);
end
