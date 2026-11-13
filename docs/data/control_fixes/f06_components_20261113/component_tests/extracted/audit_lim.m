function y = audit_lim(limit, a) 
%#codegen

l = abs(limit);

if a > 0
    y = min(l,a);
else
    y = max(-l,a);
end
  
