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
            section.nData     = 204;
            section.data(204)  = dumData; %prealloc

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

                    ;% rtP.compensate_pwm
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.piBandwidth
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.Carriercounter_CarrCount
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Carriercounter_CarrCount_l1cfgyteuy
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.Carriercounter_CarrCount_pcpzckqge2
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.PIDController_I
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.PIDController2_I
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.PIDController3_InitialConditionForIntegrator
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.PIDController4_InitialConditionForIntegrator
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.PIDController_InitialConditionForIntegrator
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.PIDController2_InitialConditionForIntegrator
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.Ramp2_InitialOutput
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.Ramp_InitialOutput
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.Ramp1_InitialOutput
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.PIDController_LowerSaturationLimit
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.PIDController_P
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 21;

                    ;% rtP.PIDController2_P
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 22;

                    ;% rtP.Carriercounter_Range
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 23;

                    ;% rtP.Carriercounter_Range_fbb5yen5s5
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 24;

                    ;% rtP.Carriercounter_Range_iry5nbrdqx
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 25;

                    ;% rtP.RMS_TrueRMS
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 26;

                    ;% rtP.RMS1_TrueRMS
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 27;

                    ;% rtP.PIDController_UpperSaturationLimit
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 28;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 29;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 30;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue_gmxko0ufcx
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 31;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue_ppty12eo1o
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 32;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue_czzrcv1xs0
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 33;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue_cznn0srx2d
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 34;

                    ;% rtP.Ramp2_slope
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 35;

                    ;% rtP.Ramp_slope
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 36;

                    ;% rtP.Ramp1_slope
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 37;

                    ;% rtP.Ramp2_start
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 38;

                    ;% rtP.Ramp_start
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 39;

                    ;% rtP.Ramp1_start
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 40;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 41;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0_jmi4gwmvri
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 42;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0_cmhchouter
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 43;

                    ;% rtP.Gain_Gain
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 44;

                    ;% rtP.Gain_Gain_djxhftize0
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 45;

                    ;% rtP.Gain_Gain_ifj1132abx
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 46;

                    ;% rtP.Gain_Gain_punknji3it
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 47;

                    ;% rtP.Gain_Gain_hi1h0shmrd
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 48;

                    ;% rtP.Gain_Gain_lnud520pox
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 49;

                    ;% rtP.one_by_3_Gain
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 50;

                    ;% rtP.one_by_sqrt3_Gain
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 51;

                    ;% rtP.Kalphabeta0_Gain
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 52;

                    ;% rtP.sine_table_values_Value
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 55;

                    ;% rtP.convert_pu_Gain
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 1057;

                    ;% rtP.indexing_Gain
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 1058;

                    ;% rtP.Gain_Gain_efigkyvqib
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 1059;

                    ;% rtP.Integrator_gainval
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 1060;

                    ;% rtP.Gain5_Gain
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 1061;

                    ;% rtP.Gain5_Gain_g5bjdsfyip
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 1062;

                    ;% rtP.Gain_Gain_kpqlcty2dv
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 1063;

                    ;% rtP.Saturation_UpperSat
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 1064;

                    ;% rtP.Saturation_LowerSat
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 1065;

                    ;% rtP.Integrator_gainval_aawdszzfsk
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 1066;

                    ;% rtP.sine_table_values_Value_kvrvrtlo05
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 1067;

                    ;% rtP.convert_pu_Gain_hohxgx3xh0
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 2069;

                    ;% rtP.indexing_Gain_fh111rwjev
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 2070;

                    ;% rtP.Constant_Value
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 2071;

                    ;% rtP.Clamping_zero_Value
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 2072;

                    ;% rtP.Constant1_Value
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 2073;

                    ;% rtP.Clamping_zero_Value_k5huge04pc
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 2074;

                    ;% rtP.Constant1_Value_g2slp2tih2
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 2075;

                    ;% rtP.Constant_Value_nybomaw50f
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 2076;

                    ;% rtP.Constant1_Value_plzth135fi
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 2077;

                    ;% rtP.Constant_Value_d51pvnudts
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 2078;

                    ;% rtP.Constant_Value_aedbii5zo1
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 2079;

                    ;% rtP.Constant_Value_otslvflthu
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 2080;

                    ;% rtP.Constant_Value_aidlcpdktu
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 2081;

                    ;% rtP.Constant_Value_naavg1wwyy
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 2082;

                    ;% rtP.Constant1_Value_kzv5mijxnd
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

                    ;% rtP.TransferFcn1_A
                    section.data(103).logicalSrcIdx = 102;
                    section.data(103).dtTransOffset = 2106;

                    ;% rtP.TransferFcn1_C
                    section.data(104).logicalSrcIdx = 103;
                    section.data(104).dtTransOffset = 2107;

                    ;% rtP.Saturation5_UpperSat
                    section.data(105).logicalSrcIdx = 104;
                    section.data(105).dtTransOffset = 2108;

                    ;% rtP.Saturation5_LowerSat
                    section.data(106).logicalSrcIdx = 105;
                    section.data(106).dtTransOffset = 2109;

                    ;% rtP.UnitDelay_InitialCondition
                    section.data(107).logicalSrcIdx = 106;
                    section.data(107).dtTransOffset = 2110;

                    ;% rtP.Integrator_gainval_dhnaqjdnlv
                    section.data(108).logicalSrcIdx = 107;
                    section.data(108).dtTransOffset = 2111;

                    ;% rtP.Saturation1_UpperSat
                    section.data(109).logicalSrcIdx = 108;
                    section.data(109).dtTransOffset = 2112;

                    ;% rtP.Saturation1_LowerSat
                    section.data(110).logicalSrcIdx = 109;
                    section.data(110).dtTransOffset = 2113;

                    ;% rtP.Gain7_Gain
                    section.data(111).logicalSrcIdx = 110;
                    section.data(111).dtTransOffset = 2114;

                    ;% rtP.Saturation_UpperSat_jtqyrsjebw
                    section.data(112).logicalSrcIdx = 111;
                    section.data(112).dtTransOffset = 2115;

                    ;% rtP.Saturation_LowerSat_niuqztsdpt
                    section.data(113).logicalSrcIdx = 112;
                    section.data(113).dtTransOffset = 2116;

                    ;% rtP.Step_Y0
                    section.data(114).logicalSrcIdx = 113;
                    section.data(114).dtTransOffset = 2117;

                    ;% rtP.Saturation4_UpperSat
                    section.data(115).logicalSrcIdx = 114;
                    section.data(115).dtTransOffset = 2118;

                    ;% rtP.Saturation4_LowerSat
                    section.data(116).logicalSrcIdx = 115;
                    section.data(116).dtTransOffset = 2119;

                    ;% rtP.TransferFcn_A
                    section.data(117).logicalSrcIdx = 116;
                    section.data(117).dtTransOffset = 2120;

                    ;% rtP.TransferFcn_C
                    section.data(118).logicalSrcIdx = 117;
                    section.data(118).dtTransOffset = 2121;

                    ;% rtP.Integrator_gainval_kcogqwyqqm
                    section.data(119).logicalSrcIdx = 118;
                    section.data(119).dtTransOffset = 2122;

                    ;% rtP.Gain_Gain_pm4qz0kgbm
                    section.data(120).logicalSrcIdx = 119;
                    section.data(120).dtTransOffset = 2123;

                    ;% rtP.Integrator_IC
                    section.data(121).logicalSrcIdx = 120;
                    section.data(121).dtTransOffset = 2124;

                    ;% rtP.Integrator_UpperSat
                    section.data(122).logicalSrcIdx = 121;
                    section.data(122).dtTransOffset = 2125;

                    ;% rtP.Integrator_LowerSat
                    section.data(123).logicalSrcIdx = 122;
                    section.data(123).dtTransOffset = 2126;

                    ;% rtP.one_by_3_Gain_lq50khpwgl
                    section.data(124).logicalSrcIdx = 123;
                    section.data(124).dtTransOffset = 2127;

                    ;% rtP.one_by_sqrt3_Gain_bbbfyvtmfv
                    section.data(125).logicalSrcIdx = 124;
                    section.data(125).dtTransOffset = 2128;

                    ;% rtP.Kalphabeta0_Gain_pvcgmqyz1g
                    section.data(126).logicalSrcIdx = 125;
                    section.data(126).dtTransOffset = 2129;

                    ;% rtP.sine_table_values_Value_ph5vfaxqmh
                    section.data(127).logicalSrcIdx = 126;
                    section.data(127).dtTransOffset = 2132;

                    ;% rtP.convert_pu_Gain_flpdghdw0l
                    section.data(128).logicalSrcIdx = 127;
                    section.data(128).dtTransOffset = 3134;

                    ;% rtP.indexing_Gain_d4wzw4thi3
                    section.data(129).logicalSrcIdx = 128;
                    section.data(129).dtTransOffset = 3135;

                    ;% rtP.one_by_3_Gain_dy5n1llkjm
                    section.data(130).logicalSrcIdx = 129;
                    section.data(130).dtTransOffset = 3136;

                    ;% rtP.one_by_sqrt3_Gain_ot11yk20jv
                    section.data(131).logicalSrcIdx = 130;
                    section.data(131).dtTransOffset = 3137;

                    ;% rtP.Kalphabeta0_Gain_b1jcwqkjuu
                    section.data(132).logicalSrcIdx = 131;
                    section.data(132).dtTransOffset = 3138;

                    ;% rtP.sine_table_values_Value_pz4e1lr51y
                    section.data(133).logicalSrcIdx = 132;
                    section.data(133).dtTransOffset = 3141;

                    ;% rtP.convert_pu_Gain_ocuvhlhykv
                    section.data(134).logicalSrcIdx = 133;
                    section.data(134).dtTransOffset = 4143;

                    ;% rtP.indexing_Gain_jnauyr3dqe
                    section.data(135).logicalSrcIdx = 134;
                    section.data(135).dtTransOffset = 4144;

                    ;% rtP.Gain_Gain_jxuwxy0g01
                    section.data(136).logicalSrcIdx = 135;
                    section.data(136).dtTransOffset = 4145;

                    ;% rtP.Step_Time
                    section.data(137).logicalSrcIdx = 136;
                    section.data(137).dtTransOffset = 4146;

                    ;% rtP.Step_Y0_iilvtmdfoa
                    section.data(138).logicalSrcIdx = 137;
                    section.data(138).dtTransOffset = 4147;

                    ;% rtP.Step_YFinal
                    section.data(139).logicalSrcIdx = 138;
                    section.data(139).dtTransOffset = 4148;

                    ;% rtP.integrator_IC
                    section.data(140).logicalSrcIdx = 139;
                    section.data(140).dtTransOffset = 4149;

                    ;% rtP.TransportDelay_Delay
                    section.data(141).logicalSrcIdx = 140;
                    section.data(141).dtTransOffset = 4150;

                    ;% rtP.TransportDelay_InitOutput
                    section.data(142).logicalSrcIdx = 141;
                    section.data(142).dtTransOffset = 4151;

                    ;% rtP.K1_Value
                    section.data(143).logicalSrcIdx = 142;
                    section.data(143).dtTransOffset = 4152;

                    ;% rtP.Memory_InitialCondition
                    section.data(144).logicalSrcIdx = 143;
                    section.data(144).dtTransOffset = 4153;

                    ;% rtP.Switch_Threshold
                    section.data(145).logicalSrcIdx = 144;
                    section.data(145).dtTransOffset = 4154;

                    ;% rtP.integrator_IC_o5k0p0omuk
                    section.data(146).logicalSrcIdx = 145;
                    section.data(146).dtTransOffset = 4155;

                    ;% rtP.TransportDelay_Delay_khxusi3syg
                    section.data(147).logicalSrcIdx = 146;
                    section.data(147).dtTransOffset = 4156;

                    ;% rtP.TransportDelay_InitOutput_fcurpnfims
                    section.data(148).logicalSrcIdx = 147;
                    section.data(148).dtTransOffset = 4157;

                    ;% rtP.K1_Value_p2yed5qh2t
                    section.data(149).logicalSrcIdx = 148;
                    section.data(149).dtTransOffset = 4158;

                    ;% rtP.Memory_InitialCondition_moqgj1emy3
                    section.data(150).logicalSrcIdx = 149;
                    section.data(150).dtTransOffset = 4159;

                    ;% rtP.integrator_IC_nx1ywgu3yd
                    section.data(151).logicalSrcIdx = 150;
                    section.data(151).dtTransOffset = 4160;

                    ;% rtP.TransportDelay_Delay_ofg0lwkz05
                    section.data(152).logicalSrcIdx = 151;
                    section.data(152).dtTransOffset = 4161;

                    ;% rtP.TransportDelay_InitOutput_hpctjm5rzm
                    section.data(153).logicalSrcIdx = 152;
                    section.data(153).dtTransOffset = 4162;

                    ;% rtP.K1_Value_ful2v3oltv
                    section.data(154).logicalSrcIdx = 153;
                    section.data(154).dtTransOffset = 4163;

                    ;% rtP.Memory_InitialCondition_hff0nofxg3
                    section.data(155).logicalSrcIdx = 154;
                    section.data(155).dtTransOffset = 4164;

                    ;% rtP.integrator_IC_i0o4ll0jcd
                    section.data(156).logicalSrcIdx = 155;
                    section.data(156).dtTransOffset = 4165;

                    ;% rtP.TransportDelay_Delay_gievexvnzj
                    section.data(157).logicalSrcIdx = 156;
                    section.data(157).dtTransOffset = 4166;

                    ;% rtP.TransportDelay_InitOutput_balur43s2o
                    section.data(158).logicalSrcIdx = 157;
                    section.data(158).dtTransOffset = 4167;

                    ;% rtP.K1_Value_gff0kfd14l
                    section.data(159).logicalSrcIdx = 158;
                    section.data(159).dtTransOffset = 4168;

                    ;% rtP.Memory_InitialCondition_mu0u35defg
                    section.data(160).logicalSrcIdx = 159;
                    section.data(160).dtTransOffset = 4169;

                    ;% rtP.integrator_IC_droafotp5y
                    section.data(161).logicalSrcIdx = 160;
                    section.data(161).dtTransOffset = 4170;

                    ;% rtP.TransportDelay_Delay_gfwbehe5ez
                    section.data(162).logicalSrcIdx = 161;
                    section.data(162).dtTransOffset = 4171;

                    ;% rtP.TransportDelay_InitOutput_n232vm3mqw
                    section.data(163).logicalSrcIdx = 162;
                    section.data(163).dtTransOffset = 4172;

                    ;% rtP.K1_Value_bwyabfwh1v
                    section.data(164).logicalSrcIdx = 163;
                    section.data(164).dtTransOffset = 4173;

                    ;% rtP.Memory_InitialCondition_l1hfk5anpl
                    section.data(165).logicalSrcIdx = 164;
                    section.data(165).dtTransOffset = 4174;

                    ;% rtP.Bias_Bias_eywhmtq0nz
                    section.data(166).logicalSrcIdx = 165;
                    section.data(166).dtTransOffset = 4175;

                    ;% rtP.Gain2_Gain
                    section.data(167).logicalSrcIdx = 166;
                    section.data(167).dtTransOffset = 4176;

                    ;% rtP.Constant3_Value
                    section.data(168).logicalSrcIdx = 167;
                    section.data(168).dtTransOffset = 4177;

                    ;% rtP.Constant3_Value_j4b4zpsigk
                    section.data(169).logicalSrcIdx = 168;
                    section.data(169).dtTransOffset = 4178;

                    ;% rtP.Constant3_Value_ltnm24yy5d
                    section.data(170).logicalSrcIdx = 169;
                    section.data(170).dtTransOffset = 4179;

                    ;% rtP.Step1_Time
                    section.data(171).logicalSrcIdx = 170;
                    section.data(171).dtTransOffset = 4180;

                    ;% rtP.Step1_Y0
                    section.data(172).logicalSrcIdx = 171;
                    section.data(172).dtTransOffset = 4181;

                    ;% rtP.Step1_YFinal
                    section.data(173).logicalSrcIdx = 172;
                    section.data(173).dtTransOffset = 4182;

                    ;% rtP.Saturation3_UpperSat
                    section.data(174).logicalSrcIdx = 173;
                    section.data(174).dtTransOffset = 4183;

                    ;% rtP.Saturation3_LowerSat
                    section.data(175).logicalSrcIdx = 174;
                    section.data(175).dtTransOffset = 4184;

                    ;% rtP.UnitDelay1_InitialCondition
                    section.data(176).logicalSrcIdx = 175;
                    section.data(176).dtTransOffset = 4185;

                    ;% rtP.integrator_IC_cewwxj2gip
                    section.data(177).logicalSrcIdx = 176;
                    section.data(177).dtTransOffset = 4186;

                    ;% rtP.TransportDelay_Delay_nsr41clxsc
                    section.data(178).logicalSrcIdx = 177;
                    section.data(178).dtTransOffset = 4187;

                    ;% rtP.TransportDelay_InitOutput_n24jgiss12
                    section.data(179).logicalSrcIdx = 178;
                    section.data(179).dtTransOffset = 4188;

                    ;% rtP.K1_Value_h5aqg4redb
                    section.data(180).logicalSrcIdx = 179;
                    section.data(180).dtTransOffset = 4189;

                    ;% rtP.Memory_InitialCondition_ecfbyrmftp
                    section.data(181).logicalSrcIdx = 180;
                    section.data(181).dtTransOffset = 4190;

                    ;% rtP.Step_Y0_fnc41asoey
                    section.data(182).logicalSrcIdx = 181;
                    section.data(182).dtTransOffset = 4191;

                    ;% rtP.Saturation2_UpperSat
                    section.data(183).logicalSrcIdx = 182;
                    section.data(183).dtTransOffset = 4192;

                    ;% rtP.Saturation2_LowerSat
                    section.data(184).logicalSrcIdx = 183;
                    section.data(184).dtTransOffset = 4193;

                    ;% rtP.Step_Y0_gd5oj533he
                    section.data(185).logicalSrcIdx = 184;
                    section.data(185).dtTransOffset = 4194;

                    ;% rtP.Saturation6_UpperSat
                    section.data(186).logicalSrcIdx = 185;
                    section.data(186).dtTransOffset = 4195;

                    ;% rtP.Saturation6_LowerSat
                    section.data(187).logicalSrcIdx = 186;
                    section.data(187).dtTransOffset = 4196;

                    ;% rtP.Constant_Value_kxfziju4tw
                    section.data(188).logicalSrcIdx = 187;
                    section.data(188).dtTransOffset = 4197;

                    ;% rtP.Constant1_Value_ah5g1obm1c
                    section.data(189).logicalSrcIdx = 188;
                    section.data(189).dtTransOffset = 4198;

                    ;% rtP.Constant10_Value
                    section.data(190).logicalSrcIdx = 189;
                    section.data(190).dtTransOffset = 4199;

                    ;% rtP.Constant11_Value
                    section.data(191).logicalSrcIdx = 190;
                    section.data(191).dtTransOffset = 4200;

                    ;% rtP.Constant5_Value
                    section.data(192).logicalSrcIdx = 191;
                    section.data(192).dtTransOffset = 4201;

                    ;% rtP.Constant7_Value
                    section.data(193).logicalSrcIdx = 192;
                    section.data(193).dtTransOffset = 4202;

                    ;% rtP.Constant_Value_fke3pdcioo
                    section.data(194).logicalSrcIdx = 193;
                    section.data(194).dtTransOffset = 4203;

                    ;% rtP.Constant2_Value_j5gua0l1cu
                    section.data(195).logicalSrcIdx = 194;
                    section.data(195).dtTransOffset = 4204;

                    ;% rtP.Clamping_zero_Value_bhl50gjfmv
                    section.data(196).logicalSrcIdx = 195;
                    section.data(196).dtTransOffset = 4205;

                    ;% rtP.Clamping_zero_Value_editfihzwr
                    section.data(197).logicalSrcIdx = 196;
                    section.data(197).dtTransOffset = 4206;

                    ;% rtP.Constant1_Value_lshxyldrcl
                    section.data(198).logicalSrcIdx = 197;
                    section.data(198).dtTransOffset = 4207;

                    ;% rtP.RTP_0BF8E32F_angular_position_Value
                    section.data(199).logicalSrcIdx = 198;
                    section.data(199).dtTransOffset = 4208;

                    ;% rtP.RTP_0BF8E32F_angular_velocity_Value
                    section.data(200).logicalSrcIdx = 199;
                    section.data(200).dtTransOffset = 4209;

                    ;% rtP.RTP_0BF8E32F_i_d_Value
                    section.data(201).logicalSrcIdx = 200;
                    section.data(201).dtTransOffset = 4210;

                    ;% rtP.RTP_0BF8E32F_i_q_Value
                    section.data(202).logicalSrcIdx = 201;
                    section.data(202).dtTransOffset = 4211;

                    ;% rtP.RTP_0BF8E32F_torque_Value
                    section.data(203).logicalSrcIdx = 202;
                    section.data(203).dtTransOffset = 4212;

                    ;% rtP.RTP_12AF5A6E_vc_Value
                    section.data(204).logicalSrcIdx = 203;
                    section.data(204).dtTransOffset = 4213;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtP.offset_Value
                    section.data(1).logicalSrcIdx = 204;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.offset_Value_lmhvh4midj
                    section.data(2).logicalSrcIdx = 205;
                    section.data(2).dtTransOffset = 4;

                    ;% rtP.offset_Value_mwsc4qa1fy
                    section.data(3).logicalSrcIdx = 206;
                    section.data(3).dtTransOffset = 8;

                    ;% rtP.offset_Value_mdzj24mdnx
                    section.data(4).logicalSrcIdx = 207;
                    section.data(4).dtTransOffset = 12;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 8;
            section.data(8)  = dumData; %prealloc

                    ;% rtP.Offset_Value
                    section.data(1).logicalSrcIdx = 208;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Switch_Threshold_jxr2cmuqwa
                    section.data(2).logicalSrcIdx = 209;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Offset_Value_ekf4xacrxj
                    section.data(3).logicalSrcIdx = 210;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Switch_Threshold_nxmpevclsq
                    section.data(4).logicalSrcIdx = 211;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Offset_Value_fdpl4fkqt4
                    section.data(5).logicalSrcIdx = 212;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Switch_Threshold_hxqfqghb4d
                    section.data(6).logicalSrcIdx = 213;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Offset_Value_m3zt2yvby3
                    section.data(7).logicalSrcIdx = 214;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Switch_Threshold_ln2jpvokjq
                    section.data(8).logicalSrcIdx = 215;
                    section.data(8).dtTransOffset = 7;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 16;
            section.data(16)  = dumData; %prealloc

                    ;% rtP.Constant_Value_m5jwagwauz
                    section.data(1).logicalSrcIdx = 216;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Constant2_Value_g15j3l5i1j
                    section.data(2).logicalSrcIdx = 217;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Constant3_Value_hshw5uztzr
                    section.data(3).logicalSrcIdx = 218;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Constant4_Value
                    section.data(4).logicalSrcIdx = 219;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Constant_Value_aijixv30rt
                    section.data(5).logicalSrcIdx = 220;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Constant2_Value_kruxguatfq
                    section.data(6).logicalSrcIdx = 221;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Constant3_Value_cagblpulww
                    section.data(7).logicalSrcIdx = 222;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Constant4_Value_gaiqol5vq3
                    section.data(8).logicalSrcIdx = 223;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.Constant_Value_dkhphikhxn
                    section.data(9).logicalSrcIdx = 224;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Constant2_Value_chfiiyl2xo
                    section.data(10).logicalSrcIdx = 225;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.Constant3_Value_ckuyfoczpd
                    section.data(11).logicalSrcIdx = 226;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.Constant4_Value_d5cs5fwkek
                    section.data(12).logicalSrcIdx = 227;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.Constant_Value_ljwvnj1h33
                    section.data(13).logicalSrcIdx = 228;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.Constant2_Value_pr0foizd4c
                    section.data(14).logicalSrcIdx = 229;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.Constant3_Value_j5j0j3jbky
                    section.data(15).logicalSrcIdx = 230;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.Constant4_Value_jrpwj3ts4p
                    section.data(16).logicalSrcIdx = 231;
                    section.data(16).dtTransOffset = 15;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtP.gniufkjjvw.Gain_Gain
                    section.data(1).logicalSrcIdx = 232;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.gniufkjjvw.RMS_Y0
                    section.data(2).logicalSrcIdx = 233;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.gniufkjjvw.integrator_IC
                    section.data(3).logicalSrcIdx = 234;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.gniufkjjvw.TransportDelay_Delay
                    section.data(4).logicalSrcIdx = 235;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.gniufkjjvw.TransportDelay_InitOutput
                    section.data(5).logicalSrcIdx = 236;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.gniufkjjvw.K1_Value
                    section.data(6).logicalSrcIdx = 237;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.gniufkjjvw.Memory_InitialCondition
                    section.data(7).logicalSrcIdx = 238;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.gniufkjjvw.Saturationtoavoidnegativesqrt_UpperSat
                    section.data(8).logicalSrcIdx = 239;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.gniufkjjvw.Saturationtoavoidnegativesqrt_LowerSat
                    section.data(9).logicalSrcIdx = 240;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            paramMap.sections(5) = section;
            clear section

            section.nData     = 22;
            section.data(22)  = dumData; %prealloc

                    ;% rtP.p2ivnqp1am.Gain_Gain
                    section.data(1).logicalSrcIdx = 241;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.p2ivnqp1am.Gain_Gain_lcakt0uqm5
                    section.data(2).logicalSrcIdx = 242;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.p2ivnqp1am.RMS_Y0
                    section.data(3).logicalSrcIdx = 243;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.p2ivnqp1am.integrator_IC
                    section.data(4).logicalSrcIdx = 244;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.p2ivnqp1am.TransportDelay_Delay
                    section.data(5).logicalSrcIdx = 245;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.p2ivnqp1am.TransportDelay_InitOutput
                    section.data(6).logicalSrcIdx = 246;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.p2ivnqp1am.K1_Value
                    section.data(7).logicalSrcIdx = 247;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.p2ivnqp1am.Memory_InitialCondition
                    section.data(8).logicalSrcIdx = 248;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.p2ivnqp1am.integrator_IC_kjog5ftnvn
                    section.data(9).logicalSrcIdx = 249;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.p2ivnqp1am.TransportDelay_Delay_pzcjdymxhr
                    section.data(10).logicalSrcIdx = 250;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.p2ivnqp1am.TransportDelay_InitOutput_hry3bkiyft
                    section.data(11).logicalSrcIdx = 251;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.p2ivnqp1am.K1_Value_jrn3b22hcd
                    section.data(12).logicalSrcIdx = 252;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.p2ivnqp1am.Memory_InitialCondition_ee2jw0csk4
                    section.data(13).logicalSrcIdx = 253;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.p2ivnqp1am.sinwt_Amp
                    section.data(14).logicalSrcIdx = 254;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.p2ivnqp1am.sinwt_Bias
                    section.data(15).logicalSrcIdx = 255;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.p2ivnqp1am.sinwt_Freq
                    section.data(16).logicalSrcIdx = 256;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.p2ivnqp1am.sinwt_Phase
                    section.data(17).logicalSrcIdx = 257;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.p2ivnqp1am.coswt_Amp
                    section.data(18).logicalSrcIdx = 258;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.p2ivnqp1am.coswt_Bias
                    section.data(19).logicalSrcIdx = 259;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.p2ivnqp1am.coswt_Freq
                    section.data(20).logicalSrcIdx = 260;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.p2ivnqp1am.coswt_Phase
                    section.data(21).logicalSrcIdx = 261;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.p2ivnqp1am.Gain_Gain_gqtqomfgpx
                    section.data(22).logicalSrcIdx = 262;
                    section.data(22).dtTransOffset = 21;

            nTotData = nTotData + section.nData;
            paramMap.sections(6) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtP.bnqfkp2to4b.Gain_Gain
                    section.data(1).logicalSrcIdx = 263;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.bnqfkp2to4b.RMS_Y0
                    section.data(2).logicalSrcIdx = 264;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.bnqfkp2to4b.integrator_IC
                    section.data(3).logicalSrcIdx = 265;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.bnqfkp2to4b.TransportDelay_Delay
                    section.data(4).logicalSrcIdx = 266;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.bnqfkp2to4b.TransportDelay_InitOutput
                    section.data(5).logicalSrcIdx = 267;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.bnqfkp2to4b.K1_Value
                    section.data(6).logicalSrcIdx = 268;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.bnqfkp2to4b.Memory_InitialCondition
                    section.data(7).logicalSrcIdx = 269;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.bnqfkp2to4b.Saturationtoavoidnegativesqrt_UpperSat
                    section.data(8).logicalSrcIdx = 270;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.bnqfkp2to4b.Saturationtoavoidnegativesqrt_LowerSat
                    section.data(9).logicalSrcIdx = 271;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            paramMap.sections(7) = section;
            clear section

            section.nData     = 22;
            section.data(22)  = dumData; %prealloc

                    ;% rtP.mrd0p0xbfto.Gain_Gain
                    section.data(1).logicalSrcIdx = 272;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.mrd0p0xbfto.Gain_Gain_lcakt0uqm5
                    section.data(2).logicalSrcIdx = 273;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.mrd0p0xbfto.RMS_Y0
                    section.data(3).logicalSrcIdx = 274;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.mrd0p0xbfto.integrator_IC
                    section.data(4).logicalSrcIdx = 275;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.mrd0p0xbfto.TransportDelay_Delay
                    section.data(5).logicalSrcIdx = 276;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.mrd0p0xbfto.TransportDelay_InitOutput
                    section.data(6).logicalSrcIdx = 277;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.mrd0p0xbfto.K1_Value
                    section.data(7).logicalSrcIdx = 278;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.mrd0p0xbfto.Memory_InitialCondition
                    section.data(8).logicalSrcIdx = 279;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.mrd0p0xbfto.integrator_IC_kjog5ftnvn
                    section.data(9).logicalSrcIdx = 280;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.mrd0p0xbfto.TransportDelay_Delay_pzcjdymxhr
                    section.data(10).logicalSrcIdx = 281;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.mrd0p0xbfto.TransportDelay_InitOutput_hry3bkiyft
                    section.data(11).logicalSrcIdx = 282;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.mrd0p0xbfto.K1_Value_jrn3b22hcd
                    section.data(12).logicalSrcIdx = 283;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.mrd0p0xbfto.Memory_InitialCondition_ee2jw0csk4
                    section.data(13).logicalSrcIdx = 284;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.mrd0p0xbfto.sinwt_Amp
                    section.data(14).logicalSrcIdx = 285;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.mrd0p0xbfto.sinwt_Bias
                    section.data(15).logicalSrcIdx = 286;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.mrd0p0xbfto.sinwt_Freq
                    section.data(16).logicalSrcIdx = 287;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.mrd0p0xbfto.sinwt_Phase
                    section.data(17).logicalSrcIdx = 288;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.mrd0p0xbfto.coswt_Amp
                    section.data(18).logicalSrcIdx = 289;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.mrd0p0xbfto.coswt_Bias
                    section.data(19).logicalSrcIdx = 290;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.mrd0p0xbfto.coswt_Freq
                    section.data(20).logicalSrcIdx = 291;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.mrd0p0xbfto.coswt_Phase
                    section.data(21).logicalSrcIdx = 292;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.mrd0p0xbfto.Gain_Gain_gqtqomfgpx
                    section.data(22).logicalSrcIdx = 293;
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
            section.nData     = 136;
            section.data(136)  = dumData; %prealloc

                    ;% rtB.lx3o2nzd5a
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.k1kxogzjq2
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 4;

                    ;% rtB.ax5cd4l5sy
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 7;

                    ;% rtB.dnkaa0wdib
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 9;

                    ;% rtB.a5tod41fib
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 10;

                    ;% rtB.kjqqzkb4qm
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 11;

                    ;% rtB.lkbqqqpmru
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 12;

                    ;% rtB.ccguvhfirq
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 16;

                    ;% rtB.kfqhgevtwz
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 18;

                    ;% rtB.oc5qjsgey3
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 19;

                    ;% rtB.eyj4z12rtz
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 20;

                    ;% rtB.fvmivjv3lb
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 21;

                    ;% rtB.dnaovulvlb
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 25;

                    ;% rtB.jdpnhxzdjk
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 27;

                    ;% rtB.dasdy132yx
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 28;

                    ;% rtB.d1d1zaapqh
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 29;

                    ;% rtB.bhgw4g2foh
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 30;

                    ;% rtB.kvsxukkcmj
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 34;

                    ;% rtB.auatjqdhf0
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 35;

                    ;% rtB.penrlhu4sz
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 138;

                    ;% rtB.bbnzbwdua0
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 151;

                    ;% rtB.iqdew0e4el
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 152;

                    ;% rtB.hwiizqythe
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 153;

                    ;% rtB.lbrq5h4ui5
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 154;

                    ;% rtB.eojl0a42ce
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 155;

                    ;% rtB.bcuwqh32s5
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 156;

                    ;% rtB.g5g1ppgz3t
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 157;

                    ;% rtB.bazmfcvoth
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 158;

                    ;% rtB.d4ciwwvfa2
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 159;

                    ;% rtB.fpbcf53fcr
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 160;

                    ;% rtB.pjkrckrbmi
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 161;

                    ;% rtB.m4t3yxnlif
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 162;

                    ;% rtB.b0viev4kse
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 163;

                    ;% rtB.edf2q5bfk2
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 164;

                    ;% rtB.m555x5ha03
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 165;

                    ;% rtB.fj1uu02s3f
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 166;

                    ;% rtB.lfphzr3zkl
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 167;

                    ;% rtB.inimsgpdgr
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 168;

                    ;% rtB.casm2noqiq
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 169;

                    ;% rtB.m2ui1ybdof
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 170;

                    ;% rtB.iesgkvkxzq
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 171;

                    ;% rtB.ekihv3chvn
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 172;

                    ;% rtB.j4ke03ls2t
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 173;

                    ;% rtB.gmzmjbpdyb
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 174;

                    ;% rtB.cih22fdyok
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 175;

                    ;% rtB.ajkvz5ci0m
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 176;

                    ;% rtB.aezqvkzl1a
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 179;

                    ;% rtB.czpfblkmwj
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 180;

                    ;% rtB.jfh33nt3he
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 181;

                    ;% rtB.kd15rro4dn
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 182;

                    ;% rtB.kwmvrvaytb
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 185;

                    ;% rtB.jgity2osqp
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 186;

                    ;% rtB.dx2ufdiafd
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 187;

                    ;% rtB.bh3adjtw3a
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 188;

                    ;% rtB.facrebrkle
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 189;

                    ;% rtB.mua0vkjnxz
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 190;

                    ;% rtB.gwxyrbeurc
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 191;

                    ;% rtB.h1hb414rrc
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 192;

                    ;% rtB.nc3sgro020
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 193;

                    ;% rtB.m3yw3qpyy5
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 194;

                    ;% rtB.jhrx2rptab
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 195;

                    ;% rtB.gpqy41urpo
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 196;

                    ;% rtB.bmsygqhng1
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 197;

                    ;% rtB.mc01v50j1n
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 198;

                    ;% rtB.on1rqioqcn
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 199;

                    ;% rtB.dewc2widgy
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 200;

                    ;% rtB.eam0hrf2nm
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 201;

                    ;% rtB.ewo5ddkpno
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 202;

                    ;% rtB.j5p2ia5v2q
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 203;

                    ;% rtB.ehefe0csih
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 204;

                    ;% rtB.lssacfysri
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 205;

                    ;% rtB.dldtrnzhoi
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 206;

                    ;% rtB.m2nda4lnht
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 209;

                    ;% rtB.gp50ky12vc
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 210;

                    ;% rtB.acfwypvu3k
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 213;

                    ;% rtB.jpa4fhevkb
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 216;

                    ;% rtB.erxv4o2xnb
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 219;

                    ;% rtB.a0waq2yige
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 220;

                    ;% rtB.ebgz4e1c3g
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 221;

                    ;% rtB.lerymqaro5
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 222;

                    ;% rtB.f3fa0bs5yo
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 223;

                    ;% rtB.duantldayg
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 224;

                    ;% rtB.ceb1wb5dhs
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 225;

                    ;% rtB.m3zdvdemp1
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 226;

                    ;% rtB.dmapaibmba
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 227;

                    ;% rtB.ayi2asd3kf
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 228;

                    ;% rtB.jl0z5ju0tz
                    section.data(87).logicalSrcIdx = 86;
                    section.data(87).dtTransOffset = 229;

                    ;% rtB.mk5absh4ch
                    section.data(88).logicalSrcIdx = 87;
                    section.data(88).dtTransOffset = 230;

                    ;% rtB.njf0zqooka
                    section.data(89).logicalSrcIdx = 88;
                    section.data(89).dtTransOffset = 231;

                    ;% rtB.mhvmaspfn2
                    section.data(90).logicalSrcIdx = 89;
                    section.data(90).dtTransOffset = 232;

                    ;% rtB.o0xapzxixz
                    section.data(91).logicalSrcIdx = 90;
                    section.data(91).dtTransOffset = 233;

                    ;% rtB.omv3banczb
                    section.data(92).logicalSrcIdx = 91;
                    section.data(92).dtTransOffset = 234;

                    ;% rtB.ksk3rgvgha
                    section.data(93).logicalSrcIdx = 92;
                    section.data(93).dtTransOffset = 235;

                    ;% rtB.bk2w4t5edx
                    section.data(94).logicalSrcIdx = 93;
                    section.data(94).dtTransOffset = 236;

                    ;% rtB.otibbq1ybw
                    section.data(95).logicalSrcIdx = 94;
                    section.data(95).dtTransOffset = 237;

                    ;% rtB.dw2bf0o3qc
                    section.data(96).logicalSrcIdx = 95;
                    section.data(96).dtTransOffset = 238;

                    ;% rtB.ibmra4o1q3
                    section.data(97).logicalSrcIdx = 96;
                    section.data(97).dtTransOffset = 241;

                    ;% rtB.av4t0lwnot
                    section.data(98).logicalSrcIdx = 97;
                    section.data(98).dtTransOffset = 242;

                    ;% rtB.ik01ip0emy
                    section.data(99).logicalSrcIdx = 98;
                    section.data(99).dtTransOffset = 243;

                    ;% rtB.i0bz332zpr
                    section.data(100).logicalSrcIdx = 99;
                    section.data(100).dtTransOffset = 244;

                    ;% rtB.pzjmlq5eg1
                    section.data(101).logicalSrcIdx = 100;
                    section.data(101).dtTransOffset = 245;

                    ;% rtB.lpm2ybqpkn
                    section.data(102).logicalSrcIdx = 101;
                    section.data(102).dtTransOffset = 246;

                    ;% rtB.ewyzc4ea3q
                    section.data(103).logicalSrcIdx = 102;
                    section.data(103).dtTransOffset = 247;

                    ;% rtB.nfxiwn1dyf
                    section.data(104).logicalSrcIdx = 103;
                    section.data(104).dtTransOffset = 248;

                    ;% rtB.crdcjqcybf
                    section.data(105).logicalSrcIdx = 104;
                    section.data(105).dtTransOffset = 249;

                    ;% rtB.dm1ua4d4p4
                    section.data(106).logicalSrcIdx = 105;
                    section.data(106).dtTransOffset = 250;

                    ;% rtB.adkyaqr1hi
                    section.data(107).logicalSrcIdx = 106;
                    section.data(107).dtTransOffset = 251;

                    ;% rtB.nsrfmn2s2t
                    section.data(108).logicalSrcIdx = 107;
                    section.data(108).dtTransOffset = 252;

                    ;% rtB.psgyet3cnl
                    section.data(109).logicalSrcIdx = 108;
                    section.data(109).dtTransOffset = 253;

                    ;% rtB.nxiojvqwee
                    section.data(110).logicalSrcIdx = 109;
                    section.data(110).dtTransOffset = 254;

                    ;% rtB.d3f12ipwbj
                    section.data(111).logicalSrcIdx = 110;
                    section.data(111).dtTransOffset = 255;

                    ;% rtB.d3cez0rwmm
                    section.data(112).logicalSrcIdx = 111;
                    section.data(112).dtTransOffset = 256;

                    ;% rtB.b2vm2ezgel
                    section.data(113).logicalSrcIdx = 112;
                    section.data(113).dtTransOffset = 257;

                    ;% rtB.pg4q23epyz
                    section.data(114).logicalSrcIdx = 113;
                    section.data(114).dtTransOffset = 258;

                    ;% rtB.nlhidx3ehg
                    section.data(115).logicalSrcIdx = 114;
                    section.data(115).dtTransOffset = 259;

                    ;% rtB.kckbrisjzm
                    section.data(116).logicalSrcIdx = 115;
                    section.data(116).dtTransOffset = 260;

                    ;% rtB.g4tdqbd1jh
                    section.data(117).logicalSrcIdx = 116;
                    section.data(117).dtTransOffset = 261;

                    ;% rtB.nmjljcwgm1
                    section.data(118).logicalSrcIdx = 117;
                    section.data(118).dtTransOffset = 262;

                    ;% rtB.dlix5rchrw
                    section.data(119).logicalSrcIdx = 118;
                    section.data(119).dtTransOffset = 263;

                    ;% rtB.btw4nehwhl
                    section.data(120).logicalSrcIdx = 119;
                    section.data(120).dtTransOffset = 264;

                    ;% rtB.mvggiakmde
                    section.data(121).logicalSrcIdx = 120;
                    section.data(121).dtTransOffset = 265;

                    ;% rtB.aew5xboqsq
                    section.data(122).logicalSrcIdx = 121;
                    section.data(122).dtTransOffset = 266;

                    ;% rtB.oryej5mskv
                    section.data(123).logicalSrcIdx = 122;
                    section.data(123).dtTransOffset = 267;

                    ;% rtB.omn34xrzyy
                    section.data(124).logicalSrcIdx = 123;
                    section.data(124).dtTransOffset = 268;

                    ;% rtB.n5ksnoniny
                    section.data(125).logicalSrcIdx = 124;
                    section.data(125).dtTransOffset = 269;

                    ;% rtB.ompzojzvpx
                    section.data(126).logicalSrcIdx = 125;
                    section.data(126).dtTransOffset = 270;

                    ;% rtB.abg1iowprd
                    section.data(127).logicalSrcIdx = 126;
                    section.data(127).dtTransOffset = 271;

                    ;% rtB.hqp3kk4vrz
                    section.data(128).logicalSrcIdx = 127;
                    section.data(128).dtTransOffset = 272;

                    ;% rtB.beofpf1tft
                    section.data(129).logicalSrcIdx = 128;
                    section.data(129).dtTransOffset = 273;

                    ;% rtB.njyxzuxd0a
                    section.data(130).logicalSrcIdx = 129;
                    section.data(130).dtTransOffset = 274;

                    ;% rtB.pzih1oilt4
                    section.data(131).logicalSrcIdx = 130;
                    section.data(131).dtTransOffset = 275;

                    ;% rtB.jnuez1rr0j
                    section.data(132).logicalSrcIdx = 131;
                    section.data(132).dtTransOffset = 276;

                    ;% rtB.pggv4jdvwv
                    section.data(133).logicalSrcIdx = 132;
                    section.data(133).dtTransOffset = 277;

                    ;% rtB.exjj4nbbit
                    section.data(134).logicalSrcIdx = 133;
                    section.data(134).dtTransOffset = 279;

                    ;% rtB.ektoy1cwjp
                    section.data(135).logicalSrcIdx = 134;
                    section.data(135).dtTransOffset = 280;

                    ;% rtB.lhopohw40v
                    section.data(136).logicalSrcIdx = 135;
                    section.data(136).dtTransOffset = 281;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtB.igsucrokit
                    section.data(1).logicalSrcIdx = 137;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.ewgbhxkzbm
                    section.data(2).logicalSrcIdx = 138;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtB.iszk1zp113
                    section.data(1).logicalSrcIdx = 145;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.ago5jfunj3
                    section.data(2).logicalSrcIdx = 146;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.g4wriih5k0
                    section.data(3).logicalSrcIdx = 147;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.ne52f44fra
                    section.data(4).logicalSrcIdx = 148;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.fju2qqux5g
                    section.data(5).logicalSrcIdx = 149;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.k2hkvd0khb
                    section.data(6).logicalSrcIdx = 150;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.cey5qn1gkj
                    section.data(7).logicalSrcIdx = 151;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.glolkkkv2d
                    section.data(8).logicalSrcIdx = 152;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.k5ripsc1fv
                    section.data(9).logicalSrcIdx = 153;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section

            section.nData     = 10;
            section.data(10)  = dumData; %prealloc

                    ;% rtB.gniufkjjvw.gsqfcp2tb4
                    section.data(1).logicalSrcIdx = 154;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.gniufkjjvw.hz5wvvr03q
                    section.data(2).logicalSrcIdx = 155;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.gniufkjjvw.cwh2pn5wy1
                    section.data(3).logicalSrcIdx = 156;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.gniufkjjvw.abkbpgkuss
                    section.data(4).logicalSrcIdx = 157;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.gniufkjjvw.lxtste3lck
                    section.data(5).logicalSrcIdx = 158;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.gniufkjjvw.et4ozkucqq
                    section.data(6).logicalSrcIdx = 159;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.gniufkjjvw.m2mmtijmri
                    section.data(7).logicalSrcIdx = 160;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.gniufkjjvw.ios53bkxrm
                    section.data(8).logicalSrcIdx = 161;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.gniufkjjvw.p2eadsrfnq
                    section.data(9).logicalSrcIdx = 162;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.gniufkjjvw.h0wo1aetl0
                    section.data(10).logicalSrcIdx = 163;
                    section.data(10).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            sigMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.p2ivnqp1am.j3h3pcq4al
                    section.data(1).logicalSrcIdx = 164;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(5) = section;
            clear section

            section.nData     = 17;
            section.data(17)  = dumData; %prealloc

                    ;% rtB.p2ivnqp1am.b2obo2k4w3
                    section.data(1).logicalSrcIdx = 165;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.p2ivnqp1am.mwhghtglia
                    section.data(2).logicalSrcIdx = 166;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.p2ivnqp1am.mjq3svnwjc
                    section.data(3).logicalSrcIdx = 167;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.p2ivnqp1am.ptxvibbhgk
                    section.data(4).logicalSrcIdx = 168;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.p2ivnqp1am.hxe55nlwnf
                    section.data(5).logicalSrcIdx = 169;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.p2ivnqp1am.ctfogtrwii
                    section.data(6).logicalSrcIdx = 170;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.p2ivnqp1am.e5aqacrdrg
                    section.data(7).logicalSrcIdx = 171;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.p2ivnqp1am.baysa5tphs
                    section.data(8).logicalSrcIdx = 172;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.p2ivnqp1am.pnyy1dfsha
                    section.data(9).logicalSrcIdx = 173;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.p2ivnqp1am.en5vrdrbct
                    section.data(10).logicalSrcIdx = 174;
                    section.data(10).dtTransOffset = 9;

                    ;% rtB.p2ivnqp1am.cqhv5wzfd3
                    section.data(11).logicalSrcIdx = 175;
                    section.data(11).dtTransOffset = 10;

                    ;% rtB.p2ivnqp1am.isi4pku4mf
                    section.data(12).logicalSrcIdx = 176;
                    section.data(12).dtTransOffset = 11;

                    ;% rtB.p2ivnqp1am.iigcaletkn
                    section.data(13).logicalSrcIdx = 177;
                    section.data(13).dtTransOffset = 12;

                    ;% rtB.p2ivnqp1am.go2ofm21cc
                    section.data(14).logicalSrcIdx = 178;
                    section.data(14).dtTransOffset = 13;

                    ;% rtB.p2ivnqp1am.fqzh5bmcbs
                    section.data(15).logicalSrcIdx = 179;
                    section.data(15).dtTransOffset = 14;

                    ;% rtB.p2ivnqp1am.p1yaqm2mly
                    section.data(16).logicalSrcIdx = 180;
                    section.data(16).dtTransOffset = 15;

                    ;% rtB.p2ivnqp1am.a5f01yxli2
                    section.data(17).logicalSrcIdx = 181;
                    section.data(17).dtTransOffset = 16;

            nTotData = nTotData + section.nData;
            sigMap.sections(6) = section;
            clear section

            section.nData     = 10;
            section.data(10)  = dumData; %prealloc

                    ;% rtB.bnqfkp2to4b.gsqfcp2tb4
                    section.data(1).logicalSrcIdx = 182;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.bnqfkp2to4b.hz5wvvr03q
                    section.data(2).logicalSrcIdx = 183;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.bnqfkp2to4b.cwh2pn5wy1
                    section.data(3).logicalSrcIdx = 184;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.bnqfkp2to4b.abkbpgkuss
                    section.data(4).logicalSrcIdx = 185;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.bnqfkp2to4b.lxtste3lck
                    section.data(5).logicalSrcIdx = 186;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.bnqfkp2to4b.et4ozkucqq
                    section.data(6).logicalSrcIdx = 187;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.bnqfkp2to4b.m2mmtijmri
                    section.data(7).logicalSrcIdx = 188;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.bnqfkp2to4b.ios53bkxrm
                    section.data(8).logicalSrcIdx = 189;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.bnqfkp2to4b.p2eadsrfnq
                    section.data(9).logicalSrcIdx = 190;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.bnqfkp2to4b.h0wo1aetl0
                    section.data(10).logicalSrcIdx = 191;
                    section.data(10).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            sigMap.sections(7) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.mrd0p0xbfto.j3h3pcq4al
                    section.data(1).logicalSrcIdx = 192;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(8) = section;
            clear section

            section.nData     = 17;
            section.data(17)  = dumData; %prealloc

                    ;% rtB.mrd0p0xbfto.b2obo2k4w3
                    section.data(1).logicalSrcIdx = 193;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.mrd0p0xbfto.mwhghtglia
                    section.data(2).logicalSrcIdx = 194;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.mrd0p0xbfto.mjq3svnwjc
                    section.data(3).logicalSrcIdx = 195;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.mrd0p0xbfto.ptxvibbhgk
                    section.data(4).logicalSrcIdx = 196;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.mrd0p0xbfto.hxe55nlwnf
                    section.data(5).logicalSrcIdx = 197;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.mrd0p0xbfto.ctfogtrwii
                    section.data(6).logicalSrcIdx = 198;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.mrd0p0xbfto.e5aqacrdrg
                    section.data(7).logicalSrcIdx = 199;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.mrd0p0xbfto.baysa5tphs
                    section.data(8).logicalSrcIdx = 200;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.mrd0p0xbfto.pnyy1dfsha
                    section.data(9).logicalSrcIdx = 201;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.mrd0p0xbfto.en5vrdrbct
                    section.data(10).logicalSrcIdx = 202;
                    section.data(10).dtTransOffset = 9;

                    ;% rtB.mrd0p0xbfto.cqhv5wzfd3
                    section.data(11).logicalSrcIdx = 203;
                    section.data(11).dtTransOffset = 10;

                    ;% rtB.mrd0p0xbfto.isi4pku4mf
                    section.data(12).logicalSrcIdx = 204;
                    section.data(12).dtTransOffset = 11;

                    ;% rtB.mrd0p0xbfto.iigcaletkn
                    section.data(13).logicalSrcIdx = 205;
                    section.data(13).dtTransOffset = 12;

                    ;% rtB.mrd0p0xbfto.go2ofm21cc
                    section.data(14).logicalSrcIdx = 206;
                    section.data(14).dtTransOffset = 13;

                    ;% rtB.mrd0p0xbfto.fqzh5bmcbs
                    section.data(15).logicalSrcIdx = 207;
                    section.data(15).dtTransOffset = 14;

                    ;% rtB.mrd0p0xbfto.p1yaqm2mly
                    section.data(16).logicalSrcIdx = 208;
                    section.data(16).dtTransOffset = 15;

                    ;% rtB.mrd0p0xbfto.a5f01yxli2
                    section.data(17).logicalSrcIdx = 209;
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
            section.nData     = 42;
            section.data(42)  = dumData; %prealloc

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

                    ;% rtDW.aljpcds43v
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 164;

                    ;% rtDW.osf4mzxagr
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 165;

                    ;% rtDW.klrbzagy05
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 166;

                    ;% rtDW.gwh2ncoyhs
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

                    ;% rtDW.g01dhr0w1d
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 224;

                    ;% rtDW.ezil1yxcvy
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 225;

                    ;% rtDW.n3xqnbproq
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 226;

                    ;% rtDW.dio11vnhkw
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 227;

                    ;% rtDW.ocpxj414bz
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 228;

                    ;% rtDW.mv3sh0gql1
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 231;

                    ;% rtDW.pguvwiktiy
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 232;

                    ;% rtDW.n3dox33xbz
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 233;

                    ;% rtDW.kx3oonvoou
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 234;

                    ;% rtDW.ltubjlx2ff
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 235;

                    ;% rtDW.gngsentxwk
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 236;

                    ;% rtDW.chnksmy5a2
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 237;

                    ;% rtDW.or1oxtso3w
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 238;

                    ;% rtDW.mwedu0ttdg
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 239;

                    ;% rtDW.mid4tugodz
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 240;

                    ;% rtDW.kujk2izer3
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 241;

                    ;% rtDW.bexizt5nd3
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 242;

                    ;% rtDW.nkvf05zwlz
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 243;

                    ;% rtDW.bxjnuxcal0
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 244;

                    ;% rtDW.ddmdrqoiqr
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 245;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 34;
            section.data(34)  = dumData; %prealloc

                    ;% rtDW.mkn0smb45c
                    section.data(1).logicalSrcIdx = 42;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.kmzoqk3hrt
                    section.data(2).logicalSrcIdx = 43;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.fujaejwgqx
                    section.data(3).logicalSrcIdx = 44;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.lucuvz545x
                    section.data(4).logicalSrcIdx = 45;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.ooorpxruqh
                    section.data(5).logicalSrcIdx = 46;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.ouj3vdr1tu
                    section.data(6).logicalSrcIdx = 47;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.fryyyqnzld
                    section.data(7).logicalSrcIdx = 48;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.jjzwrc4ift
                    section.data(8).logicalSrcIdx = 49;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.p4likipcey
                    section.data(9).logicalSrcIdx = 50;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.iovoyycjoy
                    section.data(10).logicalSrcIdx = 51;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.opqjgnpg0m
                    section.data(11).logicalSrcIdx = 52;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.d4blsk2dpg.LoggedData
                    section.data(12).logicalSrcIdx = 53;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.lptqpodbrr.LoggedData
                    section.data(13).logicalSrcIdx = 54;
                    section.data(13).dtTransOffset = 16;

                    ;% rtDW.fufsp4rhxt.LoggedData
                    section.data(14).logicalSrcIdx = 55;
                    section.data(14).dtTransOffset = 18;

                    ;% rtDW.bnmefmsg4a.LoggedData
                    section.data(15).logicalSrcIdx = 56;
                    section.data(15).dtTransOffset = 20;

                    ;% rtDW.mpxie31yye.LoggedData
                    section.data(16).logicalSrcIdx = 57;
                    section.data(16).dtTransOffset = 22;

                    ;% rtDW.huvspw5lf2.LoggedData
                    section.data(17).logicalSrcIdx = 58;
                    section.data(17).dtTransOffset = 23;

                    ;% rtDW.klt5ontc51.LoggedData
                    section.data(18).logicalSrcIdx = 59;
                    section.data(18).dtTransOffset = 24;

                    ;% rtDW.cem5i4tn2t.LoggedData
                    section.data(19).logicalSrcIdx = 60;
                    section.data(19).dtTransOffset = 28;

                    ;% rtDW.cos4th5ihy
                    section.data(20).logicalSrcIdx = 61;
                    section.data(20).dtTransOffset = 31;

                    ;% rtDW.bsgkw31sea.LoggedData
                    section.data(21).logicalSrcIdx = 62;
                    section.data(21).dtTransOffset = 33;

                    ;% rtDW.i21nwnk1vb
                    section.data(22).logicalSrcIdx = 63;
                    section.data(22).dtTransOffset = 37;

                    ;% rtDW.dvluhddqdu
                    section.data(23).logicalSrcIdx = 64;
                    section.data(23).dtTransOffset = 39;

                    ;% rtDW.d4fpdtzp4b
                    section.data(24).logicalSrcIdx = 65;
                    section.data(24).dtTransOffset = 41;

                    ;% rtDW.gl5wlbfz5w
                    section.data(25).logicalSrcIdx = 66;
                    section.data(25).dtTransOffset = 43;

                    ;% rtDW.ktbj4lgqph.LoggedData
                    section.data(26).logicalSrcIdx = 67;
                    section.data(26).dtTransOffset = 49;

                    ;% rtDW.aqihcohwpi.LoggedData
                    section.data(27).logicalSrcIdx = 68;
                    section.data(27).dtTransOffset = 55;

                    ;% rtDW.idsqnoqmih
                    section.data(28).logicalSrcIdx = 69;
                    section.data(28).dtTransOffset = 59;

                    ;% rtDW.nyy5puiaiw.LoggedData
                    section.data(29).logicalSrcIdx = 70;
                    section.data(29).dtTransOffset = 61;

                    ;% rtDW.eiudbjke0o.LoggedData
                    section.data(30).logicalSrcIdx = 71;
                    section.data(30).dtTransOffset = 64;

                    ;% rtDW.gqiuetli0h.LoggedData
                    section.data(31).logicalSrcIdx = 72;
                    section.data(31).dtTransOffset = 65;

                    ;% rtDW.kgdwcutibf.LoggedData
                    section.data(32).logicalSrcIdx = 73;
                    section.data(32).dtTransOffset = 69;

                    ;% rtDW.csbed4alhp.LoggedData
                    section.data(33).logicalSrcIdx = 74;
                    section.data(33).dtTransOffset = 75;

                    ;% rtDW.eccmsmgine.LoggedData
                    section.data(34).logicalSrcIdx = 75;
                    section.data(34).dtTransOffset = 78;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.jybvry15cx
                    section.data(1).logicalSrcIdx = 76;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.og3glzkrkn
                    section.data(2).logicalSrcIdx = 77;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 22;
            section.data(22)  = dumData; %prealloc

                    ;% rtDW.ci3flsowjr
                    section.data(1).logicalSrcIdx = 78;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ee4tnkvtia
                    section.data(2).logicalSrcIdx = 79;
                    section.data(2).dtTransOffset = 54;

                    ;% rtDW.pau214bwzs
                    section.data(3).logicalSrcIdx = 80;
                    section.data(3).dtTransOffset = 55;

                    ;% rtDW.f2jbwqrx1g
                    section.data(4).logicalSrcIdx = 81;
                    section.data(4).dtTransOffset = 60;

                    ;% rtDW.amljx2ytrh
                    section.data(5).logicalSrcIdx = 82;
                    section.data(5).dtTransOffset = 65;

                    ;% rtDW.kep5r5jb3p
                    section.data(6).logicalSrcIdx = 83;
                    section.data(6).dtTransOffset = 70;

                    ;% rtDW.afuv1ukzbi
                    section.data(7).logicalSrcIdx = 84;
                    section.data(7).dtTransOffset = 75;

                    ;% rtDW.idafjiibzh
                    section.data(8).logicalSrcIdx = 85;
                    section.data(8).dtTransOffset = 88;

                    ;% rtDW.oqlftfpyzo
                    section.data(9).logicalSrcIdx = 86;
                    section.data(9).dtTransOffset = 93;

                    ;% rtDW.lwfxqushzf
                    section.data(10).logicalSrcIdx = 87;
                    section.data(10).dtTransOffset = 94;

                    ;% rtDW.hbdfbj2hrl
                    section.data(11).logicalSrcIdx = 88;
                    section.data(11).dtTransOffset = 95;

                    ;% rtDW.ehouvfqdi4
                    section.data(12).logicalSrcIdx = 89;
                    section.data(12).dtTransOffset = 96;

                    ;% rtDW.dmjxaamnqj
                    section.data(13).logicalSrcIdx = 90;
                    section.data(13).dtTransOffset = 97;

                    ;% rtDW.is4xcvejv4
                    section.data(14).logicalSrcIdx = 91;
                    section.data(14).dtTransOffset = 98;

                    ;% rtDW.jo5cnjmjnv
                    section.data(15).logicalSrcIdx = 92;
                    section.data(15).dtTransOffset = 99;

                    ;% rtDW.ewlivdkxpi
                    section.data(16).logicalSrcIdx = 93;
                    section.data(16).dtTransOffset = 100;

                    ;% rtDW.ea3ux1cs3q
                    section.data(17).logicalSrcIdx = 94;
                    section.data(17).dtTransOffset = 101;

                    ;% rtDW.e3et0hhslh
                    section.data(18).logicalSrcIdx = 95;
                    section.data(18).dtTransOffset = 102;

                    ;% rtDW.gp0btav2p3
                    section.data(19).logicalSrcIdx = 96;
                    section.data(19).dtTransOffset = 103;

                    ;% rtDW.o50aojckos
                    section.data(20).logicalSrcIdx = 97;
                    section.data(20).dtTransOffset = 104;

                    ;% rtDW.chjrngylzv
                    section.data(21).logicalSrcIdx = 98;
                    section.data(21).dtTransOffset = 105;

                    ;% rtDW.i0zxk0esvr
                    section.data(22).logicalSrcIdx = 99;
                    section.data(22).dtTransOffset = 106;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.pqjp0akxnx
                    section.data(1).logicalSrcIdx = 100;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% rtDW.prqclxc3hl
                    section.data(1).logicalSrcIdx = 101;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.aqlfx3zwxf
                    section.data(2).logicalSrcIdx = 102;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.eiye4d5f1z
                    section.data(3).logicalSrcIdx = 103;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.lcp2ajv2ha
                    section.data(4).logicalSrcIdx = 104;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.pfq3t3xk2j
                    section.data(5).logicalSrcIdx = 105;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.h0bgdncuha
                    section.data(6).logicalSrcIdx = 106;
                    section.data(6).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtDW.gmfnujiv4w
                    section.data(1).logicalSrcIdx = 107;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.pec13ae3dq
                    section.data(2).logicalSrcIdx = 108;
                    section.data(2).dtTransOffset = 54;

                    ;% rtDW.kym2403csi
                    section.data(3).logicalSrcIdx = 109;
                    section.data(3).dtTransOffset = 108;

                    ;% rtDW.dth5njbdy2
                    section.data(4).logicalSrcIdx = 110;
                    section.data(4).dtTransOffset = 109;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
            clear section

            section.nData     = 27;
            section.data(27)  = dumData; %prealloc

                    ;% rtDW.jap351cpx1
                    section.data(1).logicalSrcIdx = 111;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ckn4muy4ys
                    section.data(2).logicalSrcIdx = 112;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.hkol5soztp
                    section.data(3).logicalSrcIdx = 113;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.lxn2321qt1
                    section.data(4).logicalSrcIdx = 114;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.maap1oa50o
                    section.data(5).logicalSrcIdx = 115;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.oy5qewybxi
                    section.data(6).logicalSrcIdx = 116;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.botydpplw2
                    section.data(7).logicalSrcIdx = 117;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.gp5pqc1tfw
                    section.data(8).logicalSrcIdx = 118;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.of2b4wxn5d
                    section.data(9).logicalSrcIdx = 119;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.hnvsl0l1bn
                    section.data(10).logicalSrcIdx = 120;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.nnybis1v23
                    section.data(11).logicalSrcIdx = 121;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.hy3wpocjoz
                    section.data(12).logicalSrcIdx = 122;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.p4fjp5mdzh
                    section.data(13).logicalSrcIdx = 123;
                    section.data(13).dtTransOffset = 12;

                    ;% rtDW.jkxjr1sq5p
                    section.data(14).logicalSrcIdx = 124;
                    section.data(14).dtTransOffset = 13;

                    ;% rtDW.p5gesufkqo
                    section.data(15).logicalSrcIdx = 125;
                    section.data(15).dtTransOffset = 14;

                    ;% rtDW.iw0ngkazoq
                    section.data(16).logicalSrcIdx = 126;
                    section.data(16).dtTransOffset = 15;

                    ;% rtDW.c0dig1xxmy
                    section.data(17).logicalSrcIdx = 127;
                    section.data(17).dtTransOffset = 16;

                    ;% rtDW.dtfebsdaux
                    section.data(18).logicalSrcIdx = 128;
                    section.data(18).dtTransOffset = 17;

                    ;% rtDW.clj1uqqbhg
                    section.data(19).logicalSrcIdx = 129;
                    section.data(19).dtTransOffset = 18;

                    ;% rtDW.f0qhxkkptm
                    section.data(20).logicalSrcIdx = 130;
                    section.data(20).dtTransOffset = 19;

                    ;% rtDW.kxe5p1dtch
                    section.data(21).logicalSrcIdx = 131;
                    section.data(21).dtTransOffset = 20;

                    ;% rtDW.fwyfyfafi5
                    section.data(22).logicalSrcIdx = 132;
                    section.data(22).dtTransOffset = 21;

                    ;% rtDW.bu3egesnsd
                    section.data(23).logicalSrcIdx = 133;
                    section.data(23).dtTransOffset = 22;

                    ;% rtDW.p2fmoh1eok
                    section.data(24).logicalSrcIdx = 134;
                    section.data(24).dtTransOffset = 23;

                    ;% rtDW.ejgnlent0u
                    section.data(25).logicalSrcIdx = 135;
                    section.data(25).dtTransOffset = 24;

                    ;% rtDW.msehqkshup
                    section.data(26).logicalSrcIdx = 136;
                    section.data(26).dtTransOffset = 25;

                    ;% rtDW.nikzvd40e0
                    section.data(27).logicalSrcIdx = 137;
                    section.data(27).dtTransOffset = 26;

            nTotData = nTotData + section.nData;
            dworkMap.sections(8) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.mix4hjlcly.js430d51ko
                    section.data(1).logicalSrcIdx = 138;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(9) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.ka1jh3z0pf.mis0isw31s
                    section.data(1).logicalSrcIdx = 139;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(10) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.jydwi5bupo.js430d51ko
                    section.data(1).logicalSrcIdx = 140;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(11) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.jnonmpw3r1.mis0isw31s
                    section.data(1).logicalSrcIdx = 141;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(12) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.gniufkjjvw.gcntdtbtkh
                    section.data(1).logicalSrcIdx = 142;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.gniufkjjvw.o3pqs4tnmx
                    section.data(2).logicalSrcIdx = 143;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(13) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gniufkjjvw.llqgtftx1x
                    section.data(1).logicalSrcIdx = 144;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(14) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.gniufkjjvw.llakzjlxxr
                    section.data(1).logicalSrcIdx = 145;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.gniufkjjvw.kltkuvytnu
                    section.data(2).logicalSrcIdx = 146;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(15) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.gniufkjjvw.pv3ytlnr1b
                    section.data(1).logicalSrcIdx = 147;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.gniufkjjvw.elaxv2ovi1
                    section.data(2).logicalSrcIdx = 148;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(16) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gniufkjjvw.du0hdfadhp
                    section.data(1).logicalSrcIdx = 149;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(17) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtDW.p2ivnqp1am.gpefuoor5e
                    section.data(1).logicalSrcIdx = 150;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.p2ivnqp1am.kebsytq2xe
                    section.data(2).logicalSrcIdx = 151;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.p2ivnqp1am.glwrz5pjcq
                    section.data(3).logicalSrcIdx = 152;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.p2ivnqp1am.nbi4s2icax
                    section.data(4).logicalSrcIdx = 153;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            dworkMap.sections(18) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.p2ivnqp1am.dcdmaqgr2q
                    section.data(1).logicalSrcIdx = 154;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.p2ivnqp1am.albmshzw1i
                    section.data(2).logicalSrcIdx = 155;
                    section.data(2).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(19) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.p2ivnqp1am.b4iq4vyuor
                    section.data(1).logicalSrcIdx = 156;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.p2ivnqp1am.kbk10zqztt
                    section.data(2).logicalSrcIdx = 157;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(20) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.p2ivnqp1am.iirxwp05k3
                    section.data(1).logicalSrcIdx = 158;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(21) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.p2ivnqp1am.p3lkixy2r2
                    section.data(1).logicalSrcIdx = 159;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(22) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.bnqfkp2to4b.gcntdtbtkh
                    section.data(1).logicalSrcIdx = 160;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.bnqfkp2to4b.o3pqs4tnmx
                    section.data(2).logicalSrcIdx = 161;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(23) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.bnqfkp2to4b.llqgtftx1x
                    section.data(1).logicalSrcIdx = 162;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(24) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.bnqfkp2to4b.llakzjlxxr
                    section.data(1).logicalSrcIdx = 163;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.bnqfkp2to4b.kltkuvytnu
                    section.data(2).logicalSrcIdx = 164;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(25) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.bnqfkp2to4b.pv3ytlnr1b
                    section.data(1).logicalSrcIdx = 165;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.bnqfkp2to4b.elaxv2ovi1
                    section.data(2).logicalSrcIdx = 166;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(26) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.bnqfkp2to4b.du0hdfadhp
                    section.data(1).logicalSrcIdx = 167;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(27) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtDW.mrd0p0xbfto.gpefuoor5e
                    section.data(1).logicalSrcIdx = 168;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.mrd0p0xbfto.kebsytq2xe
                    section.data(2).logicalSrcIdx = 169;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.mrd0p0xbfto.glwrz5pjcq
                    section.data(3).logicalSrcIdx = 170;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.mrd0p0xbfto.nbi4s2icax
                    section.data(4).logicalSrcIdx = 171;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            dworkMap.sections(28) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.mrd0p0xbfto.dcdmaqgr2q
                    section.data(1).logicalSrcIdx = 172;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.mrd0p0xbfto.albmshzw1i
                    section.data(2).logicalSrcIdx = 173;
                    section.data(2).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(29) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.mrd0p0xbfto.b4iq4vyuor
                    section.data(1).logicalSrcIdx = 174;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.mrd0p0xbfto.kbk10zqztt
                    section.data(2).logicalSrcIdx = 175;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(30) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.mrd0p0xbfto.iirxwp05k3
                    section.data(1).logicalSrcIdx = 176;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(31) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.mrd0p0xbfto.p3lkixy2r2
                    section.data(1).logicalSrcIdx = 177;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(32) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.ffqmtelrsh.js430d51ko
                    section.data(1).logicalSrcIdx = 178;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(33) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.owaizpjyhh.mis0isw31s
                    section.data(1).logicalSrcIdx = 179;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(34) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.kcj2zolraji.js430d51ko
                    section.data(1).logicalSrcIdx = 180;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(35) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.nemd0xquqdy.mis0isw31s
                    section.data(1).logicalSrcIdx = 181;
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


    targMap.checksum0 = 2382747205;
    targMap.checksum1 = 3931473754;
    targMap.checksum2 = 2594984455;
    targMap.checksum3 = 228528080;

