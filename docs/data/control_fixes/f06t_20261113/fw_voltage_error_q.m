function [eU, uq_target, ud_target, budget_exceeded] = fw_voltage_error_q( ...
    Ufw, wm, Id, Iqref, Lq_used, Uq_f, Rs, PolePairs)
%#codegen
% F07 candidate: directed q-voltage error for the existing F06 integrator.
% NOT validated in the complete drive. See docs/field_weakening_f07.md.
% In MATLAB Function: Rs and PolePairs are Parameter data, not signal ports.
% Six signal inputs: V, mechanical rad/s, A, A, H, V. Scalar doubles.
% Discrete update at FocDiscrTime; the helper itself has no state.
% Uq_f is filtered FINAL q voltage, after current-controller limiting.
% Keep the FF and persistent projection unchanged for the first comparison.

we = PolePairs * wm;
direction = 1.0;
if we < 0.0
    direction = -1.0;
end

% Required stationary d voltage for the REQUESTED q current and actual Id.
% Using measured Ud here would preserve the present zero-q-budget latch.
ud_target = Rs * Id - we * Lq_used * Iqref;
remaining = Ufw * Ufw - ud_target * ud_target;
budget_exceeded = remaining < 0.0;
uq_target = direction * sqrt(max(remaining, 0.0));
eU = direction * (uq_target - Uq_f);
end
