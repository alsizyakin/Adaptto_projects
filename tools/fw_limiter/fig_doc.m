function fig_doc(runDir, outDir)
% Figures for docs/fw_limiter_issues.md (voltage limiter latch-up, current vector limit).
% Needs runs ldp20, ldp20fine, ldp20_trim150, ldp20_vs090, nomfine (see fwl_scenarios).
% Default output is docs/img/fw_limiter, i.e. it overwrites the document figures.
if nargin < 1, runDir = ''; end
d = fwl_dirs(runDir);
if nargin < 2 || isempty(outDir), outDir = d.img; end
if ~exist(outDir, 'dir'), mkdir(outDir); end
L = @(tag) load(fullfile(d.runs, ['aug_' tag '.mat']));
P = fwl_machine();
C = colors();

%% 1. Ld+20 %: overview of the run
R = L('ldp20');
iqr = interp1(R.Iqreq.t, R.Iqreq.y, R.Iq.t);
lat = R.Iq.y < iqr - 100;
[a, b] = longestRun(R.Iq.t, lat);
fprintf('latch interval: %.3f .. %.3f s\n', a, b);
[f, tl] = newfig(4, 1100, 860, 'Ld_{ист} = 1.2·Ld_{ном}: полный профиль, 0–25 с');
ax = gobjects(4, 1);
ax(1) = tile(tl, C); ln(ax(1), R.speed, C.meas, 'скорость'); ylabel(ax(1), 'рад/с (мех.)');
ax(2) = tile(tl, C); ln(ax(2), R.Iq, C.meas, 'измерение'); ln(ax(2), R.Iqreq, C.ref, 'задание'); ylabel(ax(2), 'Iq, А');
lg = legend(ax(2), 'Orientation', 'horizontal', 'Box', 'off', 'TextColor', C.txt2, 'FontSize', 10); lg.Layout.Tile = 'north';
ax(3) = tile(tl, C); ln(ax(3), R.Id, C.meas, 'Id изм.'); ln(ax(3), R.Idreq, C.ref, 'Id задание'); ylabel(ax(3), 'Id, А');
ax(4) = tile(tl, C); ln(ax(4), R.torque, C.meas, 'момент'); ylabel(ax(4), 'М, Н·м'); xlabel(ax(4), 't, с');
for k = 1:4, shade(ax(k), a, b, C); end
text(ax(1), (a + b) / 2, 690, sprintf('потеря управления током: %.1f–%.1f с', a, b), 'HorizontalAlignment', 'center', ...
    'Color', C.txt2, 'FontSize', 9);
linkaxes(ax, 'x'); xlim(ax(1), [0 25]);
save1(f, outDir, '01_ldp20_overview.png', C);

%% 2. Ld+20 %: zoom on the latch event
R = L('ldp20fine');
w = [10.05 10.45];
[f, tl] = newfig(4, 1100, 900, 'Ld_{ист} = 1.2·Ld_{ном}: момент защёлкивания (10.05–10.45 с)');
ax = gobjects(4, 1);
ax(1) = tile(tl, C); ln(ax(1), R.Iq, C.meas, 'Iq изм.', w); ln(ax(1), R.Iqreq, C.ref, 'Iq задание', w); ylabel(ax(1), 'Iq, А'); leg(ax(1), C);
ax(2) = tile(tl, C); ln(ax(2), R.Id, C.meas, 'Id изм.', w); ln(ax(2), R.Idreq, C.ref, 'Id задание', w); ylabel(ax(2), 'Id, А');
refl(ax(2), -P.Psi / (1.2 * P.Ld), '−Ψ/Ld_{ист} ≈ −275 А (Ψd = 0)', C); leg(ax(2), C);
ax(3) = tile(tl, C); ln(ax(3), R.Ud, C.meas, 'Ud', w); ln(ax(3), R.Uq, C.s3, 'Uq', w); ylabel(ax(3), 'В');
refl(ax(3), P.Vmax, '+Vmax = 0.995·Vdc/√3', C); refl(ax(3), -P.Vmax, '−Vmax', C); leg(ax(3), C, 'east');
ax(4) = tile(tl, C); ln(ax(4), R.Psi_trim, C.meas, 'Psi\_trim', w); ylabel(ax(4), 'Вб'); xlabel(ax(4), 't, с');
refl(ax(4), 50 * P.Ld, '+50·Ld', C); refl(ax(4), -50 * P.Ld, '−50·Ld (предел подстройки)', C);
ylim(ax(4), [-0.02 0.02]);
linkaxes(ax, 'x'); xlim(ax(1), w);
for k = 1:4, xline(ax(k), 10.12, '-', 'HandleVisibility', 'off', 'Color', C.lim, 'LineWidth', 1); end
ylim(ax(1), [-400 260]); text(ax(1), 10.123, 225, 'задание Iq начинает снижаться', 'Color', C.txt2, 'FontSize', 9);
save1(f, outDir, '02_ldp20_latch_zoom.png', C);

