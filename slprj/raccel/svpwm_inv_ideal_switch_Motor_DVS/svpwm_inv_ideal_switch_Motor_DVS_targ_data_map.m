    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 8;
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
            section.nData     = 190;
            section.data(190)  = dumData; %prealloc

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

                    ;% rtP.Carriercounter_CarrCount
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.Carriercounter_CarrCount_l1cfgyteuy
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Carriercounter_CarrCount_pcpzckqge2
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.PIDController_I
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.PIDController2_I
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.PIDController3_InitialConditionForIntegrator
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.PIDController4_InitialConditionForIntegrator
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.PIDController_InitialConditionForIntegrator
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.PIDController2_InitialConditionForIntegrator
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.Ramp2_InitialOutput
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.Ramp_InitialOutput
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.PIDController_LowerSaturationLimit
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.PIDController_P
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.PIDController2_P
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.Carriercounter_Range
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 21;

                    ;% rtP.Carriercounter_Range_fbb5yen5s5
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 22;

                    ;% rtP.Carriercounter_Range_iry5nbrdqx
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 23;

                    ;% rtP.RMS_TrueRMS
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 24;

                    ;% rtP.RMS1_TrueRMS
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 25;

                    ;% rtP.PIDController_UpperSaturationLimit
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 26;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 27;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 28;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue_gmxko0ufcx
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 29;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue_ppty12eo1o
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 30;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue_czzrcv1xs0
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 31;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue_cznn0srx2d
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 32;

                    ;% rtP.Ramp_slope
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 33;

                    ;% rtP.Ramp2_slope
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 34;

                    ;% rtP.Ramp_start
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 35;

                    ;% rtP.Ramp2_start
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 36;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 37;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0_jmi4gwmvri
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 38;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0_cmhchouter
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 39;

                    ;% rtP.Gain_Gain
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 40;

                    ;% rtP.Gain_Gain_djxhftize0
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 41;

                    ;% rtP.Gain_Gain_ifj1132abx
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 42;

                    ;% rtP.Gain_Gain_punknji3it
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 43;

                    ;% rtP.Gain_Gain_j2qfegrfnm
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 44;

                    ;% rtP.Gain_Gain_lnud520pox
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 45;

                    ;% rtP.one_by_3_Gain
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 46;

                    ;% rtP.one_by_sqrt3_Gain
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 47;

                    ;% rtP.Kalphabeta0_Gain
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 48;

                    ;% rtP.sine_table_values_Value
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 51;

                    ;% rtP.convert_pu_Gain
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 1053;

                    ;% rtP.indexing_Gain
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 1054;

                    ;% rtP.Gain_Gain_nb14jbfzwo
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 1055;

                    ;% rtP.Integrator_gainval
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 1056;

                    ;% rtP.Gain5_Gain
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 1057;

                    ;% rtP.Gain5_Gain_ityqyfpnsc
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 1058;

                    ;% rtP.Gain_Gain_liagklf45c
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 1059;

                    ;% rtP.Saturation_UpperSat
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 1060;

                    ;% rtP.Saturation_LowerSat
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 1061;

                    ;% rtP.Integrator_gainval_knsztftnss
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 1062;

                    ;% rtP.sine_table_values_Value_a3bovsahiy
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 1063;

                    ;% rtP.Gain7_Gain
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 2065;

                    ;% rtP.convert_pu_Gain_pd3tvpp05x
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 2066;

                    ;% rtP.indexing_Gain_f4hf3xgt40
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 2067;

                    ;% rtP.Constant_Value
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 2068;

                    ;% rtP.Clamping_zero_Value
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 2069;

                    ;% rtP.Constant1_Value
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 2070;

                    ;% rtP.Clamping_zero_Value_dzbkr5nj33
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 2071;

                    ;% rtP.Constant1_Value_heb03z0qwi
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 2072;

                    ;% rtP.Constant_Value_amqem3vix4
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 2073;

                    ;% rtP.Constant1_Value_plzth135fi
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 2074;

                    ;% rtP.Constant_Value_d51pvnudts
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 2075;

                    ;% rtP.Constant_Value_aedbii5zo1
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 2076;

                    ;% rtP.Constant_Value_otslvflthu
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 2077;

                    ;% rtP.Constant_Value_aidlcpdktu
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 2078;

                    ;% rtP.Constant_Value_naavg1wwyy
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 2079;

                    ;% rtP.Constant1_Value_kzv5mijxnd
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 2080;

                    ;% rtP.Step_Y0
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 2081;

                    ;% rtP.Saturation2_UpperSat
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 2082;

                    ;% rtP.Saturation2_LowerSat
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 2083;

                    ;% rtP.UnitDelay2_InitialCondition
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 2084;

                    ;% rtP.Integrator_gainval_mrdvyychkv
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 2085;

                    ;% rtP.Constant2_Value
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 2086;

                    ;% rtP.Integrator_gainval_c0fk5uxyeb
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 2087;

                    ;% rtP.Constant2_Value_mcxfir2knc
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 2088;

                    ;% rtP.Saturation_UpperSat_g2zpvvxvhz
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 2089;

                    ;% rtP.Saturation_LowerSat_mmnoh5s0jp
                    section.data(87).logicalSrcIdx = 86;
                    section.data(87).dtTransOffset = 2090;

                    ;% rtP.Integrator_gainval_b2tc3y3sp3
                    section.data(88).logicalSrcIdx = 87;
                    section.data(88).dtTransOffset = 2091;

                    ;% rtP.Constant2_Value_pu52vdaelf
                    section.data(89).logicalSrcIdx = 88;
                    section.data(89).dtTransOffset = 2092;

                    ;% rtP.Integrator_gainval_ginifr2xlq
                    section.data(90).logicalSrcIdx = 89;
                    section.data(90).dtTransOffset = 2093;

                    ;% rtP.Constant2_Value_fomuzpjuar
                    section.data(91).logicalSrcIdx = 90;
                    section.data(91).dtTransOffset = 2094;

                    ;% rtP.Saturation_UpperSat_j5u4qljnv5
                    section.data(92).logicalSrcIdx = 91;
                    section.data(92).dtTransOffset = 2095;

                    ;% rtP.Saturation_LowerSat_em3rmibbhe
                    section.data(93).logicalSrcIdx = 92;
                    section.data(93).dtTransOffset = 2096;

                    ;% rtP.Integrator_gainval_clmxe4wonv
                    section.data(94).logicalSrcIdx = 93;
                    section.data(94).dtTransOffset = 2097;

                    ;% rtP.Constant2_Value_gkaf0w0kw1
                    section.data(95).logicalSrcIdx = 94;
                    section.data(95).dtTransOffset = 2098;

                    ;% rtP.Integrator_gainval_lsanfb5e3f
                    section.data(96).logicalSrcIdx = 95;
                    section.data(96).dtTransOffset = 2099;

                    ;% rtP.Constant2_Value_pweuhgyjqa
                    section.data(97).logicalSrcIdx = 96;
                    section.data(97).dtTransOffset = 2100;

                    ;% rtP.Saturation_UpperSat_c1q2ftmtjs
                    section.data(98).logicalSrcIdx = 97;
                    section.data(98).dtTransOffset = 2101;

                    ;% rtP.Saturation_LowerSat_jkunmti0xg
                    section.data(99).logicalSrcIdx = 98;
                    section.data(99).dtTransOffset = 2102;

                    ;% rtP.Bias2_Bias
                    section.data(100).logicalSrcIdx = 99;
                    section.data(100).dtTransOffset = 2103;

                    ;% rtP.Bias_Bias
                    section.data(101).logicalSrcIdx = 100;
                    section.data(101).dtTransOffset = 2104;

                    ;% rtP.Bias1_Bias
                    section.data(102).logicalSrcIdx = 101;
                    section.data(102).dtTransOffset = 2105;

                    ;% rtP.Saturation5_UpperSat
                    section.data(103).logicalSrcIdx = 102;
                    section.data(103).dtTransOffset = 2106;

                    ;% rtP.Saturation5_LowerSat
                    section.data(104).logicalSrcIdx = 103;
                    section.data(104).dtTransOffset = 2107;

                    ;% rtP.UnitDelay_InitialCondition
                    section.data(105).logicalSrcIdx = 104;
                    section.data(105).dtTransOffset = 2108;

                    ;% rtP.Integrator_gainval_dhnaqjdnlv
                    section.data(106).logicalSrcIdx = 105;
                    section.data(106).dtTransOffset = 2109;

                    ;% rtP.Saturation1_UpperSat
                    section.data(107).logicalSrcIdx = 106;
                    section.data(107).dtTransOffset = 2110;

                    ;% rtP.Saturation1_LowerSat
                    section.data(108).logicalSrcIdx = 107;
                    section.data(108).dtTransOffset = 2111;

                    ;% rtP.Gain7_Gain_nvzv4otdtq
                    section.data(109).logicalSrcIdx = 108;
                    section.data(109).dtTransOffset = 2112;

                    ;% rtP.UnitDelay1_InitialCondition
                    section.data(110).logicalSrcIdx = 109;
                    section.data(110).dtTransOffset = 2113;

                    ;% rtP.Saturation_UpperSat_jtqyrsjebw
                    section.data(111).logicalSrcIdx = 110;
                    section.data(111).dtTransOffset = 2114;

                    ;% rtP.Saturation_LowerSat_niuqztsdpt
                    section.data(112).logicalSrcIdx = 111;
                    section.data(112).dtTransOffset = 2115;

                    ;% rtP.Step_Y0_n1ghy4ife5
                    section.data(113).logicalSrcIdx = 112;
                    section.data(113).dtTransOffset = 2116;

                    ;% rtP.Saturation4_UpperSat
                    section.data(114).logicalSrcIdx = 113;
                    section.data(114).dtTransOffset = 2117;

                    ;% rtP.Saturation4_LowerSat
                    section.data(115).logicalSrcIdx = 114;
                    section.data(115).dtTransOffset = 2118;

                    ;% rtP.TransferFcn_A
                    section.data(116).logicalSrcIdx = 115;
                    section.data(116).dtTransOffset = 2119;

                    ;% rtP.TransferFcn_C
                    section.data(117).logicalSrcIdx = 116;
                    section.data(117).dtTransOffset = 2120;

                    ;% rtP.Integrator_gainval_kcogqwyqqm
                    section.data(118).logicalSrcIdx = 117;
                    section.data(118).dtTransOffset = 2121;

                    ;% rtP.Gain_Gain_pm4qz0kgbm
                    section.data(119).logicalSrcIdx = 118;
                    section.data(119).dtTransOffset = 2122;

                    ;% rtP.Step_Time
                    section.data(120).logicalSrcIdx = 119;
                    section.data(120).dtTransOffset = 2123;

                    ;% rtP.Step_Y0_fkn1ochaqa
                    section.data(121).logicalSrcIdx = 120;
                    section.data(121).dtTransOffset = 2124;

                    ;% rtP.Step_YFinal
                    section.data(122).logicalSrcIdx = 121;
                    section.data(122).dtTransOffset = 2125;

                    ;% rtP.integrator_IC
                    section.data(123).logicalSrcIdx = 122;
                    section.data(123).dtTransOffset = 2126;

                    ;% rtP.TransportDelay_Delay
                    section.data(124).logicalSrcIdx = 123;
                    section.data(124).dtTransOffset = 2127;

                    ;% rtP.TransportDelay_InitOutput
                    section.data(125).logicalSrcIdx = 124;
                    section.data(125).dtTransOffset = 2128;

                    ;% rtP.K1_Value
                    section.data(126).logicalSrcIdx = 125;
                    section.data(126).dtTransOffset = 2129;

                    ;% rtP.Memory_InitialCondition
                    section.data(127).logicalSrcIdx = 126;
                    section.data(127).dtTransOffset = 2130;

                    ;% rtP.Switch_Threshold
                    section.data(128).logicalSrcIdx = 127;
                    section.data(128).dtTransOffset = 2131;

                    ;% rtP.Gain_Gain_nximn4s4ry
                    section.data(129).logicalSrcIdx = 128;
                    section.data(129).dtTransOffset = 2132;

                    ;% rtP.one_by_3_Gain_lq50khpwgl
                    section.data(130).logicalSrcIdx = 129;
                    section.data(130).dtTransOffset = 2133;

                    ;% rtP.one_by_sqrt3_Gain_bbbfyvtmfv
                    section.data(131).logicalSrcIdx = 130;
                    section.data(131).dtTransOffset = 2134;

                    ;% rtP.Kalphabeta0_Gain_pvcgmqyz1g
                    section.data(132).logicalSrcIdx = 131;
                    section.data(132).dtTransOffset = 2135;

                    ;% rtP.sine_table_values_Value_ph5vfaxqmh
                    section.data(133).logicalSrcIdx = 132;
                    section.data(133).dtTransOffset = 2138;

                    ;% rtP.convert_pu_Gain_flpdghdw0l
                    section.data(134).logicalSrcIdx = 133;
                    section.data(134).dtTransOffset = 3140;

                    ;% rtP.indexing_Gain_d4wzw4thi3
                    section.data(135).logicalSrcIdx = 134;
                    section.data(135).dtTransOffset = 3141;

                    ;% rtP.one_by_3_Gain_dy5n1llkjm
                    section.data(136).logicalSrcIdx = 135;
                    section.data(136).dtTransOffset = 3142;

                    ;% rtP.one_by_sqrt3_Gain_ot11yk20jv
                    section.data(137).logicalSrcIdx = 136;
                    section.data(137).dtTransOffset = 3143;

                    ;% rtP.Kalphabeta0_Gain_b1jcwqkjuu
                    section.data(138).logicalSrcIdx = 137;
                    section.data(138).dtTransOffset = 3144;

                    ;% rtP.sine_table_values_Value_pz4e1lr51y
                    section.data(139).logicalSrcIdx = 138;
                    section.data(139).dtTransOffset = 3147;

                    ;% rtP.convert_pu_Gain_ocuvhlhykv
                    section.data(140).logicalSrcIdx = 139;
                    section.data(140).dtTransOffset = 4149;

                    ;% rtP.indexing_Gain_jnauyr3dqe
                    section.data(141).logicalSrcIdx = 140;
                    section.data(141).dtTransOffset = 4150;

                    ;% rtP.integrator_IC_o5k0p0omuk
                    section.data(142).logicalSrcIdx = 141;
                    section.data(142).dtTransOffset = 4151;

                    ;% rtP.TransportDelay_Delay_khxusi3syg
                    section.data(143).logicalSrcIdx = 142;
                    section.data(143).dtTransOffset = 4152;

                    ;% rtP.TransportDelay_InitOutput_fcurpnfims
                    section.data(144).logicalSrcIdx = 143;
                    section.data(144).dtTransOffset = 4153;

                    ;% rtP.K1_Value_p2yed5qh2t
                    section.data(145).logicalSrcIdx = 144;
                    section.data(145).dtTransOffset = 4154;

                    ;% rtP.Memory_InitialCondition_moqgj1emy3
                    section.data(146).logicalSrcIdx = 145;
                    section.data(146).dtTransOffset = 4155;

                    ;% rtP.integrator_IC_nx1ywgu3yd
                    section.data(147).logicalSrcIdx = 146;
                    section.data(147).dtTransOffset = 4156;

                    ;% rtP.TransportDelay_Delay_ofg0lwkz05
                    section.data(148).logicalSrcIdx = 147;
                    section.data(148).dtTransOffset = 4157;

                    ;% rtP.TransportDelay_InitOutput_hpctjm5rzm
                    section.data(149).logicalSrcIdx = 148;
                    section.data(149).dtTransOffset = 4158;

                    ;% rtP.K1_Value_ful2v3oltv
                    section.data(150).logicalSrcIdx = 149;
                    section.data(150).dtTransOffset = 4159;

                    ;% rtP.Memory_InitialCondition_hff0nofxg3
                    section.data(151).logicalSrcIdx = 150;
                    section.data(151).dtTransOffset = 4160;

                    ;% rtP.integrator_IC_i0o4ll0jcd
                    section.data(152).logicalSrcIdx = 151;
                    section.data(152).dtTransOffset = 4161;

                    ;% rtP.TransportDelay_Delay_gievexvnzj
                    section.data(153).logicalSrcIdx = 152;
                    section.data(153).dtTransOffset = 4162;

                    ;% rtP.TransportDelay_InitOutput_balur43s2o
                    section.data(154).logicalSrcIdx = 153;
                    section.data(154).dtTransOffset = 4163;

                    ;% rtP.K1_Value_gff0kfd14l
                    section.data(155).logicalSrcIdx = 154;
                    section.data(155).dtTransOffset = 4164;

                    ;% rtP.Memory_InitialCondition_mu0u35defg
                    section.data(156).logicalSrcIdx = 155;
                    section.data(156).dtTransOffset = 4165;

                    ;% rtP.integrator_IC_droafotp5y
                    section.data(157).logicalSrcIdx = 156;
                    section.data(157).dtTransOffset = 4166;

                    ;% rtP.TransportDelay_Delay_gfwbehe5ez
                    section.data(158).logicalSrcIdx = 157;
                    section.data(158).dtTransOffset = 4167;

                    ;% rtP.TransportDelay_InitOutput_n232vm3mqw
                    section.data(159).logicalSrcIdx = 158;
                    section.data(159).dtTransOffset = 4168;

                    ;% rtP.K1_Value_bwyabfwh1v
                    section.data(160).logicalSrcIdx = 159;
                    section.data(160).dtTransOffset = 4169;

                    ;% rtP.Memory_InitialCondition_l1hfk5anpl
                    section.data(161).logicalSrcIdx = 160;
                    section.data(161).dtTransOffset = 4170;

                    ;% rtP.Bias_Bias_pazrq3uvdz
                    section.data(162).logicalSrcIdx = 161;
                    section.data(162).dtTransOffset = 4171;

                    ;% rtP.Integrator_IC
                    section.data(163).logicalSrcIdx = 162;
                    section.data(163).dtTransOffset = 4172;

                    ;% rtP.Gain2_Gain
                    section.data(164).logicalSrcIdx = 163;
                    section.data(164).dtTransOffset = 4173;

                    ;% rtP.Constant3_Value
                    section.data(165).logicalSrcIdx = 164;
                    section.data(165).dtTransOffset = 4174;

                    ;% rtP.Constant3_Value_j4b4zpsigk
                    section.data(166).logicalSrcIdx = 165;
                    section.data(166).dtTransOffset = 4175;

                    ;% rtP.Constant3_Value_ltnm24yy5d
                    section.data(167).logicalSrcIdx = 166;
                    section.data(167).dtTransOffset = 4176;

                    ;% rtP.Saturation3_UpperSat
                    section.data(168).logicalSrcIdx = 167;
                    section.data(168).dtTransOffset = 4177;

                    ;% rtP.Saturation3_LowerSat
                    section.data(169).logicalSrcIdx = 168;
                    section.data(169).dtTransOffset = 4178;

                    ;% rtP.integrator_IC_cewwxj2gip
                    section.data(170).logicalSrcIdx = 169;
                    section.data(170).dtTransOffset = 4179;

                    ;% rtP.TransportDelay_Delay_nsr41clxsc
                    section.data(171).logicalSrcIdx = 170;
                    section.data(171).dtTransOffset = 4180;

                    ;% rtP.TransportDelay_InitOutput_n24jgiss12
                    section.data(172).logicalSrcIdx = 171;
                    section.data(172).dtTransOffset = 4181;

                    ;% rtP.K1_Value_h5aqg4redb
                    section.data(173).logicalSrcIdx = 172;
                    section.data(173).dtTransOffset = 4182;

                    ;% rtP.Memory_InitialCondition_ecfbyrmftp
                    section.data(174).logicalSrcIdx = 173;
                    section.data(174).dtTransOffset = 4183;

                    ;% rtP.Constant_Value_kxfziju4tw
                    section.data(175).logicalSrcIdx = 174;
                    section.data(175).dtTransOffset = 4184;

                    ;% rtP.Constant1_Value_ah5g1obm1c
                    section.data(176).logicalSrcIdx = 175;
                    section.data(176).dtTransOffset = 4185;

                    ;% rtP.Constant10_Value
                    section.data(177).logicalSrcIdx = 176;
                    section.data(177).dtTransOffset = 4186;

                    ;% rtP.Constant11_Value
                    section.data(178).logicalSrcIdx = 177;
                    section.data(178).dtTransOffset = 4187;

                    ;% rtP.Constant5_Value
                    section.data(179).logicalSrcIdx = 178;
                    section.data(179).dtTransOffset = 4188;

                    ;% rtP.Constant7_Value
                    section.data(180).logicalSrcIdx = 179;
                    section.data(180).dtTransOffset = 4189;

                    ;% rtP.UqLim_Value
                    section.data(181).logicalSrcIdx = 180;
                    section.data(181).dtTransOffset = 4190;

                    ;% rtP.Constant_Value_fke3pdcioo
                    section.data(182).logicalSrcIdx = 181;
                    section.data(182).dtTransOffset = 4191;

                    ;% rtP.Clamping_zero_Value_bhl50gjfmv
                    section.data(183).logicalSrcIdx = 182;
                    section.data(183).dtTransOffset = 4192;

                    ;% rtP.Clamping_zero_Value_editfihzwr
                    section.data(184).logicalSrcIdx = 183;
                    section.data(184).dtTransOffset = 4193;

                    ;% rtP.RTP_0BF8E32F_angular_position_Value
                    section.data(185).logicalSrcIdx = 184;
                    section.data(185).dtTransOffset = 4194;

                    ;% rtP.RTP_0BF8E32F_angular_velocity_Value
                    section.data(186).logicalSrcIdx = 185;
                    section.data(186).dtTransOffset = 4195;

                    ;% rtP.RTP_0BF8E32F_i_d_Value
                    section.data(187).logicalSrcIdx = 186;
                    section.data(187).dtTransOffset = 4196;

                    ;% rtP.RTP_0BF8E32F_i_q_Value
                    section.data(188).logicalSrcIdx = 187;
                    section.data(188).dtTransOffset = 4197;

                    ;% rtP.RTP_0BF8E32F_torque_Value
                    section.data(189).logicalSrcIdx = 188;
                    section.data(189).dtTransOffset = 4198;

                    ;% rtP.RTP_12AF5A6E_vc_Value
                    section.data(190).logicalSrcIdx = 189;
                    section.data(190).dtTransOffset = 4199;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtP.offset_Value
                    section.data(1).logicalSrcIdx = 190;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.offset_Value_cuuhtbq0gv
                    section.data(2).logicalSrcIdx = 191;
                    section.data(2).dtTransOffset = 4;

                    ;% rtP.offset_Value_mwsc4qa1fy
                    section.data(3).logicalSrcIdx = 192;
                    section.data(3).dtTransOffset = 8;

                    ;% rtP.offset_Value_mdzj24mdnx
                    section.data(4).logicalSrcIdx = 193;
                    section.data(4).dtTransOffset = 12;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 8;
            section.data(8)  = dumData; %prealloc

                    ;% rtP.Offset_Value
                    section.data(1).logicalSrcIdx = 194;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Switch_Threshold_jxr2cmuqwa
                    section.data(2).logicalSrcIdx = 195;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Offset_Value_ekf4xacrxj
                    section.data(3).logicalSrcIdx = 196;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Switch_Threshold_nxmpevclsq
                    section.data(4).logicalSrcIdx = 197;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Offset_Value_jgu0pcvj3b
                    section.data(5).logicalSrcIdx = 198;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Switch_Threshold_apekzvb1le
                    section.data(6).logicalSrcIdx = 199;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Offset_Value_fboskqo1ag
                    section.data(7).logicalSrcIdx = 200;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Switch_Threshold_owcqsnmcfg
                    section.data(8).logicalSrcIdx = 201;
                    section.data(8).dtTransOffset = 7;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 16;
            section.data(16)  = dumData; %prealloc

                    ;% rtP.Constant_Value_c2e1y2gzc3
                    section.data(1).logicalSrcIdx = 202;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Constant2_Value_drbxu45em3
                    section.data(2).logicalSrcIdx = 203;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Constant3_Value_lutrgydyga
                    section.data(3).logicalSrcIdx = 204;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Constant4_Value
                    section.data(4).logicalSrcIdx = 205;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Constant_Value_f5v4rjr542
                    section.data(5).logicalSrcIdx = 206;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Constant2_Value_fpcgfo0hw0
                    section.data(6).logicalSrcIdx = 207;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Constant3_Value_bjlbtqusro
                    section.data(7).logicalSrcIdx = 208;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Constant4_Value_jnji3qyt13
                    section.data(8).logicalSrcIdx = 209;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.Constant_Value_dkhphikhxn
                    section.data(9).logicalSrcIdx = 210;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Constant2_Value_chfiiyl2xo
                    section.data(10).logicalSrcIdx = 211;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.Constant3_Value_ckuyfoczpd
                    section.data(11).logicalSrcIdx = 212;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.Constant4_Value_d5cs5fwkek
                    section.data(12).logicalSrcIdx = 213;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.Constant_Value_ljwvnj1h33
                    section.data(13).logicalSrcIdx = 214;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.Constant2_Value_pr0foizd4c
                    section.data(14).logicalSrcIdx = 215;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.Constant3_Value_j5j0j3jbky
                    section.data(15).logicalSrcIdx = 216;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.Constant4_Value_jrpwj3ts4p
                    section.data(16).logicalSrcIdx = 217;
                    section.data(16).dtTransOffset = 15;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtP.gniufkjjvw.Gain_Gain
                    section.data(1).logicalSrcIdx = 218;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.gniufkjjvw.RMS_Y0
                    section.data(2).logicalSrcIdx = 219;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.gniufkjjvw.integrator_IC
                    section.data(3).logicalSrcIdx = 220;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.gniufkjjvw.TransportDelay_Delay
                    section.data(4).logicalSrcIdx = 221;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.gniufkjjvw.TransportDelay_InitOutput
                    section.data(5).logicalSrcIdx = 222;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.gniufkjjvw.K1_Value
                    section.data(6).logicalSrcIdx = 223;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.gniufkjjvw.Memory_InitialCondition
                    section.data(7).logicalSrcIdx = 224;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.gniufkjjvw.Saturationtoavoidnegativesqrt_UpperSat
                    section.data(8).logicalSrcIdx = 225;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.gniufkjjvw.Saturationtoavoidnegativesqrt_LowerSat
                    section.data(9).logicalSrcIdx = 226;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            paramMap.sections(5) = section;
            clear section

            section.nData     = 22;
            section.data(22)  = dumData; %prealloc

                    ;% rtP.p2ivnqp1am.Gain_Gain
                    section.data(1).logicalSrcIdx = 227;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.p2ivnqp1am.Gain_Gain_lcakt0uqm5
                    section.data(2).logicalSrcIdx = 228;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.p2ivnqp1am.RMS_Y0
                    section.data(3).logicalSrcIdx = 229;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.p2ivnqp1am.integrator_IC
                    section.data(4).logicalSrcIdx = 230;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.p2ivnqp1am.TransportDelay_Delay
                    section.data(5).logicalSrcIdx = 231;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.p2ivnqp1am.TransportDelay_InitOutput
                    section.data(6).logicalSrcIdx = 232;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.p2ivnqp1am.K1_Value
                    section.data(7).logicalSrcIdx = 233;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.p2ivnqp1am.Memory_InitialCondition
                    section.data(8).logicalSrcIdx = 234;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.p2ivnqp1am.integrator_IC_kjog5ftnvn
                    section.data(9).logicalSrcIdx = 235;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.p2ivnqp1am.TransportDelay_Delay_pzcjdymxhr
                    section.data(10).logicalSrcIdx = 236;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.p2ivnqp1am.TransportDelay_InitOutput_hry3bkiyft
                    section.data(11).logicalSrcIdx = 237;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.p2ivnqp1am.K1_Value_jrn3b22hcd
                    section.data(12).logicalSrcIdx = 238;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.p2ivnqp1am.Memory_InitialCondition_ee2jw0csk4
                    section.data(13).logicalSrcIdx = 239;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.p2ivnqp1am.sinwt_Amp
                    section.data(14).logicalSrcIdx = 240;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.p2ivnqp1am.sinwt_Bias
                    section.data(15).logicalSrcIdx = 241;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.p2ivnqp1am.sinwt_Freq
                    section.data(16).logicalSrcIdx = 242;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.p2ivnqp1am.sinwt_Phase
                    section.data(17).logicalSrcIdx = 243;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.p2ivnqp1am.coswt_Amp
                    section.data(18).logicalSrcIdx = 244;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.p2ivnqp1am.coswt_Bias
                    section.data(19).logicalSrcIdx = 245;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.p2ivnqp1am.coswt_Freq
                    section.data(20).logicalSrcIdx = 246;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.p2ivnqp1am.coswt_Phase
                    section.data(21).logicalSrcIdx = 247;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.p2ivnqp1am.Gain_Gain_gqtqomfgpx
                    section.data(22).logicalSrcIdx = 248;
                    section.data(22).dtTransOffset = 21;

            nTotData = nTotData + section.nData;
            paramMap.sections(6) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtP.bnqfkp2to4b.Gain_Gain
                    section.data(1).logicalSrcIdx = 249;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.bnqfkp2to4b.RMS_Y0
                    section.data(2).logicalSrcIdx = 250;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.bnqfkp2to4b.integrator_IC
                    section.data(3).logicalSrcIdx = 251;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.bnqfkp2to4b.TransportDelay_Delay
                    section.data(4).logicalSrcIdx = 252;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.bnqfkp2to4b.TransportDelay_InitOutput
                    section.data(5).logicalSrcIdx = 253;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.bnqfkp2to4b.K1_Value
                    section.data(6).logicalSrcIdx = 254;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.bnqfkp2to4b.Memory_InitialCondition
                    section.data(7).logicalSrcIdx = 255;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.bnqfkp2to4b.Saturationtoavoidnegativesqrt_UpperSat
                    section.data(8).logicalSrcIdx = 256;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.bnqfkp2to4b.Saturationtoavoidnegativesqrt_LowerSat
                    section.data(9).logicalSrcIdx = 257;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            paramMap.sections(7) = section;
            clear section

            section.nData     = 22;
            section.data(22)  = dumData; %prealloc

                    ;% rtP.mrd0p0xbfto.Gain_Gain
                    section.data(1).logicalSrcIdx = 258;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.mrd0p0xbfto.Gain_Gain_lcakt0uqm5
                    section.data(2).logicalSrcIdx = 259;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.mrd0p0xbfto.RMS_Y0
                    section.data(3).logicalSrcIdx = 260;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.mrd0p0xbfto.integrator_IC
                    section.data(4).logicalSrcIdx = 261;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.mrd0p0xbfto.TransportDelay_Delay
                    section.data(5).logicalSrcIdx = 262;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.mrd0p0xbfto.TransportDelay_InitOutput
                    section.data(6).logicalSrcIdx = 263;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.mrd0p0xbfto.K1_Value
                    section.data(7).logicalSrcIdx = 264;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.mrd0p0xbfto.Memory_InitialCondition
                    section.data(8).logicalSrcIdx = 265;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.mrd0p0xbfto.integrator_IC_kjog5ftnvn
                    section.data(9).logicalSrcIdx = 266;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.mrd0p0xbfto.TransportDelay_Delay_pzcjdymxhr
                    section.data(10).logicalSrcIdx = 267;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.mrd0p0xbfto.TransportDelay_InitOutput_hry3bkiyft
                    section.data(11).logicalSrcIdx = 268;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.mrd0p0xbfto.K1_Value_jrn3b22hcd
                    section.data(12).logicalSrcIdx = 269;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.mrd0p0xbfto.Memory_InitialCondition_ee2jw0csk4
                    section.data(13).logicalSrcIdx = 270;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.mrd0p0xbfto.sinwt_Amp
                    section.data(14).logicalSrcIdx = 271;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.mrd0p0xbfto.sinwt_Bias
                    section.data(15).logicalSrcIdx = 272;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.mrd0p0xbfto.sinwt_Freq
                    section.data(16).logicalSrcIdx = 273;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.mrd0p0xbfto.sinwt_Phase
                    section.data(17).logicalSrcIdx = 274;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.mrd0p0xbfto.coswt_Amp
                    section.data(18).logicalSrcIdx = 275;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.mrd0p0xbfto.coswt_Bias
                    section.data(19).logicalSrcIdx = 276;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.mrd0p0xbfto.coswt_Freq
                    section.data(20).logicalSrcIdx = 277;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.mrd0p0xbfto.coswt_Phase
                    section.data(21).logicalSrcIdx = 278;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.mrd0p0xbfto.Gain_Gain_gqtqomfgpx
                    section.data(22).logicalSrcIdx = 279;
                    section.data(22).dtTransOffset = 21;

            nTotData = nTotData + section.nData;
            paramMap.sections(8) = section;
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
        nTotSects     = 9;
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
            section.nData     = 131;
            section.data(131)  = dumData; %prealloc

                    ;% rtB.exqvmaicl3
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.ofnnlcf3ub
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.nshj3h1cjs
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.hgvrocnv1p
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.nf2wbn5csw
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.lx3o2nzd5a
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.k1kxogzjq2
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 9;

                    ;% rtB.ax5cd4l5sy
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 12;

                    ;% rtB.dnkaa0wdib
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 14;

                    ;% rtB.a5tod41fib
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 15;

                    ;% rtB.kjqqzkb4qm
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 16;

                    ;% rtB.lkbqqqpmru
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 17;

                    ;% rtB.ccguvhfirq
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 21;

                    ;% rtB.kfqhgevtwz
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 23;

                    ;% rtB.oc5qjsgey3
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 24;

                    ;% rtB.eyj4z12rtz
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 25;

                    ;% rtB.fvmivjv3lb
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 26;

                    ;% rtB.dnaovulvlb
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 30;

                    ;% rtB.jdpnhxzdjk
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 32;

                    ;% rtB.dasdy132yx
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 33;

                    ;% rtB.d1d1zaapqh
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 34;

                    ;% rtB.bhgw4g2foh
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 35;

                    ;% rtB.kvsxukkcmj
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 39;

                    ;% rtB.auatjqdhf0
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 40;

                    ;% rtB.penrlhu4sz
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 142;

                    ;% rtB.bbnzbwdua0
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 154;

                    ;% rtB.iqdew0e4el
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 155;

                    ;% rtB.hwiizqythe
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 156;

                    ;% rtB.d1nymob1yg
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 157;

                    ;% rtB.bcuwqh32s5
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 158;

                    ;% rtB.g5g1ppgz3t
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 159;

                    ;% rtB.bazmfcvoth
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 160;

                    ;% rtB.d4ciwwvfa2
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 161;

                    ;% rtB.fpbcf53fcr
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 162;

                    ;% rtB.m4t3yxnlif
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 163;

                    ;% rtB.b0viev4kse
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 164;

                    ;% rtB.edf2q5bfk2
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 165;

                    ;% rtB.m555x5ha03
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 166;

                    ;% rtB.lfphzr3zkl
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 167;

                    ;% rtB.inimsgpdgr
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 168;

                    ;% rtB.casm2noqiq
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 169;

                    ;% rtB.m2ui1ybdof
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 170;

                    ;% rtB.iesgkvkxzq
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 171;

                    ;% rtB.ekihv3chvn
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 172;

                    ;% rtB.j4ke03ls2t
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 173;

                    ;% rtB.gmzmjbpdyb
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 174;

                    ;% rtB.nxxunpqw3v
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 175;

                    ;% rtB.ibr3r4mwn4
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 176;

                    ;% rtB.ahsyrdirfl
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 177;

                    ;% rtB.nintbxlxen
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 178;

                    ;% rtB.gnkfi5vjwr
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 179;

                    ;% rtB.ngbky03o10
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 180;

                    ;% rtB.pd2xh4c2qc
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 181;

                    ;% rtB.eylumqp4sj
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 182;

                    ;% rtB.ajkvz5ci0m
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 183;

                    ;% rtB.aezqvkzl1a
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 186;

                    ;% rtB.czpfblkmwj
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 187;

                    ;% rtB.jfh33nt3he
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 188;

                    ;% rtB.kd15rro4dn
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 189;

                    ;% rtB.kwmvrvaytb
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 192;

                    ;% rtB.m3yw3qpyy5
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 193;

                    ;% rtB.jhrx2rptab
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 194;

                    ;% rtB.gpqy41urpo
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 195;

                    ;% rtB.bmsygqhng1
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 196;

                    ;% rtB.mc01v50j1n
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 197;

                    ;% rtB.on1rqioqcn
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 198;

                    ;% rtB.dewc2widgy
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 199;

                    ;% rtB.eam0hrf2nm
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 200;

                    ;% rtB.ewo5ddkpno
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 201;

                    ;% rtB.j5p2ia5v2q
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 202;

                    ;% rtB.ehefe0csih
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 203;

                    ;% rtB.lssacfysri
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 204;

                    ;% rtB.dldtrnzhoi
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 205;

                    ;% rtB.m2nda4lnht
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 208;

                    ;% rtB.gp50ky12vc
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 209;

                    ;% rtB.acfwypvu3k
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 212;

                    ;% rtB.mpdn4kl35g
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 215;

                    ;% rtB.jpa4fhevkb
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 216;

                    ;% rtB.bkh0vmeahj
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 219;

                    ;% rtB.lz0ttiwzyb
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 220;

                    ;% rtB.a0waq2yige
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 221;

                    ;% rtB.ht3zxk1qzv
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 222;

                    ;% rtB.gt4iw5bule
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 223;

                    ;% rtB.duantldayg
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 224;

                    ;% rtB.ceb1wb5dhs
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 225;

                    ;% rtB.m3zdvdemp1
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 226;

                    ;% rtB.dmapaibmba
                    section.data(87).logicalSrcIdx = 86;
                    section.data(87).dtTransOffset = 227;

                    ;% rtB.ayi2asd3kf
                    section.data(88).logicalSrcIdx = 87;
                    section.data(88).dtTransOffset = 228;

                    ;% rtB.jl0z5ju0tz
                    section.data(89).logicalSrcIdx = 88;
                    section.data(89).dtTransOffset = 229;

                    ;% rtB.mk5absh4ch
                    section.data(90).logicalSrcIdx = 89;
                    section.data(90).dtTransOffset = 230;

                    ;% rtB.jpms13imuy
                    section.data(91).logicalSrcIdx = 90;
                    section.data(91).dtTransOffset = 231;

                    ;% rtB.bk2w4t5edx
                    section.data(92).logicalSrcIdx = 91;
                    section.data(92).dtTransOffset = 232;

                    ;% rtB.dw2bf0o3qc
                    section.data(93).logicalSrcIdx = 92;
                    section.data(93).dtTransOffset = 233;

                    ;% rtB.pinqwihhrx
                    section.data(94).logicalSrcIdx = 93;
                    section.data(94).dtTransOffset = 236;

                    ;% rtB.av4t0lwnot
                    section.data(95).logicalSrcIdx = 94;
                    section.data(95).dtTransOffset = 237;

                    ;% rtB.oacmor00wk
                    section.data(96).logicalSrcIdx = 95;
                    section.data(96).dtTransOffset = 238;

                    ;% rtB.plqk4uqzli
                    section.data(97).logicalSrcIdx = 96;
                    section.data(97).dtTransOffset = 239;

                    ;% rtB.ddd2fvoqja
                    section.data(98).logicalSrcIdx = 97;
                    section.data(98).dtTransOffset = 240;

                    ;% rtB.ek5om3dlrm
                    section.data(99).logicalSrcIdx = 98;
                    section.data(99).dtTransOffset = 241;

                    ;% rtB.du5h1lyus0
                    section.data(100).logicalSrcIdx = 99;
                    section.data(100).dtTransOffset = 242;

                    ;% rtB.kxasw4uu3m
                    section.data(101).logicalSrcIdx = 100;
                    section.data(101).dtTransOffset = 243;

                    ;% rtB.aookavgdoy
                    section.data(102).logicalSrcIdx = 101;
                    section.data(102).dtTransOffset = 244;

                    ;% rtB.at22yz5zbj
                    section.data(103).logicalSrcIdx = 102;
                    section.data(103).dtTransOffset = 245;

                    ;% rtB.joanuqmctx
                    section.data(104).logicalSrcIdx = 103;
                    section.data(104).dtTransOffset = 246;

                    ;% rtB.k4lok0ttea
                    section.data(105).logicalSrcIdx = 104;
                    section.data(105).dtTransOffset = 247;

                    ;% rtB.bpti2suv12
                    section.data(106).logicalSrcIdx = 105;
                    section.data(106).dtTransOffset = 248;

                    ;% rtB.dfn5se4udr
                    section.data(107).logicalSrcIdx = 106;
                    section.data(107).dtTransOffset = 249;

                    ;% rtB.nhtmh35xjn
                    section.data(108).logicalSrcIdx = 107;
                    section.data(108).dtTransOffset = 250;

                    ;% rtB.f3vlmqymyi
                    section.data(109).logicalSrcIdx = 108;
                    section.data(109).dtTransOffset = 251;

                    ;% rtB.mwpt3khrqy
                    section.data(110).logicalSrcIdx = 109;
                    section.data(110).dtTransOffset = 252;

                    ;% rtB.k2v4uggtjh
                    section.data(111).logicalSrcIdx = 110;
                    section.data(111).dtTransOffset = 253;

                    ;% rtB.ibze340xgt
                    section.data(112).logicalSrcIdx = 111;
                    section.data(112).dtTransOffset = 254;

                    ;% rtB.a12xuiizhf
                    section.data(113).logicalSrcIdx = 112;
                    section.data(113).dtTransOffset = 255;

                    ;% rtB.m304bjqxyy
                    section.data(114).logicalSrcIdx = 113;
                    section.data(114).dtTransOffset = 256;

                    ;% rtB.j1kviviefs
                    section.data(115).logicalSrcIdx = 114;
                    section.data(115).dtTransOffset = 257;

                    ;% rtB.mvggiakmde
                    section.data(116).logicalSrcIdx = 115;
                    section.data(116).dtTransOffset = 258;

                    ;% rtB.aew5xboqsq
                    section.data(117).logicalSrcIdx = 116;
                    section.data(117).dtTransOffset = 259;

                    ;% rtB.oryej5mskv
                    section.data(118).logicalSrcIdx = 117;
                    section.data(118).dtTransOffset = 260;

                    ;% rtB.omn34xrzyy
                    section.data(119).logicalSrcIdx = 118;
                    section.data(119).dtTransOffset = 261;

                    ;% rtB.n5ksnoniny
                    section.data(120).logicalSrcIdx = 119;
                    section.data(120).dtTransOffset = 262;

                    ;% rtB.ompzojzvpx
                    section.data(121).logicalSrcIdx = 120;
                    section.data(121).dtTransOffset = 263;

                    ;% rtB.abg1iowprd
                    section.data(122).logicalSrcIdx = 121;
                    section.data(122).dtTransOffset = 264;

                    ;% rtB.hqp3kk4vrz
                    section.data(123).logicalSrcIdx = 122;
                    section.data(123).dtTransOffset = 265;

                    ;% rtB.beofpf1tft
                    section.data(124).logicalSrcIdx = 123;
                    section.data(124).dtTransOffset = 266;

                    ;% rtB.njyxzuxd0a
                    section.data(125).logicalSrcIdx = 124;
                    section.data(125).dtTransOffset = 267;

                    ;% rtB.pzih1oilt4
                    section.data(126).logicalSrcIdx = 125;
                    section.data(126).dtTransOffset = 268;

                    ;% rtB.jnuez1rr0j
                    section.data(127).logicalSrcIdx = 126;
                    section.data(127).dtTransOffset = 269;

                    ;% rtB.pggv4jdvwv
                    section.data(128).logicalSrcIdx = 127;
                    section.data(128).dtTransOffset = 270;

                    ;% rtB.exjj4nbbit
                    section.data(129).logicalSrcIdx = 128;
                    section.data(129).dtTransOffset = 272;

                    ;% rtB.ektoy1cwjp
                    section.data(130).logicalSrcIdx = 129;
                    section.data(130).dtTransOffset = 273;

                    ;% rtB.lhopohw40v
                    section.data(131).logicalSrcIdx = 130;
                    section.data(131).dtTransOffset = 274;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtB.igsucrokit
                    section.data(1).logicalSrcIdx = 132;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.ewgbhxkzbm
                    section.data(2).logicalSrcIdx = 133;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtB.iszk1zp113
                    section.data(1).logicalSrcIdx = 140;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.ago5jfunj3
                    section.data(2).logicalSrcIdx = 141;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.g4wriih5k0
                    section.data(3).logicalSrcIdx = 142;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.e0rafhhuqr
                    section.data(4).logicalSrcIdx = 143;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.f0e1ygfpcg
                    section.data(5).logicalSrcIdx = 144;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.k2hkvd0khb
                    section.data(6).logicalSrcIdx = 145;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.cey5qn1gkj
                    section.data(7).logicalSrcIdx = 146;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.glolkkkv2d
                    section.data(8).logicalSrcIdx = 147;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.k5ripsc1fv
                    section.data(9).logicalSrcIdx = 148;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section

            section.nData     = 10;
            section.data(10)  = dumData; %prealloc

                    ;% rtB.gniufkjjvw.gsqfcp2tb4
                    section.data(1).logicalSrcIdx = 149;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.gniufkjjvw.hz5wvvr03q
                    section.data(2).logicalSrcIdx = 150;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.gniufkjjvw.cwh2pn5wy1
                    section.data(3).logicalSrcIdx = 151;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.gniufkjjvw.abkbpgkuss
                    section.data(4).logicalSrcIdx = 152;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.gniufkjjvw.lxtste3lck
                    section.data(5).logicalSrcIdx = 153;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.gniufkjjvw.et4ozkucqq
                    section.data(6).logicalSrcIdx = 154;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.gniufkjjvw.m2mmtijmri
                    section.data(7).logicalSrcIdx = 155;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.gniufkjjvw.ios53bkxrm
                    section.data(8).logicalSrcIdx = 156;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.gniufkjjvw.p2eadsrfnq
                    section.data(9).logicalSrcIdx = 157;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.gniufkjjvw.h0wo1aetl0
                    section.data(10).logicalSrcIdx = 158;
                    section.data(10).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            sigMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.p2ivnqp1am.j3h3pcq4al
                    section.data(1).logicalSrcIdx = 159;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(5) = section;
            clear section

            section.nData     = 17;
            section.data(17)  = dumData; %prealloc

                    ;% rtB.p2ivnqp1am.b2obo2k4w3
                    section.data(1).logicalSrcIdx = 160;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.p2ivnqp1am.mwhghtglia
                    section.data(2).logicalSrcIdx = 161;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.p2ivnqp1am.mjq3svnwjc
                    section.data(3).logicalSrcIdx = 162;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.p2ivnqp1am.ptxvibbhgk
                    section.data(4).logicalSrcIdx = 163;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.p2ivnqp1am.hxe55nlwnf
                    section.data(5).logicalSrcIdx = 164;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.p2ivnqp1am.ctfogtrwii
                    section.data(6).logicalSrcIdx = 165;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.p2ivnqp1am.e5aqacrdrg
                    section.data(7).logicalSrcIdx = 166;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.p2ivnqp1am.baysa5tphs
                    section.data(8).logicalSrcIdx = 167;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.p2ivnqp1am.pnyy1dfsha
                    section.data(9).logicalSrcIdx = 168;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.p2ivnqp1am.en5vrdrbct
                    section.data(10).logicalSrcIdx = 169;
                    section.data(10).dtTransOffset = 9;

                    ;% rtB.p2ivnqp1am.cqhv5wzfd3
                    section.data(11).logicalSrcIdx = 170;
                    section.data(11).dtTransOffset = 10;

                    ;% rtB.p2ivnqp1am.isi4pku4mf
                    section.data(12).logicalSrcIdx = 171;
                    section.data(12).dtTransOffset = 11;

                    ;% rtB.p2ivnqp1am.iigcaletkn
                    section.data(13).logicalSrcIdx = 172;
                    section.data(13).dtTransOffset = 12;

                    ;% rtB.p2ivnqp1am.go2ofm21cc
                    section.data(14).logicalSrcIdx = 173;
                    section.data(14).dtTransOffset = 13;

                    ;% rtB.p2ivnqp1am.fqzh5bmcbs
                    section.data(15).logicalSrcIdx = 174;
                    section.data(15).dtTransOffset = 14;

                    ;% rtB.p2ivnqp1am.p1yaqm2mly
                    section.data(16).logicalSrcIdx = 175;
                    section.data(16).dtTransOffset = 15;

                    ;% rtB.p2ivnqp1am.a5f01yxli2
                    section.data(17).logicalSrcIdx = 176;
                    section.data(17).dtTransOffset = 16;

            nTotData = nTotData + section.nData;
            sigMap.sections(6) = section;
            clear section

            section.nData     = 10;
            section.data(10)  = dumData; %prealloc

                    ;% rtB.bnqfkp2to4b.gsqfcp2tb4
                    section.data(1).logicalSrcIdx = 177;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.bnqfkp2to4b.hz5wvvr03q
                    section.data(2).logicalSrcIdx = 178;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.bnqfkp2to4b.cwh2pn5wy1
                    section.data(3).logicalSrcIdx = 179;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.bnqfkp2to4b.abkbpgkuss
                    section.data(4).logicalSrcIdx = 180;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.bnqfkp2to4b.lxtste3lck
                    section.data(5).logicalSrcIdx = 181;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.bnqfkp2to4b.et4ozkucqq
                    section.data(6).logicalSrcIdx = 182;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.bnqfkp2to4b.m2mmtijmri
                    section.data(7).logicalSrcIdx = 183;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.bnqfkp2to4b.ios53bkxrm
                    section.data(8).logicalSrcIdx = 184;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.bnqfkp2to4b.p2eadsrfnq
                    section.data(9).logicalSrcIdx = 185;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.bnqfkp2to4b.h0wo1aetl0
                    section.data(10).logicalSrcIdx = 186;
                    section.data(10).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            sigMap.sections(7) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.mrd0p0xbfto.j3h3pcq4al
                    section.data(1).logicalSrcIdx = 187;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(8) = section;
            clear section

            section.nData     = 17;
            section.data(17)  = dumData; %prealloc

                    ;% rtB.mrd0p0xbfto.b2obo2k4w3
                    section.data(1).logicalSrcIdx = 188;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.mrd0p0xbfto.mwhghtglia
                    section.data(2).logicalSrcIdx = 189;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.mrd0p0xbfto.mjq3svnwjc
                    section.data(3).logicalSrcIdx = 190;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.mrd0p0xbfto.ptxvibbhgk
                    section.data(4).logicalSrcIdx = 191;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.mrd0p0xbfto.hxe55nlwnf
                    section.data(5).logicalSrcIdx = 192;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.mrd0p0xbfto.ctfogtrwii
                    section.data(6).logicalSrcIdx = 193;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.mrd0p0xbfto.e5aqacrdrg
                    section.data(7).logicalSrcIdx = 194;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.mrd0p0xbfto.baysa5tphs
                    section.data(8).logicalSrcIdx = 195;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.mrd0p0xbfto.pnyy1dfsha
                    section.data(9).logicalSrcIdx = 196;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.mrd0p0xbfto.en5vrdrbct
                    section.data(10).logicalSrcIdx = 197;
                    section.data(10).dtTransOffset = 9;

                    ;% rtB.mrd0p0xbfto.cqhv5wzfd3
                    section.data(11).logicalSrcIdx = 198;
                    section.data(11).dtTransOffset = 10;

                    ;% rtB.mrd0p0xbfto.isi4pku4mf
                    section.data(12).logicalSrcIdx = 199;
                    section.data(12).dtTransOffset = 11;

                    ;% rtB.mrd0p0xbfto.iigcaletkn
                    section.data(13).logicalSrcIdx = 200;
                    section.data(13).dtTransOffset = 12;

                    ;% rtB.mrd0p0xbfto.go2ofm21cc
                    section.data(14).logicalSrcIdx = 201;
                    section.data(14).dtTransOffset = 13;

                    ;% rtB.mrd0p0xbfto.fqzh5bmcbs
                    section.data(15).logicalSrcIdx = 202;
                    section.data(15).dtTransOffset = 14;

                    ;% rtB.mrd0p0xbfto.p1yaqm2mly
                    section.data(16).logicalSrcIdx = 203;
                    section.data(16).dtTransOffset = 15;

                    ;% rtB.mrd0p0xbfto.a5f01yxli2
                    section.data(17).logicalSrcIdx = 204;
                    section.data(17).dtTransOffset = 16;

            nTotData = nTotData + section.nData;
            sigMap.sections(9) = section;
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
        nTotSects     = 36;
        sectIdxOffset = 9;

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
            section.nData     = 44;
            section.data(44)  = dumData; %prealloc

                    ;% rtDW.efpskzcxep
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ai422kezz0
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.lnnnftehp1
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.icvu5mibir
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 5;

                    ;% rtDW.cb4xq0bjj4
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 6;

                    ;% rtDW.m3u2dkcxlz
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 7;

                    ;% rtDW.k50emfigjc
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 9;

                    ;% rtDW.dbbqckc2is
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 10;

                    ;% rtDW.hlljggzjhf
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 11;

                    ;% rtDW.emz4ibixwn
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 13;

                    ;% rtDW.kfq4cem22r
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 14;

                    ;% rtDW.e25c3tmq20
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 15;

                    ;% rtDW.i3vdcetmqe
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 17;

                    ;% rtDW.mnmoquclvd
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 162;

                    ;% rtDW.ceigtphubr
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 163;

                    ;% rtDW.osf4mzxagr
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 164;

                    ;% rtDW.aljpcds43v
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 165;

                    ;% rtDW.hs0vew4kbj
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 166;

                    ;% rtDW.i0xtrcxzcs
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 167;

                    ;% rtDW.lhy0ge3tud
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 168;

                    ;% rtDW.in20t3ujpy
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 222;

                    ;% rtDW.cslzxqexmu
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 223;

                    ;% rtDW.e5bcp4shct
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 224;

                    ;% rtDW.acd1mhjsj2
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 225;

                    ;% rtDW.l2dkgkopkh
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 226;

                    ;% rtDW.ezil1yxcvy
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 227;

                    ;% rtDW.n3xqnbproq
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 228;

                    ;% rtDW.dio11vnhkw
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 229;

                    ;% rtDW.ocpxj414bz
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 230;

                    ;% rtDW.mv3sh0gql1
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 233;

                    ;% rtDW.pguvwiktiy
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 234;

                    ;% rtDW.n3dox33xbz
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 235;

                    ;% rtDW.kx3oonvoou
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 236;

                    ;% rtDW.ltubjlx2ff
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 237;

                    ;% rtDW.gngsentxwk
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 238;

                    ;% rtDW.chnksmy5a2
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 239;

                    ;% rtDW.or1oxtso3w
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 240;

                    ;% rtDW.mwedu0ttdg
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 241;

                    ;% rtDW.hiuiojwoey
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 242;

                    ;% rtDW.kujk2izer3
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 243;

                    ;% rtDW.bexizt5nd3
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 244;

                    ;% rtDW.nkvf05zwlz
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 245;

                    ;% rtDW.bxjnuxcal0
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 246;

                    ;% rtDW.ddmdrqoiqr
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 247;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 37;
            section.data(37)  = dumData; %prealloc

                    ;% rtDW.mkn0smb45c
                    section.data(1).logicalSrcIdx = 44;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.kmzoqk3hrt
                    section.data(2).logicalSrcIdx = 45;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.fujaejwgqx
                    section.data(3).logicalSrcIdx = 46;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.lucuvz545x
                    section.data(4).logicalSrcIdx = 47;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.ooorpxruqh
                    section.data(5).logicalSrcIdx = 48;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.ouj3vdr1tu
                    section.data(6).logicalSrcIdx = 49;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.fryyyqnzld
                    section.data(7).logicalSrcIdx = 50;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.jjzwrc4ift
                    section.data(8).logicalSrcIdx = 51;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.p4likipcey
                    section.data(9).logicalSrcIdx = 52;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.iovoyycjoy
                    section.data(10).logicalSrcIdx = 53;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.opqjgnpg0m
                    section.data(11).logicalSrcIdx = 54;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.d4blsk2dpg.LoggedData
                    section.data(12).logicalSrcIdx = 55;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.dwgqkqkom1
                    section.data(13).logicalSrcIdx = 56;
                    section.data(13).dtTransOffset = 16;

                    ;% rtDW.nlwd5qetdh
                    section.data(14).logicalSrcIdx = 57;
                    section.data(14).dtTransOffset = 17;

                    ;% rtDW.eiu1s1vcee
                    section.data(15).logicalSrcIdx = 58;
                    section.data(15).dtTransOffset = 18;

                    ;% rtDW.eo0f4mxh0p
                    section.data(16).logicalSrcIdx = 59;
                    section.data(16).dtTransOffset = 19;

                    ;% rtDW.psb11hcnhr
                    section.data(17).logicalSrcIdx = 60;
                    section.data(17).dtTransOffset = 20;

                    ;% rtDW.lptqpodbrr.LoggedData
                    section.data(18).logicalSrcIdx = 61;
                    section.data(18).dtTransOffset = 21;

                    ;% rtDW.a0zhnhuppp
                    section.data(19).logicalSrcIdx = 62;
                    section.data(19).dtTransOffset = 23;

                    ;% rtDW.fufsp4rhxt.LoggedData
                    section.data(20).logicalSrcIdx = 63;
                    section.data(20).dtTransOffset = 25;

                    ;% rtDW.bnmefmsg4a.LoggedData
                    section.data(21).logicalSrcIdx = 64;
                    section.data(21).dtTransOffset = 27;

                    ;% rtDW.klt5ontc51.LoggedData
                    section.data(22).logicalSrcIdx = 65;
                    section.data(22).dtTransOffset = 29;

                    ;% rtDW.cem5i4tn2t.LoggedData
                    section.data(23).logicalSrcIdx = 66;
                    section.data(23).dtTransOffset = 33;

                    ;% rtDW.i0wanqc3na.LoggedData
                    section.data(24).logicalSrcIdx = 67;
                    section.data(24).dtTransOffset = 36;

                    ;% rtDW.i21nwnk1vb
                    section.data(25).logicalSrcIdx = 68;
                    section.data(25).dtTransOffset = 40;

                    ;% rtDW.dvluhddqdu
                    section.data(26).logicalSrcIdx = 69;
                    section.data(26).dtTransOffset = 42;

                    ;% rtDW.d4fpdtzp4b
                    section.data(27).logicalSrcIdx = 70;
                    section.data(27).dtTransOffset = 44;

                    ;% rtDW.gl5wlbfz5w
                    section.data(28).logicalSrcIdx = 71;
                    section.data(28).dtTransOffset = 46;

                    ;% rtDW.ktbj4lgqph.LoggedData
                    section.data(29).logicalSrcIdx = 72;
                    section.data(29).dtTransOffset = 52;

                    ;% rtDW.aqihcohwpi.LoggedData
                    section.data(30).logicalSrcIdx = 73;
                    section.data(30).dtTransOffset = 58;

                    ;% rtDW.idsqnoqmih
                    section.data(31).logicalSrcIdx = 74;
                    section.data(31).dtTransOffset = 62;

                    ;% rtDW.nyy5puiaiw.LoggedData
                    section.data(32).logicalSrcIdx = 75;
                    section.data(32).dtTransOffset = 64;

                    ;% rtDW.mpxie31yye.LoggedData
                    section.data(33).logicalSrcIdx = 76;
                    section.data(33).dtTransOffset = 67;

                    ;% rtDW.ibdrrtimio.LoggedData
                    section.data(34).logicalSrcIdx = 77;
                    section.data(34).dtTransOffset = 68;

                    ;% rtDW.ckd553wuvp.LoggedData
                    section.data(35).logicalSrcIdx = 78;
                    section.data(35).dtTransOffset = 72;

                    ;% rtDW.pawir0tzuv.LoggedData
                    section.data(36).logicalSrcIdx = 79;
                    section.data(36).dtTransOffset = 77;

                    ;% rtDW.kf2vtddb5t.LoggedData
                    section.data(37).logicalSrcIdx = 80;
                    section.data(37).dtTransOffset = 80;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.jybvry15cx
                    section.data(1).logicalSrcIdx = 81;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.og3glzkrkn
                    section.data(2).logicalSrcIdx = 82;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 18;
            section.data(18)  = dumData; %prealloc

                    ;% rtDW.ci3flsowjr
                    section.data(1).logicalSrcIdx = 83;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ee4tnkvtia
                    section.data(2).logicalSrcIdx = 84;
                    section.data(2).dtTransOffset = 54;

                    ;% rtDW.lpdqd4wnac
                    section.data(3).logicalSrcIdx = 85;
                    section.data(3).dtTransOffset = 55;

                    ;% rtDW.jkfhk43nvl
                    section.data(4).logicalSrcIdx = 86;
                    section.data(4).dtTransOffset = 56;

                    ;% rtDW.f2jbwqrx1g
                    section.data(5).logicalSrcIdx = 87;
                    section.data(5).dtTransOffset = 61;

                    ;% rtDW.amljx2ytrh
                    section.data(6).logicalSrcIdx = 88;
                    section.data(6).dtTransOffset = 66;

                    ;% rtDW.kep5r5jb3p
                    section.data(7).logicalSrcIdx = 89;
                    section.data(7).dtTransOffset = 71;

                    ;% rtDW.afuv1ukzbi
                    section.data(8).logicalSrcIdx = 90;
                    section.data(8).dtTransOffset = 76;

                    ;% rtDW.idafjiibzh
                    section.data(9).logicalSrcIdx = 91;
                    section.data(9).dtTransOffset = 89;

                    ;% rtDW.bn1o4mwmq3
                    section.data(10).logicalSrcIdx = 92;
                    section.data(10).dtTransOffset = 94;

                    ;% rtDW.odymzf5qsn
                    section.data(11).logicalSrcIdx = 93;
                    section.data(11).dtTransOffset = 95;

                    ;% rtDW.oqlftfpyzo
                    section.data(12).logicalSrcIdx = 94;
                    section.data(12).dtTransOffset = 96;

                    ;% rtDW.lwfxqushzf
                    section.data(13).logicalSrcIdx = 95;
                    section.data(13).dtTransOffset = 97;

                    ;% rtDW.hbdfbj2hrl
                    section.data(14).logicalSrcIdx = 96;
                    section.data(14).dtTransOffset = 98;

                    ;% rtDW.dmjxaamnqj
                    section.data(15).logicalSrcIdx = 97;
                    section.data(15).dtTransOffset = 99;

                    ;% rtDW.is4xcvejv4
                    section.data(16).logicalSrcIdx = 98;
                    section.data(16).dtTransOffset = 100;

                    ;% rtDW.dvhtaha44s
                    section.data(17).logicalSrcIdx = 99;
                    section.data(17).dtTransOffset = 101;

                    ;% rtDW.in4hbykhnl
                    section.data(18).logicalSrcIdx = 100;
                    section.data(18).dtTransOffset = 102;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.pqjp0akxnx
                    section.data(1).logicalSrcIdx = 101;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtDW.eiye4d5f1z
                    section.data(1).logicalSrcIdx = 102;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.lcp2ajv2ha
                    section.data(2).logicalSrcIdx = 103;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.klcmd2s42v
                    section.data(3).logicalSrcIdx = 104;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.eeqh33xkv2
                    section.data(4).logicalSrcIdx = 105;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% rtDW.gmfnujiv4w
                    section.data(1).logicalSrcIdx = 106;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.pec13ae3dq
                    section.data(2).logicalSrcIdx = 107;
                    section.data(2).dtTransOffset = 54;

                    ;% rtDW.kym2403csi
                    section.data(3).logicalSrcIdx = 108;
                    section.data(3).dtTransOffset = 108;

                    ;% rtDW.dth5njbdy2
                    section.data(4).logicalSrcIdx = 109;
                    section.data(4).dtTransOffset = 109;

                    ;% rtDW.e13a2cwkxz
                    section.data(5).logicalSrcIdx = 110;
                    section.data(5).dtTransOffset = 110;

                    ;% rtDW.oyf1ycbbdy
                    section.data(6).logicalSrcIdx = 111;
                    section.data(6).dtTransOffset = 111;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
            clear section

            section.nData     = 28;
            section.data(28)  = dumData; %prealloc

                    ;% rtDW.jap351cpx1
                    section.data(1).logicalSrcIdx = 112;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ckn4muy4ys
                    section.data(2).logicalSrcIdx = 113;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.hkol5soztp
                    section.data(3).logicalSrcIdx = 114;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.lxn2321qt1
                    section.data(4).logicalSrcIdx = 115;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.maap1oa50o
                    section.data(5).logicalSrcIdx = 116;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.oy5qewybxi
                    section.data(6).logicalSrcIdx = 117;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.botydpplw2
                    section.data(7).logicalSrcIdx = 118;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.gp5pqc1tfw
                    section.data(8).logicalSrcIdx = 119;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.of2b4wxn5d
                    section.data(9).logicalSrcIdx = 120;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.hnvsl0l1bn
                    section.data(10).logicalSrcIdx = 121;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.nnybis1v23
                    section.data(11).logicalSrcIdx = 122;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.hy3wpocjoz
                    section.data(12).logicalSrcIdx = 123;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.f1lanlafe0
                    section.data(13).logicalSrcIdx = 124;
                    section.data(13).dtTransOffset = 12;

                    ;% rtDW.auk2s5lrxv
                    section.data(14).logicalSrcIdx = 125;
                    section.data(14).dtTransOffset = 13;

                    ;% rtDW.okkxesjntd
                    section.data(15).logicalSrcIdx = 126;
                    section.data(15).dtTransOffset = 14;

                    ;% rtDW.p4fjp5mdzh
                    section.data(16).logicalSrcIdx = 127;
                    section.data(16).dtTransOffset = 15;

                    ;% rtDW.iw0ngkazoq
                    section.data(17).logicalSrcIdx = 128;
                    section.data(17).dtTransOffset = 16;

                    ;% rtDW.c0dig1xxmy
                    section.data(18).logicalSrcIdx = 129;
                    section.data(18).dtTransOffset = 17;

                    ;% rtDW.dtfebsdaux
                    section.data(19).logicalSrcIdx = 130;
                    section.data(19).dtTransOffset = 18;

                    ;% rtDW.clj1uqqbhg
                    section.data(20).logicalSrcIdx = 131;
                    section.data(20).dtTransOffset = 19;

                    ;% rtDW.f0qhxkkptm
                    section.data(21).logicalSrcIdx = 132;
                    section.data(21).dtTransOffset = 20;

                    ;% rtDW.kxe5p1dtch
                    section.data(22).logicalSrcIdx = 133;
                    section.data(22).dtTransOffset = 21;

                    ;% rtDW.fwyfyfafi5
                    section.data(23).logicalSrcIdx = 134;
                    section.data(23).dtTransOffset = 22;

                    ;% rtDW.bu3egesnsd
                    section.data(24).logicalSrcIdx = 135;
                    section.data(24).dtTransOffset = 23;

                    ;% rtDW.p2fmoh1eok
                    section.data(25).logicalSrcIdx = 136;
                    section.data(25).dtTransOffset = 24;

                    ;% rtDW.ejgnlent0u
                    section.data(26).logicalSrcIdx = 137;
                    section.data(26).dtTransOffset = 25;

                    ;% rtDW.msehqkshup
                    section.data(27).logicalSrcIdx = 138;
                    section.data(27).dtTransOffset = 26;

                    ;% rtDW.nikzvd40e0
                    section.data(28).logicalSrcIdx = 139;
                    section.data(28).dtTransOffset = 27;

            nTotData = nTotData + section.nData;
            dworkMap.sections(8) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.jq45fy2mkz.js430d51ko
                    section.data(1).logicalSrcIdx = 140;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(9) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.jkeqynbwpj.mis0isw31s
                    section.data(1).logicalSrcIdx = 141;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(10) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.hqdvp1icv2.js430d51ko
                    section.data(1).logicalSrcIdx = 142;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(11) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.nroxbg5urt.mis0isw31s
                    section.data(1).logicalSrcIdx = 143;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(12) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.gniufkjjvw.gcntdtbtkh
                    section.data(1).logicalSrcIdx = 144;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.gniufkjjvw.o3pqs4tnmx
                    section.data(2).logicalSrcIdx = 145;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(13) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gniufkjjvw.llqgtftx1x
                    section.data(1).logicalSrcIdx = 146;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(14) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.gniufkjjvw.llakzjlxxr
                    section.data(1).logicalSrcIdx = 147;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.gniufkjjvw.kltkuvytnu
                    section.data(2).logicalSrcIdx = 148;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(15) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.gniufkjjvw.pv3ytlnr1b
                    section.data(1).logicalSrcIdx = 149;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.gniufkjjvw.elaxv2ovi1
                    section.data(2).logicalSrcIdx = 150;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(16) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gniufkjjvw.du0hdfadhp
                    section.data(1).logicalSrcIdx = 151;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(17) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtDW.p2ivnqp1am.gpefuoor5e
                    section.data(1).logicalSrcIdx = 152;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.p2ivnqp1am.kebsytq2xe
                    section.data(2).logicalSrcIdx = 153;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.p2ivnqp1am.glwrz5pjcq
                    section.data(3).logicalSrcIdx = 154;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.p2ivnqp1am.nbi4s2icax
                    section.data(4).logicalSrcIdx = 155;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            dworkMap.sections(18) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.p2ivnqp1am.dcdmaqgr2q
                    section.data(1).logicalSrcIdx = 156;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.p2ivnqp1am.albmshzw1i
                    section.data(2).logicalSrcIdx = 157;
                    section.data(2).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(19) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.p2ivnqp1am.b4iq4vyuor
                    section.data(1).logicalSrcIdx = 158;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.p2ivnqp1am.kbk10zqztt
                    section.data(2).logicalSrcIdx = 159;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(20) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.p2ivnqp1am.iirxwp05k3
                    section.data(1).logicalSrcIdx = 160;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(21) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.p2ivnqp1am.p3lkixy2r2
                    section.data(1).logicalSrcIdx = 161;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(22) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.bnqfkp2to4b.gcntdtbtkh
                    section.data(1).logicalSrcIdx = 162;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.bnqfkp2to4b.o3pqs4tnmx
                    section.data(2).logicalSrcIdx = 163;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(23) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.bnqfkp2to4b.llqgtftx1x
                    section.data(1).logicalSrcIdx = 164;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(24) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.bnqfkp2to4b.llakzjlxxr
                    section.data(1).logicalSrcIdx = 165;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.bnqfkp2to4b.kltkuvytnu
                    section.data(2).logicalSrcIdx = 166;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(25) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.bnqfkp2to4b.pv3ytlnr1b
                    section.data(1).logicalSrcIdx = 167;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.bnqfkp2to4b.elaxv2ovi1
                    section.data(2).logicalSrcIdx = 168;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(26) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.bnqfkp2to4b.du0hdfadhp
                    section.data(1).logicalSrcIdx = 169;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(27) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtDW.mrd0p0xbfto.gpefuoor5e
                    section.data(1).logicalSrcIdx = 170;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.mrd0p0xbfto.kebsytq2xe
                    section.data(2).logicalSrcIdx = 171;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.mrd0p0xbfto.glwrz5pjcq
                    section.data(3).logicalSrcIdx = 172;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.mrd0p0xbfto.nbi4s2icax
                    section.data(4).logicalSrcIdx = 173;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            dworkMap.sections(28) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.mrd0p0xbfto.dcdmaqgr2q
                    section.data(1).logicalSrcIdx = 174;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.mrd0p0xbfto.albmshzw1i
                    section.data(2).logicalSrcIdx = 175;
                    section.data(2).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(29) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.mrd0p0xbfto.b4iq4vyuor
                    section.data(1).logicalSrcIdx = 176;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.mrd0p0xbfto.kbk10zqztt
                    section.data(2).logicalSrcIdx = 177;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(30) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.mrd0p0xbfto.iirxwp05k3
                    section.data(1).logicalSrcIdx = 178;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(31) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.mrd0p0xbfto.p3lkixy2r2
                    section.data(1).logicalSrcIdx = 179;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(32) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.ffqmtelrsh.js430d51ko
                    section.data(1).logicalSrcIdx = 180;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(33) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.owaizpjyhh.mis0isw31s
                    section.data(1).logicalSrcIdx = 181;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(34) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.kcj2zolraji.js430d51ko
                    section.data(1).logicalSrcIdx = 182;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(35) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.nemd0xquqdy.mis0isw31s
                    section.data(1).logicalSrcIdx = 183;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(36) = section;
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


    targMap.checksum0 = 3677247119;
    targMap.checksum1 = 4131334350;
    targMap.checksum2 = 3525662564;
    targMap.checksum3 = 3398938857;

