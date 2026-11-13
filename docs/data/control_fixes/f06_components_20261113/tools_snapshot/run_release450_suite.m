function run_release450_suite(runRoot, sourceModel, indices)
% Run selected independent scenarios; preserve failures and continue the suite.
specs = jsondecode(fileread(fullfile(runRoot,'cases.json')));
failures = {};
for index = indices
    spec = specs(index);
    try
        run_release450_case(runRoot, sourceModel, spec);
    catch err
        message = getReport(err, 'extended', 'hyperlinks', 'off');
        fprintf(2, 'FAILED %s\n%s\n', spec.id, message);
        fid = fopen(fullfile(runRoot, [spec.id '_failure.txt']), 'w');
        if fid>=0, fprintf(fid,'%s\n',message); fclose(fid); end
        failures{end+1}=spec.id; %#ok<AGROW>
    end
end
assert(isempty(failures), 'release450:failed', 'Incomplete cases: %s', strjoin(failures, ', '));
end
