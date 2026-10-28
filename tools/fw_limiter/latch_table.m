function latch_table(runDir)
% Table of section 2.2: is the current reference reachable by voltage during
% the latch (Ld_true = 1.2*Ld_nom)? "true" uses the real machine, "believed"
% uses Psi_est and nominal Ld, as the feed-forward does.
if nargin < 1, runDir = ''; end
d = fwl_dirs(runDir);
R = load(fullfile(d.runs, 'aug_ldp20fine.mat'));
P = fwl_machine();
ldT = 1.2 * P.Ld;
g = @(x, t) interp1(x.t, x.y, t);
vol = @(id, iq, w, psi, ld) hypot(P.Rs * id - w * P.Lq * iq, P.Rs * iq + w * (psi + ld * id));
fprintf('Vmax = %.0f V\n', P.Vmax);
fprintf('%6s %6s %7s %7s %9s %9s %9s %9s %7s %7s\n', 't, s', 'rad/s', 'Idreq', 'Iqreq', '|V|true', ...
    '|V|belv', 'Id', 'Iq', 'Ud', 'Uq');
for t = [10.10 10.15 10.18 10.20 10.30 10.40]
    w = P.p * g(R.speed, t); id = g(R.Idreq, t); iq = g(R.Iqreq, t);
    fprintf('%6.2f %6.0f %7.0f %7.0f %9.0f %9.0f %9.0f %9.0f %7.0f %7.0f\n', t, w / P.p, id, iq, ...
        vol(id, iq, w, P.Psi, ldT), vol(id, iq, w, g(R.Psi_est, t), P.Ld), ...
        g(R.Id, t), g(R.Iq, t), g(R.Ud, t), g(R.Uq, t));
end
end
