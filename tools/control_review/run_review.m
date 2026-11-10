function run_review(runDir)
% Reproduce the four baseline runs used by docs/control_review.md.
% Only copies are simulated. This is not an implementation of the proposed fix.
root = fileparts(fileparts(fileparts(mfilename('fullpath'))));
addpath(fullfile(root, 'tools', 'fw_limiter'));
if nargin < 1, runDir = fullfile(root, 'work', 'control_review'); end
none = cell(0, 3);
run_aug('review_nom', 2, struct(), none, 1, runDir);
run_aug('review_ldp20', 11, struct('deltaLd', 0.2), none, 5, runDir);
run_aug('review_zeroiq', 2, struct(), ...
    {'Repeating Sequence', 'rep_seq_y', '[0 0 0 0 0]'}, 1, runDir);
run_aug('review_reverse', 2, struct(), ...
    {'1-D Lookup Table2', 'Table', ...
    '-[0 104 104 208 208 312 312 416 416 520 520 624 624 738 738 156 21]'}, 1, runDir);
end
