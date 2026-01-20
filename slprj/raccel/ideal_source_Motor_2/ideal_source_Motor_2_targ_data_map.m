    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 5;
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
            section.nData     = 86;
            section.data(86)  = dumData; %prealloc

                    ;% rtP.PIDController3_I
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.PIDController4_I
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.PIDController2_I
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.PIDController3_InitialConditionForIntegrator
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.PIDController4_InitialConditionForIntegrator
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.PIDController2_InitialConditionForIntegrator
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.PIDController3_LowerSaturationLimit
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.PIDController2_LowerSaturationLimit
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.PIDController3_P
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.PIDController4_P
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.PIDController2_P
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.PIDController3_UpperSaturationLimit
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.PIDController2_UpperSaturationLimit
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.one_by_3_Gain
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.one_by_sqrt3_Gain
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.Kalphabeta0_Gain
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.Integrator_gainval
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 18;

                    ;% rtP.Gain4_Gain
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 19;

                    ;% rtP.Gain5_Gain
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 20;

                    ;% rtP.Gain2_Gain
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 21;

                    ;% rtP.Gain3_Gain
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 22;

                    ;% rtP.Integrator_gainval_k5jjwwdxok
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 23;

                    ;% rtP.Gain1_Gain
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 24;

                    ;% rtP.Gain6_Gain
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 25;

                    ;% rtP.Ka_Gain
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 26;

                    ;% rtP.one_by_two_Gain
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 27;

                    ;% rtP.sqrt3_by_two_Gain
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 28;

                    ;% rtP.Kb_Gain
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 29;

                    ;% rtP.Kc_Gain
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 30;

                    ;% rtP.Constant_Value
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 31;

                    ;% rtP.Constant1_Value
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 32;

                    ;% rtP.Constant3_Value
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 33;

                    ;% rtP.Gain_Gain
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 34;

                    ;% rtP.Clamping_zero_Value
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 35;

                    ;% rtP.Constant1_Value_hn0ebem5eo
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 36;

                    ;% rtP.Clamping_zero_Value_ovzqjd3hns
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 37;

                    ;% rtP.Constant1_Value_dewfjbqnbe
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 38;

                    ;% rtP.Gain_Gain_nisirajfbb
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 39;

                    ;% rtP.Constant1_Value_jszzsjitnn
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 40;

                    ;% rtP.UnitDelay2_InitialCondition
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 41;

                    ;% rtP.one_by_3_Gain_nkybza1gt4
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 42;

                    ;% rtP.one_by_sqrt3_Gain_oanrm0whfm
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 43;

                    ;% rtP.Kalphabeta0_Gain_ej1ljv5nho
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 44;

                    ;% rtP.TransferFcn2_A
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 47;

                    ;% rtP.TransferFcn2_C
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 48;

                    ;% rtP.TransferFcn1_A
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 49;

                    ;% rtP.TransferFcn1_C
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 50;

                    ;% rtP.TransferFcn3_A
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 51;

                    ;% rtP.TransferFcn3_C
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 52;

                    ;% rtP.Bias2_Bias
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 53;

                    ;% rtP.Bias_Bias
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 54;

                    ;% rtP.Bias1_Bias
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 55;

                    ;% rtP.TransferFcn_A
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 56;

                    ;% rtP.TransferFcn_C
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 57;

                    ;% rtP.Integrator_gainval_paibil4hm3
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 58;

                    ;% rtP.integrator_IC
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 59;

                    ;% rtP.TransportDelay_Delay
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 60;

                    ;% rtP.TransportDelay_InitOutput
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 61;

                    ;% rtP.K1_Value
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 62;

                    ;% rtP.Memory_InitialCondition
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 63;

                    ;% rtP.one_by_3_Gain_ftvqyvuzmt
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 64;

                    ;% rtP.one_by_sqrt3_Gain_pgvhkr2jgu
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 65;

                    ;% rtP.Kalphabeta0_Gain_ilfd34dpsq
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 66;

                    ;% rtP.Gain1_Gain_nxhl14je3b
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 69;

                    ;% rtP.TransferFcn_A_porg30uzpo
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 70;

                    ;% rtP.TransferFcn_C_dflx33qq2y
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 71;

                    ;% rtP.uDLookupTable_tableData
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 72;

                    ;% rtP.uDLookupTable_bp01Data
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 76;

                    ;% rtP.Gain2_Gain_hrv0gbf0t1
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 80;

                    ;% rtP.Gain_Gain_e32s35ttd5
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 81;

                    ;% rtP.Constant1_Value_l24qi4amhg
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 82;

                    ;% rtP.Constant2_Value
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 83;

                    ;% rtP.Constant4_Value
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 84;

                    ;% rtP.Clamping_zero_Value_pqk5pd1sjw
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 85;

                    ;% rtP.Constant_Value_mumexc0o4r
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 86;

                    ;% rtP.Constant1_Value_bvfdufyota
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 87;

                    ;% rtP.Constant10_Value
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 88;

                    ;% rtP.Constant11_Value
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 89;

                    ;% rtP.Constant5_Value
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 90;

                    ;% rtP.Constant7_Value
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 91;

                    ;% rtP.RTP_7551B8C1_angular_position_Value
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 92;

                    ;% rtP.RTP_7551B8C1_angular_velocity_Value
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 93;

                    ;% rtP.RTP_7551B8C1_i_d_Value
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 94;

                    ;% rtP.RTP_7551B8C1_i_q_Value
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 95;

                    ;% rtP.RTP_7551B8C1_torque_Value
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 96;

                    ;% rtP.RTP_7A33EE0C_w_Value
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 97;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtP.Offset_Value
                    section.data(1).logicalSrcIdx = 86;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Switch_Threshold
                    section.data(2).logicalSrcIdx = 87;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Offset_Value_l5jnuwrncz
                    section.data(3).logicalSrcIdx = 88;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Switch_Threshold_ol0hmyrsdr
                    section.data(4).logicalSrcIdx = 89;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 12;
            section.data(12)  = dumData; %prealloc

                    ;% rtP.Constant_Value_a2jar3lhp4
                    section.data(1).logicalSrcIdx = 90;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Constant2_Value_lbyro00v5f
                    section.data(2).logicalSrcIdx = 91;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Constant3_Value_aq5acwyktw
                    section.data(3).logicalSrcIdx = 92;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Constant4_Value_d1otvnztfk
                    section.data(4).logicalSrcIdx = 93;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Constant_Value_my1055dhqj
                    section.data(5).logicalSrcIdx = 94;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Constant2_Value_p5zxcofuiw
                    section.data(6).logicalSrcIdx = 95;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Constant3_Value_jeu0fwmuhz
                    section.data(7).logicalSrcIdx = 96;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Constant4_Value_lfnvvruexs
                    section.data(8).logicalSrcIdx = 97;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.Constant_Value_jztjkp0m2j
                    section.data(9).logicalSrcIdx = 98;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Constant2_Value_d2bnea0b2y
                    section.data(10).logicalSrcIdx = 99;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.Constant3_Value_ijyrlqhtqs
                    section.data(11).logicalSrcIdx = 100;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.Constant4_Value_dza1ovdwgp
                    section.data(12).logicalSrcIdx = 101;
                    section.data(12).dtTransOffset = 11;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtP.m1ruyuhwwh.Offset_Value
                    section.data(1).logicalSrcIdx = 102;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.m1ruyuhwwh.Switch_Threshold
                    section.data(2).logicalSrcIdx = 103;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtP.ofp4g0emipz.Offset_Value
                    section.data(1).logicalSrcIdx = 104;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.ofp4g0emipz.Switch_Threshold
                    section.data(2).logicalSrcIdx = 105;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            paramMap.sections(5) = section;
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
            section.nData     = 70;
            section.data(70)  = dumData; %prealloc

                    ;% rtB.i54ue34n5x
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.cwznregxer
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 3;

                    ;% rtB.gwankjx5dp
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 6;

                    ;% rtB.ptqopoo5a0
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 10;

                    ;% rtB.ahrgvkrqzg
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 14;

                    ;% rtB.ipt2ur32mp
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 18;

                    ;% rtB.gfndefs3h4
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 19;

                    ;% rtB.iv0yt3bhaf
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 28;

                    ;% rtB.mk5co5mj0e
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 34;

                    ;% rtB.lvjnpb4mlb
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 35;

                    ;% rtB.o4u3ezejmq
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 36;

                    ;% rtB.lzpyqcsir5
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 37;

                    ;% rtB.hzoue04mnm
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 38;

                    ;% rtB.htdqxeus3u
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 39;

                    ;% rtB.luayq3k40n
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 40;

                    ;% rtB.jboa3v1vcd
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 41;

                    ;% rtB.ef0mf23nco
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 42;

                    ;% rtB.jyxntg0jkg
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 43;

                    ;% rtB.gjdcffqwgr
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 46;

                    ;% rtB.fvizhxlshy
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 47;

                    ;% rtB.ow2qdvnyma
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 50;

                    ;% rtB.my2uwthwh2
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 53;

                    ;% rtB.ilodzicaaj
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 54;

                    ;% rtB.fe5nwvrn1q
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 55;

                    ;% rtB.lgwigw3i5g
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 56;

                    ;% rtB.dudxba2hds
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 57;

                    ;% rtB.b25kfw3fxo
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 58;

                    ;% rtB.hotfbcj2e4
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 59;

                    ;% rtB.kzt0mfk1mh
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 60;

                    ;% rtB.el5fozxcuo
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 61;

                    ;% rtB.jhiv5vu2zt
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 62;

                    ;% rtB.fvlstjwgkv
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 63;

                    ;% rtB.hmrfbyxln4
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 64;

                    ;% rtB.obl5vdzz2x
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 67;

                    ;% rtB.cbsfunqgt4
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 71;

                    ;% rtB.iqnry4zdqd
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 72;

                    ;% rtB.bzaybxa53m
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 73;

                    ;% rtB.cbfpsulty0
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 74;

                    ;% rtB.eomqm3ot4z
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 75;

                    ;% rtB.nw4cxa5ez4
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 76;

                    ;% rtB.ohfae4vr4n
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 77;

                    ;% rtB.jugc0otico
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 78;

                    ;% rtB.e0tf0jiq4h
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 79;

                    ;% rtB.hevgdkybt3
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 80;

                    ;% rtB.j3omezihol
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 81;

                    ;% rtB.hifd3hnktv
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 82;

                    ;% rtB.gibaxx2qcv
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 83;

                    ;% rtB.ojlpj4mop2
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 84;

                    ;% rtB.dyh1mop1ek
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 85;

                    ;% rtB.b52r041zyr
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 86;

                    ;% rtB.l1tv1fuuij
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 87;

                    ;% rtB.bbepohfyhr
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 88;

                    ;% rtB.g42yuqb4jq
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 89;

                    ;% rtB.gv1s20vl1l
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 90;

                    ;% rtB.o30p1bb3jm
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 91;

                    ;% rtB.k4lyflm45h
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 92;

                    ;% rtB.cgpqsrtlgr
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 93;

                    ;% rtB.acyjqxlxye
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 94;

                    ;% rtB.pxfc4cwdtc
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 95;

                    ;% rtB.g2dyw3bccw
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 96;

                    ;% rtB.fc5addqg2r
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 97;

                    ;% rtB.oz2mntvwc2
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 98;

                    ;% rtB.prgzbxak2t
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 99;

                    ;% rtB.hihc4i2for
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 100;

                    ;% rtB.njf1ik3hol
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 101;

                    ;% rtB.gfe5x4dtw2
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 102;

                    ;% rtB.dycyup4zwc
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 103;

                    ;% rtB.duh1isvcs3
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 104;

                    ;% rtB.lgme4omzjf
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 105;

                    ;% rtB.kkv4x2gx0o
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 106;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% rtB.mjjgcun11p
                    section.data(1).logicalSrcIdx = 70;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.az3llrd5fg
                    section.data(2).logicalSrcIdx = 71;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.ccvd42oawv
                    section.data(3).logicalSrcIdx = 72;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtB.m1ruyuhwwh.oxvqfiiat3
                    section.data(1).logicalSrcIdx = 73;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.m1ruyuhwwh.kn1bsnx4ij
                    section.data(2).logicalSrcIdx = 74;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.m1ruyuhwwh.iriu1n3dd3
                    section.data(3).logicalSrcIdx = 75;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.m1ruyuhwwh.mxbwv2acty
                    section.data(4).logicalSrcIdx = 76;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.m1ruyuhwwh.i1bmnmi0zd
                    section.data(5).logicalSrcIdx = 77;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.m1ruyuhwwh.ew3ttdga3r
                    section.data(6).logicalSrcIdx = 78;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.m1ruyuhwwh.did35k3ejv
                    section.data(7).logicalSrcIdx = 79;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.m1ruyuhwwh.ft1lxyywrk
                    section.data(8).logicalSrcIdx = 80;
                    section.data(8).dtTransOffset = 8;

                    ;% rtB.m1ruyuhwwh.ekh0unv521
                    section.data(9).logicalSrcIdx = 81;
                    section.data(9).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.m1ruyuhwwh.htytqrpdwk
                    section.data(1).logicalSrcIdx = 82;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(4) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtB.ofp4g0emipz.oxvqfiiat3
                    section.data(1).logicalSrcIdx = 83;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.ofp4g0emipz.kn1bsnx4ij
                    section.data(2).logicalSrcIdx = 84;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.ofp4g0emipz.iriu1n3dd3
                    section.data(3).logicalSrcIdx = 85;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.ofp4g0emipz.mxbwv2acty
                    section.data(4).logicalSrcIdx = 86;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.ofp4g0emipz.i1bmnmi0zd
                    section.data(5).logicalSrcIdx = 87;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.ofp4g0emipz.ew3ttdga3r
                    section.data(6).logicalSrcIdx = 88;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.ofp4g0emipz.did35k3ejv
                    section.data(7).logicalSrcIdx = 89;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.ofp4g0emipz.ft1lxyywrk
                    section.data(8).logicalSrcIdx = 90;
                    section.data(8).dtTransOffset = 8;

                    ;% rtB.ofp4g0emipz.ekh0unv521
                    section.data(9).logicalSrcIdx = 91;
                    section.data(9).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            sigMap.sections(5) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.ofp4g0emipz.htytqrpdwk
                    section.data(1).logicalSrcIdx = 92;
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
        nTotSects     = 7;
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
            section.nData     = 28;
            section.data(28)  = dumData; %prealloc

                    ;% rtDW.ijyfrnke5y
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.e42shbphve
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 3;

                    ;% rtDW.mvsfi5ctf2
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 5;

                    ;% rtDW.l2gmfl2x2j
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 7;

                    ;% rtDW.fcr5hrjjl4
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 9;

                    ;% rtDW.gesf3esjin
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 10;

                    ;% rtDW.a35vqrb1zz
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 11;

                    ;% rtDW.eubbcjpsml
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 12;

                    ;% rtDW.e5jcpk1krb
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 13;

                    ;% rtDW.bywkomhnhf
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 14;

                    ;% rtDW.ckpvw4u0fe
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 15;

                    ;% rtDW.fcjbipeggk
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 16;

                    ;% rtDW.g3lblwbqdq
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 17;

                    ;% rtDW.ojthwnpgum
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 18;

                    ;% rtDW.jqacgzsayx
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 21;

                    ;% rtDW.m1wpexm5ir
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 22;

                    ;% rtDW.ptgupiklqu
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 23;

                    ;% rtDW.gflxcukiyy
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 24;

                    ;% rtDW.h0ax24i4ex
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 25;

                    ;% rtDW.bud3xoxufg
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 26;

                    ;% rtDW.pjgj144cto
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 27;

                    ;% rtDW.ayblctidbm
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 28;

                    ;% rtDW.khwikvi3rh
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 29;

                    ;% rtDW.ktvgooobz4
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 30;

                    ;% rtDW.fusmelphx3
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 31;

                    ;% rtDW.dpsfaiosi2
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 32;

                    ;% rtDW.jjyj0bi3kd
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 33;

                    ;% rtDW.cjipt0fh30
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 34;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 38;
            section.data(38)  = dumData; %prealloc

                    ;% rtDW.l4agzxlxpz
                    section.data(1).logicalSrcIdx = 28;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.kce5ylcpue
                    section.data(2).logicalSrcIdx = 29;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.chjtv40leh
                    section.data(3).logicalSrcIdx = 30;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.nbr1fzfrh4
                    section.data(4).logicalSrcIdx = 31;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.j0gscovgxo
                    section.data(5).logicalSrcIdx = 32;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.jwvhvbxkni
                    section.data(6).logicalSrcIdx = 33;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.mrrk2wuzuh
                    section.data(7).logicalSrcIdx = 34;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.f5hohzllp4
                    section.data(8).logicalSrcIdx = 35;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.let5shumsw
                    section.data(9).logicalSrcIdx = 36;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.jdt33fjjky
                    section.data(10).logicalSrcIdx = 37;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.ifmajz3dm3
                    section.data(11).logicalSrcIdx = 38;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.bjsga0nyec.LoggedData
                    section.data(12).logicalSrcIdx = 39;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.bzmwkgnxc5
                    section.data(13).logicalSrcIdx = 40;
                    section.data(13).dtTransOffset = 13;

                    ;% rtDW.jhxrdbgqn4.LoggedData
                    section.data(14).logicalSrcIdx = 41;
                    section.data(14).dtTransOffset = 19;

                    ;% rtDW.czyrsjok0i.LoggedData
                    section.data(15).logicalSrcIdx = 42;
                    section.data(15).dtTransOffset = 27;

                    ;% rtDW.h0lrvbm5tl.LoggedData
                    section.data(16).logicalSrcIdx = 43;
                    section.data(16).dtTransOffset = 29;

                    ;% rtDW.bhbrlgalll.LoggedData
                    section.data(17).logicalSrcIdx = 44;
                    section.data(17).dtTransOffset = 30;

                    ;% rtDW.odbifi0vtq
                    section.data(18).logicalSrcIdx = 45;
                    section.data(18).dtTransOffset = 31;

                    ;% rtDW.f5vjsmkgyb
                    section.data(19).logicalSrcIdx = 46;
                    section.data(19).dtTransOffset = 32;

                    ;% rtDW.k035gkpvjj
                    section.data(20).logicalSrcIdx = 47;
                    section.data(20).dtTransOffset = 33;

                    ;% rtDW.drzslprml5
                    section.data(21).logicalSrcIdx = 48;
                    section.data(21).dtTransOffset = 34;

                    ;% rtDW.jn3g2qjfa1
                    section.data(22).logicalSrcIdx = 49;
                    section.data(22).dtTransOffset = 35;

                    ;% rtDW.aikzypsiso
                    section.data(23).logicalSrcIdx = 50;
                    section.data(23).dtTransOffset = 36;

                    ;% rtDW.lrvdsrgosi
                    section.data(24).logicalSrcIdx = 51;
                    section.data(24).dtTransOffset = 37;

                    ;% rtDW.dnuvcc21xx
                    section.data(25).logicalSrcIdx = 52;
                    section.data(25).dtTransOffset = 38;

                    ;% rtDW.or44dommzh
                    section.data(26).logicalSrcIdx = 53;
                    section.data(26).dtTransOffset = 39;

                    ;% rtDW.otnkdndfa4
                    section.data(27).logicalSrcIdx = 54;
                    section.data(27).dtTransOffset = 40;

                    ;% rtDW.oi10dlfxom
                    section.data(28).logicalSrcIdx = 55;
                    section.data(28).dtTransOffset = 41;

                    ;% rtDW.e3lcaw35ay
                    section.data(29).logicalSrcIdx = 56;
                    section.data(29).dtTransOffset = 42;

                    ;% rtDW.mp3ywj0bcn
                    section.data(30).logicalSrcIdx = 57;
                    section.data(30).dtTransOffset = 43;

                    ;% rtDW.lvcbi3um2v
                    section.data(31).logicalSrcIdx = 58;
                    section.data(31).dtTransOffset = 44;

                    ;% rtDW.mlu2n2ebxy
                    section.data(32).logicalSrcIdx = 59;
                    section.data(32).dtTransOffset = 45;

                    ;% rtDW.k05bww3utb.LoggedData
                    section.data(33).logicalSrcIdx = 60;
                    section.data(33).dtTransOffset = 46;

                    ;% rtDW.inyuxhbvg2.LoggedData
                    section.data(34).logicalSrcIdx = 61;
                    section.data(34).dtTransOffset = 48;

                    ;% rtDW.gjot1x0z44.LoggedData
                    section.data(35).logicalSrcIdx = 62;
                    section.data(35).dtTransOffset = 50;

                    ;% rtDW.f45sc1xnnp.LoggedData
                    section.data(36).logicalSrcIdx = 63;
                    section.data(36).dtTransOffset = 51;

                    ;% rtDW.mqooipzjvf.LoggedData
                    section.data(37).logicalSrcIdx = 64;
                    section.data(37).dtTransOffset = 55;

                    ;% rtDW.j2e1r1kkg2.LoggedData
                    section.data(38).logicalSrcIdx = 65;
                    section.data(38).dtTransOffset = 58;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.p2brasowmj
                    section.data(1).logicalSrcIdx = 66;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.jvmhuxjbku
                    section.data(2).logicalSrcIdx = 67;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 7;
            section.data(7)  = dumData; %prealloc

                    ;% rtDW.nv5yvnrnog
                    section.data(1).logicalSrcIdx = 68;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.i00qwcptev
                    section.data(2).logicalSrcIdx = 69;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.ltj1cvxtf1
                    section.data(3).logicalSrcIdx = 70;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.ofizapz5id
                    section.data(4).logicalSrcIdx = 71;
                    section.data(4).dtTransOffset = 15;

                    ;% rtDW.k54qn2bgmz
                    section.data(5).logicalSrcIdx = 72;
                    section.data(5).dtTransOffset = 16;

                    ;% rtDW.pk4c1mpfuv
                    section.data(6).logicalSrcIdx = 73;
                    section.data(6).dtTransOffset = 17;

                    ;% rtDW.mvhcuytijb
                    section.data(7).logicalSrcIdx = 74;
                    section.data(7).dtTransOffset = 18;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.jo3qsivldn
                    section.data(1).logicalSrcIdx = 75;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 10;
            section.data(10)  = dumData; %prealloc

                    ;% rtDW.fbzzhsc0qu
                    section.data(1).logicalSrcIdx = 76;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.mrhec4bsow
                    section.data(2).logicalSrcIdx = 77;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.oc1p42ktiy
                    section.data(3).logicalSrcIdx = 78;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.oe5tzbxwwr
                    section.data(4).logicalSrcIdx = 79;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.njhitdju5e
                    section.data(5).logicalSrcIdx = 80;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.g4nrllonox
                    section.data(6).logicalSrcIdx = 81;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.obm0k15crs
                    section.data(7).logicalSrcIdx = 82;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.pcw5qglzkg
                    section.data(8).logicalSrcIdx = 83;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.bzti1i3thd
                    section.data(9).logicalSrcIdx = 84;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.imzsbj1jgo
                    section.data(10).logicalSrcIdx = 85;
                    section.data(10).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 18;
            section.data(18)  = dumData; %prealloc

                    ;% rtDW.jpc20qpomn
                    section.data(1).logicalSrcIdx = 86;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.lvo4y1ytk5
                    section.data(2).logicalSrcIdx = 87;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.h3t5qeqrnn
                    section.data(3).logicalSrcIdx = 88;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.nzomd4yi2n
                    section.data(4).logicalSrcIdx = 89;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.e5evnuntoo
                    section.data(5).logicalSrcIdx = 90;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.bgyi43vmnr
                    section.data(6).logicalSrcIdx = 91;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.kjhyvdtxp5
                    section.data(7).logicalSrcIdx = 92;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.h34ydbmpjb
                    section.data(8).logicalSrcIdx = 93;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.bxtpfeqhah
                    section.data(9).logicalSrcIdx = 94;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.ectksyzujz
                    section.data(10).logicalSrcIdx = 95;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.e4npfx11iy
                    section.data(11).logicalSrcIdx = 96;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.cqnjqt41op
                    section.data(12).logicalSrcIdx = 97;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.iuglgelyun
                    section.data(13).logicalSrcIdx = 98;
                    section.data(13).dtTransOffset = 12;

                    ;% rtDW.jnm03v4nju
                    section.data(14).logicalSrcIdx = 99;
                    section.data(14).dtTransOffset = 13;

                    ;% rtDW.igsloezryz
                    section.data(15).logicalSrcIdx = 100;
                    section.data(15).dtTransOffset = 14;

                    ;% rtDW.dzdcvwm2jz
                    section.data(16).logicalSrcIdx = 101;
                    section.data(16).dtTransOffset = 15;

                    ;% rtDW.picembwpsd
                    section.data(17).logicalSrcIdx = 102;
                    section.data(17).dtTransOffset = 16;

                    ;% rtDW.ofqmwzn52o
                    section.data(18).logicalSrcIdx = 103;
                    section.data(18).dtTransOffset = 17;

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


    targMap.checksum0 = 1369242114;
    targMap.checksum1 = 3056422940;
    targMap.checksum2 = 3079235612;
    targMap.checksum3 = 3292069837;

