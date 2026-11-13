function y = fcn(u)
%#codegen

if u >= 0 && u < 0.1
    y = 0.1;
elseif u < 0 && u > -0.1
    y = -0.1;
else 
    y = u;
end