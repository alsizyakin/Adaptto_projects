function y = audit_Min_smooth_ab(a,b)
%#codegen
delta = 10; %A
y = 0.5 * ((a+b) - sqrt((a-b)^2 + delta^2));