%% 3. Ud-Uq plane during the latch
tU = R.Ud.t; sel = tU >= w(1) & tU <= w(2);
ud = R.Ud.y(sel); uq = interp1(R.Uq.t, R.Uq.y, tU(sel));
f = figure('Visible', 'off', 'Position', [0 0 760 720], 'Color', C.surf);
ax = axes(f); sty(ax, C); hold(ax, 'on'); axis(ax, 'equal');
th = linspace(0, 2 * pi, 400);
plot(ax, P.Vmax * cos(th), P.Vmax * sin(th), '-', 'Color', C.lim, 'LineWidth', 1, 'DisplayName', 'жёсткий предел |V| = 0.995·Vdc/√3');
plot(ax, P.Vfw * cos(th), P.Vfw * sin(th), '-', 'Color', C.grid2, 'LineWidth', 1, 'DisplayName', 'цель ОП |V| = 0.95·Vdc/√3');
plot(ax, ud, uq, '-', 'Color', C.meas, 'LineWidth', 1.5, 'DisplayName', 'траектория (Ud, Uq)');
dot(ax, ud(1), uq(1), C.ref); dot(ax, ud(end), uq(end), C.meas);
text(ax, ud(1) + 12, uq(1) - 22, sprintf('t = %.2f с: до снижения момента', w(1)), 'Color', C.txt, 'FontSize', 10);
text(ax, ud(end) - 8, uq(end) - 40, {sprintf('t = %.2f с: защёлка', w(2)), 'Ud = +Vmax, Uq ≈ 0'}, ...
    'Color', C.txt, 'FontSize', 10, 'HorizontalAlignment', 'right');
xlim(ax, [-300 300]); ylim(ax, [-300 300]); xlabel(ax, 'Ud, В'); ylabel(ax, 'Uq, В');
title(ax, 'Плоскость напряжений: ось d забирает весь ресурс', 'Color', C.txt, 'FontSize', 12);
leg(ax, C, 'southwest');
save1(f, outDir, '03_ud_uq_plane.png', C);

%% 4. dq current plane at the latch speed (true machine, Ld + 20 %)
t0 = 10.40;
spd = mean(R.speed.y(R.speed.t >= t0 - 0.02 & R.speed.t <= t0 + 0.02)); wel = spd * P.p;
ldT = 1.2 * P.Ld;
[gd, gq] = meshgrid(linspace(-500, 100, 601), linspace(-350, 470, 821));
V = hypot(P.Rs * gd - wel * P.Lq * gq, P.Rs * gq + wel * (P.Psi + ldT * gd));
feas = double(V <= P.Vmax & hypot(gd, gq) <= P.Is);
f = figure('Visible', 'off', 'Position', [0 0 900 820], 'Color', C.surf);
ax = axes(f); sty(ax, C); hold(ax, 'on'); axis(ax, 'equal');
cm = contourc(gd(1, :), gq(:, 1), feas, [0.5 0.5]);
[xs, ys] = contourPieces(cm);
for k = 1:numel(xs)
    hp = patch(ax, xs{k}, ys{k}, C.meas, 'FaceAlpha', 0.10, 'EdgeColor', 'none');
    if k == 1, hp.DisplayName = 'достижимо в установившемся режиме'; else, hp.HandleVisibility = 'off'; end
end
plot(ax, P.Is * cos(th), P.Is * sin(th), '-', 'Color', C.lim, 'LineWidth', 1, 'DisplayName', 'предел тока Is\_max = 420 А');
contour(ax, gd, gq, V, [P.Vmax P.Vmax], 'LineColor', C.grid2, 'LineWidth', 1, 'DisplayName', 'предел напряжения |V| = Vmax');
xline(ax, -P.Psi / ldT, '-', 'Ψd = 0', 'Color', C.lim, 'LineWidth', 1, 'HandleVisibility', 'off', 'FontSize', 9, ...
    'LabelVerticalAlignment', 'top', 'LabelOrientation', 'horizontal');
