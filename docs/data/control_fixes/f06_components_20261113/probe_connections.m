function probe_connections
base=fullfile(pwd,'tmp','f06_components_20261113');
files={fullfile(base,'component_source.slx'),fullfile(base,'saved_F06_source.slx'),fullfile(pwd,'tmp','f06_noff_20261113','noff_source.slx')};
names={'observed_autosave','saved_F06','proper_noFF'};expected=[false true true];
for k=1:3
    out=fullfile(base,'connection_checks',names{k});mkdir(out);
    s=inspect_f06_model(files{k},out);assert(s.ffConnectionsConsistent==expected(k));
    fprintf('FF CONNECTION %s: projection=%s sum=%s consistent=%d\n',names{k},s.projectionFFSource,s.finalSumFFSource,s.ffConnectionsConsistent);
end
end
