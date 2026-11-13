function prepare_noff_f06(runRoot, sourceModel)
% Controlled FF ablation on a frozen copy; working user SLX is untouched.
root=char(java.io.File(runRoot).getCanonicalPath());
source=char(java.io.File(sourceModel).getCanonicalPath());
target=fullfile(root,'noff_source.slx');
assert(~isfile(target),'noff:exists','Use a fresh experiment source.');
sourceHash=fwl_sha256(source); copyfile(source,target);
load_system(target); m='noff_source';
cleanup=onCleanup(@() close_system(m,0));
sumPorts=get_param([m '/Sum6'],'PortConnectivity');
fw=getfullname(sumPorts(1).SrcBlock);
fwPorts=get_param(fw,'PortConnectivity');
ff=getfullname(sumPorts(2).SrcBlock);
assert(strcmp(ff,[m '/From58']) && fwPorts(1).SrcBlock==sumPorts(2).SrcBlock);
assert(strcmp(get_param(ff,'GotoTag'),'Psi_d_ff'));
cfg=get_param(fw,'MATLABFunctionConfiguration'); code=cfg.FunctionScript;
assert(strcmp(get_param(fwPorts(2).SrcBlock,'Name'),'Sum11'));
assert(strcmp(get_param(fwPorts(6).SrcBlock,'Value'),'2.5'));
ffName=get_param(ff,'Name'); fwName=get_param(fw,'Name');
delete_line(m,[ffName '/1'],'Sum6/2');
delete_line(m,[ffName '/1'],[fwName '/1']);
gate='Experiment_FF_gain';
add_block('simulink/Math Operations/Gain',[m '/' gate], ...
    'Gain','0','Position',[2350,1130,2410,1160]);
add_line(m,[ffName '/1'],[gate '/1']);
add_line(m,[gate '/1'],'Sum6/2');
add_line(m,[gate '/1'],[fwName '/1']);
afterSum=get_param([m '/Sum6'],'PortConnectivity');
afterFw=get_param(fw,'PortConnectivity');
assert(afterSum(2).SrcBlock==get_param([m '/' gate],'Handle'));
assert(afterFw(1).SrcBlock==afterSum(2).SrcBlock);
cfgAfter=get_param(fw,'MATLABFunctionConfiguration');
assert(strcmp(code,cfgAfter.FunctionScript));
save_system(m,target); clear cleanup;
S=inspect_f06_model(target,fullfile(root,'ablation_inspection'));
assert(S.codeMatchesReferenceIgnoringComments && S.inputs.Kpsi.value==2.5);
assert(strcmp(S.inputs.psi_ff.block,gate));
assert(strcmp(S.inputs.eU.block,'Sum11'));
assert(strcmp(sourceHash,fwl_sha256(source)));
A=struct('referenceSource',source,'referenceSha256',sourceHash, ...
    'ablationSource',target,'ablationSha256',fwl_sha256(target), ...
    'gainBlock',gate,'gain',0,'removedDirectConnections', ...
    {{[ffName '/1 -> Sum6/2'],[ffName '/1 -> ' fwName '/1']}}, ...
    'keptKpsi',2.5,'fwCodeUnchanged',true, ...
    'meaning','FF contribution is zero at BOTH projection input and final sum. Raw FF calculator remains for observation.');
fid=fopen(fullfile(root,'ablation.json'),'w');assert(fid>=0);
cleanup=onCleanup(@() fclose(fid)); %#ok<NASGU>
fprintf(fid,'%s\n',jsonencode(A,PrettyPrint=true));
fprintf('NOFF SOURCE READY: %s; original source unchanged\n',A.ablationSha256);
end
