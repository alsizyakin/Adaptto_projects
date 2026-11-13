function verify_saved_startgen()
% Finish verification of the completed MAT; no model change or simulation.
root='tmp/f06_sg2900_20261113';
specs=jsondecode(fileread(fullfile(root,'cases.json'))); spec=specs(6);
folder=fullfile(root,spec.id); overrides=struct();
for field={'deltaLd','deltaLq','deltaPsi','deltaRs','VDC','Is_max'}
    overrides.(field{1})=spec.(field{1});
end
A=verify_f06_case(folder,spec.id,spec.profile,spec.deltaLd, ...
    fullfile(root,'source_model.slx'),overrides);
assert(abs(A.controlStructure.actualSampleTime-A.parameters.FocDiscrTime)<1e-12);
assert(A.speedProfile.maxMeasuredSpeed<=spec.speedLimitRadPerSec+1e-4);
assert(max(abs(A.speedProfile.time(:)-spec.speedTime(:)))<1e-12);
assert(max(abs(A.speedProfile.speed(:)-spec.speedValues(:)))<1e-10);
A.releaseScenario=spec;
A.parameterSelection=jsondecode(fileread(fullfile(folder,'parameter_selection.json')));
summary=struct('sourceSha256',A.sourceSha256); summary.(spec.id)=A;
fid=fopen(fullfile(folder,'summary.json'),'w');assert(fid>=0);
clean=onCleanup(@() fclose(fid)); %#ok<NASGU>
fprintf(fid,'%s\n',jsonencode(summary,PrettyPrint=true));
fprintf('Recovered verification: %s, Imax %.9f A, no resimulation\n',spec.id,A.maxMeasuredCurrent);
end
