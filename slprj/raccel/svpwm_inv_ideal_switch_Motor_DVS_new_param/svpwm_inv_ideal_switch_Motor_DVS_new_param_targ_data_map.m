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
            section.nData     = 214;
            section.data(214)  = dumData; %prealloc

                    ;% rtP.FocDiscrTime
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Is_max
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Ld
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Lq
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.PolePairs
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Psi
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Rs
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.compensate_pwm
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.piBandwidth
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Carriercounter_CarrCount
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.Carriercounter_CarrCount_l1cfgyteuy
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.Carriercounter_CarrCount_pcpzckqge2
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.PIDController_I
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.PIDController2_I
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.PIDController2_I_owcfixlqvt
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.PIDController3_InitialConditionForIntegrator
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.PIDController4_InitialConditionForIntegrator
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.PIDController2_InitialConditionForIntegrator
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.PIDController_InitialConditionForIntegrator
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.PIDController2_InitialConditionForIntegrator_mxpj1qp5uu
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.Ramp1_InitialOutput
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.Ramp2_InitialOutput
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 21;

                    ;% rtP.PIDController_LowerSaturationLimit
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 22;

                    ;% rtP.PIDController2_P
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 23;

                    ;% rtP.PIDController_P
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 24;

                    ;% rtP.PIDController2_P_fxegkff3ky
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 25;

                    ;% rtP.Carriercounter_Range
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 26;

                    ;% rtP.Carriercounter_Range_fbb5yen5s5
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 27;

                    ;% rtP.Carriercounter_Range_iry5nbrdqx
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 28;

                    ;% rtP.RMS_TrueRMS
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 29;

                    ;% rtP.RMS1_TrueRMS
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 30;

                    ;% rtP.PIDController_UpperSaturationLimit
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 31;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 32;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 33;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue_gmxko0ufcx
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 34;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue_ppty12eo1o
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 35;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue_czzrcv1xs0
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 36;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue_cznn0srx2d
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 37;

                    ;% rtP.Ramp1_slope
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 38;

                    ;% rtP.Ramp2_slope
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 39;

                    ;% rtP.Ramp1_start
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 40;

                    ;% rtP.Ramp2_start
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 41;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 42;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0_jmi4gwmvri
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 43;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0_cmhchouter
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 44;

                    ;% rtP.Gain_Gain
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 45;

                    ;% rtP.Gain_Gain_djxhftize0
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 46;

                    ;% rtP.Gain_Gain_ifj1132abx
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 47;

                    ;% rtP.Gain_Gain_punknji3it
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 48;

                    ;% rtP.Gain_Gain_hi1h0shmrd
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 49;

                    ;% rtP.Gain_Gain_lnud520pox
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 50;

                    ;% rtP.one_by_3_Gain
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 51;

                    ;% rtP.one_by_sqrt3_Gain
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 52;

                    ;% rtP.Kalphabeta0_Gain
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 53;

                    ;% rtP.sine_table_values_Value
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 56;

                    ;% rtP.convert_pu_Gain
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 1058;

                    ;% rtP.indexing_Gain
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 1059;

                    ;% rtP.Gain_Gain_efigkyvqib
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 1060;

                    ;% rtP.Integrator_gainval
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 1061;

                    ;% rtP.Gain5_Gain
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 1062;

                    ;% rtP.Gain5_Gain_g5bjdsfyip
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 1063;

                    ;% rtP.Gain_Gain_kpqlcty2dv
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 1064;

                    ;% rtP.Saturation_UpperSat
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 1065;

                    ;% rtP.Saturation_LowerSat
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 1066;

                    ;% rtP.Integrator_gainval_aawdszzfsk
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 1067;

                    ;% rtP.sine_table_values_Value_kvrvrtlo05
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 1068;

                    ;% rtP.convert_pu_Gain_hohxgx3xh0
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 2070;

                    ;% rtP.indexing_Gain_fh111rwjev
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 2071;

                    ;% rtP.Constant_Value
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 2072;

                    ;% rtP.Clamping_zero_Value
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 2073;

                    ;% rtP.Constant1_Value
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 2074;

                    ;% rtP.Clamping_zero_Value_k5huge04pc
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 2075;

                    ;% rtP.Constant1_Value_g2slp2tih2
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 2076;

                    ;% rtP.Constant_Value_nybomaw50f
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 2077;

                    ;% rtP.Constant1_Value_plzth135fi
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 2078;

                    ;% rtP.Constant_Value_d51pvnudts
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 2079;

                    ;% rtP.Constant_Value_aedbii5zo1
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 2080;

                    ;% rtP.Constant_Value_otslvflthu
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 2081;

                    ;% rtP.Constant_Value_aidlcpdktu
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 2082;

                    ;% rtP.Constant_Value_naavg1wwyy
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 2083;

                    ;% rtP.Constant1_Value_kzv5mijxnd
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 2084;

                    ;% rtP.Constant1_Value_fdpeh2imtc
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 2085;

                    ;% rtP.uDLookupTable_tableData
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 2086;

                    ;% rtP.uDLookupTable_bp01Data
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 2092;

                    ;% rtP.UnitDelay2_InitialCondition
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 2098;

                    ;% rtP.Integrator_gainval_mrdvyychkv
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 2099;

                    ;% rtP.Constant2_Value
                    section.data(87).logicalSrcIdx = 86;
                    section.data(87).dtTransOffset = 2100;

                    ;% rtP.Integrator_gainval_c0fk5uxyeb
                    section.data(88).logicalSrcIdx = 87;
                    section.data(88).dtTransOffset = 2101;

                    ;% rtP.Constant2_Value_mcxfir2knc
                    section.data(89).logicalSrcIdx = 88;
                    section.data(89).dtTransOffset = 2102;

                    ;% rtP.Saturation_UpperSat_g2zpvvxvhz
                    section.data(90).logicalSrcIdx = 89;
                    section.data(90).dtTransOffset = 2103;

                    ;% rtP.Saturation_LowerSat_mmnoh5s0jp
                    section.data(91).logicalSrcIdx = 90;
                    section.data(91).dtTransOffset = 2104;

                    ;% rtP.Integrator_gainval_b2tc3y3sp3
                    section.data(92).logicalSrcIdx = 91;
                    section.data(92).dtTransOffset = 2105;

                    ;% rtP.Constant2_Value_pu52vdaelf
                    section.data(93).logicalSrcIdx = 92;
                    section.data(93).dtTransOffset = 2106;

                    ;% rtP.Integrator_gainval_ginifr2xlq
                    section.data(94).logicalSrcIdx = 93;
                    section.data(94).dtTransOffset = 2107;

                    ;% rtP.Constant2_Value_fomuzpjuar
                    section.data(95).logicalSrcIdx = 94;
                    section.data(95).dtTransOffset = 2108;

                    ;% rtP.Saturation_UpperSat_j5u4qljnv5
                    section.data(96).logicalSrcIdx = 95;
                    section.data(96).dtTransOffset = 2109;

                    ;% rtP.Saturation_LowerSat_em3rmibbhe
                    section.data(97).logicalSrcIdx = 96;
                    section.data(97).dtTransOffset = 2110;

                    ;% rtP.Integrator_gainval_clmxe4wonv
                    section.data(98).logicalSrcIdx = 97;
                    section.data(98).dtTransOffset = 2111;

                    ;% rtP.Constant2_Value_gkaf0w0kw1
                    section.data(99).logicalSrcIdx = 98;
                    section.data(99).dtTransOffset = 2112;

                    ;% rtP.Integrator_gainval_lsanfb5e3f
                    section.data(100).logicalSrcIdx = 99;
                    section.data(100).dtTransOffset = 2113;

                    ;% rtP.Constant2_Value_pweuhgyjqa
                    section.data(101).logicalSrcIdx = 100;
                    section.data(101).dtTransOffset = 2114;

                    ;% rtP.Saturation_UpperSat_c1q2ftmtjs
                    section.data(102).logicalSrcIdx = 101;
                    section.data(102).dtTransOffset = 2115;

                    ;% rtP.Saturation_LowerSat_jkunmti0xg
                    section.data(103).logicalSrcIdx = 102;
                    section.data(103).dtTransOffset = 2116;

                    ;% rtP.Bias2_Bias
                    section.data(104).logicalSrcIdx = 103;
                    section.data(104).dtTransOffset = 2117;

                    ;% rtP.Bias_Bias
                    section.data(105).logicalSrcIdx = 104;
                    section.data(105).dtTransOffset = 2118;

                    ;% rtP.Bias1_Bias
                    section.data(106).logicalSrcIdx = 105;
                    section.data(106).dtTransOffset = 2119;

                    ;% rtP.TransferFcn1_A
                    section.data(107).logicalSrcIdx = 106;
                    section.data(107).dtTransOffset = 2120;

                    ;% rtP.TransferFcn1_C
                    section.data(108).logicalSrcIdx = 107;
                    section.data(108).dtTransOffset = 2121;

                    ;% rtP.Saturation5_UpperSat
                    section.data(109).logicalSrcIdx = 108;
                    section.data(109).dtTransOffset = 2122;

                    ;% rtP.Saturation5_LowerSat
                    section.data(110).logicalSrcIdx = 109;
                    section.data(110).dtTransOffset = 2123;

                    ;% rtP.Integrator1_IC
                    section.data(111).logicalSrcIdx = 110;
                    section.data(111).dtTransOffset = 2124;

                    ;% rtP.Integrator1_UpperSat
                    section.data(112).logicalSrcIdx = 111;
                    section.data(112).dtTransOffset = 2125;

                    ;% rtP.Saturation_UpperSat_jtqyrsjebw
                    section.data(113).logicalSrcIdx = 112;
                    section.data(113).dtTransOffset = 2126;

                    ;% rtP.Saturation_LowerSat_niuqztsdpt
                    section.data(114).logicalSrcIdx = 113;
                    section.data(114).dtTransOffset = 2127;

                    ;% rtP.Step_Y0
                    section.data(115).logicalSrcIdx = 114;
                    section.data(115).dtTransOffset = 2128;

                    ;% rtP.Saturation2_UpperSat
                    section.data(116).logicalSrcIdx = 115;
                    section.data(116).dtTransOffset = 2129;

                    ;% rtP.Saturation2_LowerSat
                    section.data(117).logicalSrcIdx = 116;
                    section.data(117).dtTransOffset = 2130;

                    ;% rtP.uDLookupTable_tableData_hmhkvqrroe
                    section.data(118).logicalSrcIdx = 117;
                    section.data(118).dtTransOffset = 2131;

                    ;% rtP.uDLookupTable_bp01Data_dw5uryy1bo
                    section.data(119).logicalSrcIdx = 118;
                    section.data(119).dtTransOffset = 2139;

                    ;% rtP.Gain2_Gain
                    section.data(120).logicalSrcIdx = 119;
                    section.data(120).dtTransOffset = 2147;

                    ;% rtP.TransferFcn_A
                    section.data(121).logicalSrcIdx = 120;
                    section.data(121).dtTransOffset = 2148;

                    ;% rtP.TransferFcn_C
                    section.data(122).logicalSrcIdx = 121;
                    section.data(122).dtTransOffset = 2149;

                    ;% rtP.Integrator_gainval_bz1x4sdu54
                    section.data(123).logicalSrcIdx = 122;
                    section.data(123).dtTransOffset = 2150;

                    ;% rtP.Gain_Gain_ccpd1tkjyt
                    section.data(124).logicalSrcIdx = 123;
                    section.data(124).dtTransOffset = 2151;

                    ;% rtP.Step_Time
                    section.data(125).logicalSrcIdx = 124;
                    section.data(125).dtTransOffset = 2152;

                    ;% rtP.Step_Y0_iilvtmdfoa
                    section.data(126).logicalSrcIdx = 125;
                    section.data(126).dtTransOffset = 2153;

                    ;% rtP.Step_YFinal
                    section.data(127).logicalSrcIdx = 126;
                    section.data(127).dtTransOffset = 2154;

                    ;% rtP.integrator_IC
                    section.data(128).logicalSrcIdx = 127;
                    section.data(128).dtTransOffset = 2155;

                    ;% rtP.TransportDelay_Delay
                    section.data(129).logicalSrcIdx = 128;
                    section.data(129).dtTransOffset = 2156;

                    ;% rtP.TransportDelay_InitOutput
                    section.data(130).logicalSrcIdx = 129;
                    section.data(130).dtTransOffset = 2157;

                    ;% rtP.K1_Value
                    section.data(131).logicalSrcIdx = 130;
                    section.data(131).dtTransOffset = 2158;

                    ;% rtP.Memory_InitialCondition
                    section.data(132).logicalSrcIdx = 131;
                    section.data(132).dtTransOffset = 2159;

                    ;% rtP.Switch_Threshold
                    section.data(133).logicalSrcIdx = 132;
                    section.data(133).dtTransOffset = 2160;

                    ;% rtP.Gain_Gain_jxuwxy0g01
                    section.data(134).logicalSrcIdx = 133;
                    section.data(134).dtTransOffset = 2161;

                    ;% rtP.Integrator_IC
                    section.data(135).logicalSrcIdx = 134;
                    section.data(135).dtTransOffset = 2162;

                    ;% rtP.Integrator_UpperSat
                    section.data(136).logicalSrcIdx = 135;
                    section.data(136).dtTransOffset = 2163;

                    ;% rtP.integrator_IC_cewwxj2gip
                    section.data(137).logicalSrcIdx = 136;
                    section.data(137).dtTransOffset = 2164;

                    ;% rtP.TransportDelay_Delay_nsr41clxsc
                    section.data(138).logicalSrcIdx = 137;
                    section.data(138).dtTransOffset = 2165;

                    ;% rtP.TransportDelay_InitOutput_n24jgiss12
                    section.data(139).logicalSrcIdx = 138;
                    section.data(139).dtTransOffset = 2166;

                    ;% rtP.K1_Value_h5aqg4redb
                    section.data(140).logicalSrcIdx = 139;
                    section.data(140).dtTransOffset = 2167;

                    ;% rtP.Memory_InitialCondition_ecfbyrmftp
                    section.data(141).logicalSrcIdx = 140;
                    section.data(141).dtTransOffset = 2168;

                    ;% rtP.Saturation1_UpperSat
                    section.data(142).logicalSrcIdx = 141;
                    section.data(142).dtTransOffset = 2169;

                    ;% rtP.Saturation1_LowerSat
                    section.data(143).logicalSrcIdx = 142;
                    section.data(143).dtTransOffset = 2170;

                    ;% rtP.Gain7_Gain
                    section.data(144).logicalSrcIdx = 143;
                    section.data(144).dtTransOffset = 2171;

                    ;% rtP.one_by_3_Gain_lq50khpwgl
                    section.data(145).logicalSrcIdx = 144;
                    section.data(145).dtTransOffset = 2172;

                    ;% rtP.one_by_sqrt3_Gain_bbbfyvtmfv
                    section.data(146).logicalSrcIdx = 145;
                    section.data(146).dtTransOffset = 2173;

                    ;% rtP.Kalphabeta0_Gain_pvcgmqyz1g
                    section.data(147).logicalSrcIdx = 146;
                    section.data(147).dtTransOffset = 2174;

                    ;% rtP.sine_table_values_Value_ph5vfaxqmh
                    section.data(148).logicalSrcIdx = 147;
                    section.data(148).dtTransOffset = 2177;

                    ;% rtP.convert_pu_Gain_flpdghdw0l
                    section.data(149).logicalSrcIdx = 148;
                    section.data(149).dtTransOffset = 3179;

                    ;% rtP.indexing_Gain_d4wzw4thi3
                    section.data(150).logicalSrcIdx = 149;
                    section.data(150).dtTransOffset = 3180;

                    ;% rtP.one_by_3_Gain_dy5n1llkjm
                    section.data(151).logicalSrcIdx = 150;
                    section.data(151).dtTransOffset = 3181;

                    ;% rtP.one_by_sqrt3_Gain_ot11yk20jv
                    section.data(152).logicalSrcIdx = 151;
                    section.data(152).dtTransOffset = 3182;

                    ;% rtP.Kalphabeta0_Gain_b1jcwqkjuu
                    section.data(153).logicalSrcIdx = 152;
                    section.data(153).dtTransOffset = 3183;

                    ;% rtP.sine_table_values_Value_pz4e1lr51y
                    section.data(154).logicalSrcIdx = 153;
                    section.data(154).dtTransOffset = 3186;

                    ;% rtP.convert_pu_Gain_ocuvhlhykv
                    section.data(155).logicalSrcIdx = 154;
                    section.data(155).dtTransOffset = 4188;

                    ;% rtP.indexing_Gain_jnauyr3dqe
                    section.data(156).logicalSrcIdx = 155;
                    section.data(156).dtTransOffset = 4189;

                    ;% rtP.integrator_IC_o5k0p0omuk
                    section.data(157).logicalSrcIdx = 156;
                    section.data(157).dtTransOffset = 4190;

                    ;% rtP.TransportDelay_Delay_khxusi3syg
                    section.data(158).logicalSrcIdx = 157;
                    section.data(158).dtTransOffset = 4191;

                    ;% rtP.TransportDelay_InitOutput_fcurpnfims
                    section.data(159).logicalSrcIdx = 158;
                    section.data(159).dtTransOffset = 4192;

                    ;% rtP.K1_Value_p2yed5qh2t
                    section.data(160).logicalSrcIdx = 159;
                    section.data(160).dtTransOffset = 4193;

                    ;% rtP.Memory_InitialCondition_moqgj1emy3
                    section.data(161).logicalSrcIdx = 160;
                    section.data(161).dtTransOffset = 4194;

                    ;% rtP.integrator_IC_nx1ywgu3yd
                    section.data(162).logicalSrcIdx = 161;
                    section.data(162).dtTransOffset = 4195;

                    ;% rtP.TransportDelay_Delay_ofg0lwkz05
                    section.data(163).logicalSrcIdx = 162;
                    section.data(163).dtTransOffset = 4196;

                    ;% rtP.TransportDelay_InitOutput_hpctjm5rzm
                    section.data(164).logicalSrcIdx = 163;
                    section.data(164).dtTransOffset = 4197;

                    ;% rtP.K1_Value_ful2v3oltv
                    section.data(165).logicalSrcIdx = 164;
                    section.data(165).dtTransOffset = 4198;

                    ;% rtP.Memory_InitialCondition_hff0nofxg3
                    section.data(166).logicalSrcIdx = 165;
                    section.data(166).dtTransOffset = 4199;

                    ;% rtP.integrator_IC_i0o4ll0jcd
                    section.data(167).logicalSrcIdx = 166;
                    section.data(167).dtTransOffset = 4200;

                    ;% rtP.TransportDelay_Delay_gievexvnzj
                    section.data(168).logicalSrcIdx = 167;
                    section.data(168).dtTransOffset = 4201;

                    ;% rtP.TransportDelay_InitOutput_balur43s2o
                    section.data(169).logicalSrcIdx = 168;
                    section.data(169).dtTransOffset = 4202;

                    ;% rtP.K1_Value_gff0kfd14l
                    section.data(170).logicalSrcIdx = 169;
                    section.data(170).dtTransOffset = 4203;

                    ;% rtP.Memory_InitialCondition_mu0u35defg
                    section.data(171).logicalSrcIdx = 170;
                    section.data(171).dtTransOffset = 4204;

                    ;% rtP.integrator_IC_droafotp5y
                    section.data(172).logicalSrcIdx = 171;
                    section.data(172).dtTransOffset = 4205;

                    ;% rtP.TransportDelay_Delay_gfwbehe5ez
                    section.data(173).logicalSrcIdx = 172;
                    section.data(173).dtTransOffset = 4206;

                    ;% rtP.TransportDelay_InitOutput_n232vm3mqw
                    section.data(174).logicalSrcIdx = 173;
                    section.data(174).dtTransOffset = 4207;

                    ;% rtP.K1_Value_bwyabfwh1v
                    section.data(175).logicalSrcIdx = 174;
                    section.data(175).dtTransOffset = 4208;

                    ;% rtP.Memory_InitialCondition_l1hfk5anpl
                    section.data(176).logicalSrcIdx = 175;
                    section.data(176).dtTransOffset = 4209;

                    ;% rtP.Bias_Bias_eywhmtq0nz
                    section.data(177).logicalSrcIdx = 176;
                    section.data(177).dtTransOffset = 4210;

                    ;% rtP.Gain1_Gain
                    section.data(178).logicalSrcIdx = 177;
                    section.data(178).dtTransOffset = 4211;

                    ;% rtP.Gain2_Gain_nbtmsufn1q
                    section.data(179).logicalSrcIdx = 178;
                    section.data(179).dtTransOffset = 4212;

                    ;% rtP.UnitDelay_InitialCondition
                    section.data(180).logicalSrcIdx = 179;
                    section.data(180).dtTransOffset = 4213;

                    ;% rtP.Integrator_gainval_dhnaqjdnlv
                    section.data(181).logicalSrcIdx = 180;
                    section.data(181).dtTransOffset = 4214;

                    ;% rtP.Constant3_Value
                    section.data(182).logicalSrcIdx = 181;
                    section.data(182).dtTransOffset = 4215;

                    ;% rtP.Constant3_Value_j4b4zpsigk
                    section.data(183).logicalSrcIdx = 182;
                    section.data(183).dtTransOffset = 4216;

                    ;% rtP.Constant3_Value_ltnm24yy5d
                    section.data(184).logicalSrcIdx = 183;
                    section.data(184).dtTransOffset = 4217;

                    ;% rtP.Step1_Time
                    section.data(185).logicalSrcIdx = 184;
                    section.data(185).dtTransOffset = 4218;

                    ;% rtP.Step1_Y0
                    section.data(186).logicalSrcIdx = 185;
                    section.data(186).dtTransOffset = 4219;

                    ;% rtP.Step1_YFinal
                    section.data(187).logicalSrcIdx = 186;
                    section.data(187).dtTransOffset = 4220;

                    ;% rtP.Step_Y0_n1ghy4ife5
                    section.data(188).logicalSrcIdx = 187;
                    section.data(188).dtTransOffset = 4221;

                    ;% rtP.Saturation3_UpperSat
                    section.data(189).logicalSrcIdx = 188;
                    section.data(189).dtTransOffset = 4222;

                    ;% rtP.Saturation4_UpperSat
                    section.data(190).logicalSrcIdx = 189;
                    section.data(190).dtTransOffset = 4223;

                    ;% rtP.Saturation4_LowerSat
                    section.data(191).logicalSrcIdx = 190;
                    section.data(191).dtTransOffset = 4224;

                    ;% rtP.TransferFcn_A_kmf2rzcsuh
                    section.data(192).logicalSrcIdx = 191;
                    section.data(192).dtTransOffset = 4225;

                    ;% rtP.TransferFcn_C_nnooprdpdc
                    section.data(193).logicalSrcIdx = 192;
                    section.data(193).dtTransOffset = 4226;

                    ;% rtP.Integrator_gainval_kcogqwyqqm
                    section.data(194).logicalSrcIdx = 193;
                    section.data(194).dtTransOffset = 4227;

                    ;% rtP.Gain_Gain_pm4qz0kgbm
                    section.data(195).logicalSrcIdx = 194;
                    section.data(195).dtTransOffset = 4228;

                    ;% rtP.UnitDelay1_InitialCondition
                    section.data(196).logicalSrcIdx = 195;
                    section.data(196).dtTransOffset = 4229;

                    ;% rtP.Constant_Value_kxfziju4tw
                    section.data(197).logicalSrcIdx = 196;
                    section.data(197).dtTransOffset = 4230;

                    ;% rtP.Constant1_Value_ah5g1obm1c
                    section.data(198).logicalSrcIdx = 197;
                    section.data(198).dtTransOffset = 4231;

                    ;% rtP.Constant10_Value
                    section.data(199).logicalSrcIdx = 198;
                    section.data(199).dtTransOffset = 4232;

                    ;% rtP.Constant11_Value
                    section.data(200).logicalSrcIdx = 199;
                    section.data(200).dtTransOffset = 4233;

                    ;% rtP.Constant5_Value
                    section.data(201).logicalSrcIdx = 200;
                    section.data(201).dtTransOffset = 4234;

                    ;% rtP.Constant7_Value
                    section.data(202).logicalSrcIdx = 201;
                    section.data(202).dtTransOffset = 4235;

                    ;% rtP.Constant2_Value_j5gua0l1cu
                    section.data(203).logicalSrcIdx = 202;
                    section.data(203).dtTransOffset = 4236;

                    ;% rtP.Gain5_Gain_fy5i4oqac2
                    section.data(204).logicalSrcIdx = 203;
                    section.data(204).dtTransOffset = 4237;

                    ;% rtP.Clamping_zero_Value_bhl50gjfmv
                    section.data(205).logicalSrcIdx = 204;
                    section.data(205).dtTransOffset = 4238;

                    ;% rtP.Clamping_zero_Value_editfihzwr
                    section.data(206).logicalSrcIdx = 205;
                    section.data(206).dtTransOffset = 4239;

                    ;% rtP.Clamping_zero_Value_jk10yi11gb
                    section.data(207).logicalSrcIdx = 206;
                    section.data(207).dtTransOffset = 4240;

                    ;% rtP.Constant1_Value_lshxyldrcl
                    section.data(208).logicalSrcIdx = 207;
                    section.data(208).dtTransOffset = 4241;

                    ;% rtP.RTP_0BF8E32F_angular_position_Value
                    section.data(209).logicalSrcIdx = 208;
                    section.data(209).dtTransOffset = 4242;

                    ;% rtP.RTP_0BF8E32F_angular_velocity_Value
                    section.data(210).logicalSrcIdx = 209;
                    section.data(210).dtTransOffset = 4243;

                    ;% rtP.RTP_0BF8E32F_i_d_Value
                    section.data(211).logicalSrcIdx = 210;
                    section.data(211).dtTransOffset = 4244;

                    ;% rtP.RTP_0BF8E32F_i_q_Value
                    section.data(212).logicalSrcIdx = 211;
                    section.data(212).dtTransOffset = 4245;

                    ;% rtP.RTP_0BF8E32F_torque_Value
                    section.data(213).logicalSrcIdx = 212;
                    section.data(213).dtTransOffset = 4246;

                    ;% rtP.RTP_12AF5A6E_vc_Value
                    section.data(214).logicalSrcIdx = 213;
                    section.data(214).dtTransOffset = 4247;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtP.offset_Value
                    section.data(1).logicalSrcIdx = 214;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.offset_Value_lmhvh4midj
                    section.data(2).logicalSrcIdx = 215;
                    section.data(2).dtTransOffset = 4;

                    ;% rtP.offset_Value_mwsc4qa1fy
                    section.data(3).logicalSrcIdx = 216;
                    section.data(3).dtTransOffset = 8;

                    ;% rtP.offset_Value_mdzj24mdnx
                    section.data(4).logicalSrcIdx = 217;
                    section.data(4).dtTransOffset = 12;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 8;
            section.data(8)  = dumData; %prealloc

                    ;% rtP.Offset_Value
                    section.data(1).logicalSrcIdx = 218;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Switch_Threshold_jxr2cmuqwa
                    section.data(2).logicalSrcIdx = 219;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Offset_Value_ekf4xacrxj
                    section.data(3).logicalSrcIdx = 220;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Switch_Threshold_nxmpevclsq
                    section.data(4).logicalSrcIdx = 221;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Offset_Value_fdpl4fkqt4
                    section.data(5).logicalSrcIdx = 222;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Switch_Threshold_hxqfqghb4d
                    section.data(6).logicalSrcIdx = 223;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Offset_Value_m3zt2yvby3
                    section.data(7).logicalSrcIdx = 224;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Switch_Threshold_ln2jpvokjq
                    section.data(8).logicalSrcIdx = 225;
                    section.data(8).dtTransOffset = 7;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 20;
            section.data(20)  = dumData; %prealloc

                    ;% rtP.Constant_Value_m5jwagwauz
                    section.data(1).logicalSrcIdx = 226;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Constant2_Value_g15j3l5i1j
                    section.data(2).logicalSrcIdx = 227;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Constant3_Value_hshw5uztzr
                    section.data(3).logicalSrcIdx = 228;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Constant4_Value
                    section.data(4).logicalSrcIdx = 229;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Constant_Value_aijixv30rt
                    section.data(5).logicalSrcIdx = 230;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Constant2_Value_kruxguatfq
                    section.data(6).logicalSrcIdx = 231;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Constant3_Value_cagblpulww
                    section.data(7).logicalSrcIdx = 232;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Constant4_Value_gaiqol5vq3
                    section.data(8).logicalSrcIdx = 233;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.Constant_Value_dkhphikhxn
                    section.data(9).logicalSrcIdx = 234;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Constant2_Value_chfiiyl2xo
                    section.data(10).logicalSrcIdx = 235;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.Constant3_Value_ckuyfoczpd
                    section.data(11).logicalSrcIdx = 236;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.Constant4_Value_d5cs5fwkek
                    section.data(12).logicalSrcIdx = 237;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.Constant_Value_ljwvnj1h33
                    section.data(13).logicalSrcIdx = 238;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.Constant2_Value_pr0foizd4c
                    section.data(14).logicalSrcIdx = 239;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.Constant3_Value_j5j0j3jbky
                    section.data(15).logicalSrcIdx = 240;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.Constant4_Value_jrpwj3ts4p
                    section.data(16).logicalSrcIdx = 241;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.Constant_Value_jk41wjclje
                    section.data(17).logicalSrcIdx = 242;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.Constant2_Value_kpw2yqrrrh
                    section.data(18).logicalSrcIdx = 243;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.Constant3_Value_ioufd4meag
                    section.data(19).logicalSrcIdx = 244;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.Constant4_Value_bmlxtdrt3t
                    section.data(20).logicalSrcIdx = 245;
                    section.data(20).dtTransOffset = 19;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtP.hhhygqmhdt.Gain_Gain
                    section.data(1).logicalSrcIdx = 246;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.hhhygqmhdt.RMS_Y0
                    section.data(2).logicalSrcIdx = 247;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.hhhygqmhdt.integrator_IC
                    section.data(3).logicalSrcIdx = 248;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.hhhygqmhdt.TransportDelay_Delay
                    section.data(4).logicalSrcIdx = 249;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.hhhygqmhdt.TransportDelay_InitOutput
                    section.data(5).logicalSrcIdx = 250;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.hhhygqmhdt.K1_Value
                    section.data(6).logicalSrcIdx = 251;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.hhhygqmhdt.Memory_InitialCondition
                    section.data(7).logicalSrcIdx = 252;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.hhhygqmhdt.Saturationtoavoidnegativesqrt_UpperSat
                    section.data(8).logicalSrcIdx = 253;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.hhhygqmhdt.Saturationtoavoidnegativesqrt_LowerSat
                    section.data(9).logicalSrcIdx = 254;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            paramMap.sections(5) = section;
            clear section

            section.nData     = 22;
            section.data(22)  = dumData; %prealloc

                    ;% rtP.lf14jcxnlk.Gain_Gain
                    section.data(1).logicalSrcIdx = 255;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.lf14jcxnlk.Gain_Gain_lcakt0uqm5
                    section.data(2).logicalSrcIdx = 256;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.lf14jcxnlk.RMS_Y0
                    section.data(3).logicalSrcIdx = 257;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.lf14jcxnlk.integrator_IC
                    section.data(4).logicalSrcIdx = 258;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.lf14jcxnlk.TransportDelay_Delay
                    section.data(5).logicalSrcIdx = 259;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.lf14jcxnlk.TransportDelay_InitOutput
                    section.data(6).logicalSrcIdx = 260;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.lf14jcxnlk.K1_Value
                    section.data(7).logicalSrcIdx = 261;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.lf14jcxnlk.Memory_InitialCondition
                    section.data(8).logicalSrcIdx = 262;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.lf14jcxnlk.integrator_IC_kjog5ftnvn
                    section.data(9).logicalSrcIdx = 263;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.lf14jcxnlk.TransportDelay_Delay_pzcjdymxhr
                    section.data(10).logicalSrcIdx = 264;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.lf14jcxnlk.TransportDelay_InitOutput_hry3bkiyft
                    section.data(11).logicalSrcIdx = 265;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.lf14jcxnlk.K1_Value_jrn3b22hcd
                    section.data(12).logicalSrcIdx = 266;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.lf14jcxnlk.Memory_InitialCondition_ee2jw0csk4
                    section.data(13).logicalSrcIdx = 267;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.lf14jcxnlk.sinwt_Amp
                    section.data(14).logicalSrcIdx = 268;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.lf14jcxnlk.sinwt_Bias
                    section.data(15).logicalSrcIdx = 269;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.lf14jcxnlk.sinwt_Freq
                    section.data(16).logicalSrcIdx = 270;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.lf14jcxnlk.sinwt_Phase
                    section.data(17).logicalSrcIdx = 271;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.lf14jcxnlk.coswt_Amp
                    section.data(18).logicalSrcIdx = 272;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.lf14jcxnlk.coswt_Bias
                    section.data(19).logicalSrcIdx = 273;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.lf14jcxnlk.coswt_Freq
                    section.data(20).logicalSrcIdx = 274;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.lf14jcxnlk.coswt_Phase
                    section.data(21).logicalSrcIdx = 275;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.lf14jcxnlk.Gain_Gain_gqtqomfgpx
                    section.data(22).logicalSrcIdx = 276;
                    section.data(22).dtTransOffset = 21;

            nTotData = nTotData + section.nData;
            paramMap.sections(6) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtP.ozrniap2npg.Gain_Gain
                    section.data(1).logicalSrcIdx = 277;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.ozrniap2npg.RMS_Y0
                    section.data(2).logicalSrcIdx = 278;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.ozrniap2npg.integrator_IC
                    section.data(3).logicalSrcIdx = 279;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.ozrniap2npg.TransportDelay_Delay
                    section.data(4).logicalSrcIdx = 280;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.ozrniap2npg.TransportDelay_InitOutput
                    section.data(5).logicalSrcIdx = 281;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.ozrniap2npg.K1_Value
                    section.data(6).logicalSrcIdx = 282;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.ozrniap2npg.Memory_InitialCondition
                    section.data(7).logicalSrcIdx = 283;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.ozrniap2npg.Saturationtoavoidnegativesqrt_UpperSat
                    section.data(8).logicalSrcIdx = 284;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.ozrniap2npg.Saturationtoavoidnegativesqrt_LowerSat
                    section.data(9).logicalSrcIdx = 285;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            paramMap.sections(7) = section;
            clear section

            section.nData     = 22;
            section.data(22)  = dumData; %prealloc

                    ;% rtP.hovqtw2gqef.Gain_Gain
                    section.data(1).logicalSrcIdx = 286;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.hovqtw2gqef.Gain_Gain_lcakt0uqm5
                    section.data(2).logicalSrcIdx = 287;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.hovqtw2gqef.RMS_Y0
                    section.data(3).logicalSrcIdx = 288;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.hovqtw2gqef.integrator_IC
                    section.data(4).logicalSrcIdx = 289;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.hovqtw2gqef.TransportDelay_Delay
                    section.data(5).logicalSrcIdx = 290;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.hovqtw2gqef.TransportDelay_InitOutput
                    section.data(6).logicalSrcIdx = 291;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.hovqtw2gqef.K1_Value
                    section.data(7).logicalSrcIdx = 292;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.hovqtw2gqef.Memory_InitialCondition
                    section.data(8).logicalSrcIdx = 293;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.hovqtw2gqef.integrator_IC_kjog5ftnvn
                    section.data(9).logicalSrcIdx = 294;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.hovqtw2gqef.TransportDelay_Delay_pzcjdymxhr
                    section.data(10).logicalSrcIdx = 295;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.hovqtw2gqef.TransportDelay_InitOutput_hry3bkiyft
                    section.data(11).logicalSrcIdx = 296;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.hovqtw2gqef.K1_Value_jrn3b22hcd
                    section.data(12).logicalSrcIdx = 297;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.hovqtw2gqef.Memory_InitialCondition_ee2jw0csk4
                    section.data(13).logicalSrcIdx = 298;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.hovqtw2gqef.sinwt_Amp
                    section.data(14).logicalSrcIdx = 299;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.hovqtw2gqef.sinwt_Bias
                    section.data(15).logicalSrcIdx = 300;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.hovqtw2gqef.sinwt_Freq
                    section.data(16).logicalSrcIdx = 301;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.hovqtw2gqef.sinwt_Phase
                    section.data(17).logicalSrcIdx = 302;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.hovqtw2gqef.coswt_Amp
                    section.data(18).logicalSrcIdx = 303;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.hovqtw2gqef.coswt_Bias
                    section.data(19).logicalSrcIdx = 304;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.hovqtw2gqef.coswt_Freq
                    section.data(20).logicalSrcIdx = 305;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.hovqtw2gqef.coswt_Phase
                    section.data(21).logicalSrcIdx = 306;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.hovqtw2gqef.Gain_Gain_gqtqomfgpx
                    section.data(22).logicalSrcIdx = 307;
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
            section.nData     = 149;
            section.data(149)  = dumData; %prealloc

                    ;% rtB.lq5ea53xxd
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.kmpohrsouu
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.o5la3xfhjn
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 5;

                    ;% rtB.cs4yj0vkgp
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 9;

                    ;% rtB.e2lry31wlf
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 12;

                    ;% rtB.cermcbwoxe
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 14;

                    ;% rtB.jq24qc4eg2
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 15;

                    ;% rtB.peln4lvxr3
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 16;

                    ;% rtB.dm5nqlqqge
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 17;

                    ;% rtB.ipqsxfgzo0
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 21;

                    ;% rtB.coffjttnsa
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 23;

                    ;% rtB.kytgn4xdku
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 24;

                    ;% rtB.iu2wyyfrrw
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 25;

                    ;% rtB.hyzzueql2v
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 26;

                    ;% rtB.jzpjnydpfx
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 30;

                    ;% rtB.bc0njkkghu
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 32;

                    ;% rtB.oveuam2gjo
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 33;

                    ;% rtB.amqu2pnmx0
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 34;

                    ;% rtB.akpie0iu4n
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 35;

                    ;% rtB.am4fmemr3p
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 39;

                    ;% rtB.ho2kcwfukw
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 40;

                    ;% rtB.clkkceozh2
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 144;

                    ;% rtB.mgxkac2st3
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 157;

                    ;% rtB.ksdi5fcw2n
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 158;

                    ;% rtB.itv3mcjljb
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 159;

                    ;% rtB.k45qcnjqvx
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 160;

                    ;% rtB.m0vky4qvvt
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 161;

                    ;% rtB.eus4b3qjnl
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 162;

                    ;% rtB.jhl1xg0pwm
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 163;

                    ;% rtB.dsgdqt2k5k
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 164;

                    ;% rtB.kmd2jbyk4j
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 165;

                    ;% rtB.oq3d44muo1
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 166;

                    ;% rtB.ng4hyuwiqc
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 167;

                    ;% rtB.cvqgy1izcp
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 168;

                    ;% rtB.dbara4sgn0
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 169;

                    ;% rtB.l3gdtaskbv
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 170;

                    ;% rtB.jfs4cbl4wy
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 171;

                    ;% rtB.mfrtox3kkw
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 172;

                    ;% rtB.i0c300rdvn
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 173;

                    ;% rtB.mgykwyql4r
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 174;

                    ;% rtB.ip4gnxdg0y
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 175;

                    ;% rtB.eiuim2edbm
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 176;

                    ;% rtB.buarotbg2h
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 177;

                    ;% rtB.fh4jfdoyno
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 178;

                    ;% rtB.cfkrzhwapr
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 179;

                    ;% rtB.bbaav4i0i0
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 180;

                    ;% rtB.l2xbfe0czc
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 181;

                    ;% rtB.fbtz5m4bl3
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 182;

                    ;% rtB.iseho3q0z4
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 183;

                    ;% rtB.f21mottlr1
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 184;

                    ;% rtB.jkbou15ats
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 185;

                    ;% rtB.izeia10oyl
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 186;

                    ;% rtB.l45yjpegwk
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 187;

                    ;% rtB.dt40ryw0ry
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 188;

                    ;% rtB.m3vvroiwvd
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 189;

                    ;% rtB.aumw5nbixq
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 190;

                    ;% rtB.lt2cauuryk
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 191;

                    ;% rtB.elxarkdthp
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 192;

                    ;% rtB.m3xaj3guf5
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 193;

                    ;% rtB.h32tpjzxff
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 194;

                    ;% rtB.ekyqhistvs
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 195;

                    ;% rtB.gjlqc5qhwt
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 196;

                    ;% rtB.blcych1n0n
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 197;

                    ;% rtB.ptlphjmuo4
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 198;

                    ;% rtB.jcr0jmmzt1
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 199;

                    ;% rtB.awrt4lftax
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 202;

                    ;% rtB.mf25tz205x
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 203;

                    ;% rtB.jfij2fzkrk
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 204;

                    ;% rtB.mb2yx01dx2
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 205;

                    ;% rtB.jdyvv0bamw
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 208;

                    ;% rtB.f3w313oeyy
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 209;

                    ;% rtB.jrsry3kk24
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 210;

                    ;% rtB.ahqdqhrbpa
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 211;

                    ;% rtB.gkjtsnptpq
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 212;

                    ;% rtB.kryusifzhr
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 213;

                    ;% rtB.jw2wblmzyn
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 214;

                    ;% rtB.bijpi54m3f
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 215;

                    ;% rtB.hiati1jmtl
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 216;

                    ;% rtB.diryynaesk
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 217;

                    ;% rtB.jtgjtbklpn
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 218;

                    ;% rtB.bj50ppf4de
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 219;

                    ;% rtB.niql3yp4k3
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 220;

                    ;% rtB.he2ifln0eb
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 221;

                    ;% rtB.df1mys3hmw
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 224;

                    ;% rtB.dwdaphcbuu
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 225;

                    ;% rtB.jmc5ga02rr
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 228;

                    ;% rtB.bf1sw5b3ed
                    section.data(87).logicalSrcIdx = 86;
                    section.data(87).dtTransOffset = 231;

                    ;% rtB.brldx1geei
                    section.data(88).logicalSrcIdx = 87;
                    section.data(88).dtTransOffset = 232;

                    ;% rtB.p3l4uri5qr
                    section.data(89).logicalSrcIdx = 88;
                    section.data(89).dtTransOffset = 235;

                    ;% rtB.ee43tbkncr
                    section.data(90).logicalSrcIdx = 89;
                    section.data(90).dtTransOffset = 236;

                    ;% rtB.jdo3i5unfe
                    section.data(91).logicalSrcIdx = 90;
                    section.data(91).dtTransOffset = 237;

                    ;% rtB.mirebamtlg
                    section.data(92).logicalSrcIdx = 91;
                    section.data(92).dtTransOffset = 238;

                    ;% rtB.d53khmsdob
                    section.data(93).logicalSrcIdx = 92;
                    section.data(93).dtTransOffset = 239;

                    ;% rtB.iop5u0r041
                    section.data(94).logicalSrcIdx = 93;
                    section.data(94).dtTransOffset = 240;

                    ;% rtB.fgbx0na4tm
                    section.data(95).logicalSrcIdx = 94;
                    section.data(95).dtTransOffset = 241;

                    ;% rtB.g3lclgghi2
                    section.data(96).logicalSrcIdx = 95;
                    section.data(96).dtTransOffset = 242;

                    ;% rtB.f1xjqnfitc
                    section.data(97).logicalSrcIdx = 96;
                    section.data(97).dtTransOffset = 243;

                    ;% rtB.obzkzp0w1x
                    section.data(98).logicalSrcIdx = 97;
                    section.data(98).dtTransOffset = 244;

                    ;% rtB.h112sa0yrr
                    section.data(99).logicalSrcIdx = 98;
                    section.data(99).dtTransOffset = 245;

                    ;% rtB.cv0cxwtq3t
                    section.data(100).logicalSrcIdx = 99;
                    section.data(100).dtTransOffset = 246;

                    ;% rtB.bc3qcybaqn
                    section.data(101).logicalSrcIdx = 100;
                    section.data(101).dtTransOffset = 247;

                    ;% rtB.jlil3asqcu
                    section.data(102).logicalSrcIdx = 101;
                    section.data(102).dtTransOffset = 248;

                    ;% rtB.p4kvtbv1o1
                    section.data(103).logicalSrcIdx = 102;
                    section.data(103).dtTransOffset = 249;

                    ;% rtB.ehoklyeeqo
                    section.data(104).logicalSrcIdx = 103;
                    section.data(104).dtTransOffset = 250;

                    ;% rtB.imucpwzkjs
                    section.data(105).logicalSrcIdx = 104;
                    section.data(105).dtTransOffset = 251;

                    ;% rtB.iqeewowch1
                    section.data(106).logicalSrcIdx = 105;
                    section.data(106).dtTransOffset = 252;

                    ;% rtB.fl43w51udj
                    section.data(107).logicalSrcIdx = 106;
                    section.data(107).dtTransOffset = 253;

                    ;% rtB.pin4vxfk5k
                    section.data(108).logicalSrcIdx = 107;
                    section.data(108).dtTransOffset = 254;

                    ;% rtB.k15hhjwlas
                    section.data(109).logicalSrcIdx = 108;
                    section.data(109).dtTransOffset = 255;

                    ;% rtB.at0xgpnmmz
                    section.data(110).logicalSrcIdx = 109;
                    section.data(110).dtTransOffset = 258;

                    ;% rtB.mfy1mutlb3
                    section.data(111).logicalSrcIdx = 110;
                    section.data(111).dtTransOffset = 259;

                    ;% rtB.ml1qcrflo1
                    section.data(112).logicalSrcIdx = 111;
                    section.data(112).dtTransOffset = 260;

                    ;% rtB.dkmmfrq0ap
                    section.data(113).logicalSrcIdx = 112;
                    section.data(113).dtTransOffset = 261;

                    ;% rtB.hde5zdvgpr
                    section.data(114).logicalSrcIdx = 113;
                    section.data(114).dtTransOffset = 262;

                    ;% rtB.krarad0nkl
                    section.data(115).logicalSrcIdx = 114;
                    section.data(115).dtTransOffset = 263;

                    ;% rtB.aesrpeophn
                    section.data(116).logicalSrcIdx = 115;
                    section.data(116).dtTransOffset = 264;

                    ;% rtB.cjmdmsv1sk
                    section.data(117).logicalSrcIdx = 116;
                    section.data(117).dtTransOffset = 265;

                    ;% rtB.encgdzk4mt
                    section.data(118).logicalSrcIdx = 117;
                    section.data(118).dtTransOffset = 266;

                    ;% rtB.ldysqeoch1
                    section.data(119).logicalSrcIdx = 118;
                    section.data(119).dtTransOffset = 267;

                    ;% rtB.m3ehmuvrq5
                    section.data(120).logicalSrcIdx = 119;
                    section.data(120).dtTransOffset = 268;

                    ;% rtB.i534i2lnnn
                    section.data(121).logicalSrcIdx = 120;
                    section.data(121).dtTransOffset = 269;

                    ;% rtB.jmwjcsvmm3
                    section.data(122).logicalSrcIdx = 121;
                    section.data(122).dtTransOffset = 270;

                    ;% rtB.kxu2i40bau
                    section.data(123).logicalSrcIdx = 122;
                    section.data(123).dtTransOffset = 271;

                    ;% rtB.llvjkgvm5y
                    section.data(124).logicalSrcIdx = 123;
                    section.data(124).dtTransOffset = 272;

                    ;% rtB.e00d3kbiw1
                    section.data(125).logicalSrcIdx = 124;
                    section.data(125).dtTransOffset = 273;

                    ;% rtB.hbzpcgt0x5
                    section.data(126).logicalSrcIdx = 125;
                    section.data(126).dtTransOffset = 274;

                    ;% rtB.fi42uuhojt
                    section.data(127).logicalSrcIdx = 126;
                    section.data(127).dtTransOffset = 275;

                    ;% rtB.hnhlr2se25
                    section.data(128).logicalSrcIdx = 127;
                    section.data(128).dtTransOffset = 276;

                    ;% rtB.eorqrndrjh
                    section.data(129).logicalSrcIdx = 128;
                    section.data(129).dtTransOffset = 277;

                    ;% rtB.ht3qhz5gsv
                    section.data(130).logicalSrcIdx = 129;
                    section.data(130).dtTransOffset = 278;

                    ;% rtB.ohtjecku3e
                    section.data(131).logicalSrcIdx = 130;
                    section.data(131).dtTransOffset = 279;

                    ;% rtB.ganxpnwg3b
                    section.data(132).logicalSrcIdx = 131;
                    section.data(132).dtTransOffset = 280;

                    ;% rtB.ej1vz2borp
                    section.data(133).logicalSrcIdx = 132;
                    section.data(133).dtTransOffset = 281;

                    ;% rtB.i5kbqu3hm2
                    section.data(134).logicalSrcIdx = 133;
                    section.data(134).dtTransOffset = 282;

                    ;% rtB.kgamnsklxu
                    section.data(135).logicalSrcIdx = 134;
                    section.data(135).dtTransOffset = 283;

                    ;% rtB.f0ynaskrbx
                    section.data(136).logicalSrcIdx = 135;
                    section.data(136).dtTransOffset = 284;

                    ;% rtB.ikelajde01
                    section.data(137).logicalSrcIdx = 136;
                    section.data(137).dtTransOffset = 285;

                    ;% rtB.ctkaw3ecbv
                    section.data(138).logicalSrcIdx = 137;
                    section.data(138).dtTransOffset = 286;

                    ;% rtB.jbx451w0iy
                    section.data(139).logicalSrcIdx = 138;
                    section.data(139).dtTransOffset = 287;

                    ;% rtB.gqb5astach
                    section.data(140).logicalSrcIdx = 139;
                    section.data(140).dtTransOffset = 288;

                    ;% rtB.f3dyesridv
                    section.data(141).logicalSrcIdx = 140;
                    section.data(141).dtTransOffset = 289;

                    ;% rtB.euvmyq2f3h
                    section.data(142).logicalSrcIdx = 141;
                    section.data(142).dtTransOffset = 290;

                    ;% rtB.flffivwt3s
                    section.data(143).logicalSrcIdx = 142;
                    section.data(143).dtTransOffset = 291;

                    ;% rtB.nmyg35nmyy
                    section.data(144).logicalSrcIdx = 143;
                    section.data(144).dtTransOffset = 292;

                    ;% rtB.ekyx0elpf3
                    section.data(145).logicalSrcIdx = 144;
                    section.data(145).dtTransOffset = 293;

                    ;% rtB.eoql05ofgw
                    section.data(146).logicalSrcIdx = 145;
                    section.data(146).dtTransOffset = 294;

                    ;% rtB.gwc4b4l0z5
                    section.data(147).logicalSrcIdx = 146;
                    section.data(147).dtTransOffset = 296;

                    ;% rtB.npye5l2xtp
                    section.data(148).logicalSrcIdx = 147;
                    section.data(148).dtTransOffset = 297;

                    ;% rtB.nxonson0ib
                    section.data(149).logicalSrcIdx = 148;
                    section.data(149).dtTransOffset = 298;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtB.ll2ajaw4rk
                    section.data(1).logicalSrcIdx = 150;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.jtheasxax3
                    section.data(2).logicalSrcIdx = 151;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtB.p03bojrqbg
                    section.data(1).logicalSrcIdx = 158;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.g4dn1tm3yr
                    section.data(2).logicalSrcIdx = 159;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.cowlabq4wc
                    section.data(3).logicalSrcIdx = 160;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.lkj40havn1
                    section.data(4).logicalSrcIdx = 161;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.j41gtpgwtn
                    section.data(5).logicalSrcIdx = 162;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.mutkvm4ooz
                    section.data(6).logicalSrcIdx = 163;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.pp5exscs3g
                    section.data(7).logicalSrcIdx = 164;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.krymqtt4cb
                    section.data(8).logicalSrcIdx = 165;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.iqsaibftw3
                    section.data(9).logicalSrcIdx = 166;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section

            section.nData     = 10;
            section.data(10)  = dumData; %prealloc

                    ;% rtB.hhhygqmhdt.m51ft2hiql
                    section.data(1).logicalSrcIdx = 167;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.hhhygqmhdt.arwglbhwpo
                    section.data(2).logicalSrcIdx = 168;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.hhhygqmhdt.bu2abxnzbv
                    section.data(3).logicalSrcIdx = 169;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.hhhygqmhdt.h0tj1cpxzd
                    section.data(4).logicalSrcIdx = 170;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.hhhygqmhdt.afaydkbj32
                    section.data(5).logicalSrcIdx = 171;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.hhhygqmhdt.oxbjjome0i
                    section.data(6).logicalSrcIdx = 172;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.hhhygqmhdt.lng0rfri31
                    section.data(7).logicalSrcIdx = 173;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.hhhygqmhdt.ou0jlgy0mr
                    section.data(8).logicalSrcIdx = 174;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.hhhygqmhdt.dqj2wqjqfx
                    section.data(9).logicalSrcIdx = 175;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.hhhygqmhdt.ekipj4payc
                    section.data(10).logicalSrcIdx = 176;
                    section.data(10).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            sigMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.lf14jcxnlk.f1gw21c2wo
                    section.data(1).logicalSrcIdx = 177;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(5) = section;
            clear section

            section.nData     = 17;
            section.data(17)  = dumData; %prealloc

                    ;% rtB.lf14jcxnlk.dvkyghqb1k
                    section.data(1).logicalSrcIdx = 178;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.lf14jcxnlk.aojepeosf5
                    section.data(2).logicalSrcIdx = 179;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.lf14jcxnlk.i2ynohgi2m
                    section.data(3).logicalSrcIdx = 180;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.lf14jcxnlk.jjlm1m1qoi
                    section.data(4).logicalSrcIdx = 181;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.lf14jcxnlk.g3wugwu3x5
                    section.data(5).logicalSrcIdx = 182;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.lf14jcxnlk.lan5r423sd
                    section.data(6).logicalSrcIdx = 183;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.lf14jcxnlk.he3vmexx3i
                    section.data(7).logicalSrcIdx = 184;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.lf14jcxnlk.pcjf3k3koy
                    section.data(8).logicalSrcIdx = 185;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.lf14jcxnlk.d4mnpl54hg
                    section.data(9).logicalSrcIdx = 186;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.lf14jcxnlk.hnhua3rvsa
                    section.data(10).logicalSrcIdx = 187;
                    section.data(10).dtTransOffset = 9;

                    ;% rtB.lf14jcxnlk.ot1dcofcbx
                    section.data(11).logicalSrcIdx = 188;
                    section.data(11).dtTransOffset = 10;

                    ;% rtB.lf14jcxnlk.iyw1cyz0sm
                    section.data(12).logicalSrcIdx = 189;
                    section.data(12).dtTransOffset = 11;

                    ;% rtB.lf14jcxnlk.nferl15f13
                    section.data(13).logicalSrcIdx = 190;
                    section.data(13).dtTransOffset = 12;

                    ;% rtB.lf14jcxnlk.eel0lgvg3q
                    section.data(14).logicalSrcIdx = 191;
                    section.data(14).dtTransOffset = 13;

                    ;% rtB.lf14jcxnlk.gbsywuneo2
                    section.data(15).logicalSrcIdx = 192;
                    section.data(15).dtTransOffset = 14;

                    ;% rtB.lf14jcxnlk.g05pgql0ef
                    section.data(16).logicalSrcIdx = 193;
                    section.data(16).dtTransOffset = 15;

                    ;% rtB.lf14jcxnlk.dqsm1ev051
                    section.data(17).logicalSrcIdx = 194;
                    section.data(17).dtTransOffset = 16;

            nTotData = nTotData + section.nData;
            sigMap.sections(6) = section;
            clear section

            section.nData     = 10;
            section.data(10)  = dumData; %prealloc

                    ;% rtB.ozrniap2npg.m51ft2hiql
                    section.data(1).logicalSrcIdx = 195;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.ozrniap2npg.arwglbhwpo
                    section.data(2).logicalSrcIdx = 196;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.ozrniap2npg.bu2abxnzbv
                    section.data(3).logicalSrcIdx = 197;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.ozrniap2npg.h0tj1cpxzd
                    section.data(4).logicalSrcIdx = 198;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.ozrniap2npg.afaydkbj32
                    section.data(5).logicalSrcIdx = 199;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.ozrniap2npg.oxbjjome0i
                    section.data(6).logicalSrcIdx = 200;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.ozrniap2npg.lng0rfri31
                    section.data(7).logicalSrcIdx = 201;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.ozrniap2npg.ou0jlgy0mr
                    section.data(8).logicalSrcIdx = 202;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.ozrniap2npg.dqj2wqjqfx
                    section.data(9).logicalSrcIdx = 203;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.ozrniap2npg.ekipj4payc
                    section.data(10).logicalSrcIdx = 204;
                    section.data(10).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            sigMap.sections(7) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.hovqtw2gqef.f1gw21c2wo
                    section.data(1).logicalSrcIdx = 205;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(8) = section;
            clear section

            section.nData     = 17;
            section.data(17)  = dumData; %prealloc

                    ;% rtB.hovqtw2gqef.dvkyghqb1k
                    section.data(1).logicalSrcIdx = 206;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.hovqtw2gqef.aojepeosf5
                    section.data(2).logicalSrcIdx = 207;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.hovqtw2gqef.i2ynohgi2m
                    section.data(3).logicalSrcIdx = 208;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.hovqtw2gqef.jjlm1m1qoi
                    section.data(4).logicalSrcIdx = 209;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.hovqtw2gqef.g3wugwu3x5
                    section.data(5).logicalSrcIdx = 210;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.hovqtw2gqef.lan5r423sd
                    section.data(6).logicalSrcIdx = 211;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.hovqtw2gqef.he3vmexx3i
                    section.data(7).logicalSrcIdx = 212;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.hovqtw2gqef.pcjf3k3koy
                    section.data(8).logicalSrcIdx = 213;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.hovqtw2gqef.d4mnpl54hg
                    section.data(9).logicalSrcIdx = 214;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.hovqtw2gqef.hnhua3rvsa
                    section.data(10).logicalSrcIdx = 215;
                    section.data(10).dtTransOffset = 9;

                    ;% rtB.hovqtw2gqef.ot1dcofcbx
                    section.data(11).logicalSrcIdx = 216;
                    section.data(11).dtTransOffset = 10;

                    ;% rtB.hovqtw2gqef.iyw1cyz0sm
                    section.data(12).logicalSrcIdx = 217;
                    section.data(12).dtTransOffset = 11;

                    ;% rtB.hovqtw2gqef.nferl15f13
                    section.data(13).logicalSrcIdx = 218;
                    section.data(13).dtTransOffset = 12;

                    ;% rtB.hovqtw2gqef.eel0lgvg3q
                    section.data(14).logicalSrcIdx = 219;
                    section.data(14).dtTransOffset = 13;

                    ;% rtB.hovqtw2gqef.gbsywuneo2
                    section.data(15).logicalSrcIdx = 220;
                    section.data(15).dtTransOffset = 14;

                    ;% rtB.hovqtw2gqef.g05pgql0ef
                    section.data(16).logicalSrcIdx = 221;
                    section.data(16).dtTransOffset = 15;

                    ;% rtB.hovqtw2gqef.dqsm1ev051
                    section.data(17).logicalSrcIdx = 222;
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
            section.nData     = 45;
            section.data(45)  = dumData; %prealloc

                    ;% rtDW.bdgl5gkxau
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ffvck4soyr
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.f4t2gzxdzo
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.jyndun01me
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.ckjtakgpk3
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.crq03jnnuq
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 7;

                    ;% rtDW.bvuxwp0slw
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 8;

                    ;% rtDW.bfu5goggea
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 9;

                    ;% rtDW.kushr1y0po
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 11;

                    ;% rtDW.haydi2j0hm
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 12;

                    ;% rtDW.igfwehz0ql
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 13;

                    ;% rtDW.i41155v2sx
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 15;

                    ;% rtDW.cbeo0rohkk
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 16;

                    ;% rtDW.o11ornrryg
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 17;

                    ;% rtDW.a3qu0xbs0k
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 19;

                    ;% rtDW.eauxdkrxli
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 164;

                    ;% rtDW.hg14s5y1lm
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 165;

                    ;% rtDW.dcod4141fy
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 166;

                    ;% rtDW.o4cigzhwsu
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 167;

                    ;% rtDW.iurwpxoavg
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 168;

                    ;% rtDW.h1yukdlzt4
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 169;

                    ;% rtDW.pkfitaixfx
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 170;

                    ;% rtDW.foffqbdmo4
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 171;

                    ;% rtDW.lr1zk1ixil
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 225;

                    ;% rtDW.nu1c1a1e0o
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 226;

                    ;% rtDW.hyz3yhk14q
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 227;

                    ;% rtDW.ggruzf0ifj
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 228;

                    ;% rtDW.kvz0acwp3d
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 229;

                    ;% rtDW.bdrkttwawo
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 230;

                    ;% rtDW.h2kzi5k4bh
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 231;

                    ;% rtDW.iw01hy2b4h
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 232;

                    ;% rtDW.ipsqgq53te
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 235;

                    ;% rtDW.fmnehtiu5h
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 236;

                    ;% rtDW.lsk3kyntug
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 237;

                    ;% rtDW.gcoc4nslup
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 238;

                    ;% rtDW.pmrbgnuhv5
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 239;

                    ;% rtDW.a2g3rmjjlk
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 240;

                    ;% rtDW.kf4teb2ow0
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 241;

                    ;% rtDW.fux34qatdy
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 242;

                    ;% rtDW.dp4rg20nqd
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 243;

                    ;% rtDW.ivzafmgt5b
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 244;

                    ;% rtDW.oit4xhlvfj
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 245;

                    ;% rtDW.ajjwlhmp0g
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 246;

                    ;% rtDW.nqfghzlbpv
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 247;

                    ;% rtDW.b5umjdikem
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 248;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 36;
            section.data(36)  = dumData; %prealloc

                    ;% rtDW.atxckwogba.LoggedData
                    section.data(1).logicalSrcIdx = 45;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.jpvw4zoijh
                    section.data(2).logicalSrcIdx = 46;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.no0qoxk4yp
                    section.data(3).logicalSrcIdx = 47;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.eleirexodm
                    section.data(4).logicalSrcIdx = 48;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.jxojagl5d4
                    section.data(5).logicalSrcIdx = 49;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.gj15opmqbf
                    section.data(6).logicalSrcIdx = 50;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.n00dsmxm3r
                    section.data(7).logicalSrcIdx = 51;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.cobef3eass
                    section.data(8).logicalSrcIdx = 52;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.datbg1lb11
                    section.data(9).logicalSrcIdx = 53;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.pacuhjoen5
                    section.data(10).logicalSrcIdx = 54;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.d4lxw4s3b1
                    section.data(11).logicalSrcIdx = 55;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.bigzwrmfa5
                    section.data(12).logicalSrcIdx = 56;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.khrd0m3wsd.LoggedData
                    section.data(13).logicalSrcIdx = 57;
                    section.data(13).dtTransOffset = 12;

                    ;% rtDW.j5lswbq3tn.LoggedData
                    section.data(14).logicalSrcIdx = 58;
                    section.data(14).dtTransOffset = 17;

                    ;% rtDW.j0hhinzhdx
                    section.data(15).logicalSrcIdx = 59;
                    section.data(15).dtTransOffset = 19;

                    ;% rtDW.lyydyjkfjc.LoggedData
                    section.data(16).logicalSrcIdx = 60;
                    section.data(16).dtTransOffset = 21;

                    ;% rtDW.nfvlonp2vp.LoggedData
                    section.data(17).logicalSrcIdx = 61;
                    section.data(17).dtTransOffset = 23;

                    ;% rtDW.ct2cucnlki.LoggedData
                    section.data(18).logicalSrcIdx = 62;
                    section.data(18).dtTransOffset = 25;

                    ;% rtDW.dnqoq04i4r.LoggedData
                    section.data(19).logicalSrcIdx = 63;
                    section.data(19).dtTransOffset = 26;

                    ;% rtDW.emysjaigvw
                    section.data(20).logicalSrcIdx = 64;
                    section.data(20).dtTransOffset = 27;

                    ;% rtDW.ebuypziku5.LoggedData
                    section.data(21).logicalSrcIdx = 65;
                    section.data(21).dtTransOffset = 29;

                    ;% rtDW.ovxg3qnsqe.LoggedData
                    section.data(22).logicalSrcIdx = 66;
                    section.data(22).dtTransOffset = 32;

                    ;% rtDW.omuglr3brh.LoggedData
                    section.data(23).logicalSrcIdx = 67;
                    section.data(23).dtTransOffset = 36;

                    ;% rtDW.ornfgcsad5.LoggedData
                    section.data(24).logicalSrcIdx = 68;
                    section.data(24).dtTransOffset = 39;

                    ;% rtDW.nzhzk20pan
                    section.data(25).logicalSrcIdx = 69;
                    section.data(25).dtTransOffset = 43;

                    ;% rtDW.phm2pplslk
                    section.data(26).logicalSrcIdx = 70;
                    section.data(26).dtTransOffset = 45;

                    ;% rtDW.o5sivl2rhf
                    section.data(27).logicalSrcIdx = 71;
                    section.data(27).dtTransOffset = 47;

                    ;% rtDW.dqqjodxjku
                    section.data(28).logicalSrcIdx = 72;
                    section.data(28).dtTransOffset = 49;

                    ;% rtDW.pydxe5taxg.LoggedData
                    section.data(29).logicalSrcIdx = 73;
                    section.data(29).dtTransOffset = 55;

                    ;% rtDW.egiqojbrda.LoggedData
                    section.data(30).logicalSrcIdx = 74;
                    section.data(30).dtTransOffset = 61;

                    ;% rtDW.mzs2cql5uy.LoggedData
                    section.data(31).logicalSrcIdx = 75;
                    section.data(31).dtTransOffset = 65;

                    ;% rtDW.evd1nze543.LoggedData
                    section.data(32).logicalSrcIdx = 76;
                    section.data(32).dtTransOffset = 69;

                    ;% rtDW.ov0tcvqzpt.LoggedData
                    section.data(33).logicalSrcIdx = 77;
                    section.data(33).dtTransOffset = 73;

                    ;% rtDW.hphp12keze.LoggedData
                    section.data(34).logicalSrcIdx = 78;
                    section.data(34).dtTransOffset = 77;

                    ;% rtDW.cegsykimbe.LoggedData
                    section.data(35).logicalSrcIdx = 79;
                    section.data(35).dtTransOffset = 83;

                    ;% rtDW.oxqcvataan.LoggedData
                    section.data(36).logicalSrcIdx = 80;
                    section.data(36).dtTransOffset = 86;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.hti5ubch1w
                    section.data(1).logicalSrcIdx = 81;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.mjpfgsoscg
                    section.data(2).logicalSrcIdx = 82;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 24;
            section.data(24)  = dumData; %prealloc

                    ;% rtDW.c2lxz4uw52
                    section.data(1).logicalSrcIdx = 83;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ixmfpm5fo0
                    section.data(2).logicalSrcIdx = 84;
                    section.data(2).dtTransOffset = 54;

                    ;% rtDW.n4h4424ht5
                    section.data(3).logicalSrcIdx = 85;
                    section.data(3).dtTransOffset = 55;

                    ;% rtDW.jjxomzenu2
                    section.data(4).logicalSrcIdx = 86;
                    section.data(4).dtTransOffset = 60;

                    ;% rtDW.fivpcenwwv
                    section.data(5).logicalSrcIdx = 87;
                    section.data(5).dtTransOffset = 65;

                    ;% rtDW.hrc2vh4z2e
                    section.data(6).logicalSrcIdx = 88;
                    section.data(6).dtTransOffset = 70;

                    ;% rtDW.hu5dselzp5
                    section.data(7).logicalSrcIdx = 89;
                    section.data(7).dtTransOffset = 75;

                    ;% rtDW.jq1vxvhkwa
                    section.data(8).logicalSrcIdx = 90;
                    section.data(8).dtTransOffset = 80;

                    ;% rtDW.cyaz0jiisc
                    section.data(9).logicalSrcIdx = 91;
                    section.data(9).dtTransOffset = 93;

                    ;% rtDW.ctgux2cfsx
                    section.data(10).logicalSrcIdx = 92;
                    section.data(10).dtTransOffset = 94;

                    ;% rtDW.ergzv2l5tt
                    section.data(11).logicalSrcIdx = 93;
                    section.data(11).dtTransOffset = 95;

                    ;% rtDW.ozxxrhth3m
                    section.data(12).logicalSrcIdx = 94;
                    section.data(12).dtTransOffset = 96;

                    ;% rtDW.le4rkd1bem
                    section.data(13).logicalSrcIdx = 95;
                    section.data(13).dtTransOffset = 97;

                    ;% rtDW.hwekpc4pjr
                    section.data(14).logicalSrcIdx = 96;
                    section.data(14).dtTransOffset = 98;

                    ;% rtDW.fcugtrl4mm
                    section.data(15).logicalSrcIdx = 97;
                    section.data(15).dtTransOffset = 99;

                    ;% rtDW.lepwqc04z3
                    section.data(16).logicalSrcIdx = 98;
                    section.data(16).dtTransOffset = 100;

                    ;% rtDW.kr2delj3jl
                    section.data(17).logicalSrcIdx = 99;
                    section.data(17).dtTransOffset = 101;

                    ;% rtDW.p3vrpe25uz
                    section.data(18).logicalSrcIdx = 100;
                    section.data(18).dtTransOffset = 102;

                    ;% rtDW.kab5qkrp4g
                    section.data(19).logicalSrcIdx = 101;
                    section.data(19).dtTransOffset = 103;

                    ;% rtDW.jt5tvilo2a
                    section.data(20).logicalSrcIdx = 102;
                    section.data(20).dtTransOffset = 104;

                    ;% rtDW.eqylns1jpo
                    section.data(21).logicalSrcIdx = 103;
                    section.data(21).dtTransOffset = 105;

                    ;% rtDW.p2w3n2n54r
                    section.data(22).logicalSrcIdx = 104;
                    section.data(22).dtTransOffset = 106;

                    ;% rtDW.jmzfvdn2xf
                    section.data(23).logicalSrcIdx = 105;
                    section.data(23).dtTransOffset = 107;

                    ;% rtDW.eh0zg50ghs
                    section.data(24).logicalSrcIdx = 106;
                    section.data(24).dtTransOffset = 108;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.clb2qi1eua
                    section.data(1).logicalSrcIdx = 107;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% rtDW.icjxlxvnon
                    section.data(1).logicalSrcIdx = 108;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.lq1qe4woum
                    section.data(2).logicalSrcIdx = 109;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.ddo3sysh20
                    section.data(3).logicalSrcIdx = 110;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.pi1z2ykl1z
                    section.data(4).logicalSrcIdx = 111;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.kh0ztz5tag
                    section.data(5).logicalSrcIdx = 112;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.ofgawnpqzg
                    section.data(6).logicalSrcIdx = 113;
                    section.data(6).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtDW.mjomtqprne
                    section.data(1).logicalSrcIdx = 114;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.jchusw3p0v
                    section.data(2).logicalSrcIdx = 115;
                    section.data(2).dtTransOffset = 54;

                    ;% rtDW.ahgzfmtccs
                    section.data(3).logicalSrcIdx = 116;
                    section.data(3).dtTransOffset = 108;

                    ;% rtDW.emol2d2wzt
                    section.data(4).logicalSrcIdx = 117;
                    section.data(4).dtTransOffset = 109;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
            clear section

            section.nData     = 27;
            section.data(27)  = dumData; %prealloc

                    ;% rtDW.hzl2nxpfhg
                    section.data(1).logicalSrcIdx = 118;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.eydsnc531x
                    section.data(2).logicalSrcIdx = 119;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.iam25nbk0t
                    section.data(3).logicalSrcIdx = 120;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.g5g1gmthpi
                    section.data(4).logicalSrcIdx = 121;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.fzfyh4tpl4
                    section.data(5).logicalSrcIdx = 122;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.ouwekuhe3n
                    section.data(6).logicalSrcIdx = 123;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.d133yd2jgw
                    section.data(7).logicalSrcIdx = 124;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.gz0aernse5
                    section.data(8).logicalSrcIdx = 125;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.gzr5sloj34
                    section.data(9).logicalSrcIdx = 126;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.dter15fojq
                    section.data(10).logicalSrcIdx = 127;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.pg0htsmjmf
                    section.data(11).logicalSrcIdx = 128;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.a4wjn3drzs
                    section.data(12).logicalSrcIdx = 129;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.oulypmcilp
                    section.data(13).logicalSrcIdx = 130;
                    section.data(13).dtTransOffset = 12;

                    ;% rtDW.j012lzzqav
                    section.data(14).logicalSrcIdx = 131;
                    section.data(14).dtTransOffset = 13;

                    ;% rtDW.d0jynnwocx
                    section.data(15).logicalSrcIdx = 132;
                    section.data(15).dtTransOffset = 14;

                    ;% rtDW.aaq43ayaok
                    section.data(16).logicalSrcIdx = 133;
                    section.data(16).dtTransOffset = 15;

                    ;% rtDW.fdhse2olvv
                    section.data(17).logicalSrcIdx = 134;
                    section.data(17).dtTransOffset = 16;

                    ;% rtDW.o0i1winn3t
                    section.data(18).logicalSrcIdx = 135;
                    section.data(18).dtTransOffset = 17;

                    ;% rtDW.dxvltny3vc
                    section.data(19).logicalSrcIdx = 136;
                    section.data(19).dtTransOffset = 18;

                    ;% rtDW.iho0wfh0su
                    section.data(20).logicalSrcIdx = 137;
                    section.data(20).dtTransOffset = 19;

                    ;% rtDW.bakspkn4jr
                    section.data(21).logicalSrcIdx = 138;
                    section.data(21).dtTransOffset = 20;

                    ;% rtDW.ce1zujzmfy
                    section.data(22).logicalSrcIdx = 139;
                    section.data(22).dtTransOffset = 21;

                    ;% rtDW.gp43zbwbi5
                    section.data(23).logicalSrcIdx = 140;
                    section.data(23).dtTransOffset = 22;

                    ;% rtDW.bjh0icdfls
                    section.data(24).logicalSrcIdx = 141;
                    section.data(24).dtTransOffset = 23;

                    ;% rtDW.nvnpnay0br
                    section.data(25).logicalSrcIdx = 142;
                    section.data(25).dtTransOffset = 24;

                    ;% rtDW.e1gm5ua4ga
                    section.data(26).logicalSrcIdx = 143;
                    section.data(26).dtTransOffset = 25;

                    ;% rtDW.cyomdetsg0
                    section.data(27).logicalSrcIdx = 144;
                    section.data(27).dtTransOffset = 26;

            nTotData = nTotData + section.nData;
            dworkMap.sections(8) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.klrqnhrpje.ifwnh2zuio
                    section.data(1).logicalSrcIdx = 145;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(9) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.kkcjpfpj4k.nhnnjimzig
                    section.data(1).logicalSrcIdx = 146;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(10) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.leieu0xvzr.ifwnh2zuio
                    section.data(1).logicalSrcIdx = 147;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(11) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.ovprx5wuu0.nhnnjimzig
                    section.data(1).logicalSrcIdx = 148;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(12) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.hhhygqmhdt.cqdgkrei3r
                    section.data(1).logicalSrcIdx = 149;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.hhhygqmhdt.o0wxt1e0kp
                    section.data(2).logicalSrcIdx = 150;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(13) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.hhhygqmhdt.mjwwn4qght
                    section.data(1).logicalSrcIdx = 151;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(14) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.hhhygqmhdt.anx51fidkl
                    section.data(1).logicalSrcIdx = 152;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.hhhygqmhdt.njbaiu3p0p
                    section.data(2).logicalSrcIdx = 153;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(15) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.hhhygqmhdt.gie0lqzeuv
                    section.data(1).logicalSrcIdx = 154;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.hhhygqmhdt.onci4u3t5h
                    section.data(2).logicalSrcIdx = 155;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(16) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.hhhygqmhdt.izuizsweeu
                    section.data(1).logicalSrcIdx = 156;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(17) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtDW.lf14jcxnlk.hlgsjbi2ok
                    section.data(1).logicalSrcIdx = 157;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.lf14jcxnlk.h35vgdfsdr
                    section.data(2).logicalSrcIdx = 158;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.lf14jcxnlk.kkla3zra01
                    section.data(3).logicalSrcIdx = 159;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.lf14jcxnlk.d04tpcndxi
                    section.data(4).logicalSrcIdx = 160;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            dworkMap.sections(18) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.lf14jcxnlk.pdyvaldgck
                    section.data(1).logicalSrcIdx = 161;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.lf14jcxnlk.nfniev4dv0
                    section.data(2).logicalSrcIdx = 162;
                    section.data(2).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(19) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.lf14jcxnlk.hu4jrkmr4i
                    section.data(1).logicalSrcIdx = 163;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.lf14jcxnlk.pjjpsaeqwa
                    section.data(2).logicalSrcIdx = 164;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(20) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.lf14jcxnlk.lfxcuh40zn
                    section.data(1).logicalSrcIdx = 165;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(21) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.lf14jcxnlk.fn41aknbta
                    section.data(1).logicalSrcIdx = 166;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(22) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.ozrniap2npg.cqdgkrei3r
                    section.data(1).logicalSrcIdx = 167;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ozrniap2npg.o0wxt1e0kp
                    section.data(2).logicalSrcIdx = 168;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(23) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.ozrniap2npg.mjwwn4qght
                    section.data(1).logicalSrcIdx = 169;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(24) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.ozrniap2npg.anx51fidkl
                    section.data(1).logicalSrcIdx = 170;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ozrniap2npg.njbaiu3p0p
                    section.data(2).logicalSrcIdx = 171;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(25) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.ozrniap2npg.gie0lqzeuv
                    section.data(1).logicalSrcIdx = 172;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ozrniap2npg.onci4u3t5h
                    section.data(2).logicalSrcIdx = 173;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(26) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.ozrniap2npg.izuizsweeu
                    section.data(1).logicalSrcIdx = 174;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(27) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtDW.hovqtw2gqef.hlgsjbi2ok
                    section.data(1).logicalSrcIdx = 175;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.hovqtw2gqef.h35vgdfsdr
                    section.data(2).logicalSrcIdx = 176;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.hovqtw2gqef.kkla3zra01
                    section.data(3).logicalSrcIdx = 177;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.hovqtw2gqef.d04tpcndxi
                    section.data(4).logicalSrcIdx = 178;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            dworkMap.sections(28) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.hovqtw2gqef.pdyvaldgck
                    section.data(1).logicalSrcIdx = 179;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.hovqtw2gqef.nfniev4dv0
                    section.data(2).logicalSrcIdx = 180;
                    section.data(2).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(29) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.hovqtw2gqef.hu4jrkmr4i
                    section.data(1).logicalSrcIdx = 181;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.hovqtw2gqef.pjjpsaeqwa
                    section.data(2).logicalSrcIdx = 182;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(30) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.hovqtw2gqef.lfxcuh40zn
                    section.data(1).logicalSrcIdx = 183;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(31) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.hovqtw2gqef.fn41aknbta
                    section.data(1).logicalSrcIdx = 184;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(32) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.ewwnuehzjs.ifwnh2zuio
                    section.data(1).logicalSrcIdx = 185;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(33) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.afz4d0hhcj.nhnnjimzig
                    section.data(1).logicalSrcIdx = 186;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(34) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.e3ag2h2bsyu.ifwnh2zuio
                    section.data(1).logicalSrcIdx = 187;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(35) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.nkpbe1gtc14.nhnnjimzig
                    section.data(1).logicalSrcIdx = 188;
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


    targMap.checksum0 = 3978087989;
    targMap.checksum1 = 1073092807;
    targMap.checksum2 = 1615166072;
    targMap.checksum3 = 1829102865;

