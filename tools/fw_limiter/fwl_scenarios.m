function s = fwl_scenarios()
% Scenario set behind docs/fw_limiter_issues.md.
%   tag      result name: <runs>/aug_<tag>.mat
%   stop     stop time, s
%   ws       model-workspace overrides
%   blk      {block, parameter, value} overrides applied to the copy
%   decim    logging decimation (10: 25 s overview, 1: zoom figures)
%   doc      true if the document uses it (run_parallel.sh runs these by default)
none = cell(0, 3);
trim = @(k) {'PID Controller', 'UpperSaturationLimit', sprintf('%d*Ld', k)
             'PID Controller', 'LowerSaturationLimit', sprintf('-%d*Ld', k)};
s = struct('tag', {}, 'stop', {}, 'ws', {}, 'blk', {}, 'decim', {}, 'doc', {});
s(end + 1) = sc('nom',           25,   struct(),                   none,                        10, true);
s(end + 1) = sc('psim10',        25,   struct('deltaPsi', -0.1),   none,                        10, true);
s(end + 1) = sc('psip10',        25,   struct('deltaPsi', 0.1),    none,                        10, true);
s(end + 1) = sc('lqp20',         25,   struct('deltaLq', 0.2),     none,                        10, true);
s(end + 1) = sc('lqm20',         25,   struct('deltaLq', -0.2),    none,                        10, true);
s(end + 1) = sc('ldp20',         25,   struct('deltaLd', 0.2),     none,                        10, true);
s(end + 1) = sc('ldm20',         25,   struct('deltaLd', -0.2),    none,                        10, true);
s(end + 1) = sc('rsp50',         25,   struct('deltaRs', 0.5),     none,                        10, true);
s(end + 1) = sc('ldp20_trim150', 25,   struct('deltaLd', 0.2),     trim(150),                   10, true);
s(end + 1) = sc('ldp20_vs090',   25,   struct('deltaLd', 0.2),     {'Gain8', 'Gain', '0.90'},   10, true);
s(end + 1) = sc('nomfine',       13,   struct(),                   none,                        1,  true);
s(end + 1) = sc('ldp20fine',     10.6, struct('deltaLd', 0.2),     none,                        1,  true);
s(end + 1) = sc('smoke',         0.5,  struct(),                   none,                        10, false);
end

function x = sc(tag, stop, ws, blk, decim, doc)
x = struct('tag', tag, 'stop', stop, 'ws', ws, 'blk', {blk}, 'decim', decim, 'doc', doc);
end
