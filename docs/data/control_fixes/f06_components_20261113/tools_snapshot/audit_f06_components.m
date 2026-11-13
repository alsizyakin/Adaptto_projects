function audit_f06_components(sourceModel, outputDir)
% Read a frozen SLX; exercise its actual MATLAB functions and UqLimiter.
% No controller edits or saves of the source model.
source=char(java.io.File(sourceModel).getCanonicalPath());
out=char(java.io.File(outputDir).getCanonicalPath());
if ~isfolder(out), mkdir(out); end
generated=fullfile(out,'extracted');if ~isfolder(generated),mkdir(generated);end
addpath(generated);removePath=onCleanup(@() rmpath(generated)); %#ok<NASGU>
[~,m]=fileparts(source); assert(~bdIsLoaded(m));
hash=fwl_sha256(source); load_system(source);
cleanup=onCleanup(@() close_system(m,0)); %#ok<NASGU>
ws=get_param(m,'ModelWorkspace'); A=struct('source',source,'sha256',hash);
for name={'Is_max','FocDiscrTime','Ld','Lq','Psi','Rs','PolePairs','VDC', ...
        'mMaxPWM','mMaxCurrent','mFW','piBandwidth','deltaLd','deltaLq','deltaPsi','deltaRs'}
    A.parameters.(name{1})=getVariable(ws,name{1});
end
p=A.parameters;
blocks={'lim','Min_smooth_ab','sat_signed1','sat_signed2','sat_signed3','sat_signed5','fw_trim','SVPWM1'};
for k=1:numel(blocks)
    b=[m '/' blocks{k}];cfg=get_param(b,'MATLABFunctionConfiguration');
    key=matlab.lang.makeValidName(blocks{k});
    A.functions.(key)=struct('updateMethod',cfg.UpdateMethod, ...
        'functionPeriod',cfg.SampleTime,'subsystemPeriod',get_param(b,'SystemSampleTime'));
end
for name={'lim','Min_smooth_ab','SVPWM1'}
    key=name{1};cfg=get_param([m '/' key],'MATLABFunctionConfiguration');
    code=strrep(cfg.FunctionScript,'= fcn(',['= audit_' key '(']);
    code=strrep(code,'=fcn(',['=audit_' key '(']);
    assert(~strcmp(code,cfg.FunctionScript),'audit:rename','Function declaration not found: %s',key);
    fid=fopen(fullfile(generated,['audit_' key '.m']),'w');assert(fid>=0);
    fprintf(fid,'%s',code);fclose(fid);
end
clear audit_lim audit_Min_smooth_ab audit_SVPWM1;
% Contracts independent of the implementation: bounds, sign, zero, oddness,
% identity inside the interval, and monotonicity for nonnegative limits.
limits=[0 1e-9 .01 .1 1 5 9 10 100 420];values=sort(unique([-1000 -420 -11 -10 -1 -.01 0 .01 1 10 11 420 1000]));
count=0;maxBoundExcess=0;maxOddError=0;
for l=limits
    last=-inf;
    for a=values
        y=audit_lim(l,a);count=count+1;
        maxBoundExcess=max(maxBoundExcess,abs(y)-l);
        maxOddError=max(maxOddError,abs(y+audit_lim(l,-a)));
        assert(isfinite(y) && abs(y)<=l+1e-12 && y*a>=0 && y>=last);
        if abs(a)<=l, assert(y==a); end
        if a==0 || l==0,assert(y==0);end
        last=y;
    end
end
assert(maxOddError==0);
A.symmetricLimiter=struct('cases',count,'passed',true,'maxBoundExcess',maxBoundExcess,'maxOddError',maxOddError);
A.oldSmoothmin=struct('at0_0',audit_Min_smooth_ab(0,0), ...
    'at1_1',audit_Min_smooth_ab(1,1),'at0_10',audit_Min_smooth_ab(0,10), ...
    'at5_5',audit_Min_smooth_ab(5,5));
% Pure scalar boundary calculations use the audited block equations.
A.currentEnvelope=struct('Is_max',p.Is_max,'idAtNominalPsi',-1.2*p.Psi/p.Ld, ...
    'idAtPsiPlus10Percent',-1.2*1.1*p.Psi/p.Ld,'idAtEstimatorUpperBound',-1.2*1.4*p.Psi/p.Ld, ...
    'psiWhereIdExceedsCurrent',p.Is_max*p.Ld/1.2);
