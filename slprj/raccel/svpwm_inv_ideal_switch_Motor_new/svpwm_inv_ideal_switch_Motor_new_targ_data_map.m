    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 6;
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
            section.nData     = 171;
            section.data(171)  = dumData; %prealloc

                    ;% rtP.Carriercounter_CarrCount
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Carriercounter_CarrCount_l1cfgyteuy
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Carriercounter_CarrCount_pcpzckqge2
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.PIDController3_I
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.PIDController4_I
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.PIDController_I
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.PIDController2_I
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.PIDController3_InitialConditionForIntegrator
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.PIDController4_InitialConditionForIntegrator
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.PIDController2_InitialConditionForIntegrator
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.PIDController_InitialConditionForIntegrator
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.PIDController3_LowerSaturationLimit
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.PIDController2_LowerSaturationLimit
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.PIDController_LowerSaturationLimit
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.PIDController3_P
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.PIDController4_P
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.PIDController2_P
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.PIDController_P
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.Carriercounter_Range
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.Carriercounter_Range_fbb5yen5s5
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.Carriercounter_Range_iry5nbrdqx
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.PWMGenerator1_Tdelay
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 21;

                    ;% rtP.PWMGenerator2_Tdelay
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 22;

                    ;% rtP.PWMGenerator_Tdelay
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 23;

                    ;% rtP.PWMGenerator_Tper
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 24;

                    ;% rtP.PWMGenerator1_Tper
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 25;

                    ;% rtP.PWMGenerator2_Tper
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 26;

                    ;% rtP.PIDController3_UpperSaturationLimit
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 27;

                    ;% rtP.PIDController2_UpperSaturationLimit
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 28;

                    ;% rtP.PIDController_UpperSaturationLimit
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 29;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 30;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 31;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue_gmxko0ufcx
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 32;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue_ppty12eo1o
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 33;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue_czzrcv1xs0
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 34;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue_cznn0srx2d
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 35;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 36;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0_jmi4gwmvri
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 37;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0_cmhchouter
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 38;

                    ;% rtP.Gain_Gain
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 39;

                    ;% rtP.Gain_Gain_bxmudsa0q5
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 40;

                    ;% rtP.one_by_3_Gain
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 41;

                    ;% rtP.one_by_sqrt3_Gain
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 42;

                    ;% rtP.Kalphabeta0_Gain
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 43;

                    ;% rtP.sine_table_values_Value
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 46;

                    ;% rtP.convert_pu_Gain
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 1048;

                    ;% rtP.indexing_Gain
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 1049;

                    ;% rtP.Integrator_gainval
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 1050;

                    ;% rtP.Gain3_Gain
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 1051;

                    ;% rtP.Gain4_Gain
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 1052;

                    ;% rtP.Gain5_Gain
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 1053;

                    ;% rtP.Gain_Gain_liagklf45c
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 1054;

                    ;% rtP.Saturation_UpperSat
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 1055;

                    ;% rtP.Saturation_LowerSat
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 1056;

                    ;% rtP.Integrator_gainval_knsztftnss
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 1057;

                    ;% rtP.Gain1_Gain
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 1058;

                    ;% rtP.Gain6_Gain
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 1059;

                    ;% rtP.sine_table_values_Value_a3bovsahiy
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 1060;

                    ;% rtP.Gain2_Gain
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 2062;

                    ;% rtP.convert_pu_Gain_pd3tvpp05x
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 2063;

                    ;% rtP.indexing_Gain_f4hf3xgt40
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 2064;

                    ;% rtP.Constant_Value
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 2065;

                    ;% rtP.Constant1_Value
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 2066;

                    ;% rtP.Constant_Value_futibpkv4r
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 2067;

                    ;% rtP.Clamping_zero_Value
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 2068;

                    ;% rtP.Constant1_Value_hwdnaks4hk
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 2069;

                    ;% rtP.Clamping_zero_Value_dzbkr5nj33
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 2070;

                    ;% rtP.Constant1_Value_heb03z0qwi
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 2071;

                    ;% rtP.Constant_Value_amqem3vix4
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 2072;

                    ;% rtP.Constant1_Value_plzth135fi
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 2073;

                    ;% rtP.Constant1_Value_kzv5mijxnd
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

                    ;% rtP.Constant_Value_pethsdhkm3
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 2079;

                    ;% rtP.TransferFcn_A
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 2080;

                    ;% rtP.TransferFcn_C
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 2081;

                    ;% rtP.Gain2_Gain_lkmtsx4hep
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 2082;

                    ;% rtP.Gain_Gain_fe1rn1jbbk
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 2083;

                    ;% rtP.Gain2_Gain_hglxtjghlc
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 2084;

                    ;% rtP.UnitDelay2_InitialCondition
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 2085;

                    ;% rtP.Integrator_gainval_mrdvyychkv
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 2086;

                    ;% rtP.Constant2_Value
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 2087;

                    ;% rtP.Integrator_gainval_c0fk5uxyeb
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 2088;

                    ;% rtP.Constant2_Value_mcxfir2knc
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 2089;

                    ;% rtP.Saturation_UpperSat_g2zpvvxvhz
                    section.data(87).logicalSrcIdx = 86;
                    section.data(87).dtTransOffset = 2090;

                    ;% rtP.Saturation_LowerSat_mmnoh5s0jp
                    section.data(88).logicalSrcIdx = 87;
                    section.data(88).dtTransOffset = 2091;

                    ;% rtP.Integrator_gainval_b2tc3y3sp3
                    section.data(89).logicalSrcIdx = 88;
                    section.data(89).dtTransOffset = 2092;

                    ;% rtP.Constant2_Value_pu52vdaelf
                    section.data(90).logicalSrcIdx = 89;
                    section.data(90).dtTransOffset = 2093;

                    ;% rtP.Integrator_gainval_ginifr2xlq
                    section.data(91).logicalSrcIdx = 90;
                    section.data(91).dtTransOffset = 2094;

                    ;% rtP.Constant2_Value_fomuzpjuar
                    section.data(92).logicalSrcIdx = 91;
                    section.data(92).dtTransOffset = 2095;

                    ;% rtP.Saturation_UpperSat_j5u4qljnv5
                    section.data(93).logicalSrcIdx = 92;
                    section.data(93).dtTransOffset = 2096;

                    ;% rtP.Saturation_LowerSat_em3rmibbhe
                    section.data(94).logicalSrcIdx = 93;
                    section.data(94).dtTransOffset = 2097;

                    ;% rtP.Integrator_gainval_clmxe4wonv
                    section.data(95).logicalSrcIdx = 94;
                    section.data(95).dtTransOffset = 2098;

                    ;% rtP.Constant2_Value_gkaf0w0kw1
                    section.data(96).logicalSrcIdx = 95;
                    section.data(96).dtTransOffset = 2099;

                    ;% rtP.Integrator_gainval_lsanfb5e3f
                    section.data(97).logicalSrcIdx = 96;
                    section.data(97).dtTransOffset = 2100;

                    ;% rtP.Constant2_Value_pweuhgyjqa
                    section.data(98).logicalSrcIdx = 97;
                    section.data(98).dtTransOffset = 2101;

                    ;% rtP.Saturation_UpperSat_c1q2ftmtjs
                    section.data(99).logicalSrcIdx = 98;
                    section.data(99).dtTransOffset = 2102;

                    ;% rtP.Saturation_LowerSat_jkunmti0xg
                    section.data(100).logicalSrcIdx = 99;
                    section.data(100).dtTransOffset = 2103;

                    ;% rtP.Bias2_Bias
                    section.data(101).logicalSrcIdx = 100;
                    section.data(101).dtTransOffset = 2104;

                    ;% rtP.Bias_Bias
                    section.data(102).logicalSrcIdx = 101;
                    section.data(102).dtTransOffset = 2105;

                    ;% rtP.Bias1_Bias
                    section.data(103).logicalSrcIdx = 102;
                    section.data(103).dtTransOffset = 2106;

                    ;% rtP.TransferFcn1_A
                    section.data(104).logicalSrcIdx = 103;
                    section.data(104).dtTransOffset = 2107;

                    ;% rtP.TransferFcn1_C
                    section.data(105).logicalSrcIdx = 104;
                    section.data(105).dtTransOffset = 2108;

                    ;% rtP.TransferFcn2_A
                    section.data(106).logicalSrcIdx = 105;
                    section.data(106).dtTransOffset = 2109;

                    ;% rtP.TransferFcn2_C
                    section.data(107).logicalSrcIdx = 106;
                    section.data(107).dtTransOffset = 2110;

                    ;% rtP.TransferFcn3_A
                    section.data(108).logicalSrcIdx = 107;
                    section.data(108).dtTransOffset = 2111;

                    ;% rtP.TransferFcn3_C
                    section.data(109).logicalSrcIdx = 108;
                    section.data(109).dtTransOffset = 2112;

                    ;% rtP.integrator_IC
                    section.data(110).logicalSrcIdx = 109;
                    section.data(110).dtTransOffset = 2113;

                    ;% rtP.TransportDelay_Delay
                    section.data(111).logicalSrcIdx = 110;
                    section.data(111).dtTransOffset = 2114;

                    ;% rtP.TransportDelay_InitOutput
                    section.data(112).logicalSrcIdx = 111;
                    section.data(112).dtTransOffset = 2115;

                    ;% rtP.K1_Value
                    section.data(113).logicalSrcIdx = 112;
                    section.data(113).dtTransOffset = 2116;

                    ;% rtP.Memory_InitialCondition
                    section.data(114).logicalSrcIdx = 113;
                    section.data(114).dtTransOffset = 2117;

                    ;% rtP.Gain3_Gain_m0x4i4tgxy
                    section.data(115).logicalSrcIdx = 114;
                    section.data(115).dtTransOffset = 2118;

                    ;% rtP.one_by_3_Gain_lq50khpwgl
                    section.data(116).logicalSrcIdx = 115;
                    section.data(116).dtTransOffset = 2119;

                    ;% rtP.one_by_sqrt3_Gain_bbbfyvtmfv
                    section.data(117).logicalSrcIdx = 116;
                    section.data(117).dtTransOffset = 2120;

                    ;% rtP.Kalphabeta0_Gain_pvcgmqyz1g
                    section.data(118).logicalSrcIdx = 117;
                    section.data(118).dtTransOffset = 2121;

                    ;% rtP.sine_table_values_Value_ph5vfaxqmh
                    section.data(119).logicalSrcIdx = 118;
                    section.data(119).dtTransOffset = 2124;

                    ;% rtP.convert_pu_Gain_flpdghdw0l
                    section.data(120).logicalSrcIdx = 119;
                    section.data(120).dtTransOffset = 3126;

                    ;% rtP.indexing_Gain_d4wzw4thi3
                    section.data(121).logicalSrcIdx = 120;
                    section.data(121).dtTransOffset = 3127;

                    ;% rtP.TransferFcn_A_kmf2rzcsuh
                    section.data(122).logicalSrcIdx = 121;
                    section.data(122).dtTransOffset = 3128;

                    ;% rtP.TransferFcn_C_nnooprdpdc
                    section.data(123).logicalSrcIdx = 122;
                    section.data(123).dtTransOffset = 3129;

                    ;% rtP.Integrator_gainval_kcogqwyqqm
                    section.data(124).logicalSrcIdx = 123;
                    section.data(124).dtTransOffset = 3130;

                    ;% rtP.Gain4_Gain_ayr4kf20mm
                    section.data(125).logicalSrcIdx = 124;
                    section.data(125).dtTransOffset = 3131;

                    ;% rtP.Gain5_Gain_mux3bkz4kz
                    section.data(126).logicalSrcIdx = 125;
                    section.data(126).dtTransOffset = 3132;

                    ;% rtP.Saturation1_UpperSat
                    section.data(127).logicalSrcIdx = 126;
                    section.data(127).dtTransOffset = 3133;

                    ;% rtP.Saturation1_LowerSat
                    section.data(128).logicalSrcIdx = 127;
                    section.data(128).dtTransOffset = 3134;

                    ;% rtP.Gain6_Gain_ouwwchll42
                    section.data(129).logicalSrcIdx = 128;
                    section.data(129).dtTransOffset = 3135;

                    ;% rtP.Gain7_Gain
                    section.data(130).logicalSrcIdx = 129;
                    section.data(130).dtTransOffset = 3136;

                    ;% rtP.DelayOneStep_InitialCondition
                    section.data(131).logicalSrcIdx = 130;
                    section.data(131).dtTransOffset = 3137;

                    ;% rtP.Gain_Gain_jbuyqabnwy
                    section.data(132).logicalSrcIdx = 131;
                    section.data(132).dtTransOffset = 3138;

                    ;% rtP.Saturation_UpperSat_jtqyrsjebw
                    section.data(133).logicalSrcIdx = 132;
                    section.data(133).dtTransOffset = 3139;

                    ;% rtP.Saturation_LowerSat_niuqztsdpt
                    section.data(134).logicalSrcIdx = 133;
                    section.data(134).dtTransOffset = 3140;

                    ;% rtP.integrator_IC_e2za4lfqec
                    section.data(135).logicalSrcIdx = 134;
                    section.data(135).dtTransOffset = 3141;

                    ;% rtP.TransportDelay_Delay_erz0uctopi
                    section.data(136).logicalSrcIdx = 135;
                    section.data(136).dtTransOffset = 3142;

                    ;% rtP.TransportDelay_InitOutput_mx5tkf3a5z
                    section.data(137).logicalSrcIdx = 136;
                    section.data(137).dtTransOffset = 3143;

                    ;% rtP.K1_Value_bqidwejw0r
                    section.data(138).logicalSrcIdx = 137;
                    section.data(138).dtTransOffset = 3144;

                    ;% rtP.Memory_InitialCondition_l045dbli4n
                    section.data(139).logicalSrcIdx = 138;
                    section.data(139).dtTransOffset = 3145;

                    ;% rtP.one_by_3_Gain_ffu1pqh3k5
                    section.data(140).logicalSrcIdx = 139;
                    section.data(140).dtTransOffset = 3146;

                    ;% rtP.one_by_sqrt3_Gain_ipkvtvw4ob
                    section.data(141).logicalSrcIdx = 140;
                    section.data(141).dtTransOffset = 3147;

                    ;% rtP.Kalphabeta0_Gain_pgpgg03wzb
                    section.data(142).logicalSrcIdx = 141;
                    section.data(142).dtTransOffset = 3148;

                    ;% rtP.sine_table_values_Value_hsy4ofjnpf
                    section.data(143).logicalSrcIdx = 142;
                    section.data(143).dtTransOffset = 3151;

                    ;% rtP.convert_pu_Gain_ngxl3nt3kt
                    section.data(144).logicalSrcIdx = 143;
                    section.data(144).dtTransOffset = 4153;

                    ;% rtP.indexing_Gain_c3131ohag4
                    section.data(145).logicalSrcIdx = 144;
                    section.data(145).dtTransOffset = 4154;

                    ;% rtP.Gain1_Gain_a3h5l5zylu
                    section.data(146).logicalSrcIdx = 145;
                    section.data(146).dtTransOffset = 4155;

                    ;% rtP.Integrator_gainval_dhnaqjdnlv
                    section.data(147).logicalSrcIdx = 146;
                    section.data(147).dtTransOffset = 4156;

                    ;% rtP.Constant3_Value
                    section.data(148).logicalSrcIdx = 147;
                    section.data(148).dtTransOffset = 4157;

                    ;% rtP.Constant3_Value_j4b4zpsigk
                    section.data(149).logicalSrcIdx = 148;
                    section.data(149).dtTransOffset = 4158;

                    ;% rtP.Constant3_Value_ltnm24yy5d
                    section.data(150).logicalSrcIdx = 149;
                    section.data(150).dtTransOffset = 4159;

                    ;% rtP.Constant_Value_fke3pdcioo
                    section.data(151).logicalSrcIdx = 150;
                    section.data(151).dtTransOffset = 4160;

                    ;% rtP.Constant1_Value_ovkugjom0j
                    section.data(152).logicalSrcIdx = 151;
                    section.data(152).dtTransOffset = 4161;

                    ;% rtP.Constant2_Value_lvuo5jfnnc
                    section.data(153).logicalSrcIdx = 152;
                    section.data(153).dtTransOffset = 4162;

                    ;% rtP.Constant4_Value
                    section.data(154).logicalSrcIdx = 153;
                    section.data(154).dtTransOffset = 4163;

                    ;% rtP.Clamping_zero_Value_bhl50gjfmv
                    section.data(155).logicalSrcIdx = 154;
                    section.data(155).dtTransOffset = 4164;

                    ;% rtP.Clamping_zero_Value_editfihzwr
                    section.data(156).logicalSrcIdx = 155;
                    section.data(156).dtTransOffset = 4165;

                    ;% rtP.Constant_Value_kxfziju4tw
                    section.data(157).logicalSrcIdx = 156;
                    section.data(157).dtTransOffset = 4166;

                    ;% rtP.Constant1_Value_ah5g1obm1c
                    section.data(158).logicalSrcIdx = 157;
                    section.data(158).dtTransOffset = 4167;

                    ;% rtP.Constant10_Value
                    section.data(159).logicalSrcIdx = 158;
                    section.data(159).dtTransOffset = 4168;

                    ;% rtP.Constant11_Value
                    section.data(160).logicalSrcIdx = 159;
                    section.data(160).dtTransOffset = 4169;

                    ;% rtP.Constant5_Value
                    section.data(161).logicalSrcIdx = 160;
                    section.data(161).dtTransOffset = 4170;

                    ;% rtP.Constant7_Value
                    section.data(162).logicalSrcIdx = 161;
                    section.data(162).dtTransOffset = 4171;

                    ;% rtP.RTP_0A3A8918_w_Value
                    section.data(163).logicalSrcIdx = 162;
                    section.data(163).dtTransOffset = 4172;

                    ;% rtP.RTP_0BF8E32F_angular_position_Value
                    section.data(164).logicalSrcIdx = 163;
                    section.data(164).dtTransOffset = 4173;

                    ;% rtP.RTP_0BF8E32F_angular_velocity_Value
                    section.data(165).logicalSrcIdx = 164;
                    section.data(165).dtTransOffset = 4174;

                    ;% rtP.RTP_0BF8E32F_i_d_Value
                    section.data(166).logicalSrcIdx = 165;
                    section.data(166).dtTransOffset = 4175;

                    ;% rtP.RTP_0BF8E32F_i_q_Value
                    section.data(167).logicalSrcIdx = 166;
                    section.data(167).dtTransOffset = 4176;

                    ;% rtP.RTP_0BF8E32F_torque_Value
                    section.data(168).logicalSrcIdx = 167;
                    section.data(168).dtTransOffset = 4177;

                    ;% rtP.RTP_12AF5A6E_v_Value
                    section.data(169).logicalSrcIdx = 168;
                    section.data(169).dtTransOffset = 4178;

                    ;% rtP.RTP_6FFE9E78_v_Value
                    section.data(170).logicalSrcIdx = 169;
                    section.data(170).dtTransOffset = 4179;

                    ;% rtP.RTP_8519EF23_i_L_Value
                    section.data(171).logicalSrcIdx = 170;
                    section.data(171).dtTransOffset = 4180;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtP.offset_Value
                    section.data(1).logicalSrcIdx = 171;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.offset_Value_cuuhtbq0gv
                    section.data(2).logicalSrcIdx = 172;
                    section.data(2).dtTransOffset = 4;

                    ;% rtP.offset_Value_mwsc4qa1fy
                    section.data(3).logicalSrcIdx = 173;
                    section.data(3).dtTransOffset = 8;

                    ;% rtP.offset_Value_lryd2zcqwd
                    section.data(4).logicalSrcIdx = 174;
                    section.data(4).dtTransOffset = 12;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtP.Offset_Value
                    section.data(1).logicalSrcIdx = 175;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Switch_Threshold
                    section.data(2).logicalSrcIdx = 176;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Offset_Value_fboskqo1ag
                    section.data(3).logicalSrcIdx = 177;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Switch_Threshold_owcqsnmcfg
                    section.data(4).logicalSrcIdx = 178;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 16;
            section.data(16)  = dumData; %prealloc

                    ;% rtP.Constant_Value_c2e1y2gzc3
                    section.data(1).logicalSrcIdx = 179;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Constant2_Value_drbxu45em3
                    section.data(2).logicalSrcIdx = 180;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Constant3_Value_lutrgydyga
                    section.data(3).logicalSrcIdx = 181;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Constant4_Value_ej5apk0vfj
                    section.data(4).logicalSrcIdx = 182;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Constant_Value_f5v4rjr542
                    section.data(5).logicalSrcIdx = 183;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Constant2_Value_fpcgfo0hw0
                    section.data(6).logicalSrcIdx = 184;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Constant3_Value_bjlbtqusro
                    section.data(7).logicalSrcIdx = 185;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Constant4_Value_jnji3qyt13
                    section.data(8).logicalSrcIdx = 186;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.Constant_Value_dkhphikhxn
                    section.data(9).logicalSrcIdx = 187;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Constant2_Value_chfiiyl2xo
                    section.data(10).logicalSrcIdx = 188;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.Constant3_Value_ckuyfoczpd
                    section.data(11).logicalSrcIdx = 189;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.Constant4_Value_d5cs5fwkek
                    section.data(12).logicalSrcIdx = 190;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.Constant_Value_ljwvnj1h33
                    section.data(13).logicalSrcIdx = 191;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.Constant2_Value_pr0foizd4c
                    section.data(14).logicalSrcIdx = 192;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.Constant3_Value_j5j0j3jbky
                    section.data(15).logicalSrcIdx = 193;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.Constant4_Value_jrpwj3ts4p
                    section.data(16).logicalSrcIdx = 194;
                    section.data(16).dtTransOffset = 15;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtP.gktxriwlgy.Offset_Value
                    section.data(1).logicalSrcIdx = 195;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.gktxriwlgy.Switch_Threshold
                    section.data(2).logicalSrcIdx = 196;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            paramMap.sections(5) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtP.drq5j5xu31j.Offset_Value
                    section.data(1).logicalSrcIdx = 197;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.drq5j5xu31j.Switch_Threshold
                    section.data(2).logicalSrcIdx = 198;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            paramMap.sections(6) = section;
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
        nTotSects     = 6;
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
            section.nData     = 81;
            section.data(81)  = dumData; %prealloc

                    ;% rtB.nv0ckczzyt
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.a5fxpo2jxt
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.pjkri1jfmf
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.ogchot533s
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.ci2ghpeho2
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.a5n3mph1is
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.jw0vzjayld
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.aqgs4lwcs0
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.jt5s25x4p3
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 11;

                    ;% rtB.pqvtd1k3mi
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 14;

                    ;% rtB.mq5qplabet
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 16;

                    ;% rtB.attsietxrb
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 17;

                    ;% rtB.olxy0g0r43
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 18;

                    ;% rtB.nqxxmvygdv
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 19;

                    ;% rtB.mfc5rthlud
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 23;

                    ;% rtB.hqgajqd4gg
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 25;

                    ;% rtB.eeejp3hcbz
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 26;

                    ;% rtB.a3tspmrrna
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 27;

                    ;% rtB.on1icacbha
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 28;

                    ;% rtB.eazkiebo53
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 32;

                    ;% rtB.iu0ck3e2ez
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 34;

                    ;% rtB.fe1dgvexri
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 35;

                    ;% rtB.asdck0n5ju
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 36;

                    ;% rtB.kbjfstfe15
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 37;

                    ;% rtB.a2retnjkq0
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 41;

                    ;% rtB.puivzlqjlu
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 42;

                    ;% rtB.k1eiyylkke
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 149;

                    ;% rtB.nzlrdh2b4b
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 163;

                    ;% rtB.e01yjnpztv
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 164;

                    ;% rtB.fg325xp0yq
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 165;

                    ;% rtB.j0maas2lit
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 166;

                    ;% rtB.gkjhzrc0ug
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 167;

                    ;% rtB.cowcz23por
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 168;

                    ;% rtB.lz2rmtvn33
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 169;

                    ;% rtB.mu1ykcvogj
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 172;

                    ;% rtB.c50g454aul
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 173;

                    ;% rtB.e410pyvokt
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 176;

                    ;% rtB.kbw21xjeom
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 179;

                    ;% rtB.ovoojs43mn
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 180;

                    ;% rtB.fqqbu1r1j2
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 183;

                    ;% rtB.f5vac40zun
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 184;

                    ;% rtB.ddah5ogtmi
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 185;

                    ;% rtB.p2be4saqbu
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 186;

                    ;% rtB.eehi02ch5z
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 187;

                    ;% rtB.ay2creuefx
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 188;

                    ;% rtB.a5i54y0z3o
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 189;

                    ;% rtB.ovoi2remfu
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 190;

                    ;% rtB.c5xjaf0iqb
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 191;

                    ;% rtB.hfolnftp5h
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 192;

                    ;% rtB.gp0uutzxp4
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 193;

                    ;% rtB.db4wiwn3hg
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 194;

                    ;% rtB.pvpo4dg4qc
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 195;

                    ;% rtB.hs3y5twomy
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 196;

                    ;% rtB.bvzw0vglfd
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 199;

                    ;% rtB.pu3qcgib04
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 200;

                    ;% rtB.lpbmqhqsqu
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 203;

                    ;% rtB.pwekhu3x01
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 206;

                    ;% rtB.lpgmd2q015
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 209;

                    ;% rtB.m1uh04odyi
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 210;

                    ;% rtB.mr1iatoryd
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 211;

                    ;% rtB.hm5t2h1rgd
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 212;

                    ;% rtB.lgwztqmxwk
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 215;

                    ;% rtB.ajaepkbehz
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 216;

                    ;% rtB.pioyostcdx
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 217;

                    ;% rtB.bw2ptspu3o
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 218;

                    ;% rtB.bm3xrdrtau
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 219;

                    ;% rtB.i1kxbx0fl3
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 220;

                    ;% rtB.cqr23xsn4l
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 221;

                    ;% rtB.l2dxjxzbdu
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 224;

                    ;% rtB.pkpq0xh4wk
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 225;

                    ;% rtB.ie0db3elvh
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 226;

                    ;% rtB.dx4fq34fve
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 227;

                    ;% rtB.c3zpjpjkqw
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 228;

                    ;% rtB.l0xwi0oi4s
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 229;

                    ;% rtB.lzduwlidlb
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 230;

                    ;% rtB.ajypk3su2v
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 231;

                    ;% rtB.pqqvqqoci2
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 232;

                    ;% rtB.jpgo40l01h
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 233;

                    ;% rtB.kejvf4vqow
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 234;

                    ;% rtB.jtnr2ugrfm
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 235;

                    ;% rtB.e2m3azo0l4
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 236;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% rtB.py2agdkuqw
                    section.data(1).logicalSrcIdx = 87;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.gvldvxx1fr
                    section.data(2).logicalSrcIdx = 88;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.htz4padxwn
                    section.data(3).logicalSrcIdx = 89;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtB.gktxriwlgy.avbxeqmegl
                    section.data(1).logicalSrcIdx = 90;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.gktxriwlgy.fe5unc2cot
                    section.data(2).logicalSrcIdx = 91;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.gktxriwlgy.p3x1nykh2h
                    section.data(3).logicalSrcIdx = 92;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.gktxriwlgy.i2v3lquv1p
                    section.data(4).logicalSrcIdx = 93;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.gktxriwlgy.d40jfrqtzi
                    section.data(5).logicalSrcIdx = 94;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.gktxriwlgy.amgnvzmzwj
                    section.data(6).logicalSrcIdx = 95;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.gktxriwlgy.f22ceovzjn
                    section.data(7).logicalSrcIdx = 96;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.gktxriwlgy.orioptsoka
                    section.data(8).logicalSrcIdx = 97;
                    section.data(8).dtTransOffset = 8;

                    ;% rtB.gktxriwlgy.nzoc5isxce
                    section.data(9).logicalSrcIdx = 98;
                    section.data(9).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.gktxriwlgy.ae04vdxys5
                    section.data(1).logicalSrcIdx = 99;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(4) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtB.drq5j5xu31j.avbxeqmegl
                    section.data(1).logicalSrcIdx = 100;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.drq5j5xu31j.fe5unc2cot
                    section.data(2).logicalSrcIdx = 101;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.drq5j5xu31j.p3x1nykh2h
                    section.data(3).logicalSrcIdx = 102;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.drq5j5xu31j.i2v3lquv1p
                    section.data(4).logicalSrcIdx = 103;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.drq5j5xu31j.d40jfrqtzi
                    section.data(5).logicalSrcIdx = 104;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.drq5j5xu31j.amgnvzmzwj
                    section.data(6).logicalSrcIdx = 105;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.drq5j5xu31j.f22ceovzjn
                    section.data(7).logicalSrcIdx = 106;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.drq5j5xu31j.orioptsoka
                    section.data(8).logicalSrcIdx = 107;
                    section.data(8).dtTransOffset = 8;

                    ;% rtB.drq5j5xu31j.nzoc5isxce
                    section.data(9).logicalSrcIdx = 108;
                    section.data(9).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            sigMap.sections(5) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.drq5j5xu31j.ae04vdxys5
                    section.data(1).logicalSrcIdx = 109;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(6) = section;
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
        sectIdxOffset = 6;

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
            section.nData     = 31;
            section.data(31)  = dumData; %prealloc

                    ;% rtDW.cvlf0sz5z2
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.hpoj2t5rol
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.cnxu2jgn15
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.kacob3q1yk
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 5;

                    ;% rtDW.a3hwfmo41h
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 6;

                    ;% rtDW.bo0zmiyk5k
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 7;

                    ;% rtDW.m2bsciclhj
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 9;

                    ;% rtDW.p2uhnlceoc
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 10;

                    ;% rtDW.o4bl5l0tbp
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 11;

                    ;% rtDW.hr5tgveolm
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 13;

                    ;% rtDW.e0wxl4ik0r
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 14;

                    ;% rtDW.dho2ajn5zj
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 15;

                    ;% rtDW.ktjxnunjaj
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 17;

                    ;% rtDW.jpmvr23hc2
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 164;

                    ;% rtDW.noxl051g2e
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 165;

                    ;% rtDW.echo5z2mnm
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 166;

                    ;% rtDW.d0joumf120
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 167;

                    ;% rtDW.kay1grlant
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 168;

                    ;% rtDW.lr2o13tomh
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 169;

                    ;% rtDW.bszd5zyxst
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 225;

                    ;% rtDW.dpobqi5c1i
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 226;

                    ;% rtDW.duecfhiu0z
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 227;

                    ;% rtDW.aw0a1ljg2j
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 230;

                    ;% rtDW.kqf0lx5xyj
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 233;

                    ;% rtDW.gfo4de2zaa
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 234;

                    ;% rtDW.jccdx03rub
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 235;

                    ;% rtDW.fezw1m0e0j
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 236;

                    ;% rtDW.gsszsd23zk
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 237;

                    ;% rtDW.gxe5im5qje
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 238;

                    ;% rtDW.piba5dt355
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 239;

                    ;% rtDW.kqui3kli12
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 240;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 30;
            section.data(30)  = dumData; %prealloc

                    ;% rtDW.nwbm1hryfv
                    section.data(1).logicalSrcIdx = 31;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.pretereqed
                    section.data(2).logicalSrcIdx = 32;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.lasd3pluwl
                    section.data(3).logicalSrcIdx = 33;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.hglkxaq2vf
                    section.data(4).logicalSrcIdx = 34;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.pi55vn1l4g
                    section.data(5).logicalSrcIdx = 35;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.a5yngbes4r
                    section.data(6).logicalSrcIdx = 36;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.oyx3y13v5w
                    section.data(7).logicalSrcIdx = 37;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.mfs5bkjldx
                    section.data(8).logicalSrcIdx = 38;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.nnw115q33t
                    section.data(9).logicalSrcIdx = 39;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.insmgmngh4
                    section.data(10).logicalSrcIdx = 40;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.ltw3jtrsae
                    section.data(11).logicalSrcIdx = 41;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.ftwvlai4sn.LoggedData
                    section.data(12).logicalSrcIdx = 42;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.gdkn0cgqhc
                    section.data(13).logicalSrcIdx = 43;
                    section.data(13).dtTransOffset = 16;

                    ;% rtDW.apv1x5zmlb.LoggedData
                    section.data(14).logicalSrcIdx = 44;
                    section.data(14).dtTransOffset = 22;

                    ;% rtDW.i5vdc10ucn.LoggedData
                    section.data(15).logicalSrcIdx = 45;
                    section.data(15).dtTransOffset = 28;

                    ;% rtDW.h0wdqoc4xl.LoggedData
                    section.data(16).logicalSrcIdx = 46;
                    section.data(16).dtTransOffset = 30;

                    ;% rtDW.emeadmg2yr.LoggedData
                    section.data(17).logicalSrcIdx = 47;
                    section.data(17).dtTransOffset = 34;

                    ;% rtDW.n2t5vja4sl.LoggedData
                    section.data(18).logicalSrcIdx = 48;
                    section.data(18).dtTransOffset = 35;

                    ;% rtDW.ltskfsfapp.LoggedData
                    section.data(19).logicalSrcIdx = 49;
                    section.data(19).dtTransOffset = 37;

                    ;% rtDW.ghq2jbfd4d.LoggedData
                    section.data(20).logicalSrcIdx = 50;
                    section.data(20).dtTransOffset = 41;

                    ;% rtDW.ggonkasefx.LoggedData
                    section.data(21).logicalSrcIdx = 51;
                    section.data(21).dtTransOffset = 42;

                    ;% rtDW.imabffuyys.LoggedData
                    section.data(22).logicalSrcIdx = 52;
                    section.data(22).dtTransOffset = 46;

                    ;% rtDW.gn3r00kkvz.LoggedData
                    section.data(23).logicalSrcIdx = 53;
                    section.data(23).dtTransOffset = 48;

                    ;% rtDW.kh45mvm3ga
                    section.data(24).logicalSrcIdx = 54;
                    section.data(24).dtTransOffset = 51;

                    ;% rtDW.blbm211puw.LoggedData
                    section.data(25).logicalSrcIdx = 55;
                    section.data(25).dtTransOffset = 57;

                    ;% rtDW.bnhlnu5ojf.LoggedData
                    section.data(26).logicalSrcIdx = 56;
                    section.data(26).dtTransOffset = 59;

                    ;% rtDW.oirftpfry0.LoggedData
                    section.data(27).logicalSrcIdx = 57;
                    section.data(27).dtTransOffset = 61;

                    ;% rtDW.eukm4ueyhs.LoggedData
                    section.data(28).logicalSrcIdx = 58;
                    section.data(28).dtTransOffset = 63;

                    ;% rtDW.dpmshqcwd2.LoggedData
                    section.data(29).logicalSrcIdx = 59;
                    section.data(29).dtTransOffset = 64;

                    ;% rtDW.dwns3xng00.LoggedData
                    section.data(30).logicalSrcIdx = 60;
                    section.data(30).dtTransOffset = 66;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.lbx0a3r5ty
                    section.data(1).logicalSrcIdx = 61;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.apbfflzbrk
                    section.data(2).logicalSrcIdx = 62;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 8;
            section.data(8)  = dumData; %prealloc

                    ;% rtDW.jmwilz4rac
                    section.data(1).logicalSrcIdx = 63;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.pondge5iap
                    section.data(2).logicalSrcIdx = 64;
                    section.data(2).dtTransOffset = 56;

                    ;% rtDW.b5mfmzrvbn
                    section.data(3).logicalSrcIdx = 65;
                    section.data(3).dtTransOffset = 57;

                    ;% rtDW.ihb23v2z11
                    section.data(4).logicalSrcIdx = 66;
                    section.data(4).dtTransOffset = 70;

                    ;% rtDW.gidjbxhmna
                    section.data(5).logicalSrcIdx = 67;
                    section.data(5).dtTransOffset = 83;

                    ;% rtDW.h4khszcqqc
                    section.data(6).logicalSrcIdx = 68;
                    section.data(6).dtTransOffset = 84;

                    ;% rtDW.cg00ue1evq
                    section.data(7).logicalSrcIdx = 69;
                    section.data(7).dtTransOffset = 85;

                    ;% rtDW.pyb3144cpm
                    section.data(8).logicalSrcIdx = 70;
                    section.data(8).dtTransOffset = 86;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.p22r1acn5y
                    section.data(1).logicalSrcIdx = 71;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 5;
            section.data(5)  = dumData; %prealloc

                    ;% rtDW.pxxgjwxzvm
                    section.data(1).logicalSrcIdx = 72;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.jgmhcjf2af
                    section.data(2).logicalSrcIdx = 73;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.e02yp4tp41
                    section.data(3).logicalSrcIdx = 74;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.fsarw0rvd4
                    section.data(4).logicalSrcIdx = 75;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.onqm04i3wu
                    section.data(5).logicalSrcIdx = 76;
                    section.data(5).dtTransOffset = 4;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtDW.oh3kqsoklo
                    section.data(1).logicalSrcIdx = 77;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.li0wrxfc1o
                    section.data(2).logicalSrcIdx = 78;
                    section.data(2).dtTransOffset = 56;

                    ;% rtDW.dbahqblq4e
                    section.data(3).logicalSrcIdx = 79;
                    section.data(3).dtTransOffset = 112;

                    ;% rtDW.kjsbw2zvju
                    section.data(4).logicalSrcIdx = 80;
                    section.data(4).dtTransOffset = 113;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
            clear section

            section.nData     = 22;
            section.data(22)  = dumData; %prealloc

                    ;% rtDW.hqunhpnj0f
                    section.data(1).logicalSrcIdx = 81;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ko35wd2dy1
                    section.data(2).logicalSrcIdx = 82;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.icxkgnrrog
                    section.data(3).logicalSrcIdx = 83;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.n1dvytwheh
                    section.data(4).logicalSrcIdx = 84;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.elvna2erlz
                    section.data(5).logicalSrcIdx = 85;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.f21cr3nx41
                    section.data(6).logicalSrcIdx = 86;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.nsdwswsgpc
                    section.data(7).logicalSrcIdx = 87;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.g1lgatltwb
                    section.data(8).logicalSrcIdx = 88;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.ijdzmikxb4
                    section.data(9).logicalSrcIdx = 89;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.jscknfg22u
                    section.data(10).logicalSrcIdx = 90;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.pdnqrf3bhn
                    section.data(11).logicalSrcIdx = 91;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.mrmwo2kn0b
                    section.data(12).logicalSrcIdx = 92;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.d21mds4jgp
                    section.data(13).logicalSrcIdx = 93;
                    section.data(13).dtTransOffset = 12;

                    ;% rtDW.lb1zcadvpy
                    section.data(14).logicalSrcIdx = 94;
                    section.data(14).dtTransOffset = 13;

                    ;% rtDW.ov5rixfask
                    section.data(15).logicalSrcIdx = 95;
                    section.data(15).dtTransOffset = 14;

                    ;% rtDW.adyvc5ipkj
                    section.data(16).logicalSrcIdx = 96;
                    section.data(16).dtTransOffset = 15;

                    ;% rtDW.lsrlmclszf
                    section.data(17).logicalSrcIdx = 97;
                    section.data(17).dtTransOffset = 16;

                    ;% rtDW.jigphfe0ej
                    section.data(18).logicalSrcIdx = 98;
                    section.data(18).dtTransOffset = 17;

                    ;% rtDW.jhge2zamyn
                    section.data(19).logicalSrcIdx = 99;
                    section.data(19).dtTransOffset = 18;

                    ;% rtDW.eygu4ecplj
                    section.data(20).logicalSrcIdx = 100;
                    section.data(20).dtTransOffset = 19;

                    ;% rtDW.fkt4at5q33
                    section.data(21).logicalSrcIdx = 101;
                    section.data(21).dtTransOffset = 20;

                    ;% rtDW.mml4e0wrpx
                    section.data(22).logicalSrcIdx = 102;
                    section.data(22).dtTransOffset = 21;

            nTotData = nTotData + section.nData;
            dworkMap.sections(8) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.jwf4wp1234.b04yz5cggf
                    section.data(1).logicalSrcIdx = 103;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(9) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.erkivpk2vi.bhzbsdgdq2
                    section.data(1).logicalSrcIdx = 104;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(10) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.e1tifyq5w5.b04yz5cggf
                    section.data(1).logicalSrcIdx = 105;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(11) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.otz3zt2q0t.bhzbsdgdq2
                    section.data(1).logicalSrcIdx = 106;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(12) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.cjfqdwpmbh.b04yz5cggf
                    section.data(1).logicalSrcIdx = 107;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(13) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.fnjxwv0fqt.bhzbsdgdq2
                    section.data(1).logicalSrcIdx = 108;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(14) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gi3iqkjyylx.b04yz5cggf
                    section.data(1).logicalSrcIdx = 109;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(15) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.ou05yx5eiq4.bhzbsdgdq2
                    section.data(1).logicalSrcIdx = 110;
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


    targMap.checksum0 = 1959506549;
    targMap.checksum1 = 1795078869;
    targMap.checksum2 = 2683685479;
    targMap.checksum3 = 3554479871;

