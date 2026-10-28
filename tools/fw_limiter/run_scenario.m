function run_scenario(tag, runDir)
% Run one scenario from fwl_scenarios by its tag.
if nargin < 2, runDir = ''; end
s = fwl_scenarios();
k = find(strcmp({s.tag}, tag), 1);
if isempty(k), error('fwl:scenario', 'Unknown scenario "%s"', tag); end
run_aug(s(k).tag, s(k).stop, s(k).ws, s(k).blk, s(k).decim, runDir);
end
