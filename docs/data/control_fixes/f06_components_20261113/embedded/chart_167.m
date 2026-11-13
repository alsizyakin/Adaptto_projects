function y = fcn(u)
%#codegen
s = max(abs(u), 0.1);      % floor модуля

if u >= 0, y = s; else, y = -s; end