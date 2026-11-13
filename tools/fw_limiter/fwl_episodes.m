function events = fwl_episodes(t, active, minDuration)
% Episodes of a sampled condition. A closed episode ends at the first
% inactive sample; an open episode is right-censored at the end of the log.
t = t(:); active = logical(active(:));
assert(numel(t) == numel(active) && ~isempty(t) && all(isfinite(t)) && ...
    all(diff(t) > 0), 'fwl:time', 'Episode time must be finite and strictly increasing.');
starts = find(diff([false; active]) == 1);
ends = find(diff([active; false]) == -1);
events = struct('start', {}, 'stop', {}, 'duration', {}, 'open', {}, 'prolonged', {});
for k = 1:numel(starts)
    isOpen = ends(k) == numel(t);
    last = min(ends(k) + 1, numel(t));
    duration = t(last) - t(starts(k));
    events(end + 1) = struct('start', t(starts(k)), 'stop', t(last), ...
        'duration', duration, 'open', isOpen, ...
        'prolonged', duration > minDuration + 1e-12); %#ok<AGROW>
end
end
