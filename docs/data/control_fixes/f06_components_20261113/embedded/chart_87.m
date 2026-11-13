function [ag,s]= fcn(a,b,c)

dt = 1/20000;
persistent Speed;
if isempty(Speed)
    Speed = 0;
end

persistent Speed_flt;
if isempty(Speed_flt)
    Speed_flt = 0;
end


persistent cnt
if isempty(cnt)
    cnt = 0;
end

persistent com_cnt
if isempty(com_cnt)
    com_cnt = 0;
end


y = a + b * 2 + c *4;
if y == 3
    ar = pi/6;
elseif y == 1
    ar = 3*pi/6;
elseif y == 5
    ar = 5*pi/6;
elseif y == 4
    ar = 7*pi/6;
elseif y == 6
    ar = 9*pi/6;
elseif y == 2
    ar = 11*pi/6;
else 
    ar = 0;
end

ar = ar-pi/6;

persistent Angle;
if isempty(Angle)
    Angle = ar;
end

if ar ~= Angle
    f = ar - Angle;
    if f<0 
        f = f + 2*pi;
    end
    Speed_new = f/dt / (cnt+1);
    if abs(Speed_new - Speed) <  max(abs(Speed*0.5),500)
        Speed = Speed_new;
    end
    cnt = 0; 
else 
    cnt = cnt + 1;
end

%if Speed > 10000
%    Speed = 0;
%end



alfa = 0.0125;

Speed_flt = Speed_flt + alfa * (Speed - Speed_flt);

Angle = ar;







if Speed_flt < 500
    ag = ar;
else 
    ag = ar + Speed_flt*dt*(cnt +1);
end

while ag > 2*pi
    ag = ag - 2*pi;
end

s = Speed_flt;
end