A.estimatorAtZeroSpeedAndCurrents=struct('rawPsi',0,'clampedPsi',.6*p.Psi, ...
    'rawLq',0,'clampedLq',.1*p.Lq,'psiFilterSeconds',20000*p.FocDiscrTime,'lqFilterSeconds',200*p.FocDiscrTime);
% Actual embedded PWM, supported caller domain (-pi..pi), all sectors,
% uncompensated mode used in the audited source. Check the recovered vector.
maxError=0;maxHoldError=0;count=0;maxViolation=0;
for vdc=[.1 440 550]
    for mag=[0 .3 1 1.1]
        vref=mag*p.mMaxPWM*vdc/sqrt(3);
        target=min(vref,p.mMaxPWM*vdc/sqrt(3));
        for angle=linspace(-pi,pi,721)
            [da,db,dc,~,~,viol]=audit_SVPWM1(vref,angle,vdc,[0 0],0,p.FocDiscrTime,0,p.mMaxPWM);
            [ha,hb,hc]=audit_SVPWM1(vref,angle,vdc,[0 0],0,p.FocDiscrTime,0,p.mMaxPWM);
            assert(all([da db dc]>=.005) && all([da db dc]<=.995));
            ab=vdc*[2/3*(da-.5*db-.5*dc),sqrt(3)/3*(db-dc)];
            maxError=max(maxError,norm(ab-target*[cos(angle) sin(angle)]));
            maxHoldError=max(maxHoldError,max(abs([da db dc]-[ha hb hc])));
            maxViolation=max(maxViolation,viol);count=count+1;
        end
    end
end
assert(maxError<1e-9 && maxHoldError==0);
A.pwm=struct('cases',count,'passed',true,'maximumVectorErrorV',maxError, ...
    'maximumHoldError',maxHoldError,'maximumPreClampDutyViolation',maxViolation, ...
    'scope','Caller angle -pi..pi; constant valid Vdc; compensation flags 0; parameter mMaxPWM from source');
% Copy the actual UqLimiter into a separate zero-time component harness.
h='audit_uq_component';assert(~bdIsLoaded(h));new_system(h);
hc=onCleanup(@() close_system(h,0)); %#ok<NASGU>
hws=get_param(h,'ModelWorkspace');hws.assignin('mMaxCurrent',p.mMaxCurrent);
u=p.mMaxCurrent*p.VDC/sqrt(3); ud=[0 u -u u+1 0]; vdc=[p.VDC p.VDC p.VDC p.VDC 0];
add_block([m '/VectorBase/UqLimiter'],[h '/UqLimiter']);
add_block('simulink/Sources/Constant',[h '/Ud'],'Value',mat2str(ud,17));
add_block('simulink/Sources/Constant',[h '/Vdc'],'Value',mat2str(vdc,17));
add_block('simulink/Sinks/To Workspace',[h '/Result'],'VariableName','uq','SaveFormat','Array');
add_line(h,'Ud/1','UqLimiter/1');add_line(h,'Vdc/1','UqLimiter/2');add_line(h,'UqLimiter/1','Result/1');
set_param(h,'SolverType','Fixed-step','Solver','FixedStepDiscrete','FixedStep','1','StopTime','0');
save_system(h,fullfile(out,[h '.slx']));
simOut=sim(h,'ReturnWorkspaceOutputs','on');uq=simOut.get('uq');uq=reshape(uq(1,:),1,[]);
assert(all(isfinite(uq)) && numel(uq)==5 && abs(uq(1)-u)<1e-9);
A.qVoltageBudget=struct('Ud',ud,'Vdc',vdc,'UqLimit',uq, ...
    'atDSaturation',uq(2),'atZeroVdc',uq(5),'squaredVoltageExcessAtDSaturation',u^2+uq(2)^2-u^2);
for axis={'3','4'}
    b=[m '/VectorBase/PID Controller' axis{1}];dp=fieldnames(get_param(b,'DialogParameters'));v=struct;
    for k=1:numel(dp)
        key=dp{k};if ~isempty(regexp(key,'Satur|Limit|Tracking|Reset|SampleTime|^P$|^I$|IntegratorMethod','once'))
            v.(key)=get_param(b,key);
        end
    end
    A.currentPI.(['axis' axis{1}])=v;
end
assert(strcmp(hash,fwl_sha256(source)));
fid=fopen(fullfile(out,'component_tests.json'),'w');assert(fid>=0);fprintf(fid,'%s\n',jsonencode(A,PrettyPrint=true));fclose(fid);
fprintf('COMPONENT AUDIT: symmetric limiter %d cases; PWM %d cases; Uq actual copied block; source unchanged.\n',A.symmetricLimiter.cases,A.pwm.cases);
end
