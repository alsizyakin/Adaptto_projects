    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 4;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc paramMap
        ;%
        paramMap.nSections           = nTotSects;
        paramMap.sectIdxOffset       = sectIdxOffset;
            paramMap.sections(nTotSects) = dumSection; %prealloc
        paramMap.nTotData            = -1;

        ;%
        ;% Auto data (rtP)
        ;%
            section.nData     = 163;
            section.data(163)  = dumData; %prealloc

                    ;% rtP.FocDiscrTime
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Ld
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Lq
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.PolePairs
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Psi
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Rs
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.piBandwidth
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.PIDController_I
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.PIDController2_I
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.PIDController3_InitialConditionForIntegrator
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.PIDController4_InitialConditionForIntegrator
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.PIDController_InitialConditionForIntegrator
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.PIDController2_InitialConditionForIntegrator
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.Ramp2_InitialOutput
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.Ramp_InitialOutput
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.Ramp1_InitialOutput
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.PIDController_LowerSaturationLimit
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.PIDController_P
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.PIDController2_P
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.PIDController_UpperSaturationLimit
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.Ramp_slope
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.Ramp1_slope
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 21;

                    ;% rtP.Ramp2_slope
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 22;

                    ;% rtP.Ramp_start
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 23;

                    ;% rtP.Ramp1_start
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 24;

                    ;% rtP.Ramp2_start
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 25;

                    ;% rtP.Gain_Gain
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 26;

                    ;% rtP.Gain_Gain_djxhftize0
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 27;

                    ;% rtP.Gain_Gain_ifj1132abx
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 28;

                    ;% rtP.Gain_Gain_punknji3it
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 29;

                    ;% rtP.Gain_Gain_j2qfegrfnm
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 30;

                    ;% rtP.one_by_3_Gain
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 31;

                    ;% rtP.one_by_sqrt3_Gain
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 32;

                    ;% rtP.Kalphabeta0_Gain
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 33;

                    ;% rtP.sine_table_values_Value
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 36;

                    ;% rtP.convert_pu_Gain
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 1038;

                    ;% rtP.indexing_Gain
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 1039;

                    ;% rtP.Gain_Gain_nb14jbfzwo
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 1040;

                    ;% rtP.Integrator_gainval
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 1041;

                    ;% rtP.Gain5_Gain
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 1042;

                    ;% rtP.Gain5_Gain_ityqyfpnsc
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 1043;

                    ;% rtP.Gain_Gain_liagklf45c
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 1044;

                    ;% rtP.Saturation_UpperSat
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 1045;

                    ;% rtP.Saturation_LowerSat
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 1046;

                    ;% rtP.Integrator_gainval_knsztftnss
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 1047;

                    ;% rtP.sine_table_values_Value_a3bovsahiy
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 1048;

                    ;% rtP.Gain7_Gain
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 2050;

                    ;% rtP.convert_pu_Gain_pd3tvpp05x
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 2051;

                    ;% rtP.indexing_Gain_f4hf3xgt40
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 2052;

                    ;% rtP.Constant_Value
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 2053;

                    ;% rtP.Clamping_zero_Value
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 2054;

                    ;% rtP.Constant1_Value
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 2055;

                    ;% rtP.Clamping_zero_Value_dzbkr5nj33
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 2056;

                    ;% rtP.Constant1_Value_heb03z0qwi
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 2057;

                    ;% rtP.Constant_Value_amqem3vix4
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 2058;

                    ;% rtP.Constant1_Value_plzth135fi
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 2059;

                    ;% rtP.Constant_Value_aidlcpdktu
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 2060;

                    ;% rtP.Constant_Value_naavg1wwyy
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 2061;

                    ;% rtP.Constant1_Value_kzv5mijxnd
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 2062;

                    ;% rtP.UnitDelay2_InitialCondition
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 2063;

                    ;% rtP.Bias1_Bias
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 2064;

                    ;% rtP.Gain1_Gain
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 2065;

                    ;% rtP.Bias2_Bias
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 2066;

                    ;% rtP.Gain5_Gain_ayumsuhwru
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 2067;

                    ;% rtP.Bias3_Bias
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 2068;

                    ;% rtP.Gain8_Gain
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 2069;

                    ;% rtP.Bias2_Bias_hiaognvlhf
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 2070;

                    ;% rtP.Bias_Bias
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 2071;

                    ;% rtP.Bias1_Bias_duuhdzfogo
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 2072;

                    ;% rtP.TransferFcn1_A
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 2073;

                    ;% rtP.TransferFcn1_C
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 2074;

                    ;% rtP.Step_Y0
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 2075;

                    ;% rtP.Saturation2_UpperSat
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 2076;

                    ;% rtP.Saturation2_LowerSat
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 2077;

                    ;% rtP.Step_Y0_adbppv2h4i
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 2078;

                    ;% rtP.Saturation6_UpperSat
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 2079;

                    ;% rtP.Saturation6_LowerSat
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 2080;

                    ;% rtP.Saturation5_UpperSat
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 2081;

                    ;% rtP.Saturation5_LowerSat
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 2082;

                    ;% rtP.UnitDelay_InitialCondition
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 2083;

                    ;% rtP.Integrator_gainval_dhnaqjdnlv
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 2084;

                    ;% rtP.Saturation1_UpperSat
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 2085;

                    ;% rtP.Saturation1_LowerSat
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 2086;

                    ;% rtP.Gain7_Gain_nvzv4otdtq
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 2087;

                    ;% rtP.Saturation_UpperSat_jtqyrsjebw
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 2088;

                    ;% rtP.Saturation_LowerSat_niuqztsdpt
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 2089;

                    ;% rtP.Step_Y0_n1ghy4ife5
                    section.data(87).logicalSrcIdx = 86;
                    section.data(87).dtTransOffset = 2090;

                    ;% rtP.Saturation4_UpperSat
                    section.data(88).logicalSrcIdx = 87;
                    section.data(88).dtTransOffset = 2091;

                    ;% rtP.Saturation4_LowerSat
                    section.data(89).logicalSrcIdx = 88;
                    section.data(89).dtTransOffset = 2092;

                    ;% rtP.TransferFcn_A
                    section.data(90).logicalSrcIdx = 89;
                    section.data(90).dtTransOffset = 2093;

                    ;% rtP.TransferFcn_C
                    section.data(91).logicalSrcIdx = 90;
                    section.data(91).dtTransOffset = 2094;

                    ;% rtP.Integrator_gainval_kcogqwyqqm
                    section.data(92).logicalSrcIdx = 91;
                    section.data(92).dtTransOffset = 2095;

                    ;% rtP.Gain_Gain_pm4qz0kgbm
                    section.data(93).logicalSrcIdx = 92;
                    section.data(93).dtTransOffset = 2096;

                    ;% rtP.Step_Time
                    section.data(94).logicalSrcIdx = 93;
                    section.data(94).dtTransOffset = 2097;

                    ;% rtP.Step_Y0_fkn1ochaqa
                    section.data(95).logicalSrcIdx = 94;
                    section.data(95).dtTransOffset = 2098;

                    ;% rtP.Step_YFinal
                    section.data(96).logicalSrcIdx = 95;
                    section.data(96).dtTransOffset = 2099;

                    ;% rtP.integrator_IC
                    section.data(97).logicalSrcIdx = 96;
                    section.data(97).dtTransOffset = 2100;

                    ;% rtP.TransportDelay_Delay
                    section.data(98).logicalSrcIdx = 97;
                    section.data(98).dtTransOffset = 2101;

                    ;% rtP.TransportDelay_InitOutput
                    section.data(99).logicalSrcIdx = 98;
                    section.data(99).dtTransOffset = 2102;

                    ;% rtP.K1_Value
                    section.data(100).logicalSrcIdx = 99;
                    section.data(100).dtTransOffset = 2103;

                    ;% rtP.Memory_InitialCondition
                    section.data(101).logicalSrcIdx = 100;
                    section.data(101).dtTransOffset = 2104;

                    ;% rtP.Switch_Threshold
                    section.data(102).logicalSrcIdx = 101;
                    section.data(102).dtTransOffset = 2105;

                    ;% rtP.Gain_Gain_nximn4s4ry
                    section.data(103).logicalSrcIdx = 102;
                    section.data(103).dtTransOffset = 2106;

                    ;% rtP.Integrator_IC
                    section.data(104).logicalSrcIdx = 103;
                    section.data(104).dtTransOffset = 2107;

                    ;% rtP.Integrator_UpperSat
                    section.data(105).logicalSrcIdx = 104;
                    section.data(105).dtTransOffset = 2108;

                    ;% rtP.Integrator_LowerSat
                    section.data(106).logicalSrcIdx = 105;
                    section.data(106).dtTransOffset = 2109;

                    ;% rtP.one_by_3_Gain_lq50khpwgl
                    section.data(107).logicalSrcIdx = 106;
                    section.data(107).dtTransOffset = 2110;

                    ;% rtP.one_by_sqrt3_Gain_bbbfyvtmfv
                    section.data(108).logicalSrcIdx = 107;
                    section.data(108).dtTransOffset = 2111;

                    ;% rtP.Kalphabeta0_Gain_pvcgmqyz1g
                    section.data(109).logicalSrcIdx = 108;
                    section.data(109).dtTransOffset = 2112;

                    ;% rtP.sine_table_values_Value_ph5vfaxqmh
                    section.data(110).logicalSrcIdx = 109;
                    section.data(110).dtTransOffset = 2115;

                    ;% rtP.convert_pu_Gain_flpdghdw0l
                    section.data(111).logicalSrcIdx = 110;
                    section.data(111).dtTransOffset = 3117;

                    ;% rtP.indexing_Gain_d4wzw4thi3
                    section.data(112).logicalSrcIdx = 111;
                    section.data(112).dtTransOffset = 3118;

                    ;% rtP.one_by_3_Gain_dy5n1llkjm
                    section.data(113).logicalSrcIdx = 112;
                    section.data(113).dtTransOffset = 3119;

                    ;% rtP.one_by_sqrt3_Gain_ot11yk20jv
                    section.data(114).logicalSrcIdx = 113;
                    section.data(114).dtTransOffset = 3120;

                    ;% rtP.Kalphabeta0_Gain_b1jcwqkjuu
                    section.data(115).logicalSrcIdx = 114;
                    section.data(115).dtTransOffset = 3121;

                    ;% rtP.sine_table_values_Value_pz4e1lr51y
                    section.data(116).logicalSrcIdx = 115;
                    section.data(116).dtTransOffset = 3124;

                    ;% rtP.convert_pu_Gain_ocuvhlhykv
                    section.data(117).logicalSrcIdx = 116;
                    section.data(117).dtTransOffset = 4126;

                    ;% rtP.indexing_Gain_jnauyr3dqe
                    section.data(118).logicalSrcIdx = 117;
                    section.data(118).dtTransOffset = 4127;

                    ;% rtP.integrator_IC_o5k0p0omuk
                    section.data(119).logicalSrcIdx = 118;
                    section.data(119).dtTransOffset = 4128;

                    ;% rtP.TransportDelay_Delay_khxusi3syg
                    section.data(120).logicalSrcIdx = 119;
                    section.data(120).dtTransOffset = 4129;

                    ;% rtP.TransportDelay_InitOutput_fcurpnfims
                    section.data(121).logicalSrcIdx = 120;
                    section.data(121).dtTransOffset = 4130;

                    ;% rtP.K1_Value_p2yed5qh2t
                    section.data(122).logicalSrcIdx = 121;
                    section.data(122).dtTransOffset = 4131;

                    ;% rtP.Memory_InitialCondition_moqgj1emy3
                    section.data(123).logicalSrcIdx = 122;
                    section.data(123).dtTransOffset = 4132;

                    ;% rtP.integrator_IC_nx1ywgu3yd
                    section.data(124).logicalSrcIdx = 123;
                    section.data(124).dtTransOffset = 4133;

                    ;% rtP.TransportDelay_Delay_ofg0lwkz05
                    section.data(125).logicalSrcIdx = 124;
                    section.data(125).dtTransOffset = 4134;

                    ;% rtP.TransportDelay_InitOutput_hpctjm5rzm
                    section.data(126).logicalSrcIdx = 125;
                    section.data(126).dtTransOffset = 4135;

                    ;% rtP.K1_Value_ful2v3oltv
                    section.data(127).logicalSrcIdx = 126;
                    section.data(127).dtTransOffset = 4136;

                    ;% rtP.Memory_InitialCondition_hff0nofxg3
                    section.data(128).logicalSrcIdx = 127;
                    section.data(128).dtTransOffset = 4137;

                    ;% rtP.integrator_IC_i0o4ll0jcd
                    section.data(129).logicalSrcIdx = 128;
                    section.data(129).dtTransOffset = 4138;

                    ;% rtP.TransportDelay_Delay_gievexvnzj
                    section.data(130).logicalSrcIdx = 129;
                    section.data(130).dtTransOffset = 4139;

                    ;% rtP.TransportDelay_InitOutput_balur43s2o
                    section.data(131).logicalSrcIdx = 130;
                    section.data(131).dtTransOffset = 4140;

                    ;% rtP.K1_Value_gff0kfd14l
                    section.data(132).logicalSrcIdx = 131;
                    section.data(132).dtTransOffset = 4141;

                    ;% rtP.Memory_InitialCondition_mu0u35defg
                    section.data(133).logicalSrcIdx = 132;
                    section.data(133).dtTransOffset = 4142;

                    ;% rtP.integrator_IC_droafotp5y
                    section.data(134).logicalSrcIdx = 133;
                    section.data(134).dtTransOffset = 4143;

                    ;% rtP.TransportDelay_Delay_gfwbehe5ez
                    section.data(135).logicalSrcIdx = 134;
                    section.data(135).dtTransOffset = 4144;

                    ;% rtP.TransportDelay_InitOutput_n232vm3mqw
                    section.data(136).logicalSrcIdx = 135;
                    section.data(136).dtTransOffset = 4145;

                    ;% rtP.K1_Value_bwyabfwh1v
                    section.data(137).logicalSrcIdx = 136;
                    section.data(137).dtTransOffset = 4146;

                    ;% rtP.Memory_InitialCondition_l1hfk5anpl
                    section.data(138).logicalSrcIdx = 137;
                    section.data(138).dtTransOffset = 4147;

                    ;% rtP.Bias_Bias_pazrq3uvdz
                    section.data(139).logicalSrcIdx = 138;
                    section.data(139).dtTransOffset = 4148;

                    ;% rtP.Gain2_Gain
                    section.data(140).logicalSrcIdx = 139;
                    section.data(140).dtTransOffset = 4149;

                    ;% rtP.Step1_Time
                    section.data(141).logicalSrcIdx = 140;
                    section.data(141).dtTransOffset = 4150;

                    ;% rtP.Step1_Y0
                    section.data(142).logicalSrcIdx = 141;
                    section.data(142).dtTransOffset = 4151;

                    ;% rtP.Step1_YFinal
                    section.data(143).logicalSrcIdx = 142;
                    section.data(143).dtTransOffset = 4152;

                    ;% rtP.Saturation3_UpperSat
                    section.data(144).logicalSrcIdx = 143;
                    section.data(144).dtTransOffset = 4153;

                    ;% rtP.Saturation3_LowerSat
                    section.data(145).logicalSrcIdx = 144;
                    section.data(145).dtTransOffset = 4154;

                    ;% rtP.TransferFcn_A_dvdqductor
                    section.data(146).logicalSrcIdx = 145;
                    section.data(146).dtTransOffset = 4155;

                    ;% rtP.TransferFcn_C_objfxqqpad
                    section.data(147).logicalSrcIdx = 146;
                    section.data(147).dtTransOffset = 4156;

                    ;% rtP.Constant_Value_kxfziju4tw
                    section.data(148).logicalSrcIdx = 147;
                    section.data(148).dtTransOffset = 4157;

                    ;% rtP.Constant1_Value_ah5g1obm1c
                    section.data(149).logicalSrcIdx = 148;
                    section.data(149).dtTransOffset = 4158;

                    ;% rtP.Constant10_Value
                    section.data(150).logicalSrcIdx = 149;
                    section.data(150).dtTransOffset = 4159;

                    ;% rtP.Constant11_Value
                    section.data(151).logicalSrcIdx = 150;
                    section.data(151).dtTransOffset = 4160;

                    ;% rtP.Constant5_Value
                    section.data(152).logicalSrcIdx = 151;
                    section.data(152).dtTransOffset = 4161;

                    ;% rtP.Constant7_Value
                    section.data(153).logicalSrcIdx = 152;
                    section.data(153).dtTransOffset = 4162;

                    ;% rtP.Constant_Value_fke3pdcioo
                    section.data(154).logicalSrcIdx = 153;
                    section.data(154).dtTransOffset = 4163;

                    ;% rtP.Constant1_Value_ggoqmq1p4s
                    section.data(155).logicalSrcIdx = 154;
                    section.data(155).dtTransOffset = 4164;

                    ;% rtP.Constant2_Value
                    section.data(156).logicalSrcIdx = 155;
                    section.data(156).dtTransOffset = 4165;

                    ;% rtP.Clamping_zero_Value_bhl50gjfmv
                    section.data(157).logicalSrcIdx = 156;
                    section.data(157).dtTransOffset = 4166;

                    ;% rtP.Clamping_zero_Value_editfihzwr
                    section.data(158).logicalSrcIdx = 157;
                    section.data(158).dtTransOffset = 4167;

                    ;% rtP.RTP_0BF8E32F_angular_position_Value
                    section.data(159).logicalSrcIdx = 158;
                    section.data(159).dtTransOffset = 4168;

                    ;% rtP.RTP_0BF8E32F_angular_velocity_Value
                    section.data(160).logicalSrcIdx = 159;
                    section.data(160).dtTransOffset = 4169;

                    ;% rtP.RTP_0BF8E32F_i_d_Value
                    section.data(161).logicalSrcIdx = 160;
                    section.data(161).dtTransOffset = 4170;

                    ;% rtP.RTP_0BF8E32F_i_q_Value
                    section.data(162).logicalSrcIdx = 161;
                    section.data(162).dtTransOffset = 4171;

                    ;% rtP.RTP_0BF8E32F_torque_Value
                    section.data(163).logicalSrcIdx = 162;
                    section.data(163).dtTransOffset = 4172;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtP.offset_Value
                    section.data(1).logicalSrcIdx = 163;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.offset_Value_cuuhtbq0gv
                    section.data(2).logicalSrcIdx = 164;
                    section.data(2).dtTransOffset = 4;

                    ;% rtP.offset_Value_mwsc4qa1fy
                    section.data(3).logicalSrcIdx = 165;
                    section.data(3).dtTransOffset = 8;

                    ;% rtP.offset_Value_mdzj24mdnx
                    section.data(4).logicalSrcIdx = 166;
                    section.data(4).dtTransOffset = 12;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 8;
            section.data(8)  = dumData; %prealloc

                    ;% rtP.Offset_Value
                    section.data(1).logicalSrcIdx = 167;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Switch_Threshold_jxr2cmuqwa
                    section.data(2).logicalSrcIdx = 168;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Offset_Value_ekf4xacrxj
                    section.data(3).logicalSrcIdx = 169;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Switch_Threshold_nxmpevclsq
                    section.data(4).logicalSrcIdx = 170;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Offset_Value_jgu0pcvj3b
                    section.data(5).logicalSrcIdx = 171;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Switch_Threshold_apekzvb1le
                    section.data(6).logicalSrcIdx = 172;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Offset_Value_fboskqo1ag
                    section.data(7).logicalSrcIdx = 173;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Switch_Threshold_owcqsnmcfg
                    section.data(8).logicalSrcIdx = 174;
                    section.data(8).dtTransOffset = 7;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 16;
            section.data(16)  = dumData; %prealloc

                    ;% rtP.Constant_Value_c2e1y2gzc3
                    section.data(1).logicalSrcIdx = 175;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Constant2_Value_drbxu45em3
                    section.data(2).logicalSrcIdx = 176;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Constant3_Value
                    section.data(3).logicalSrcIdx = 177;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Constant4_Value
                    section.data(4).logicalSrcIdx = 178;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Constant_Value_f5v4rjr542
                    section.data(5).logicalSrcIdx = 179;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Constant2_Value_fpcgfo0hw0
                    section.data(6).logicalSrcIdx = 180;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Constant3_Value_bjlbtqusro
                    section.data(7).logicalSrcIdx = 181;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Constant4_Value_jnji3qyt13
                    section.data(8).logicalSrcIdx = 182;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.Constant_Value_dkhphikhxn
                    section.data(9).logicalSrcIdx = 183;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Constant2_Value_chfiiyl2xo
                    section.data(10).logicalSrcIdx = 184;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.Constant3_Value_ckuyfoczpd
                    section.data(11).logicalSrcIdx = 185;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.Constant4_Value_d5cs5fwkek
                    section.data(12).logicalSrcIdx = 186;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.Constant_Value_ljwvnj1h33
                    section.data(13).logicalSrcIdx = 187;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.Constant2_Value_pr0foizd4c
                    section.data(14).logicalSrcIdx = 188;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.Constant3_Value_j5j0j3jbky
                    section.data(15).logicalSrcIdx = 189;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.Constant4_Value_jrpwj3ts4p
                    section.data(16).logicalSrcIdx = 190;
                    section.data(16).dtTransOffset = 15;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section


            ;%
            ;% Non-auto Data (parameter)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        paramMap.nTotData = nTotData;



    ;%**************************
    ;% Create Block Output Map *
    ;%**************************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 3;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc sigMap
        ;%
        sigMap.nSections           = nTotSects;
        sigMap.sectIdxOffset       = sectIdxOffset;
            sigMap.sections(nTotSects) = dumSection; %prealloc
        sigMap.nTotData            = -1;

        ;%
        ;% Auto data (rtB)
        ;%
            section.nData     = 133;
            section.data(133)  = dumData; %prealloc

                    ;% rtB.f4xms5nl2i
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.bdyqr01nd0
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.i4okceizf1
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 5;

                    ;% rtB.dej35e4dzg
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 6;

                    ;% rtB.ec44uefjjj
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 10;

                    ;% rtB.cnfi5qwoin
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 11;

                    ;% rtB.jisaecfw2g
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 15;

                    ;% rtB.cs0znog1zr
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 16;

                    ;% rtB.nt4qh4kpwq
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 24;

                    ;% rtB.jdagzfgvyi
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 29;

                    ;% rtB.nb0dn4tjq1
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 30;

                    ;% rtB.gvp4vd1awv
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 31;

                    ;% rtB.grqyjb3tnb
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 32;

                    ;% rtB.jhuave5n5r
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 33;

                    ;% rtB.muyvti3leb
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 34;

                    ;% rtB.m5g2cblzwz
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 35;

                    ;% rtB.crhujconhy
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 36;

                    ;% rtB.dphmqyjxoh
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 37;

                    ;% rtB.hneflhjvzi
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 38;

                    ;% rtB.arckhogw1d
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 39;

                    ;% rtB.bwh3pmwp4h
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 40;

                    ;% rtB.bfckg1tk0u
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 41;

                    ;% rtB.g5gvb1gjej
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 42;

                    ;% rtB.oq1buzzz1q
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 43;

                    ;% rtB.o2dy03adzu
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 44;

                    ;% rtB.ifrt3jlyjd
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 45;

                    ;% rtB.cdg5qedfzl
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 49;

                    ;% rtB.bjppw1lpys
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 50;

                    ;% rtB.alh2gcqxlo
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 51;

                    ;% rtB.hihb2qf0gm
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 52;

                    ;% rtB.odnrtq1x5y
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 53;

                    ;% rtB.aytsjpben5
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 54;

                    ;% rtB.nemh1sdzvc
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 55;

                    ;% rtB.jxpf5aulbe
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 56;

                    ;% rtB.iu4ki3bw3z
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 57;

                    ;% rtB.juskda3hxe
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 58;

                    ;% rtB.ihr1xs5myu
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 59;

                    ;% rtB.lwpjjtsjj2
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 60;

                    ;% rtB.owiylkvmny
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 61;

                    ;% rtB.c2u4i3gxmu
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 62;

                    ;% rtB.h1gxb2oxsk
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 63;

                    ;% rtB.nhexxjav05
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 64;

                    ;% rtB.hkrgtts42e
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 65;

                    ;% rtB.nxpgzurv0f
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 66;

                    ;% rtB.jewlkrd5nk
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 67;

                    ;% rtB.jdnemrz1uw
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 68;

                    ;% rtB.ll2posuui3
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 69;

                    ;% rtB.oq35ifmgt4
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 70;

                    ;% rtB.oqwo31swj0
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 71;

                    ;% rtB.hzqtl30f3h
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 72;

                    ;% rtB.gizltdczhw
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 73;

                    ;% rtB.enxilxfcnq
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 74;

                    ;% rtB.f1mfwtoy0p
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 75;

                    ;% rtB.fxvscmt5z5
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 76;

                    ;% rtB.oygt4eoo0a
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 77;

                    ;% rtB.cc4x0orfan
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 78;

                    ;% rtB.lmj3xxmdui
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 79;

                    ;% rtB.lilemuyxxn
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 82;

                    ;% rtB.immol2kg12
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 83;

                    ;% rtB.auigwjn22l
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 84;

                    ;% rtB.du3twbjk0n
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 85;

                    ;% rtB.kaex3dcozt
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 88;

                    ;% rtB.ocjyv0uiyz
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 89;

                    ;% rtB.jy5jnbpg4z
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 90;

                    ;% rtB.jdqjoyjdku
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 91;

                    ;% rtB.avttudx0nz
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 92;

                    ;% rtB.hhdempmrx5
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 93;

                    ;% rtB.blriw03jkc
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 94;

                    ;% rtB.hre1hfm0ad
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 95;

                    ;% rtB.gcku0hzdbg
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 96;

                    ;% rtB.aodm4skvkp
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 97;

                    ;% rtB.lv0sh41sji
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 98;

                    ;% rtB.chmxfw1dzg
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 99;

                    ;% rtB.bekyycocb5
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 100;

                    ;% rtB.axudahswg2
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 101;

                    ;% rtB.ofetnjkwdx
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 104;

                    ;% rtB.fzmoprsr0o
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 105;

                    ;% rtB.ch5i2yosua
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 108;

                    ;% rtB.eytvckuxmi
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 111;

                    ;% rtB.lox5guvikg
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 112;

                    ;% rtB.c5wegmzkle
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 113;

                    ;% rtB.dg0crwjxc2
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 114;

                    ;% rtB.dw5fq55fea
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 117;

                    ;% rtB.bmp01fvaxs
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 118;

                    ;% rtB.g1omfg2num
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 119;

                    ;% rtB.i2chflbz4r
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 120;

                    ;% rtB.debd22phbh
                    section.data(87).logicalSrcIdx = 86;
                    section.data(87).dtTransOffset = 121;

                    ;% rtB.fjp5slplhr
                    section.data(88).logicalSrcIdx = 87;
                    section.data(88).dtTransOffset = 122;

                    ;% rtB.ag02t3ehew
                    section.data(89).logicalSrcIdx = 88;
                    section.data(89).dtTransOffset = 123;

                    ;% rtB.p134l1cx3l
                    section.data(90).logicalSrcIdx = 89;
                    section.data(90).dtTransOffset = 124;

                    ;% rtB.n3dgyp1n15
                    section.data(91).logicalSrcIdx = 90;
                    section.data(91).dtTransOffset = 125;

                    ;% rtB.en3s3thtoj
                    section.data(92).logicalSrcIdx = 91;
                    section.data(92).dtTransOffset = 126;

                    ;% rtB.huacziribi
                    section.data(93).logicalSrcIdx = 92;
                    section.data(93).dtTransOffset = 129;

                    ;% rtB.l3prqjjut3
                    section.data(94).logicalSrcIdx = 93;
                    section.data(94).dtTransOffset = 130;

                    ;% rtB.h5mxuulv0z
                    section.data(95).logicalSrcIdx = 94;
                    section.data(95).dtTransOffset = 131;

                    ;% rtB.mzoon2xwef
                    section.data(96).logicalSrcIdx = 95;
                    section.data(96).dtTransOffset = 132;

                    ;% rtB.mpqsjkrzrd
                    section.data(97).logicalSrcIdx = 96;
                    section.data(97).dtTransOffset = 133;

                    ;% rtB.dj5ob4dsrr
                    section.data(98).logicalSrcIdx = 97;
                    section.data(98).dtTransOffset = 134;

                    ;% rtB.o3fxy1x4wc
                    section.data(99).logicalSrcIdx = 98;
                    section.data(99).dtTransOffset = 135;

                    ;% rtB.axdevibv1y
                    section.data(100).logicalSrcIdx = 99;
                    section.data(100).dtTransOffset = 136;

                    ;% rtB.iktkcx1u2k
                    section.data(101).logicalSrcIdx = 100;
                    section.data(101).dtTransOffset = 137;

                    ;% rtB.hrhn4qbziz
                    section.data(102).logicalSrcIdx = 101;
                    section.data(102).dtTransOffset = 138;

                    ;% rtB.dgzt1ojfsm
                    section.data(103).logicalSrcIdx = 102;
                    section.data(103).dtTransOffset = 139;

                    ;% rtB.cdojcnajx1
                    section.data(104).logicalSrcIdx = 103;
                    section.data(104).dtTransOffset = 140;

                    ;% rtB.ka1jirsbmh
                    section.data(105).logicalSrcIdx = 104;
                    section.data(105).dtTransOffset = 141;

                    ;% rtB.jy23m0n4zk
                    section.data(106).logicalSrcIdx = 105;
                    section.data(106).dtTransOffset = 142;

                    ;% rtB.abzz31jw1i
                    section.data(107).logicalSrcIdx = 106;
                    section.data(107).dtTransOffset = 143;

                    ;% rtB.o2rudzvzpc
                    section.data(108).logicalSrcIdx = 107;
                    section.data(108).dtTransOffset = 144;

                    ;% rtB.btldec5bxv
                    section.data(109).logicalSrcIdx = 108;
                    section.data(109).dtTransOffset = 145;

                    ;% rtB.g22rv3nnj3
                    section.data(110).logicalSrcIdx = 109;
                    section.data(110).dtTransOffset = 146;

                    ;% rtB.pf0eehn13m
                    section.data(111).logicalSrcIdx = 110;
                    section.data(111).dtTransOffset = 147;

                    ;% rtB.bnuegxidqe
                    section.data(112).logicalSrcIdx = 111;
                    section.data(112).dtTransOffset = 148;

                    ;% rtB.iupucqiurp
                    section.data(113).logicalSrcIdx = 112;
                    section.data(113).dtTransOffset = 149;

                    ;% rtB.dsb3k5km1d
                    section.data(114).logicalSrcIdx = 113;
                    section.data(114).dtTransOffset = 150;

                    ;% rtB.brefwp01n2
                    section.data(115).logicalSrcIdx = 114;
                    section.data(115).dtTransOffset = 151;

                    ;% rtB.bgzy2gz4ul
                    section.data(116).logicalSrcIdx = 115;
                    section.data(116).dtTransOffset = 152;

                    ;% rtB.kbxoz4ughp
                    section.data(117).logicalSrcIdx = 116;
                    section.data(117).dtTransOffset = 153;

                    ;% rtB.c0x4fq4ndq
                    section.data(118).logicalSrcIdx = 117;
                    section.data(118).dtTransOffset = 154;

                    ;% rtB.amfxz4w2o0
                    section.data(119).logicalSrcIdx = 118;
                    section.data(119).dtTransOffset = 155;

                    ;% rtB.dufgoh52xq
                    section.data(120).logicalSrcIdx = 119;
                    section.data(120).dtTransOffset = 156;

                    ;% rtB.mybxs1tgn2
                    section.data(121).logicalSrcIdx = 120;
                    section.data(121).dtTransOffset = 157;

                    ;% rtB.h2kli15p1q
                    section.data(122).logicalSrcIdx = 121;
                    section.data(122).dtTransOffset = 158;

                    ;% rtB.huys5fixcu
                    section.data(123).logicalSrcIdx = 122;
                    section.data(123).dtTransOffset = 159;

                    ;% rtB.euhzdoyuhl
                    section.data(124).logicalSrcIdx = 123;
                    section.data(124).dtTransOffset = 160;

                    ;% rtB.b1n3hjjaeu
                    section.data(125).logicalSrcIdx = 124;
                    section.data(125).dtTransOffset = 161;

                    ;% rtB.gvw3g2ao0i
                    section.data(126).logicalSrcIdx = 125;
                    section.data(126).dtTransOffset = 162;

                    ;% rtB.d5x5fnjdub
                    section.data(127).logicalSrcIdx = 126;
                    section.data(127).dtTransOffset = 163;

                    ;% rtB.fv50zpz45w
                    section.data(128).logicalSrcIdx = 127;
                    section.data(128).dtTransOffset = 164;

                    ;% rtB.a10bu0hpe4
                    section.data(129).logicalSrcIdx = 128;
                    section.data(129).dtTransOffset = 165;

                    ;% rtB.dke4ttom05
                    section.data(130).logicalSrcIdx = 129;
                    section.data(130).dtTransOffset = 167;

                    ;% rtB.f220xzrsn0
                    section.data(131).logicalSrcIdx = 130;
                    section.data(131).dtTransOffset = 168;

                    ;% rtB.po52i2djxm
                    section.data(132).logicalSrcIdx = 131;
                    section.data(132).dtTransOffset = 169;

                    ;% rtB.ngtvvcubii
                    section.data(133).logicalSrcIdx = 132;
                    section.data(133).dtTransOffset = 170;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtB.gb350culcr
                    section.data(1).logicalSrcIdx = 134;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.houwboqs2i
                    section.data(2).logicalSrcIdx = 135;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 5;
            section.data(5)  = dumData; %prealloc

                    ;% rtB.eixa3whjg5
                    section.data(1).logicalSrcIdx = 136;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.odexacfrnx
                    section.data(2).logicalSrcIdx = 137;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.jkp1rhnmfv
                    section.data(3).logicalSrcIdx = 138;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.cnrk303h4i
                    section.data(4).logicalSrcIdx = 139;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.czj0xbnocj
                    section.data(5).logicalSrcIdx = 140;
                    section.data(5).dtTransOffset = 4;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section


            ;%
            ;% Non-auto Data (signal)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        sigMap.nTotData = nTotData;



    ;%*******************
    ;% Create DWork Map *
    ;%*******************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 16;
        sectIdxOffset = 3;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc dworkMap
        ;%
        dworkMap.nSections           = nTotSects;
        dworkMap.sectIdxOffset       = sectIdxOffset;
            dworkMap.sections(nTotSects) = dumSection; %prealloc
        dworkMap.nTotData            = -1;

        ;%
        ;% Auto data (rtDW)
        ;%
            section.nData     = 41;
            section.data(41)  = dumData; %prealloc

                    ;% rtDW.gryfwaapqt
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.jzglbdat43
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 3;

                    ;% rtDW.pktleajqrr
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 5;

                    ;% rtDW.nyvyvzossb
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 7;

                    ;% rtDW.brd2wlm0vp
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 9;

                    ;% rtDW.aerlviqjte
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 10;

                    ;% rtDW.ha4y4yn5nm
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 11;

                    ;% rtDW.kpsxxznykj
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 12;

                    ;% rtDW.mbkcfyshe1
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 13;

                    ;% rtDW.o2gue1diuc
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 14;

                    ;% rtDW.h3x2r3wdhw
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 15;

                    ;% rtDW.b1ds5o1rtg
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 16;

                    ;% rtDW.p1ppri0zaz
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 17;

                    ;% rtDW.llbtos11vn
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 18;

                    ;% rtDW.dbwwl2rixz
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 19;

                    ;% rtDW.fqsqyu2zgj
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 20;

                    ;% rtDW.dsidn5juli
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 21;

                    ;% rtDW.ivh0eyh50w
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 22;

                    ;% rtDW.cceolj5ykg
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 23;

                    ;% rtDW.jkbtcergvc
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 24;

                    ;% rtDW.nembsiarrv
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 25;

                    ;% rtDW.pfkj2cnoag
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 26;

                    ;% rtDW.aw0eettwsj
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 29;

                    ;% rtDW.mjpiwumszg
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 30;

                    ;% rtDW.fekcpe3df5
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 31;

                    ;% rtDW.kkvearnnqp
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 32;

                    ;% rtDW.cq3fwkjxuu
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 33;

                    ;% rtDW.dxxtokrqcb
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 34;

                    ;% rtDW.do33lhn2bi
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 35;

                    ;% rtDW.nm33qwzxd5
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 36;

                    ;% rtDW.arz3f1om2l
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 37;

                    ;% rtDW.kweouapser
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 38;

                    ;% rtDW.bzwbotnvic
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 39;

                    ;% rtDW.ajyntb4ygb
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 40;

                    ;% rtDW.g0rxvwksdg
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 41;

                    ;% rtDW.fnnyxudmyr
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 42;

                    ;% rtDW.psfsjpprke
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 43;

                    ;% rtDW.pfebfjf0qz
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 44;

                    ;% rtDW.nwk0yt2ldg
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 45;

                    ;% rtDW.hinsdmadei
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 46;

                    ;% rtDW.dzyc5lkwda
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 47;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 54;
            section.data(54)  = dumData; %prealloc

                    ;% rtDW.hrvru3xtvt
                    section.data(1).logicalSrcIdx = 41;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.actruhskdf
                    section.data(2).logicalSrcIdx = 42;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.lyojfd10qb
                    section.data(3).logicalSrcIdx = 43;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.ej43dm0lha
                    section.data(4).logicalSrcIdx = 44;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.ixt0as5weg
                    section.data(5).logicalSrcIdx = 45;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.bnmwqrhliq
                    section.data(6).logicalSrcIdx = 46;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.ayla2cqt1o
                    section.data(7).logicalSrcIdx = 47;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.nczljgvd1k
                    section.data(8).logicalSrcIdx = 48;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.dyx2kjtba4
                    section.data(9).logicalSrcIdx = 49;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.io1hx1mqf3
                    section.data(10).logicalSrcIdx = 50;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.dwmovdhv5r
                    section.data(11).logicalSrcIdx = 51;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.ajhblicmh5.LoggedData
                    section.data(12).logicalSrcIdx = 52;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.okradnwfv3
                    section.data(13).logicalSrcIdx = 53;
                    section.data(13).dtTransOffset = 16;

                    ;% rtDW.o24xoaehpc
                    section.data(14).logicalSrcIdx = 54;
                    section.data(14).dtTransOffset = 17;

                    ;% rtDW.ds4tomhypc
                    section.data(15).logicalSrcIdx = 55;
                    section.data(15).dtTransOffset = 18;

                    ;% rtDW.ad3zktfgpo
                    section.data(16).logicalSrcIdx = 56;
                    section.data(16).dtTransOffset = 19;

                    ;% rtDW.hkfl5qq1sm
                    section.data(17).logicalSrcIdx = 57;
                    section.data(17).dtTransOffset = 20;

                    ;% rtDW.don4cavtzy.LoggedData
                    section.data(18).logicalSrcIdx = 58;
                    section.data(18).dtTransOffset = 21;

                    ;% rtDW.ae0fcwjlby
                    section.data(19).logicalSrcIdx = 59;
                    section.data(19).dtTransOffset = 23;

                    ;% rtDW.cc5fcqc4pv.LoggedData
                    section.data(20).logicalSrcIdx = 60;
                    section.data(20).dtTransOffset = 25;

                    ;% rtDW.js2velz5zm.LoggedData
                    section.data(21).logicalSrcIdx = 61;
                    section.data(21).dtTransOffset = 27;

                    ;% rtDW.b5jggde0di.LoggedData
                    section.data(22).logicalSrcIdx = 62;
                    section.data(22).dtTransOffset = 29;

                    ;% rtDW.m40jdj23hw.LoggedData
                    section.data(23).logicalSrcIdx = 63;
                    section.data(23).dtTransOffset = 30;

                    ;% rtDW.ic1bicfjds.LoggedData
                    section.data(24).logicalSrcIdx = 64;
                    section.data(24).dtTransOffset = 33;

                    ;% rtDW.mavfjsvkc4.LoggedData
                    section.data(25).logicalSrcIdx = 65;
                    section.data(25).dtTransOffset = 34;

                    ;% rtDW.eu0zi0l1fc.LoggedData
                    section.data(26).logicalSrcIdx = 66;
                    section.data(26).dtTransOffset = 35;

                    ;% rtDW.dqhhlplnv4.LoggedData
                    section.data(27).logicalSrcIdx = 67;
                    section.data(27).dtTransOffset = 39;

                    ;% rtDW.oybvplxg1a.LoggedData
                    section.data(28).logicalSrcIdx = 68;
                    section.data(28).dtTransOffset = 42;

                    ;% rtDW.mjwpkovidm
                    section.data(29).logicalSrcIdx = 69;
                    section.data(29).dtTransOffset = 46;

                    ;% rtDW.boov5bbzyl
                    section.data(30).logicalSrcIdx = 70;
                    section.data(30).dtTransOffset = 48;

                    ;% rtDW.cjsjm0jmdg
                    section.data(31).logicalSrcIdx = 71;
                    section.data(31).dtTransOffset = 50;

                    ;% rtDW.hyzbgozeus
                    section.data(32).logicalSrcIdx = 72;
                    section.data(32).dtTransOffset = 52;

                    ;% rtDW.bj5vr5bigv
                    section.data(33).logicalSrcIdx = 73;
                    section.data(33).dtTransOffset = 58;

                    ;% rtDW.bbzy5mnal0
                    section.data(34).logicalSrcIdx = 74;
                    section.data(34).dtTransOffset = 59;

                    ;% rtDW.fxnp2q4c1e
                    section.data(35).logicalSrcIdx = 75;
                    section.data(35).dtTransOffset = 60;

                    ;% rtDW.ns4izse1vz
                    section.data(36).logicalSrcIdx = 76;
                    section.data(36).dtTransOffset = 61;

                    ;% rtDW.itibi0d2pz
                    section.data(37).logicalSrcIdx = 77;
                    section.data(37).dtTransOffset = 62;

                    ;% rtDW.pkb24lsjlj
                    section.data(38).logicalSrcIdx = 78;
                    section.data(38).dtTransOffset = 63;

                    ;% rtDW.dgjfo2ase3
                    section.data(39).logicalSrcIdx = 79;
                    section.data(39).dtTransOffset = 64;

                    ;% rtDW.duelaneiva
                    section.data(40).logicalSrcIdx = 80;
                    section.data(40).dtTransOffset = 65;

                    ;% rtDW.hiyptrjx4e
                    section.data(41).logicalSrcIdx = 81;
                    section.data(41).dtTransOffset = 66;

                    ;% rtDW.pd5iodqqhq
                    section.data(42).logicalSrcIdx = 82;
                    section.data(42).dtTransOffset = 67;

                    ;% rtDW.lpijobo1li
                    section.data(43).logicalSrcIdx = 83;
                    section.data(43).dtTransOffset = 68;

                    ;% rtDW.asspmqjwrz
                    section.data(44).logicalSrcIdx = 84;
                    section.data(44).dtTransOffset = 69;

                    ;% rtDW.fdkryiohd2
                    section.data(45).logicalSrcIdx = 85;
                    section.data(45).dtTransOffset = 70;

                    ;% rtDW.gkijx5a1jg
                    section.data(46).logicalSrcIdx = 86;
                    section.data(46).dtTransOffset = 71;

                    ;% rtDW.fc3ez3wkuw
                    section.data(47).logicalSrcIdx = 87;
                    section.data(47).dtTransOffset = 72;

                    ;% rtDW.ndxq1um0wb.LoggedData
                    section.data(48).logicalSrcIdx = 88;
                    section.data(48).dtTransOffset = 73;

                    ;% rtDW.a0mw3xj1fr.LoggedData
                    section.data(49).logicalSrcIdx = 89;
                    section.data(49).dtTransOffset = 79;

                    ;% rtDW.lvvnkcalz0.LoggedData
                    section.data(50).logicalSrcIdx = 90;
                    section.data(50).dtTransOffset = 83;

                    ;% rtDW.o31rsf1enn.LoggedData
                    section.data(51).logicalSrcIdx = 91;
                    section.data(51).dtTransOffset = 84;

                    ;% rtDW.e5q3i3m4mc.LoggedData
                    section.data(52).logicalSrcIdx = 92;
                    section.data(52).dtTransOffset = 88;

                    ;% rtDW.kzxoswjpka.LoggedData
                    section.data(53).logicalSrcIdx = 93;
                    section.data(53).dtTransOffset = 94;

                    ;% rtDW.jufc5wwdoo.LoggedData
                    section.data(54).logicalSrcIdx = 94;
                    section.data(54).dtTransOffset = 97;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% rtDW.onbaoth1i5
                    section.data(1).logicalSrcIdx = 95;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.dilpmc0vlt
                    section.data(2).logicalSrcIdx = 96;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.pohd0j4mdj
                    section.data(3).logicalSrcIdx = 97;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 26;
            section.data(26)  = dumData; %prealloc

                    ;% rtDW.nlxub2bocz
                    section.data(1).logicalSrcIdx = 98;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.bsk5xyz2fy
                    section.data(2).logicalSrcIdx = 99;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.pb121ze3jb
                    section.data(3).logicalSrcIdx = 100;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.enc02h0lkm
                    section.data(4).logicalSrcIdx = 101;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.jlsqg1wi3s
                    section.data(5).logicalSrcIdx = 102;
                    section.data(5).dtTransOffset = 8;

                    ;% rtDW.aslz2ocnev
                    section.data(6).logicalSrcIdx = 103;
                    section.data(6).dtTransOffset = 13;

                    ;% rtDW.ilsoenshkb
                    section.data(7).logicalSrcIdx = 104;
                    section.data(7).dtTransOffset = 18;

                    ;% rtDW.aybterglkg
                    section.data(8).logicalSrcIdx = 105;
                    section.data(8).dtTransOffset = 23;

                    ;% rtDW.hluwayc3l5
                    section.data(9).logicalSrcIdx = 106;
                    section.data(9).dtTransOffset = 36;

                    ;% rtDW.lubhts53dp
                    section.data(10).logicalSrcIdx = 107;
                    section.data(10).dtTransOffset = 37;

                    ;% rtDW.pvtwjlxhcp
                    section.data(11).logicalSrcIdx = 108;
                    section.data(11).dtTransOffset = 38;

                    ;% rtDW.ko1hgotxic
                    section.data(12).logicalSrcIdx = 109;
                    section.data(12).dtTransOffset = 39;

                    ;% rtDW.i24admzawh
                    section.data(13).logicalSrcIdx = 110;
                    section.data(13).dtTransOffset = 40;

                    ;% rtDW.ifjwhhjlra
                    section.data(14).logicalSrcIdx = 111;
                    section.data(14).dtTransOffset = 41;

                    ;% rtDW.a3qknsstrj
                    section.data(15).logicalSrcIdx = 112;
                    section.data(15).dtTransOffset = 42;

                    ;% rtDW.kbaaotjgsl
                    section.data(16).logicalSrcIdx = 113;
                    section.data(16).dtTransOffset = 43;

                    ;% rtDW.pkplal1ah0
                    section.data(17).logicalSrcIdx = 114;
                    section.data(17).dtTransOffset = 44;

                    ;% rtDW.l3ypxvyy3r
                    section.data(18).logicalSrcIdx = 115;
                    section.data(18).dtTransOffset = 45;

                    ;% rtDW.mevd5gffsh
                    section.data(19).logicalSrcIdx = 116;
                    section.data(19).dtTransOffset = 46;

                    ;% rtDW.a3cbux4ehj
                    section.data(20).logicalSrcIdx = 117;
                    section.data(20).dtTransOffset = 47;

                    ;% rtDW.durcpnqh0b
                    section.data(21).logicalSrcIdx = 118;
                    section.data(21).dtTransOffset = 48;

                    ;% rtDW.ewppjkklvg
                    section.data(22).logicalSrcIdx = 119;
                    section.data(22).dtTransOffset = 49;

                    ;% rtDW.ib2cxgy3zk
                    section.data(23).logicalSrcIdx = 120;
                    section.data(23).dtTransOffset = 50;

                    ;% rtDW.nsqm303pyi
                    section.data(24).logicalSrcIdx = 121;
                    section.data(24).dtTransOffset = 51;

                    ;% rtDW.feav4bxhxv
                    section.data(25).logicalSrcIdx = 122;
                    section.data(25).dtTransOffset = 52;

                    ;% rtDW.inhqwurjiv
                    section.data(26).logicalSrcIdx = 123;
                    section.data(26).dtTransOffset = 53;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.ohklipqz2o
                    section.data(1).logicalSrcIdx = 124;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% rtDW.dzjyg0fd1v
                    section.data(1).logicalSrcIdx = 125;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.dr23szxxuk
                    section.data(2).logicalSrcIdx = 126;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.bv1c3gmqj2
                    section.data(3).logicalSrcIdx = 127;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.lzogzgyfis
                    section.data(4).logicalSrcIdx = 128;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.ldzj3w1yoj
                    section.data(5).logicalSrcIdx = 129;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.kwpwfm2nde
                    section.data(6).logicalSrcIdx = 130;
                    section.data(6).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 12;
            section.data(12)  = dumData; %prealloc

                    ;% rtDW.ax5d3atq5l
                    section.data(1).logicalSrcIdx = 131;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.kfrw2qmxrh
                    section.data(2).logicalSrcIdx = 132;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.iua0vtyf43
                    section.data(3).logicalSrcIdx = 133;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.oacoagyug5
                    section.data(4).logicalSrcIdx = 134;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.ihgmhwug4a
                    section.data(5).logicalSrcIdx = 135;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.k1xhqzub4q
                    section.data(6).logicalSrcIdx = 136;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.a5v3s0nybm
                    section.data(7).logicalSrcIdx = 137;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.g3qcouey4v
                    section.data(8).logicalSrcIdx = 138;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.ioju1mlu5t
                    section.data(9).logicalSrcIdx = 139;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.psersj2g2s
                    section.data(10).logicalSrcIdx = 140;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.dsfvdb5bfz
                    section.data(11).logicalSrcIdx = 141;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.kwxwo03un0
                    section.data(12).logicalSrcIdx = 142;
                    section.data(12).dtTransOffset = 11;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
            clear section

            section.nData     = 26;
            section.data(26)  = dumData; %prealloc

                    ;% rtDW.ldoy1brot0
                    section.data(1).logicalSrcIdx = 143;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ltxljxctq2
                    section.data(2).logicalSrcIdx = 144;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.aag2x0zbo5
                    section.data(3).logicalSrcIdx = 145;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.our24h0obe
                    section.data(4).logicalSrcIdx = 146;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.ilyxa1mikz
                    section.data(5).logicalSrcIdx = 147;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.ej44o1jr3m
                    section.data(6).logicalSrcIdx = 148;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.pdawr2zj2a
                    section.data(7).logicalSrcIdx = 149;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.i2vake1evn
                    section.data(8).logicalSrcIdx = 150;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.irjhrxjolm
                    section.data(9).logicalSrcIdx = 151;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.ixhnynfygw
                    section.data(10).logicalSrcIdx = 152;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.cr4b4ownah
                    section.data(11).logicalSrcIdx = 153;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.nymxlbr1p2
                    section.data(12).logicalSrcIdx = 154;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.pif2ajzyk2
                    section.data(13).logicalSrcIdx = 155;
                    section.data(13).dtTransOffset = 12;

                    ;% rtDW.mn2csmgrie
                    section.data(14).logicalSrcIdx = 156;
                    section.data(14).dtTransOffset = 13;

                    ;% rtDW.l2bicmuxz1
                    section.data(15).logicalSrcIdx = 157;
                    section.data(15).dtTransOffset = 14;

                    ;% rtDW.isrcx1xmai
                    section.data(16).logicalSrcIdx = 158;
                    section.data(16).dtTransOffset = 15;

                    ;% rtDW.h25yfvk5sq
                    section.data(17).logicalSrcIdx = 159;
                    section.data(17).dtTransOffset = 16;

                    ;% rtDW.l40u5esajc
                    section.data(18).logicalSrcIdx = 160;
                    section.data(18).dtTransOffset = 17;

                    ;% rtDW.ed5ammlp0r
                    section.data(19).logicalSrcIdx = 161;
                    section.data(19).dtTransOffset = 18;

                    ;% rtDW.jlz2vk0mn2
                    section.data(20).logicalSrcIdx = 162;
                    section.data(20).dtTransOffset = 19;

                    ;% rtDW.ews55sxp3l
                    section.data(21).logicalSrcIdx = 163;
                    section.data(21).dtTransOffset = 20;

                    ;% rtDW.gpwyug4vv4
                    section.data(22).logicalSrcIdx = 164;
                    section.data(22).dtTransOffset = 21;

                    ;% rtDW.hrh4rjn2mp
                    section.data(23).logicalSrcIdx = 165;
                    section.data(23).dtTransOffset = 22;

                    ;% rtDW.hcvfq4zzqb
                    section.data(24).logicalSrcIdx = 166;
                    section.data(24).dtTransOffset = 23;

                    ;% rtDW.nseda40oze
                    section.data(25).logicalSrcIdx = 167;
                    section.data(25).dtTransOffset = 24;

                    ;% rtDW.ccft5v3xux
                    section.data(26).logicalSrcIdx = 168;
                    section.data(26).dtTransOffset = 25;

            nTotData = nTotData + section.nData;
            dworkMap.sections(8) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.oicpqfoumb.ejurx0a1nn
                    section.data(1).logicalSrcIdx = 169;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(9) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.lykvoxa5oj.anoxqeev0m
                    section.data(1).logicalSrcIdx = 170;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(10) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.bs1lyechiq.ejurx0a1nn
                    section.data(1).logicalSrcIdx = 171;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(11) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.jm1szxhn3j.anoxqeev0m
                    section.data(1).logicalSrcIdx = 172;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(12) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.bh2lhy5mc2.ejurx0a1nn
                    section.data(1).logicalSrcIdx = 173;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(13) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.dj3tel0mec.anoxqeev0m
                    section.data(1).logicalSrcIdx = 174;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(14) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.en1etzgb25t.ejurx0a1nn
                    section.data(1).logicalSrcIdx = 175;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(15) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.hdua2qktjg2.anoxqeev0m
                    section.data(1).logicalSrcIdx = 176;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(16) = section;
            clear section


            ;%
            ;% Non-auto Data (dwork)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        dworkMap.nTotData = nTotData;



    ;%
    ;% Add individual maps to base struct.
    ;%

    targMap.paramMap  = paramMap;
    targMap.signalMap = sigMap;
    targMap.dworkMap  = dworkMap;

    ;%
    ;% Add checksums to base struct.
    ;%


    targMap.checksum0 = 2803176483;
    targMap.checksum1 = 3690762986;
    targMap.checksum2 = 546253498;
    targMap.checksum3 = 398313263;

