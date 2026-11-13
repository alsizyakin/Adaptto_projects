function y = fcn(u)
%#codegen
s = max(abs(u), 40);      % floor модуля

if u >= 0, y = s; else, y = -s; end