wa = [10.10 10.45];
s1 = R.Id.t >= wa(1) & R.Id.t <= wa(2);
iqm = interp1(R.Iq.t, R.Iq.y, R.Id.t(s1));
plot(ax, R.Id.y(s1), iqm, '-', 'Color', [C.meas 0.30], 'LineWidth', 0.75, 'DisplayName', 'ток изм., 10.10–10.45 с');
s2 = R.Idreq.t >= wa(1) & R.Idreq.t <= wa(2);
iqr2 = interp1(R.Iqreq.t, R.Iqreq.y, R.Idreq.t(s2));
plot(ax, R.Idreq.y(s2), iqr2, '-', 'Color', C.ref, 'LineWidth', 1.5, 'DisplayName', 'задание, 10.10–10.45 с');
idm0 = interp1(R.Id.t, R.Id.y, t0); iqm0 = interp1(R.Iq.t, R.Iq.y, t0);
idr0 = interp1(R.Idreq.t, R.Idreq.y, t0); iqr0 = interp1(R.Iqreq.t, R.Iqreq.y, t0);
dot(ax, idm0, iqm0, C.meas); dot(ax, idr0, iqr0, C.ref);
vr = hypot(P.Rs * idr0 - wel * P.Lq * iqr0, P.Rs * iqr0 + wel * (P.Psi + ldT * idr0));
vm = hypot(P.Rs * idm0 - wel * P.Lq * iqm0, P.Rs * iqm0 + wel * (P.Psi + ldT * idm0));
text(ax, idm0 - 14, iqm0 - 6, {sprintf('факт, t = %.2f с: (%.0f; %.0f) А', t0, idm0, iqm0), sprintf('нужно |V| = %.0f В (на пределе)', vm)}, ...
    'Color', C.txt, 'FontSize', 10, 'HorizontalAlignment', 'right', 'BackgroundColor', C.surf, 'Margin', 1);
text(ax, idr0 + 14, iqr0 + 6, {sprintf('задание: (%.0f; %.0f) А', idr0, iqr0), sprintf('нужно |V| = %.0f В < Vmax = %.0f В', vr, P.Vmax)}, ...
    'Color', C.txt, 'FontSize', 10, 'BackgroundColor', C.surf, 'Margin', 1);
fprintf('fig4: speed %.1f rad/s mech, wel %.0f, |V| at ref %.1f V, at meas %.1f V\n', spd, wel, ...
    hypot(P.Rs * idr0 - wel * P.Lq * iqr0, P.Rs * iqr0 + wel * (P.Psi + ldT * idr0)), ...
    hypot(P.Rs * idm0 - wel * P.Lq * iqm0, P.Rs * iqm0 + wel * (P.Psi + ldT * idm0)));
xlim(ax, [-500 100]); ylim(ax, [-350 470]); xlabel(ax, 'Id, А'); ylabel(ax, 'Iq, А');
title(ax, {sprintf('Плоскость токов, %.0f рад/с (мех.), Ld_{ист} = 1.2·Ld_{ном}', spd), 'задание достижимо, а регулятор застрял в другой точке'}, 'Color', C.txt, 'FontSize', 12);
leg(ax, C, 'northwest');
save1(f, outDir, '04_dq_current_plane.png', C);

%% 5. Two naive mitigations do not remove the latch
tags = {'ldp20', 'ldp20_trim150', 'ldp20_vs090'};
ttl = {'как в модели: подстройка ±50·Ld, цель ОП 0.95', 'подстройка расширена до ±150·Ld', 'цель ОП снижена до 0.90·Vdc/√3'};
[f, tl] = newfig(3, 1100, 760, 'Ld_{ист} = 1.2·Ld_{ном}: попытки «лечения» параметрами');
ax = gobjects(3, 1);
for k = 1:3
    R = L(tags{k});
    ax(k) = tile(tl, C); ln(ax(k), R.Iq, C.meas, 'Iq изм.'); ln(ax(k), R.Iqreq, C.ref, 'Iq задание');
    iq2 = interp1(R.Iq.t, R.Iq.y, R.Id.t);
    title(ax(k), sprintf('%s  —  max|I| = %.0f А, min Iq = %.0f А', ttl{k}, max(hypot(R.Id.y, iq2)), min(R.Iq.y)), ...
        'Color', C.txt, 'FontSize', 10, 'FontWeight', 'normal');
    ylabel(ax(k), 'Iq, А'); leg(ax(k), C, 'southwest'); ylim(ax(k), [-2200 500]);
end
xlabel(ax(3), 't, с'); linkaxes(ax, 'x'); xlim(ax(1), [0 25]);
save1(f, outDir, '05_mitigation_attempts.png', C);

