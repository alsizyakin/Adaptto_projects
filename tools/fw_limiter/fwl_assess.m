function A = fwl_assess(R, currentLimit)
% Raw diagnostic checks, not a verdict on feasibility or latch-up mechanism.
% Discrete references use zero-order hold; measured dq must share a grid.
if nargin < 2, currentLimit = R.parameters.Is_max; end
assert(isscalar(currentLimit) && isfinite(currentLimit) && currentLimit > 0);
A.currentLimit = currentLimit;
A.measuredLimit = 1.05 * currentLimit;
A.errorThreshold = 100;
A.durationThreshold = 0.02;
A.nonfinite = {};
names = fieldnames(R);
for k = 1:numel(names)
    x = R.(names{k});
    if isstruct(x) && isfield(x, 't') && isfield(x, 'y') && ...
            (any(~isfinite(x.t(:))) || any(~isfinite(x.y(:))))
        A.nonfinite{end + 1} = names{k};
    end
end
A.finite = isempty(A.nonfinite);
required = {'Id', 'Iq', 'Idreq', 'Iqreq'};
assert(all(isfield(R, required)), 'fwl:missing', 'Missing required current signals.');
for k = 1:numel(required)
    x = R.(required{k});
    assert(isvector(x.y) && numel(x.t) == numel(x.y) && numel(x.t) > 1 && ...
        all(isfinite(x.t)) && all(diff(x.t) >= 0), 'fwl:signal', 'Invalid current log.');
end
A.completed = isfield(R, 'completed') && R.completed && ...
    isfield(R, 'finalTime') && abs(R.finalTime - R.stopTime) <= 1e-9 * max(1, R.stopTime);
A.fullResolution = isfield(R, 'decimation') && R.decimation == 1;
% Check coverage separately: a full simulation can have truncated signal logs.
A.coverage = true;
coverageSignals = required;
if isfield(R, 'Iref_dq'), coverageSignals{end + 1} = 'Iref_dq'; end
for k = 1:numel(coverageSignals)
    t = R.(coverageSignals{k}).t(:);
    step = median(diff(unique(t)));
    A.coverage = A.coverage && t(1) <= 1e-9 && t(end) >= R.stopTime - step - 1e-9;
end
assert(isequal(R.Id.t, R.Iq.t), 'fwl:grid', 'Measured Id and Iq must share their native grid.');
if isfield(R, 'Iref_dq')
    x = R.Iref_dq;
    assert(size(x.y, 1) == numel(x.t) && size(x.y, 2) == 2, ...
        'fwl:pair', 'Reference log must be an N-by-2 array.');
    assert(all(isfinite(x.t)) && all(diff(x.t) >= 0), 'fwl:time', 'Invalid reference time.');
    [t, ix] = unique(x.t(:), 'last');
    idref = x.y(ix, 1); iqref = x.y(ix, 2);
    A.jointReferenceLog = true;
else
    t = unique([R.Idreq.t(:); R.Iqreq.t(:)]);
    idref = held(R.Idreq, t); iqref = held(R.Iqreq, t);
    A.jointReferenceLog = false;
end
iref = hypot(idref, iqref);
imeas = hypot(R.Id.y(:), R.Iq.y(:));
A.maxReferenceCurrent = max(iref);
A.maxMeasuredCurrent = max(imeas);
A.referenceWithinLimit = all(isfinite(iref) & iref <= currentLimit + 1e-6);
A.measuredWithinLimit = all(isfinite(imeas) & imeas <= A.measuredLimit + 1e-6);
A.referenceExcess = fwl_episodes(t, iref > currentLimit + 1e-6, 0);
for axis = {'d', 'q'}
    n = axis{1};
    x = R.(['I' n]);
    [tt, ii] = unique(x.t(:), 'last');
    if A.jointReferenceLog
        column = 1 + strcmp(n, 'q');
        reference = struct('t', R.Iref_dq.t, 'y', R.Iref_dq.y(:, column));
    else
        reference = R.(['I' n 'req']);
    end
    measured = x.y(:);
    error = measured(ii) - held(reference, tt);
    error = error(:);
    E.maxAbsoluteError = max(abs(error));
    E.events = fwl_episodes(tt, abs(error) > A.errorThreshold | ~isfinite(error), A.durationThreshold);
    E.prolongedCount = sum([E.events.prolonged]);
    E.activeAtEnd = ~isempty(E.events) && E.events(end).open;
    if E.activeAtEnd
        E.settledTail = 0;
    elseif isempty(E.events)
        E.settledTail = tt(end) - tt(1);
    else
        E.settledTail = tt(end) - E.events(end).stop;
    end
    % Only claims a sustained return below the error threshold, not exit
    % from saturation or recovery at the original speed / feasible request.
    E.recoveryObserved = A.completed && A.coverage && A.finite && ...
        ~E.activeAtEnd && E.settledTail >= A.durationThreshold;
    A.(['tracking_' n]) = E;
end
A.dutyWithinLimit = [];
if all(isfield(R, {'duty_a', 'duty_b', 'duty_c'}))
    duty = [R.duty_a.y(:); R.duty_b.y(:); R.duty_c.y(:)];
    A.minDuty = min(duty); A.maxDuty = max(duty);
    A.dutyWithinLimit = all(isfinite(duty) & duty >= 0.005 - 1e-12 & duty <= 0.995 + 1e-12);
end
end

function y = held(x, t)
[tx, ix] = unique(x.t(:), 'last');
% No extrapolation before the first sample. Holding the last sample is the
% semantics of a discrete command; coverage is checked independently above.
y = interp1(tx, double(x.y(ix)), t, 'previous', NaN);
y(t > tx(end)) = x.y(ix(end));
y = y(:);
end
