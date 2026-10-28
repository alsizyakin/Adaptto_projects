function P = fwl_machine()
% Nominal parameters of ideal_source_drive_Idff_aug_param (model workspace).
P.Ld = 0.00031; P.Lq = 0.000305; P.Psi = 0.1024; P.Rs = 0.02; P.p = 11;
P.Is = 420; P.Vdc = 440;
P.Vmax = 0.995 * P.Vdc / sqrt(3);   % current-controller limit, VectorBase/Gain
P.Vfw = 0.95 * P.Vdc / sqrt(3);     % field-weakening target, Gain7 * Gain8
end
