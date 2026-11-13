function test_fw_voltage_error_q()
% Check equilibrium and restoring direction using the machine equations.
% This is not a closed-loop simulation and does not establish stability.
Ufw = 0.95 * 440 / sqrt(3);
Rs = .02; Psi = .1024; Lq = .000305; poles = 11;
count = 0;
for delta = [-.2, 0, .2]
    Ld = .00031 * (1 + delta);
    for wm = [-738, 738]
        we = poles * wm;
        for iq = [-42, 92]
            a = Rs^2 + (we * Ld)^2;
            b = 2 * (-Rs * we * Lq * iq + we * Ld * (Rs * iq + we * Psi));
            c = (we * Lq * iq)^2 + (Rs * iq + we * Psi)^2 - Ufw^2;
            id0 = (-b + sqrt(b^2 - 4*a*c)) / (2*a);
            uq = Rs * iq + we * (Psi + Ld * id0);
            [error, target, ~, exceeded] = fw_voltage_error_q(Ufw, wm, id0, iq, Lq, uq, Rs, poles);
            assert(~exceeded && sign(we) * target > 0);
            assert(abs(error) < 1e-9);
            for perturbation = [-1, 1]
                id = id0 + perturbation;
                uq = Rs * iq + we * (Psi + Ld * id);
                error = fw_voltage_error_q(Ufw, wm, id, iq, Lq, uq, Rs, poles);
                assert(error * perturbation < 0);
            end
            count = count + 1;
        end
    end
end
[e, target] = fw_voltage_error_q(Ufw, 738, -275.919, -42, Lq, -.0316227766, Rs, poles);
assert(e > 0 && target > 0);
fprintf('PASS: %d positive-branch equilibria; restoring direction for +/-1 A, both speed signs, Ld +/-20%%.\n', count);
fprintf('Recorded latch sample at 6.4 s: candidate eU = %.6f V, Uq_target = %.6f V.\n', e, target);
[~, ~, ~, exceeded] = fw_voltage_error_q(Ufw, 738, -275, 420, Lq, 0, Rs, poles);
assert(exceeded);
[e, target] = fw_voltage_error_q(Ufw, 0, 0, 0, Lq, 0, Rs, poles);
assert(isfinite(e) && isfinite(target));
fprintf('PASS: infeasible q budget is flagged; zero speed is finite without division by speed.\n');
fprintf('NOT TESTED: closed-loop transients, current-controller saturation recovery, full-drive stability.\n');
end
