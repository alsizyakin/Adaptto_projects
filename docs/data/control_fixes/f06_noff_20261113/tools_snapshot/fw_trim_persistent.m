function [trim, x_state, psi_cmd, e_norm] = fw_trim_persistent( ...
    psi_ff, eU, Ufw, psi_min, psi_max, Kpsi, FocDiscrTime)
%#codegen
% F06: self-contained FW correction. Paste into a MATLAB Function block.
% Set FocDiscrTime Scope = Parameter, Tunable = off in Symbols / Edit Data.
% It stays in the function arguments but creates no Simulink signal port.
% Define it in the model workspace. Update method = Discrete;
% Sample time = FocDiscrTime (the same parameter used in the update below).
% Keep Allow direct feedthrough enabled: projection uses current FF/limits.
% Fluxes/state/trim: Wb; voltages: V; Kpsi: Wb/s; FocDiscrTime: s.
% x_state is the state at entry, BEFORE projection and integration.
% Kpsi >= 0, FocDiscrTime > 0, psi_min <= psi_max; scalar doubles.
% This component does not govern Iq, FF slew, or recovery after lost tracking.

persistent x
if isempty(x)
    x = 0.0;
end

% Current outputs use the OLD state, preserving the Unit Delay version timing.
x_state = x;
psi_cmd = min(max(psi_ff + x, psi_min), psi_max);
trim = psi_cmd - psi_ff;
e_norm = min(max(eU / max(Ufw, 1.0), -1.0), 1.0);

% Store the bounded NEXT state only after computing the current outputs.
psi_next = min(max(psi_cmd + FocDiscrTime * Kpsi * e_norm, psi_min), psi_max);
x = psi_next - psi_ff;
end
