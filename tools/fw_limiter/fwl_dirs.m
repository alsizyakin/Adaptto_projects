function d = fwl_dirs(runDir)
% Paths for the field-weakening limiter study (docs/fw_limiter_issues.md).
%   d.root  repository root
%   d.model model under study
%   d.runs  simulation results (default <root>/work/fw_limiter, git-ignored)
%   d.img   figures referenced by the document
here = fileparts(mfilename('fullpath'));
d.root = fileparts(fileparts(here));
d.model = fullfile(d.root, 'ideal_source_drive_Idff_aug_param.slx');
if nargin < 1 || isempty(runDir), runDir = fullfile(d.root, 'work', 'fw_limiter'); end
if isempty(regexp(runDir, '^([\\/]|[A-Za-z]:)', 'once')), runDir = fullfile(pwd, runDir); end
d.runs = runDir;
d.img = fullfile(d.root, 'docs', 'img', 'fw_limiter');
if ~exist(d.runs, 'dir'), mkdir(d.runs); end
end
