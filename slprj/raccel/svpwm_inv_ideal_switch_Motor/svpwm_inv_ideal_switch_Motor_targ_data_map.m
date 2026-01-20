    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
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
        ;% Init/prealloc paramMap
        ;%
        paramMap.nSections           = nTotSects;
        paramMap.sectIdxOffset       = sectIdxOffset;
            paramMap.sections(nTotSects) = dumSection; %prealloc
        paramMap.nTotData            = -1;

        ;%
        ;% Auto data (rtP)
        ;%
            section.nData     = 135;
            section.data(135)  = dumData; %prealloc

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

                    ;% rtP.PIDController2_I
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.PIDController3_InitialConditionForIntegrator
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.PIDController4_InitialConditionForIntegrator
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.PIDController2_InitialConditionForIntegrator
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.PIDController2_LowerSaturationLimit
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.PIDController3_P
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.PIDController4_P
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.PIDController2_P
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.Carriercounter_Range
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.Carriercounter_Range_fbb5yen5s5
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.Carriercounter_Range_iry5nbrdqx
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.PWMGenerator1_Tdelay
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.PWMGenerator2_Tdelay
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.PWMGenerator_Tdelay
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.PWMGenerator_Tper
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.PWMGenerator1_Tper
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.PWMGenerator2_Tper
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 21;

                    ;% rtP.PIDController2_UpperSaturationLimit
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 22;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 23;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 24;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue_gmxko0ufcx
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 25;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue_ppty12eo1o
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 26;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue_czzrcv1xs0
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 27;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue_cznn0srx2d
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 28;

                    ;% rtP.Ramp_slope
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 29;

                    ;% rtP.Ramp1_slope
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 30;

                    ;% rtP.Ramp_start
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 31;

                    ;% rtP.Ramp1_start
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 32;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 33;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0_jmi4gwmvri
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 34;

                    ;% rtP.IntegratorwithWrappedStateDiscreteorContinuous_x0_cmhchouter
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 35;

                    ;% rtP.Gain_Gain
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 36;

                    ;% rtP.Gain_Gain_ll5pcfvhs0
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 37;

                    ;% rtP.Gain_Gain_pfjbetl5p1
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 38;

                    ;% rtP.one_by_3_Gain
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 39;

                    ;% rtP.one_by_sqrt3_Gain
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 40;

                    ;% rtP.Kalphabeta0_Gain
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 41;

                    ;% rtP.Gain1_Gain
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 44;

                    ;% rtP.Integrator_gainval
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 45;

                    ;% rtP.Gain4_Gain
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 46;

                    ;% rtP.Integrator_gainval_k5jjwwdxok
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 47;

                    ;% rtP.Gain2_Gain
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 48;

                    ;% rtP.Gain3_Gain
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 49;

                    ;% rtP.Gain_Gain_n41ssx3siy
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 50;

                    ;% rtP.Constant_Value
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 51;

                    ;% rtP.Constant1_Value
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 52;

                    ;% rtP.Constant3_Value
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 53;

                    ;% rtP.Constant1_Value_jszzsjitnn
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 54;

                    ;% rtP.Constant_Value_d51pvnudts
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 55;

                    ;% rtP.Constant_Value_aedbii5zo1
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 56;

                    ;% rtP.Constant_Value_otslvflthu
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 57;

                    ;% rtP.TransferFcn_A
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 58;

                    ;% rtP.TransferFcn_C
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 59;

                    ;% rtP.uDLookupTable_tableData
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 60;

                    ;% rtP.uDLookupTable_bp01Data
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 64;

                    ;% rtP.Gain2_Gain_hrv0gbf0t1
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 68;

                    ;% rtP.Gain_Gain_e32s35ttd5
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 69;

                    ;% rtP.UnitDelay2_InitialCondition
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 70;

                    ;% rtP.Integrator_gainval_mrdvyychkv
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 71;

                    ;% rtP.Constant2_Value
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 72;

                    ;% rtP.Integrator_gainval_c0fk5uxyeb
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 73;

                    ;% rtP.Constant2_Value_mcxfir2knc
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 74;

                    ;% rtP.Saturation_UpperSat
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 75;

                    ;% rtP.Saturation_LowerSat
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 76;

                    ;% rtP.Integrator_gainval_b2tc3y3sp3
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 77;

                    ;% rtP.Constant2_Value_pu52vdaelf
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 78;

                    ;% rtP.Integrator_gainval_ginifr2xlq
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 79;

                    ;% rtP.Constant2_Value_fomuzpjuar
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 80;

                    ;% rtP.Saturation_UpperSat_j5u4qljnv5
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 81;

                    ;% rtP.Saturation_LowerSat_em3rmibbhe
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 82;

                    ;% rtP.Integrator_gainval_clmxe4wonv
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 83;

                    ;% rtP.Constant2_Value_gkaf0w0kw1
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 84;

                    ;% rtP.Integrator_gainval_lsanfb5e3f
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 85;

                    ;% rtP.Constant2_Value_pweuhgyjqa
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 86;

                    ;% rtP.Saturation_UpperSat_c1q2ftmtjs
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 87;

                    ;% rtP.Saturation_LowerSat_jkunmti0xg
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 88;

                    ;% rtP.Bias2_Bias
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 89;

                    ;% rtP.Bias_Bias
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 90;

                    ;% rtP.Bias1_Bias
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 91;

                    ;% rtP.TransferFcn1_A
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 92;

                    ;% rtP.TransferFcn1_C
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 93;

                    ;% rtP.TransferFcn2_A
                    section.data(87).logicalSrcIdx = 86;
                    section.data(87).dtTransOffset = 94;

                    ;% rtP.TransferFcn2_C
                    section.data(88).logicalSrcIdx = 87;
                    section.data(88).dtTransOffset = 95;

                    ;% rtP.TransferFcn3_A
                    section.data(89).logicalSrcIdx = 88;
                    section.data(89).dtTransOffset = 96;

                    ;% rtP.TransferFcn3_C
                    section.data(90).logicalSrcIdx = 89;
                    section.data(90).dtTransOffset = 97;

                    ;% rtP.integrator_IC
                    section.data(91).logicalSrcIdx = 90;
                    section.data(91).dtTransOffset = 98;

                    ;% rtP.TransportDelay_Delay
                    section.data(92).logicalSrcIdx = 91;
                    section.data(92).dtTransOffset = 99;

                    ;% rtP.TransportDelay_InitOutput
                    section.data(93).logicalSrcIdx = 92;
                    section.data(93).dtTransOffset = 100;

                    ;% rtP.K1_Value
                    section.data(94).logicalSrcIdx = 93;
                    section.data(94).dtTransOffset = 101;

                    ;% rtP.Memory_InitialCondition
                    section.data(95).logicalSrcIdx = 94;
                    section.data(95).dtTransOffset = 102;

                    ;% rtP.integrator_IC_ldmkngjmod
                    section.data(96).logicalSrcIdx = 95;
                    section.data(96).dtTransOffset = 103;

                    ;% rtP.TransportDelay_Delay_nvpgxsgedh
                    section.data(97).logicalSrcIdx = 96;
                    section.data(97).dtTransOffset = 104;

                    ;% rtP.TransportDelay_InitOutput_mvnxyosv3m
                    section.data(98).logicalSrcIdx = 97;
                    section.data(98).dtTransOffset = 105;

                    ;% rtP.K1_Value_nit54kbtj3
                    section.data(99).logicalSrcIdx = 98;
                    section.data(99).dtTransOffset = 106;

                    ;% rtP.Memory_InitialCondition_ea2pbevdn4
                    section.data(100).logicalSrcIdx = 99;
                    section.data(100).dtTransOffset = 107;

                    ;% rtP.integrator_IC_mzomdehgl0
                    section.data(101).logicalSrcIdx = 100;
                    section.data(101).dtTransOffset = 108;

                    ;% rtP.TransportDelay_Delay_gvvsfgtvem
                    section.data(102).logicalSrcIdx = 101;
                    section.data(102).dtTransOffset = 109;

                    ;% rtP.TransportDelay_InitOutput_hb2oc3ff1y
                    section.data(103).logicalSrcIdx = 102;
                    section.data(103).dtTransOffset = 110;

                    ;% rtP.K1_Value_bgr15xvg3f
                    section.data(104).logicalSrcIdx = 103;
                    section.data(104).dtTransOffset = 111;

                    ;% rtP.Memory_InitialCondition_noummn3k0p
                    section.data(105).logicalSrcIdx = 104;
                    section.data(105).dtTransOffset = 112;

                    ;% rtP.TransferFcn_A_c1oljm0wuu
                    section.data(106).logicalSrcIdx = 105;
                    section.data(106).dtTransOffset = 113;

                    ;% rtP.TransferFcn_C_bb501r2khh
                    section.data(107).logicalSrcIdx = 106;
                    section.data(107).dtTransOffset = 114;

                    ;% rtP.one_by_3_Gain_ftvqyvuzmt
                    section.data(108).logicalSrcIdx = 107;
                    section.data(108).dtTransOffset = 115;

                    ;% rtP.one_by_sqrt3_Gain_pgvhkr2jgu
                    section.data(109).logicalSrcIdx = 108;
                    section.data(109).dtTransOffset = 116;

                    ;% rtP.Kalphabeta0_Gain_ilfd34dpsq
                    section.data(110).logicalSrcIdx = 109;
                    section.data(110).dtTransOffset = 117;

                    ;% rtP.Gain1_Gain_nxhl14je3b
                    section.data(111).logicalSrcIdx = 110;
                    section.data(111).dtTransOffset = 120;

                    ;% rtP.Integrator_gainval_paibil4hm3
                    section.data(112).logicalSrcIdx = 111;
                    section.data(112).dtTransOffset = 121;

                    ;% rtP.Constant3_Value_lk0wk5gj3a
                    section.data(113).logicalSrcIdx = 112;
                    section.data(113).dtTransOffset = 122;

                    ;% rtP.Constant3_Value_j4b4zpsigk
                    section.data(114).logicalSrcIdx = 113;
                    section.data(114).dtTransOffset = 123;

                    ;% rtP.Constant3_Value_ltnm24yy5d
                    section.data(115).logicalSrcIdx = 114;
                    section.data(115).dtTransOffset = 124;

                    ;% rtP.Step_Y0
                    section.data(116).logicalSrcIdx = 115;
                    section.data(116).dtTransOffset = 125;

                    ;% rtP.Step_Y0_nwabdebpoo
                    section.data(117).logicalSrcIdx = 116;
                    section.data(117).dtTransOffset = 126;

                    ;% rtP.Constant_Value_n3iuon0ekq
                    section.data(118).logicalSrcIdx = 117;
                    section.data(118).dtTransOffset = 127;

                    ;% rtP.Constant2_Value_adqopcdcxe
                    section.data(119).logicalSrcIdx = 118;
                    section.data(119).dtTransOffset = 128;

                    ;% rtP.Clamping_zero_Value
                    section.data(120).logicalSrcIdx = 119;
                    section.data(120).dtTransOffset = 129;

                    ;% rtP.Constant_Value_mumexc0o4r
                    section.data(121).logicalSrcIdx = 120;
                    section.data(121).dtTransOffset = 130;

                    ;% rtP.Constant1_Value_bvfdufyota
                    section.data(122).logicalSrcIdx = 121;
                    section.data(122).dtTransOffset = 131;

                    ;% rtP.Constant10_Value
                    section.data(123).logicalSrcIdx = 122;
                    section.data(123).dtTransOffset = 132;

                    ;% rtP.Constant11_Value
                    section.data(124).logicalSrcIdx = 123;
                    section.data(124).dtTransOffset = 133;

                    ;% rtP.Constant5_Value
                    section.data(125).logicalSrcIdx = 124;
                    section.data(125).dtTransOffset = 134;

                    ;% rtP.Constant7_Value
                    section.data(126).logicalSrcIdx = 125;
                    section.data(126).dtTransOffset = 135;

                    ;% rtP.RTP_12AF5A6E_v_Value
                    section.data(127).logicalSrcIdx = 126;
                    section.data(127).dtTransOffset = 136;

                    ;% rtP.RTP_6FFE9E78_v_Value
                    section.data(128).logicalSrcIdx = 127;
                    section.data(128).dtTransOffset = 137;

                    ;% rtP.RTP_7551B8C1_angular_position_Value
                    section.data(129).logicalSrcIdx = 128;
                    section.data(129).dtTransOffset = 138;

                    ;% rtP.RTP_7551B8C1_angular_velocity_Value
                    section.data(130).logicalSrcIdx = 129;
                    section.data(130).dtTransOffset = 139;

                    ;% rtP.RTP_7551B8C1_i_d_Value
                    section.data(131).logicalSrcIdx = 130;
                    section.data(131).dtTransOffset = 140;

                    ;% rtP.RTP_7551B8C1_i_q_Value
                    section.data(132).logicalSrcIdx = 131;
                    section.data(132).dtTransOffset = 141;

                    ;% rtP.RTP_7551B8C1_torque_Value
                    section.data(133).logicalSrcIdx = 132;
                    section.data(133).dtTransOffset = 142;

                    ;% rtP.RTP_7A33EE0C_w_Value
                    section.data(134).logicalSrcIdx = 133;
                    section.data(134).dtTransOffset = 143;

                    ;% rtP.RTP_8519EF23_i_L_Value
                    section.data(135).logicalSrcIdx = 134;
                    section.data(135).dtTransOffset = 144;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% rtP.Offset_Value
                    section.data(1).logicalSrcIdx = 135;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Switch_Threshold
                    section.data(2).logicalSrcIdx = 136;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Offset_Value_liidbyyeg5
                    section.data(3).logicalSrcIdx = 137;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Switch_Threshold_ot3e5nk2jb
                    section.data(4).logicalSrcIdx = 138;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Offset_Value_l5jnuwrncz
                    section.data(5).logicalSrcIdx = 139;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Switch_Threshold_ol0hmyrsdr
                    section.data(6).logicalSrcIdx = 140;
                    section.data(6).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtP.Constant_Value_jztjkp0m2j
                    section.data(1).logicalSrcIdx = 141;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Constant2_Value_d2bnea0b2y
                    section.data(2).logicalSrcIdx = 142;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Constant3_Value_ijyrlqhtqs
                    section.data(3).logicalSrcIdx = 143;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Constant4_Value
                    section.data(4).logicalSrcIdx = 144;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
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
            section.nData     = 78;
            section.data(78)  = dumData; %prealloc

                    ;% rtB.ekk11nkuz3
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.nvyiuv1zxl
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.dd0muoybk2
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.elycy3b3ad
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.bpd0kmwwuj
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.fj3clsrn1n
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.m1glkuwbva
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.mtks2gpnub
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 10;

                    ;% rtB.hhp3y0oygr
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 13;

                    ;% rtB.knjptrjfxw
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 15;

                    ;% rtB.iixyxlabma
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 16;

                    ;% rtB.ez3qw0cmbe
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 17;

                    ;% rtB.ipcfdxqbvr
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 18;

                    ;% rtB.ec040fp0fa
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 22;

                    ;% rtB.lbfipievkr
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 24;

                    ;% rtB.amgg2aweyl
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 25;

                    ;% rtB.nhbuwczelb
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 26;

                    ;% rtB.mpqyczxej3
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 27;

                    ;% rtB.nysfdpoprp
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 31;

                    ;% rtB.f2c4mvklul
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 33;

                    ;% rtB.hxwhc32bo0
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 34;

                    ;% rtB.kqiarrulir
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 35;

                    ;% rtB.embqhexp1p
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 36;

                    ;% rtB.iyki3ean2s
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 40;

                    ;% rtB.omxlfht11w
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 41;

                    ;% rtB.nlfkewwkrq
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 148;

                    ;% rtB.bpu0xfzkw1
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 162;

                    ;% rtB.fn0xsynz42
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 163;

                    ;% rtB.f5zsaldpbf
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 164;

                    ;% rtB.ja5uzywmgg
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 165;

                    ;% rtB.h4qjgjncyb
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 166;

                    ;% rtB.pa2zy4mpwv
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 167;

                    ;% rtB.plf0bzyoir
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 168;

                    ;% rtB.at5nwuloys
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 169;

                    ;% rtB.bdt1inr5hx
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 170;

                    ;% rtB.jkvtbzrsci
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 171;

                    ;% rtB.g35x4wcrqq
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 172;

                    ;% rtB.fve1hufcvc
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 173;

                    ;% rtB.nxeoo33jua
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 174;

                    ;% rtB.odobza0ien
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 175;

                    ;% rtB.fwyauue1r3
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 176;

                    ;% rtB.hbx1vtkzuw
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 177;

                    ;% rtB.ndd0zuh2um
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 178;

                    ;% rtB.l1db0zw3xd
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 179;

                    ;% rtB.hmxjsv2cvd
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 180;

                    ;% rtB.izoggj010e
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 181;

                    ;% rtB.desxhsenu1
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 182;

                    ;% rtB.jsnwfcg0hl
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 183;

                    ;% rtB.jubdn5alh2
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 184;

                    ;% rtB.k0t1wtmr5q
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 185;

                    ;% rtB.pvfoltfune
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 186;

                    ;% rtB.eqqft4qpkb
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 187;

                    ;% rtB.mzjl13czwr
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 188;

                    ;% rtB.i5rkytt3xy
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 189;

                    ;% rtB.a4lv0iyskh
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 190;

                    ;% rtB.cxjwsljzkc
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 191;

                    ;% rtB.or0ttvwbd0
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 192;

                    ;% rtB.p14rrqllfn
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 193;

                    ;% rtB.mhnxkimy3i
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 194;

                    ;% rtB.n4ts4dtcsq
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 195;

                    ;% rtB.akq1ntnmq3
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 196;

                    ;% rtB.hpidpxqnfq
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 197;

                    ;% rtB.hcjia010du
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 198;

                    ;% rtB.nwivc1gook
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 199;

                    ;% rtB.fkzcqvy1u1
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 200;

                    ;% rtB.bo5cwqikij
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 201;

                    ;% rtB.n0uh2lwref
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 202;

                    ;% rtB.m2fmd2xvn0
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 203;

                    ;% rtB.ap0cz5mhpy
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 204;

                    ;% rtB.fz44qd5gkn
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 205;

                    ;% rtB.ct3lcbtol5
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 206;

                    ;% rtB.ilrzcuq4cf
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 207;

                    ;% rtB.ka5csqzys5
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 208;

                    ;% rtB.ml31xvpomk
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 209;

                    ;% rtB.pjlyxcfs2b
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 211;

                    ;% rtB.o3tqnmn43y
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 212;

                    ;% rtB.adyv0gvv5b
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 213;

                    ;% rtB.opjvd5ozy1
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 214;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.grzukuw54p
                    section.data(1).logicalSrcIdx = 78;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% rtB.lh4lpppnmp
                    section.data(1).logicalSrcIdx = 85;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.gubi0njiax
                    section.data(2).logicalSrcIdx = 86;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.avn5nipjpe
                    section.data(3).logicalSrcIdx = 87;
                    section.data(3).dtTransOffset = 2;

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
        nTotSects     = 7;
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
            section.nData     = 31;
            section.data(31)  = dumData; %prealloc

                    ;% rtDW.p2newwshb2
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.p1eaxc4si3
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.fvjpifmnqp
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.afz1wmfwwl
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 5;

                    ;% rtDW.l311fk1wdw
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 6;

                    ;% rtDW.lvtmdk5pzk
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 7;

                    ;% rtDW.okewh4umdj
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 9;

                    ;% rtDW.pzb0hgihqm
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 10;

                    ;% rtDW.kr2nbusf3i
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 11;

                    ;% rtDW.liqja2sob3
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 13;

                    ;% rtDW.inzd25bki4
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 14;

                    ;% rtDW.hz3nw5alev
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 15;

                    ;% rtDW.atond0rmxa
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 17;

                    ;% rtDW.myxkp4g3jb
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 164;

                    ;% rtDW.gcyhq2afeb
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 165;

                    ;% rtDW.p4cmclm0n5
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 166;

                    ;% rtDW.esszafb052
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 167;

                    ;% rtDW.nke0o0oxmj
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 223;

                    ;% rtDW.amdqnbpotw
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 224;

                    ;% rtDW.fvqqusvlbd
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 225;

                    ;% rtDW.ch151dnkqe
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 226;

                    ;% rtDW.imtaqygzf4
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 227;

                    ;% rtDW.jmydjkcywd
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 228;

                    ;% rtDW.an2k1o2b34
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 229;

                    ;% rtDW.czk0zyr4wh
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 230;

                    ;% rtDW.e0jxwlk51j
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 231;

                    ;% rtDW.lohwd1ejop
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 232;

                    ;% rtDW.fwnd4bigmd
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 233;

                    ;% rtDW.apb44q1alb
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 234;

                    ;% rtDW.lj0scfk3vh
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 235;

                    ;% rtDW.b2c3cqi0k1
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 236;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 26;
            section.data(26)  = dumData; %prealloc

                    ;% rtDW.ofz4qubiel
                    section.data(1).logicalSrcIdx = 31;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.et4usql3vc
                    section.data(2).logicalSrcIdx = 32;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.mjaqu4jcnj
                    section.data(3).logicalSrcIdx = 33;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.lt4h1wfkog
                    section.data(4).logicalSrcIdx = 34;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.dh0jvmfeay
                    section.data(5).logicalSrcIdx = 35;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.jqnlpdgald
                    section.data(6).logicalSrcIdx = 36;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.e45uxvk1lw
                    section.data(7).logicalSrcIdx = 37;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.oxh0jmsh2a
                    section.data(8).logicalSrcIdx = 38;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.h3xczpc1e2
                    section.data(9).logicalSrcIdx = 39;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.afdmcsdwgq
                    section.data(10).logicalSrcIdx = 40;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.bfcgwxunyh
                    section.data(11).logicalSrcIdx = 41;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.h0pocr2t0n.LoggedData
                    section.data(12).logicalSrcIdx = 42;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.lhset4od0v
                    section.data(13).logicalSrcIdx = 43;
                    section.data(13).dtTransOffset = 16;

                    ;% rtDW.htnluil54k
                    section.data(14).logicalSrcIdx = 44;
                    section.data(14).dtTransOffset = 18;

                    ;% rtDW.bayevhew2y
                    section.data(15).logicalSrcIdx = 45;
                    section.data(15).dtTransOffset = 20;

                    ;% rtDW.hkbzjporcz.LoggedData
                    section.data(16).logicalSrcIdx = 46;
                    section.data(16).dtTransOffset = 22;

                    ;% rtDW.e1ep45pgkx.LoggedData
                    section.data(17).logicalSrcIdx = 47;
                    section.data(17).dtTransOffset = 28;

                    ;% rtDW.nwkbzylolq.LoggedData
                    section.data(18).logicalSrcIdx = 48;
                    section.data(18).dtTransOffset = 32;

                    ;% rtDW.gdf3gcdt2h.LoggedData
                    section.data(19).logicalSrcIdx = 49;
                    section.data(19).dtTransOffset = 33;

                    ;% rtDW.fe0r5e2cy4.LoggedData
                    section.data(20).logicalSrcIdx = 50;
                    section.data(20).dtTransOffset = 37;

                    ;% rtDW.ee5t3cr20z.LoggedData
                    section.data(21).logicalSrcIdx = 51;
                    section.data(21).dtTransOffset = 39;

                    ;% rtDW.kkgdi0lwkw.LoggedData
                    section.data(22).logicalSrcIdx = 52;
                    section.data(22).dtTransOffset = 40;

                    ;% rtDW.hrptlgxrto.LoggedData
                    section.data(23).logicalSrcIdx = 53;
                    section.data(23).dtTransOffset = 42;

                    ;% rtDW.mm4tbluzdx.LoggedData
                    section.data(24).logicalSrcIdx = 54;
                    section.data(24).dtTransOffset = 44;

                    ;% rtDW.n4brachijg.LoggedData
                    section.data(25).logicalSrcIdx = 55;
                    section.data(25).dtTransOffset = 45;

                    ;% rtDW.ghngu5lpuj.LoggedData
                    section.data(26).logicalSrcIdx = 56;
                    section.data(26).dtTransOffset = 49;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.b4jd5d00a5
                    section.data(1).logicalSrcIdx = 57;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.mimt35h5ox
                    section.data(2).logicalSrcIdx = 58;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 8;
            section.data(8)  = dumData; %prealloc

                    ;% rtDW.c1wtxhepbi
                    section.data(1).logicalSrcIdx = 59;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.iw1wautste
                    section.data(2).logicalSrcIdx = 60;
                    section.data(2).dtTransOffset = 56;

                    ;% rtDW.pgnkj0dpye
                    section.data(3).logicalSrcIdx = 61;
                    section.data(3).dtTransOffset = 57;

                    ;% rtDW.lf1hqp3kgd
                    section.data(4).logicalSrcIdx = 62;
                    section.data(4).dtTransOffset = 62;

                    ;% rtDW.asfvwsoqaf
                    section.data(5).logicalSrcIdx = 63;
                    section.data(5).dtTransOffset = 67;

                    ;% rtDW.l0rt05nc5w
                    section.data(6).logicalSrcIdx = 64;
                    section.data(6).dtTransOffset = 72;

                    ;% rtDW.gnwzr0jyb5
                    section.data(7).logicalSrcIdx = 65;
                    section.data(7).dtTransOffset = 73;

                    ;% rtDW.dj01vpxxe4
                    section.data(8).logicalSrcIdx = 66;
                    section.data(8).dtTransOffset = 74;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.pyuf5pxogp
                    section.data(1).logicalSrcIdx = 67;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtDW.mgelhzivq0
                    section.data(1).logicalSrcIdx = 68;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.kxqvqgnnqm
                    section.data(2).logicalSrcIdx = 69;
                    section.data(2).dtTransOffset = 56;

                    ;% rtDW.mm0b0eefph
                    section.data(3).logicalSrcIdx = 70;
                    section.data(3).dtTransOffset = 112;

                    ;% rtDW.dmaj1bab4k
                    section.data(4).logicalSrcIdx = 71;
                    section.data(4).dtTransOffset = 113;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 20;
            section.data(20)  = dumData; %prealloc

                    ;% rtDW.ohmbboa034
                    section.data(1).logicalSrcIdx = 72;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.lzwswludg5
                    section.data(2).logicalSrcIdx = 73;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.ee03va2m5d
                    section.data(3).logicalSrcIdx = 74;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.lm2wj3hxgc
                    section.data(4).logicalSrcIdx = 75;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.pstpl3h2q2
                    section.data(5).logicalSrcIdx = 76;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.nojfuzuk1p
                    section.data(6).logicalSrcIdx = 77;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.edfgpbf04f
                    section.data(7).logicalSrcIdx = 78;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.hag3q5jt2e
                    section.data(8).logicalSrcIdx = 79;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.p0nt00k2jv
                    section.data(9).logicalSrcIdx = 80;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.ewzwsaruv2
                    section.data(10).logicalSrcIdx = 81;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.gubchl0bkg
                    section.data(11).logicalSrcIdx = 82;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.ismih1kb3k
                    section.data(12).logicalSrcIdx = 83;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.ea4lnv1swv
                    section.data(13).logicalSrcIdx = 84;
                    section.data(13).dtTransOffset = 12;

                    ;% rtDW.j1n4b2y2es
                    section.data(14).logicalSrcIdx = 85;
                    section.data(14).dtTransOffset = 13;

                    ;% rtDW.k3a1xzecbk
                    section.data(15).logicalSrcIdx = 86;
                    section.data(15).dtTransOffset = 14;

                    ;% rtDW.ll5n1f2emr
                    section.data(16).logicalSrcIdx = 87;
                    section.data(16).dtTransOffset = 15;

                    ;% rtDW.ltlrw2hvbj
                    section.data(17).logicalSrcIdx = 88;
                    section.data(17).dtTransOffset = 16;

                    ;% rtDW.pf125dsvmu
                    section.data(18).logicalSrcIdx = 89;
                    section.data(18).dtTransOffset = 17;

                    ;% rtDW.abosh0vgit
                    section.data(19).logicalSrcIdx = 90;
                    section.data(19).dtTransOffset = 18;

                    ;% rtDW.cgbt3rljof
                    section.data(20).logicalSrcIdx = 91;
                    section.data(20).dtTransOffset = 19;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
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


    targMap.checksum0 = 80411472;
    targMap.checksum1 = 2879298926;
    targMap.checksum2 = 547917316;
    targMap.checksum3 = 1663160932;

