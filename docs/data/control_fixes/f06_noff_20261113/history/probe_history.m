function probe_history
base=fullfile(pwd,'tmp','f06_noff_20261113','history');
files={'cd3e1e5/ideal_source_Motor_DVS_newest_param.slx','68a95c2/ideal_source_drive.slx'};
result=struct;
for k=1:numel(files)
    path=fullfile(base,files{k}); h=load_system(path); mdl=get_param(h,'Name');
    a=struct; a.file=files{k}; w=get_param(mdl,'ModelWorkspace');
    names={'FocDiscrTime','Ld','Lq','Psi','PolePairs','VDC','Is_max','Rs','pi_bandwidth'};
    for j=1:numel(names)
        if hasVariable(w,names{j}); a.parameters.(names{j})=getVariable(w,names{j}); end
    end
    blocks={'Gain7','Sum4','Sqrt1','PID Controller'};
    parameters={{'Gain'},{'Inputs'},{'Operator','OutputSignalType'},{'P','I','SampleTime','IntegratorMethod','TimeDomain','Controller','LimitOutput','AntiWindupMode','UpperSaturationLimit','LowerSaturationLimit'}};
    for j=1:numel(blocks)
        b=[mdl '/' blocks{j}]; q=struct; q.path=blocks{j};
        if getSimulinkBlockHandle(b)>0
            for n=1:numel(parameters{j}); q.(parameters{j}{n})=get_param(b,parameters{j}{n}); end
        end
        a.blocks.(matlab.lang.makeValidName(blocks{j}))=q;
    end
    result.(sprintf('model%d',k))=a;close_system(mdl,0);
end
fid=fopen(fullfile(base,'runtime_inspection.json'),'w');fprintf(fid,'%s\n',jsonencode(result,PrettyPrint=true));fclose(fid);
disp(jsonencode(result));
end
