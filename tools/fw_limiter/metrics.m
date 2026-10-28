function metrics(runDir)
% Summary of the scenario runs: appendix table of docs/fw_limiter_issues.md,
% current-reference overshoot events and the corner limit cycle.
if nargin < 1, runDir = ''; end
d = fwl_dirs(runDir);
P = fwl_machine();
s = fwl_scenarios();
s = s([s.doc] & [s.decim] > 1);

fprintf('%-14s %7s %7s %8s %8s %8s %8s %8s %6s  %s\n', 'run', 'max|I|', 'minIq', 'minT', ...
    'PsiEst', 'PsiTrue', 'T@738', 'Tth0.95', 'ovm%', 'loss of control > 20 ms (|Iq - Iqreq| > 100 A)');
for k = 1:numel(s)
    f = fullfile(d.runs, ['aug_' s(k).tag '.mat']);
    if ~exist(f, 'file'), fprintf('%-14s (no result)\n', s(k).tag); continue; end
    R = load(f);
    o = R.overrides; g = @(n) getf(o, n);
    psiT = P.Psi * (1 + g('deltaPsi'));
    w = @(x, a, b) x.y(x.t >= a & x.t <= b);
    iq = interp1(R.Iq.t, R.Iq.y, R.Id.t);
    Tth = tmax(psiT, P.Ld * (1 + g('deltaLd')), P.Lq * (1 + g('deltaLq')), P.Rs * (1 + g('deltaRs')), ...
        P.p, P.Is, 0.95 * P.Vdc / sqrt(3), 738 * P.p);
    [a, b] = lossOfControl(R);
    ep = strjoin(arrayfun(@(i) sprintf('%.2f-%.2f', a(i), b(i)), 1:numel(a), 'uni', 0), ', ');
    if isempty(ep), ep = '-'; end
    fprintf('%-14s %7.0f %7.0f %8.0f %8.4f %8.4f %8.1f %8.1f %6.2f  %s\n', s(k).tag, ...
        max(hypot(R.Id.y, iq)), min(R.Iq.y), min(R.torque.y), mean(w(R.Psi_est, 7, 12)), psiT, ...
        mean(w(R.torque, 6.8, 6.99)), Tth, 100 * mean(R.overmod.y > 0.5), ep);
end

f = fullfile(d.runs, 'aug_nomfine.mat');
if exist(f, 'file')
    R = load(f);
    fprintf('\nCurrent reference above %d A (nominal, fine run):\n', P.Is);
    t = R.Idreq.t; iqr = interp1(R.Iqreq.t, R.Iqreq.y, t); mag = hypot(R.Idreq.y, iqr);
    [a, b] = runs(t, mag > P.Is + 10, 0);
    for i = 1:numel(a)
        sel = t >= a(i) & t <= b(i); [mx, j] = max(mag .* sel);
        fprintf('  %.4f-%.4f s: max %.0f A at Idreq %.0f, Iqreq %.0f\n', a(i), b(i), mx, R.Idreq.y(j), iqr(j));
    end
    fprintf('\nCorner limit cycle, nominal, 12.70-12.85 s (20 ms moving mean removed):\n');
    for n = {'Id', 'Iq', 'vRef', 'torque'}
        [pp, mn, mx] = ripple(R.(n{1}), 12.70, 12.85);
        fprintf('  %-6s p-p %.1f, mean %.1f, max %.1f\n', n{1}, pp, mn, mx);
    end
    x = R.Id; sel = x.t >= 12.70 & x.t <= 12.85; y = x.y(sel) - mean(x.y(sel));
    Y = abs(fft(y)); fs = 1 / median(diff(x.t(sel))); fr = (0:numel(Y) - 1) * fs / numel(Y);
    [~, i] = max(Y(2:floor(end / 2)));
    fprintf('  dominant Id frequency %.0f Hz\n', fr(i + 1));
end
end

function [a, b] = lossOfControl(R)
iqr = interp1(R.Iqreq.t, R.Iqreq.y, R.Iq.t);
[a, b] = runs(R.Iq.t, R.Iq.y < iqr - 100, 0.02);
end

function [a, b] = runs(t, m, minDur)
dm = diff([0; m(:); 0]); s = find(dm == 1); e = find(dm == -1) - 1;
keep = t(e) - t(s) > minDur;
a = t(s(keep)); b = t(e(keep));
end

function [pp, mn, mx] = ripple(x, a, b)
dt = 1e-5; tu = (a - 0.02:dt:b + 0.02)';
[tt, iu] = unique(x.t); yu = interp1(tt, x.y(iu), tu);
r = yu - movmean(yu, round(0.02 / dt)); k = tu >= a & tu <= b;
pp = max(r(k)) - min(r(k)); mn = mean(yu(k)); mx = max(yu(k));
end

function v = getf(s, n)
if isfield(s, n), v = s.(n); else, v = 0; end
end

function T = tmax(psi, ld, lq, rs, p, Is, Vs, w)
% Steady-state maximum torque under current and voltage limits (grid search).
[id, iq] = meshgrid(linspace(-Is, 0, 841), linspace(0, Is, 841));
ok = id.^2 + iq.^2 <= Is^2 & (rs * id - w * lq * iq).^2 + (rs * iq + w * (psi + ld * id)).^2 <= Vs^2;
Tq = 1.5 * p * (psi * iq + (ld - lq) * id .* iq);
Tq(~ok) = -inf;
T = max(Tq(:));
end
