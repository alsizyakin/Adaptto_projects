function [trim, x_next, psi_cmd, e_norm] = fw_trim_projected( ...
    x, psi_ff, eU, Ufw, psi_min, psi_max, Kpsi, Ts)
%#codegen
% F06 candidate: bounded FW correction, with state in an external Unit Delay.
% x, psi_ff, trim, x_next, psi_cmd, psi_min/max: Wb; eU, Ufw: V.
% Kpsi: Wb/s per unit voltage error; Ts: s. All inputs are scalar doubles.
% eU = Ufw - Vabs_f. Kpsi >= 0, Ts > 0, psi_min <= psi_max.
% Set both MATLAB Function and Unit Delay to Ts; Unit Delay IC = 0.
% Output trim replaces the old PID output BEFORE the FF summation.
% This component does not govern Iq, FF slew, or recovery after loss of tracking.

% Reconcile the current state with today's FF and FINAL command limits.
psi_cmd = min(max(psi_ff + x, psi_min), psi_max);
trim = psi_cmd - psi_ff;

% No division by speed or signed sensitivity. The floor is only numerical;
% current experiments use Ufw = 241.33 V. Clipping bounds the trim increment.
e_norm = min(max(eU / max(Ufw, 1.0), -1.0), 1.0);

% Forward Euler: apply today's trim, store tomorrow's bounded correction.
psi_next = min(max(psi_cmd + Ts * Kpsi * e_norm, psi_min), psi_max);
x_next = psi_next - psi_ff;
end
