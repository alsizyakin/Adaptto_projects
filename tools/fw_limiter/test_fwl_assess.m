function test_fwl_assess()
% Regression cases for defects in the old one-sided/interpolated metric.
R = fixture();
A = fwl_assess(R);
assert(A.finite && A.completed && A.coverage && A.referenceWithinLimit);
assert(A.tracking_q.recoveryObserved && A.tracking_q.prolongedCount == 0);
for polarity = [-1 1]
    X = R; X.Iq.y(11:50) = polarity * 150;
    A = fwl_assess(X);
    assert(A.tracking_q.prolongedCount == 1 && A.tracking_q.recoveryObserved);
    assert(abs(A.tracking_q.events.duration - 0.04) < 1e-12);
end
X = R; X.Iq.y(91:end) = 150;
A = fwl_assess(X);
assert(A.tracking_q.activeAtEnd && ~A.tracking_q.recoveryObserved);
assert(~A.tracking_q.events.prolonged); % even a short open tail is not recovery
X = R; X.Iq.y(11:90) = -150;
A = fwl_assess(X);
assert(~A.tracking_q.activeAtEnd && ~A.tracking_q.recoveryObserved); % only 10 ms settled
X = R; X.Iq.y(11:30) = 150;
A = fwl_assess(X);
assert(A.tracking_q.prolongedCount == 0); % exactly 20 ms, criterion is strictly >
X = R; X.Iq.y(11) = NaN;
A = fwl_assess(X);
assert(~A.finite && ~A.measuredWithinLimit && ~A.tracking_q.recoveryObserved);
X = R; X.completed = false;
A = fwl_assess(X); assert(~A.completed && ~A.tracking_q.recoveryObserved);
X = R; X.finalTime = 0.09;
A = fwl_assess(X); assert(~A.completed);
X = R; X.Idreq = sig([0; 0.1], [420; 0]); X.Iqreq = sig([0; 0.05; 0.1], [0; 420; 0]);
A = fwl_assess(X);
assert(abs(A.maxReferenceCurrent - hypot(420, 420)) < 1e-9 && ~A.referenceWithinLimit);
X = R; X.Id.y(:) = 442;
A = fwl_assess(X); assert(~A.measuredWithinLimit);
X = R; X.decimation = 10;
A = fwl_assess(X); assert(~A.fullResolution);
X = R; X.Idreq.t = X.Idreq.t(20:end); X.Idreq.y = X.Idreq.y(20:end);
A = fwl_assess(X); assert(~A.coverage && ~A.referenceWithinLimit);
X = R; X.Iq.t = X.Iq.t + 1e-4;
try
    fwl_assess(X); error('test:missingFailure', 'Expected grid mismatch.');
catch e
    assert(strcmp(e.identifier, 'fwl:grid'));
end
X = R; X.duty_a = sig(R.Id.t, 0.5 + zeros(size(R.Id.t)));
X.duty_b = X.duty_a; X.duty_c = X.duty_a;
A = fwl_assess(X); assert(A.dutyWithinLimit);
X.duty_c.y(end) = 0.996;
A = fwl_assess(X); assert(~A.dutyWithinLimit);
X = R; X.Iqreq.y(:) = 300; % upstream request differs from sampled PI input
X.Iref_dq = sig(R.Id.t, [zeros(size(R.Id.t)), zeros(size(R.Id.t))]);
A = fwl_assess(X);
assert(A.jointReferenceLog && A.maxReferenceCurrent == 0 && A.tracking_q.maxAbsoluteError == 0);
X.Iref_dq.t = X.Iref_dq.t(1:50); X.Iref_dq.y = X.Iref_dq.y(1:50, :);
A = fwl_assess(X); assert(~A.coverage && ~A.tracking_q.recoveryObserved);
fprintf('test_fwl_assess: all regression cases passed\n');
end

function R = fixture()
t = (0:0.001:0.1)';
R.Id = sig(t, zeros(size(t))); R.Iq = R.Id;
R.Idreq = R.Id; R.Iqreq = R.Id;
R.stopTime = 0.1; R.finalTime = 0.1; R.completed = true; R.decimation = 1;
R.parameters.Is_max = 420;
end

function s = sig(t, y)
s = struct('t', t, 'y', y);
end
