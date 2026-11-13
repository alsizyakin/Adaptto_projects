function [Tat, Tbt, Tct,vRefwork, overModulation,viol] = audit_SVPWM1(vRef,vAngle, VDC, Currents, compensate_pwm, FocDiscrTime, compensate_dt, mMaxPWM)
% Векторная ШИМ с экстраполяцией скважности и компенсацией мёртвого времени.
% Исправления относительно исходной версии:
%   1) Ветка удержания выдаёт последние ОГРАНИЧЕННЫЕ выходы (Tat_out...),
%      а не сырое Ta_old. Ta_old по-прежнему сырое - для экстраполятора.
%   2) vOtn ограничен с двух сторон через min/max, VDC защищён снизу.
%      min/max игнорируют NaN, поэтому NaN не проходит клампы.
%   3) Ранний выход при нечисловых входах (NaN/Inf) - удержание выхода.
%   4) Компенсация мёртвого времени перенесена ДО финальных клампов
%      и применяется только в активном полутакте (без двойного учёта).
%   5) Клампы выходов - последняя операция, через min/max.
 overModulation = 0;
 viol = 0;
% --- параметры ---
timeStamp=FocDiscrTime;
deadTime        = 0.0;          % мёртвое время, мкс

VDC_min         = 0.1;           % нижняя защита напряжения ЗПТ, В
dutyMax         = 0.995;
dutyMin         = 0.005;

dead_time = deadTime/(timeStamp*1e6);

% --- persistent-состояния ---
persistent Ta_old Tb_old Tc_old;              % сырые скважности (для экстраполятора)
if isempty(Ta_old)
    Ta_old = 0.5;  Tb_old = 0.5;  Tc_old = 0.5;
end
 
persistent Tat_out Tbt_out Tct_out;           % последние выданные (ограниченные) выходы
if isempty(Tat_out)
    Tat_out = 0.5; Tbt_out = 0.5; Tct_out = 0.5;
end
 
persistent interruptCnt
if isempty(interruptCnt)
    interruptCnt = true;
end


vRefwork = vRef;

% --- защита от нечисловых входов: удерживаем последний корректный выход ---
if ~isfinite(vRef) || ~isfinite(vAngle) || ~isfinite(VDC)
    Tat = Tat_out;  Tbt = Tbt_out;  Tct = Tct_out;
    interruptCnt = ~interruptCnt;
    return;
end




if (interruptCnt)
    if (vAngle < 0)
        a = vAngle + 2*pi;
    elseif vAngle > 2*pi
        a = vAngle - 2*pi;
    else
        a=vAngle;
    end

    % относительная амплитуда, двусторонний кламп (min/max отсекают и NaN)
    vOtn = sqrt(3)*vRef / max(VDC, VDC_min);
    vOtn = min(max(vOtn, 0), mMaxPWM);


    if a>=0 && a<pi/3 
        n=1;
    elseif  a>=pi/3 && a<2*pi/3 
        n=2;
    elseif  a>=2*pi/3 && a<pi 
        n=3;
    elseif  a>=pi && a<4*pi/3 
        n=4;
    elseif  a>=4*pi/3 && a<5*pi/3 
        n=5;
    else 
        n=6;

    end

    a_cor=a-(n-1)*pi/3;

    T1 = vOtn * sin(pi/3 - a_cor);
    T2 = vOtn * sin(a_cor);
    T0=1-T1-T2;

    Ta=0; 
    Tb=0; 
    Tc=0;

    switch n
        case 1
            Ta = T1 + T2 + T0/2;
            Tb = T2 + T0/2;
            Tc = T0/2;
       
        case 2
            Ta = T1 + T0/2;
            Tb = T1 + T2 + T0/2;
            Tc = T0/2;       
        
        case 3
            Ta = T0/2;
            Tb = T1 + T2 + T0/2;
            Tc = T2 + T0/2;    
        
        case 4
            Ta = T0/2;
            Tb = T1 + T0/2;
            Tc = T1 + T2 + T0/2;   
       
        case 5
            Ta = T2 + T0/2;
            Tb = T0/2;
            Tc = T1 + T2 + T0/2;     
        
        case 6
            Ta = T1 + T2 + T0/2;
            Tb = T0/2;
            Tc = T1 + T0/2;    
        
    end


% экстраполяция на полупериод вперёд (по сырым значениям - так задумано)
    if compensate_pwm == 1
        Tat = 2*Ta - Ta_old;
        Tbt = 2*Tb - Tb_old;
        Tct = 2*Tc - Tc_old;
    else
        Tat = Ta;
        Tbt = Tb;
        Tct = Tc;
    end

% компенсация мёртвого времени - ДО клампов, только в активном полутакте
    if compensate_dt == 1
        if Currents(1) > 0
            Tat = Tat - dead_time/2;
        else
            Tat = Tat + dead_time/2;
        end
        if Currents(2) > 0
            Tbt = Tbt - dead_time/2;
        else
            Tbt = Tbt + dead_time/2;
        end
        if -(Currents(1)+Currents(2)) > 0
            Tct = Tct - dead_time/2;
        else
            Tct = Tct + dead_time/2;
        end
    end
overModulation = 0;
    viol = max(0, Tat - dutyMax) + max(0, dutyMin - Tat) ...
     + max(0, Tbt - dutyMax) + max(0, dutyMin - Tbt) ...
     + max(0, Tct - dutyMax) + max(0, dutyMin - Tct);
overModulation = double(viol > 0);

% финальные клампы - последняя операция (min/max: NaN не проходит)
    Tat = min(max(Tat, dutyMin), dutyMax);
    Tbt = min(max(Tbt, dutyMin), dutyMax);
    Tct = min(max(Tct, dutyMin), dutyMax);
 
    % запоминаем состояния:
    Ta_old  = Ta;   Tb_old  = Tb;   Tc_old  = Tc;    % сырые - для экстраполятора
    Tat_out = Tat;  Tbt_out = Tbt;  Tct_out = Tct;   % ограниченные - для удержания



    else
    % ================= полутакт удержания =================
    % выдаём ровно то, что реально было на выходе в активном полутакте
    Tat = Tat_out;
    Tbt = Tbt_out;
    Tct = Tct_out;
   
    viol = max(0, Tat - dutyMax) + max(0, dutyMin - Tat) ...
     + max(0, Tbt - dutyMax) + max(0, dutyMin - Tbt) ...
     + max(0, Tct - dutyMax) + max(0, dutyMin - Tct);
overModulation = double(viol > 0);
end
 
interruptCnt = ~interruptCnt;
end

