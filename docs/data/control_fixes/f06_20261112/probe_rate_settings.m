function probe_rate_settings()
root = fileparts(mfilename('fullpath'));
Simulink.fileGenControl('set','CacheFolder',fullfile(root,'rate_probe_cache'),'CodeGenFolder',fullfile(root,'rate_probe_cache'),'createDir',true);
source = fullfile(fileparts(root),'control_f06_parameter_20261112','f06_persistent_comparison.slx');
p = fullfile(root,'f06_rate_probe.slx'); copyfile(source,p);
load_system(p); m = 'f06_rate_probe'; c = onCleanup(@() close_system(m,0));
b = [m '/PersistentA']; cfg = get_param(b,'MATLABFunctionConfiguration');
for k=1:3
    if k==1
        cfg.UpdateMethod = 'Inherited'; set_param(b,'SystemSampleTime','FocDiscrTime*10');
    elseif k==2
        cfg.UpdateMethod = 'Discrete'; cfg.SampleTime = 'FocDiscrTime';
    else
        set_param(b,'SystemSampleTime','-1');
    end
    fprintf('Case %d: method=%s, chart period=%s, subsystem period=%s\n',k,cfg.UpdateMethod,cfg.SampleTime,get_param(b,'SystemSampleTime'));
    try
        out = sim(m); t=out.log2_2.Time; fprintf('period %.12g s, samples %d\n',median(diff(t)),numel(t));
    catch e
        fprintf('Error: %s\n',e.message);
    end
end
end