%% 6. Current vector limit: reference exceeds Is_max (nominal machine)
R = L('nomfine');
tI = R.Idreq.t; iqrI = interp1(R.Iqreq.t, R.Iqreq.y, tI);
mag = hypot(R.Idreq.y, iqrI); s = tI > 1.5 & tI < 1.9; [mx, j] = max(mag .* s); tm = tI(j);
fprintf('max |Iref| = %.1f A at t = %.4f s (Idreq %.1f, Iqreq %.1f)\n', mx, tm, R.Idreq.y(j), iqrI(j));
w = [tm - 0.05, tm + 0.07];
[f, tl] = newfig(3, 1100, 760, 'Номинальная машина: задание тока выходит за Is\_max');
ax = gobjects(3, 1);
ax(1) = tile(tl, C);
plot(ax(1), tI, mag, '-', 'Color', C.ref, 'LineWidth', 1.5, 'DisplayName', '|I| задания');
iqm = interp1(R.Iq.t, R.Iq.y, R.Id.t);
plot(ax(1), R.Id.t, hypot(R.Id.y, iqm), '-', 'Color', C.meas, 'LineWidth', 1.5, 'DisplayName', '|I| изм.');
refl(ax(1), P.Is, 'Is\_max = 420 А', C); ylabel(ax(1), '|I|, А'); leg(ax(1), C, 'southeast'); ylim(ax(1), [250 500]);
text(ax(1), tm, mx + 8, sprintf('%.0f А', mx), 'Color', C.txt, 'FontSize', 10, 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
ax(2) = tile(tl, C); ln(ax(2), R.Idreq, C.ref, 'Id задание', w); ln(ax(2), R.Idreq_f, C.s3, 'LPF(Id задание), τ = 100·Ts', w);
ylabel(ax(2), 'Id, А'); leg(ax(2), C, 'northeast');
ax(3) = tile(tl, C); ln(ax(3), R.Iqreq, C.ref, 'Iq задание', w); ln(ax(3), R.Iq_curLim, C.s3, '√(Is² − LPF(Idreq)²) — как в модели', w);
plot(ax(3), tI, sqrt(max(P.Is^2 - R.Idreq.y.^2, 0)), '-', 'Color', C.lim, 'LineWidth', 1, 'DisplayName', '√(Is² − Idreq²) — без фильтра');
ylabel(ax(3), 'Iq, А'); xlabel(ax(3), 't, с'); leg(ax(3), C, 'southwest');
linkaxes(ax, 'x'); xlim(ax(1), w);
save1(f, outDir, '06_current_vector_limit.png', C);

%% 7. Same event in the dq plane
f = figure('Visible', 'off', 'Position', [0 0 760 720], 'Color', C.surf);
ax = axes(f); sty(ax, C); hold(ax, 'on'); axis(ax, 'equal');
plot(ax, P.Is * cos(th), P.Is * sin(th), '-', 'Color', C.lim, 'LineWidth', 1, 'DisplayName', 'Is\_max = 420 А');
s2 = tI >= w(1) & tI <= w(2);
plot(ax, R.Idreq.y(s2), iqrI(s2), '-', 'Color', C.ref, 'LineWidth', 1.5, 'DisplayName', 'задание (Idreq, Iqreq)');
s1 = R.Id.t >= w(1) & R.Id.t <= w(2);
plot(ax, R.Id.y(s1), iqm(s1), '-', 'Color', C.meas, 'LineWidth', 1.5, 'DisplayName', 'ток изм.');
dot(ax, R.Idreq.y(j), iqrI(j), C.ref);
text(ax, R.Idreq.y(j) - 12, iqrI(j) + 20, sprintf('|I| = %.0f А', mx), 'Color', C.txt, 'FontSize', 10, 'HorizontalAlignment', 'right');
xlim(ax, [-440 -40]); ylim(ax, [160 450]); xlabel(ax, 'Id, А'); ylabel(ax, 'Iq, А');
title(ax, sprintf('Вход в ОП при t ≈ %.2f с: вектор задания вне окружности тока', tm), 'Color', C.txt, 'FontSize', 12);
leg(ax, C, 'southwest');
save1(f, outDir, '07_current_vector_dq.png', C);

%% 8. Related: corner limit cycle (nominal machine)
w = [12.60 12.95];
[f, tl] = newfig(4, 1100, 900, 'Номинальная машина: автоколебания на границе глубокого ОП (12.60–12.95 с)');
ax = gobjects(4, 1);
ax(1) = tile(tl, C); ln(ax(1), R.Id, C.meas, 'Id изм.', w); ln(ax(1), R.Idreq, C.ref, 'Id задание', w); ylabel(ax(1), 'Id, А'); leg(ax(1), C);
ax(2) = tile(tl, C); ln(ax(2), R.Iq, C.meas, 'Iq изм.', w); ln(ax(2), R.Iqreq, C.ref, 'Iq задание', w); ln(ax(2), R.Iq_curLim, C.s3, '√(Is² − LPF(Idreq)²)', w);
ylabel(ax(2), 'Iq, А'); leg(ax(2), C, 'southeast');
ax(3) = tile(tl, C); ln(ax(3), R.vRef, C.meas, '|V| задания', w); refl(ax(3), P.Vmax, 'жёсткий предел 0.995', C); refl(ax(3), P.Vfw, 'цель ОП 0.95', C);
ylabel(ax(3), 'В'); ylim(ax(3), [220 260]);
ax(4) = tile(tl, C); ln(ax(4), R.torque, C.meas, 'момент', w); ylabel(ax(4), 'М, Н·м'); xlabel(ax(4), 't, с');
linkaxes(ax, 'x'); xlim(ax(1), w);
save1(f, outDir, '08_corner_limit_cycle.png', C);
end

%% helpers
function C = colors()
h = @(s) sscanf(s(2:end), '%2x%2x%2x')' / 255;
C.surf = h('#fcfcfb'); C.txt = h('#0b0b0b'); C.txt2 = h('#52514e'); C.grid = h('#e6e5e1');
C.grid2 = h('#a9a8a2'); C.lim = h('#6b6a66'); C.shade = h('#efeeea');
C.meas = h('#2a78d6'); C.ref = h('#eb6834'); C.s3 = h('#1baf7a');
end

function [f, tl] = newfig(n, wpx, hpx, ttl)
C = colors();
f = figure('Visible', 'off', 'Position', [0 0 wpx hpx], 'Color', C.surf);
tl = tiledlayout(f, n, 1, 'TileSpacing', 'compact', 'Padding', 'compact');
title(tl, ttl, 'Color', C.txt, 'FontSize', 12, 'FontWeight', 'bold');
end

function ax = tile(tl, C)
ax = nexttile(tl); sty(ax, C); hold(ax, 'on');
end

function sty(ax, C)
set(ax, 'Color', C.surf, 'XColor', C.txt2, 'YColor', C.txt2, 'GridColor', C.grid, 'GridAlpha', 1, ...
    'LineWidth', 0.75, 'FontName', 'DejaVu Sans', 'FontSize', 10, 'Box', 'off', 'TickDir', 'out', 'Layer', 'top');
grid(ax, 'on');
end

function ln(ax, s, col, name, w)
if nargin < 5, sel = true(size(s.t)); else, sel = s.t >= w(1) & s.t <= w(2); end
plot(ax, s.t(sel), s.y(sel), '-', 'Color', col, 'LineWidth', 1.5, 'DisplayName', name);
end

function refl(ax, v, lbl, C)
yline(ax, v, '-', lbl, 'Color', C.lim, 'LineWidth', 1, 'FontSize', 9, 'LabelHorizontalAlignment', 'left', ...
    'HandleVisibility', 'off');
end

function leg(ax, C, loc)
if nargin < 3, loc = 'northeast'; end
legend(ax, 'Location', loc, 'Box', 'off', 'TextColor', C.txt2, 'FontSize', 9);
end

function dot(ax, x, y, col)
C = colors();
plot(ax, x, y, 'o', 'MarkerSize', 8, 'MarkerFaceColor', col, 'MarkerEdgeColor', C.surf, 'LineWidth', 1.5, 'HandleVisibility', 'off');
end

function shade(ax, a, b, C)
yl = ylim(ax);
hp = patch(ax, [a b b a], [yl(1) yl(1) yl(2) yl(2)], C.shade, 'EdgeColor', 'none', 'HandleVisibility', 'off');
uistack(hp, 'bottom'); ylim(ax, yl);
end

function [a, b] = longestRun(t, m)
d = diff([0; m(:); 0]); s = find(d == 1); e = find(d == -1) - 1;
[~, k] = max(e - s); a = t(s(k)); b = t(e(k));
end

function [xs, ys] = contourPieces(cm)
xs = {}; ys = {}; i = 1;
while i < size(cm, 2)
    n = cm(2, i); xs{end + 1} = cm(1, i + 1:i + n); ys{end + 1} = cm(2, i + 1:i + n); i = i + n + 1; %#ok<AGROW>
end
end

function save1(f, outDir, name, C)
exportgraphics(f, fullfile(outDir, name), 'Resolution', 110, 'BackgroundColor', C.surf);
close(f);
end
