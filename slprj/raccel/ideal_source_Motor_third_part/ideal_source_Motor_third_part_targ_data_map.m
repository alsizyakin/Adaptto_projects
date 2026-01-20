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
            section.nData     = 93;
            section.data(93)  = dumData; %prealloc

                    ;% rtP.PIDController3_I
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.PIDController4_I
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.PIDController_I
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.PIDController2_I
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.PIDController3_InitialConditionForIntegrator
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.PIDController4_InitialConditionForIntegrator
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.PIDController2_InitialConditionForIntegrator
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.PIDController_InitialConditionForIntegrator
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.PIDController3_LowerSaturationLimit
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.PIDController2_LowerSaturationLimit
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.PIDController_LowerSaturationLimit
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.PIDController3_P
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.PIDController4_P
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.PIDController2_P
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.PIDController_P
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.PIDController3_UpperSaturationLimit
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.PIDController2_UpperSaturationLimit
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.PIDController_UpperSaturationLimit
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.Gain_Gain
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.one_by_3_Gain
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.one_by_sqrt3_Gain
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.Kalphabeta0_Gain
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 21;

                    ;% rtP.Gain1_Gain
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 24;

                    ;% rtP.Integrator_gainval
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 25;

                    ;% rtP.Saturation_UpperSat
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 26;

                    ;% rtP.Saturation_LowerSat
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 27;

                    ;% rtP.Integrator_gainval_mmicgpbiea
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 28;

                    ;% rtP.Constant_Value
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 29;

                    ;% rtP.Constant1_Value
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 30;

                    ;% rtP.Gain5_Gain
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 31;

                    ;% rtP.Gain_Gain_lppk3mta2p
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 32;

                    ;% rtP.Clamping_zero_Value
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 33;

                    ;% rtP.Constant1_Value_pdlqszw0vn
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 34;

                    ;% rtP.Clamping_zero_Value_gnjax5wz53
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 35;

                    ;% rtP.Constant1_Value_g253h4coe1
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 36;

                    ;% rtP.Constant1_Value_edysncsmyo
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 37;

                    ;% rtP.Constant1_Value_jszzsjitnn
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 38;

                    ;% rtP.UnitDelay2_InitialCondition
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 39;

                    ;% rtP.Bias_Bias
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 40;

                    ;% rtP.Gain4_Gain
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 41;

                    ;% rtP.Bias1_Bias
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 42;

                    ;% rtP.Gain5_Gain_mvpbfzf3kt
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 43;

                    ;% rtP.Bias2_Bias
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 44;

                    ;% rtP.Gain6_Gain
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 45;

                    ;% rtP.Bias2_Bias_pijqquyjya
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 46;

                    ;% rtP.Bias_Bias_efhi0y5uma
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 47;

                    ;% rtP.Bias1_Bias_irfkdds0dd
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 48;

                    ;% rtP.TransferFcn1_A
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 49;

                    ;% rtP.TransferFcn1_C
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 50;

                    ;% rtP.TransferFcn2_A
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 51;

                    ;% rtP.TransferFcn2_C
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 52;

                    ;% rtP.TransferFcn3_A
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 53;

                    ;% rtP.TransferFcn3_C
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 54;

                    ;% rtP.integrator_IC
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 55;

                    ;% rtP.TransportDelay_Delay
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 56;

                    ;% rtP.TransportDelay_InitOutput
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 57;

                    ;% rtP.K1_Value
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 58;

                    ;% rtP.Memory_InitialCondition
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 59;

                    ;% rtP.Gain3_Gain
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 60;

                    ;% rtP.TransferFcn_A
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 61;

                    ;% rtP.TransferFcn_C
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 62;

                    ;% rtP.Integrator_gainval_paibil4hm3
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 63;

                    ;% rtP.DelayOneStep_InitialCondition
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 64;

                    ;% rtP.Gain_Gain_dcq3hhosxh
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 65;

                    ;% rtP.Saturation_UpperSat_cu3nw2rsao
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 66;

                    ;% rtP.Saturation_LowerSat_emlvh0qmtn
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 67;

                    ;% rtP.TransferFcn_A_porg30uzpo
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 68;

                    ;% rtP.TransferFcn_C_dflx33qq2y
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 69;

                    ;% rtP.uDLookupTable_tableData
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 70;

                    ;% rtP.uDLookupTable_bp01Data
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 74;

                    ;% rtP.Gain2_Gain
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 78;

                    ;% rtP.Gain_Gain_e32s35ttd5
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 79;

                    ;% rtP.Gain1_Gain_aky310m5rd
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 80;

                    ;% rtP.Gain2_Gain_o3tud2eors
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 81;

                    ;% rtP.Integrator_gainval_kjm4cdufio
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 82;

                    ;% rtP.Constant_Value_ghquyjzppt
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 83;

                    ;% rtP.Constant1_Value_m33mlo4sc4
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 84;

                    ;% rtP.Constant2_Value
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 85;

                    ;% rtP.Constant4_Value
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 86;

                    ;% rtP.Clamping_zero_Value_jy1x5upbbv
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 87;

                    ;% rtP.Clamping_zero_Value_pqk5pd1sjw
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 88;

                    ;% rtP.Constant_Value_mumexc0o4r
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 89;

                    ;% rtP.Constant1_Value_bvfdufyota
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 90;

                    ;% rtP.Constant10_Value
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 91;

                    ;% rtP.Constant11_Value
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 92;

                    ;% rtP.Constant5_Value
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 93;

                    ;% rtP.Constant7_Value
                    section.data(87).logicalSrcIdx = 86;
                    section.data(87).dtTransOffset = 94;

                    ;% rtP.RTP_7551B8C1_angular_position_Value
                    section.data(88).logicalSrcIdx = 87;
                    section.data(88).dtTransOffset = 95;

                    ;% rtP.RTP_7551B8C1_angular_velocity_Value
                    section.data(89).logicalSrcIdx = 88;
                    section.data(89).dtTransOffset = 96;

                    ;% rtP.RTP_7551B8C1_i_d_Value
                    section.data(90).logicalSrcIdx = 89;
                    section.data(90).dtTransOffset = 97;

                    ;% rtP.RTP_7551B8C1_i_q_Value
                    section.data(91).logicalSrcIdx = 90;
                    section.data(91).dtTransOffset = 98;

                    ;% rtP.RTP_7551B8C1_torque_Value
                    section.data(92).logicalSrcIdx = 91;
                    section.data(92).dtTransOffset = 99;

                    ;% rtP.RTP_7A33EE0C_w_Value
                    section.data(93).logicalSrcIdx = 92;
                    section.data(93).dtTransOffset = 100;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtP.Offset_Value
                    section.data(1).logicalSrcIdx = 93;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Switch_Threshold
                    section.data(2).logicalSrcIdx = 94;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Offset_Value_hojuzc4gn2
                    section.data(3).logicalSrcIdx = 95;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Switch_Threshold_embc3f53jt
                    section.data(4).logicalSrcIdx = 96;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 16;
            section.data(16)  = dumData; %prealloc

                    ;% rtP.Constant_Value_ojwbrykqnf
                    section.data(1).logicalSrcIdx = 97;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Constant2_Value_dvmtpujkng
                    section.data(2).logicalSrcIdx = 98;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Constant3_Value
                    section.data(3).logicalSrcIdx = 99;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Constant4_Value_pcjum05zgv
                    section.data(4).logicalSrcIdx = 100;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Constant_Value_lfttqo04a0
                    section.data(5).logicalSrcIdx = 101;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Constant2_Value_o04grbg5o0
                    section.data(6).logicalSrcIdx = 102;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Constant3_Value_mungrkxsuk
                    section.data(7).logicalSrcIdx = 103;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Constant4_Value_l3bae5o0hd
                    section.data(8).logicalSrcIdx = 104;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.Constant_Value_mfediak5c4
                    section.data(9).logicalSrcIdx = 105;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Constant2_Value_kijbp3voqw
                    section.data(10).logicalSrcIdx = 106;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.Constant3_Value_laknfu3ue1
                    section.data(11).logicalSrcIdx = 107;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.Constant4_Value_ar5r5hg21b
                    section.data(12).logicalSrcIdx = 108;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.Constant_Value_jztjkp0m2j
                    section.data(13).logicalSrcIdx = 109;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.Constant2_Value_d2bnea0b2y
                    section.data(14).logicalSrcIdx = 110;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.Constant3_Value_ijyrlqhtqs
                    section.data(15).logicalSrcIdx = 111;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.Constant4_Value_dza1ovdwgp
                    section.data(16).logicalSrcIdx = 112;
                    section.data(16).dtTransOffset = 15;

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
        nTotSects     = 2;
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
            section.nData     = 58;
            section.data(58)  = dumData; %prealloc

                    ;% rtB.lkrbyfva2x
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.ishpuiro10
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.e55htk3pfw
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 5;

                    ;% rtB.ecs3113j05
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 6;

                    ;% rtB.egh4xrjo1b
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 10;

                    ;% rtB.nlyifuedcq
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 11;

                    ;% rtB.gaxf5cowwh
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 15;

                    ;% rtB.onvptbntlc
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 16;

                    ;% rtB.bqa4j5t1cx
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 25;

                    ;% rtB.hayrkxuehd
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 31;

                    ;% rtB.iu20gyy2hh
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 32;

                    ;% rtB.jgak10fleo
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 33;

                    ;% rtB.osxfawwy0j
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 34;

                    ;% rtB.gmfip5f2v4
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 35;

                    ;% rtB.o5n3mne5gf
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 36;

                    ;% rtB.kxanullmfc
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 37;

                    ;% rtB.mxq1kf5lqm
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 40;

                    ;% rtB.gsaqqf4ies
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 41;

                    ;% rtB.efz432ojph
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 44;

                    ;% rtB.ccms5olhak
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 47;

                    ;% rtB.jyynsoiryi
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 48;

                    ;% rtB.dsswpmwtg1
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 49;

                    ;% rtB.oqmetubmx5
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 50;

                    ;% rtB.mmtt0e15nl
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 51;

                    ;% rtB.inqmk4vdyd
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 52;

                    ;% rtB.eyfwvzqhha
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 53;

                    ;% rtB.ewud1bjp0q
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 54;

                    ;% rtB.hr4bgkfu34
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 55;

                    ;% rtB.bqwpmu5kwu
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 56;

                    ;% rtB.nlw5gsr2wg
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 57;

                    ;% rtB.jambhlej54
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 58;

                    ;% rtB.pffdet3yfy
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 59;

                    ;% rtB.jxpspkmnmo
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 60;

                    ;% rtB.akcx1ox0nr
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 61;

                    ;% rtB.ewvbppgbkw
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 62;

                    ;% rtB.anq4bf1lcm
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 63;

                    ;% rtB.o200142ity
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 66;

                    ;% rtB.eye513eels
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 67;

                    ;% rtB.m5twsqsl0v
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 68;

                    ;% rtB.orn0jh2i4o
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 69;

                    ;% rtB.ko2w2cjwj0
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 70;

                    ;% rtB.ieagif2e03
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 74;

                    ;% rtB.karnu54w4u
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 75;

                    ;% rtB.kcw2h4xit4
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 76;

                    ;% rtB.dad4m2ft4s
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 77;

                    ;% rtB.ikpvq5oh2u
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 80;

                    ;% rtB.hmvh40uow0
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 81;

                    ;% rtB.bjh54oxshx
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 82;

                    ;% rtB.poorpthumo
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 83;

                    ;% rtB.dliw4r2krr
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 84;

                    ;% rtB.drjyjjirk2
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 85;

                    ;% rtB.gaa2450cri
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 86;

                    ;% rtB.ieiq2rkh3k
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 87;

                    ;% rtB.h0dcq1s54j
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 88;

                    ;% rtB.gjayk3b42r
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 89;

                    ;% rtB.iuq0wknzfk
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 90;

                    ;% rtB.gzszz5sxo0
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 91;

                    ;% rtB.dwpsejdxzk
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 92;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% rtB.kkk1ch2oey
                    section.data(1).logicalSrcIdx = 58;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.mptuo0xvqx
                    section.data(2).logicalSrcIdx = 59;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.dsyyzt5uzs
                    section.data(3).logicalSrcIdx = 60;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
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
        sectIdxOffset = 2;

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
            section.nData     = 29;
            section.data(29)  = dumData; %prealloc

                    ;% rtDW.ayfyterivi
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.d13r1mdnua
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 3;

                    ;% rtDW.bslypm3ql2
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 5;

                    ;% rtDW.jzk1kb2qux
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 7;

                    ;% rtDW.ewnhzhxjdp
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 9;

                    ;% rtDW.dqunrmzayf
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 10;

                    ;% rtDW.j5f4wg1bik
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 11;

                    ;% rtDW.fvr5c4sbrh
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 12;

                    ;% rtDW.cgjg4r2djl
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 13;

                    ;% rtDW.etmmbm4mjz
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 14;

                    ;% rtDW.dvoi2nxpgp
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 15;

                    ;% rtDW.bko51uf5qr
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 16;

                    ;% rtDW.alxvlhgjvq
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 17;

                    ;% rtDW.mwwedytadh
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 18;

                    ;% rtDW.olavfqs5ip
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 19;

                    ;% rtDW.my4gyvtvo1
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 20;

                    ;% rtDW.pgobe33dha
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 23;

                    ;% rtDW.gjj1f1fsqs
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 24;

                    ;% rtDW.nna5sclk2g
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 25;

                    ;% rtDW.fvze32edfl
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 26;

                    ;% rtDW.hjnzafkm2s
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 27;

                    ;% rtDW.ikqfcg04xc
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 28;

                    ;% rtDW.hfwe5ek5en
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 29;

                    ;% rtDW.esyrfoj0mm
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 30;

                    ;% rtDW.nmhukr4brr
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 31;

                    ;% rtDW.kxuytrcm0s
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 32;

                    ;% rtDW.exgujflst2
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 33;

                    ;% rtDW.bjff5cvntg
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 34;

                    ;% rtDW.jddttpr1rb
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 35;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 40;
            section.data(40)  = dumData; %prealloc

                    ;% rtDW.ms3ebsyzac
                    section.data(1).logicalSrcIdx = 29;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.agtciovsfs
                    section.data(2).logicalSrcIdx = 30;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.gwl0nwwspb
                    section.data(3).logicalSrcIdx = 31;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.cosl4e0xox
                    section.data(4).logicalSrcIdx = 32;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.gj03zukysb
                    section.data(5).logicalSrcIdx = 33;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.horbkt0qxq
                    section.data(6).logicalSrcIdx = 34;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.caankmtg54
                    section.data(7).logicalSrcIdx = 35;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.ogkreiim0r
                    section.data(8).logicalSrcIdx = 36;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.gt4bmzupct
                    section.data(9).logicalSrcIdx = 37;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.fl2ganddep
                    section.data(10).logicalSrcIdx = 38;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.oxbziiycqb
                    section.data(11).logicalSrcIdx = 39;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.epy4wpvzba.LoggedData
                    section.data(12).logicalSrcIdx = 40;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.gtf1my31bo
                    section.data(13).logicalSrcIdx = 41;
                    section.data(13).dtTransOffset = 16;

                    ;% rtDW.aqwiyfl0mz
                    section.data(14).logicalSrcIdx = 42;
                    section.data(14).dtTransOffset = 22;

                    ;% rtDW.pdnc1mjm20
                    section.data(15).logicalSrcIdx = 43;
                    section.data(15).dtTransOffset = 23;

                    ;% rtDW.isj1plbg4d
                    section.data(16).logicalSrcIdx = 44;
                    section.data(16).dtTransOffset = 24;

                    ;% rtDW.dypvzf0lkt
                    section.data(17).logicalSrcIdx = 45;
                    section.data(17).dtTransOffset = 25;

                    ;% rtDW.gjcoh2sc2r
                    section.data(18).logicalSrcIdx = 46;
                    section.data(18).dtTransOffset = 26;

                    ;% rtDW.b3e2mkcp10
                    section.data(19).logicalSrcIdx = 47;
                    section.data(19).dtTransOffset = 27;

                    ;% rtDW.blrlfdc415
                    section.data(20).logicalSrcIdx = 48;
                    section.data(20).dtTransOffset = 28;

                    ;% rtDW.lsfbpkq22m
                    section.data(21).logicalSrcIdx = 49;
                    section.data(21).dtTransOffset = 29;

                    ;% rtDW.af2pbhzdsv
                    section.data(22).logicalSrcIdx = 50;
                    section.data(22).dtTransOffset = 30;

                    ;% rtDW.g4sjlsmsgd
                    section.data(23).logicalSrcIdx = 51;
                    section.data(23).dtTransOffset = 31;

                    ;% rtDW.lxxa3c2jxy
                    section.data(24).logicalSrcIdx = 52;
                    section.data(24).dtTransOffset = 32;

                    ;% rtDW.md5ghiyiru
                    section.data(25).logicalSrcIdx = 53;
                    section.data(25).dtTransOffset = 33;

                    ;% rtDW.fl5sn5egtj
                    section.data(26).logicalSrcIdx = 54;
                    section.data(26).dtTransOffset = 34;

                    ;% rtDW.es2tkiqghn
                    section.data(27).logicalSrcIdx = 55;
                    section.data(27).dtTransOffset = 35;

                    ;% rtDW.mtrjf0fpld
                    section.data(28).logicalSrcIdx = 56;
                    section.data(28).dtTransOffset = 36;

                    ;% rtDW.b2pyjpifzh.LoggedData
                    section.data(29).logicalSrcIdx = 57;
                    section.data(29).dtTransOffset = 37;

                    ;% rtDW.hghfm3rlkk.LoggedData
                    section.data(30).logicalSrcIdx = 58;
                    section.data(30).dtTransOffset = 43;

                    ;% rtDW.kz3odgikoa.LoggedData
                    section.data(31).logicalSrcIdx = 59;
                    section.data(31).dtTransOffset = 47;

                    ;% rtDW.nean0ymtsr.LoggedData
                    section.data(32).logicalSrcIdx = 60;
                    section.data(32).dtTransOffset = 49;

                    ;% rtDW.hkgsfueq3s.LoggedData
                    section.data(33).logicalSrcIdx = 61;
                    section.data(33).dtTransOffset = 50;

                    ;% rtDW.fh1l45101o.LoggedData
                    section.data(34).logicalSrcIdx = 62;
                    section.data(34).dtTransOffset = 53;

                    ;% rtDW.nkjln0diva.LoggedData
                    section.data(35).logicalSrcIdx = 63;
                    section.data(35).dtTransOffset = 55;

                    ;% rtDW.l30zsyv5uy.LoggedData
                    section.data(36).logicalSrcIdx = 64;
                    section.data(36).dtTransOffset = 57;

                    ;% rtDW.llhohy2sqb.LoggedData
                    section.data(37).logicalSrcIdx = 65;
                    section.data(37).dtTransOffset = 60;

                    ;% rtDW.jfb2yypwix.LoggedData
                    section.data(38).logicalSrcIdx = 66;
                    section.data(38).dtTransOffset = 62;

                    ;% rtDW.bampplfpxx.LoggedData
                    section.data(39).logicalSrcIdx = 67;
                    section.data(39).dtTransOffset = 64;

                    ;% rtDW.hlellw3bwi.LoggedData
                    section.data(40).logicalSrcIdx = 68;
                    section.data(40).dtTransOffset = 65;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.m3vg2r5bla
                    section.data(1).logicalSrcIdx = 69;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.h3e553yt0b
                    section.data(2).logicalSrcIdx = 70;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 7;
            section.data(7)  = dumData; %prealloc

                    ;% rtDW.pkwzttzllw
                    section.data(1).logicalSrcIdx = 71;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.dx151ppspm
                    section.data(2).logicalSrcIdx = 72;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.pat0hif5oj
                    section.data(3).logicalSrcIdx = 73;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.mcrt0rmn3e
                    section.data(4).logicalSrcIdx = 74;
                    section.data(4).dtTransOffset = 15;

                    ;% rtDW.ezyy2ngohb
                    section.data(5).logicalSrcIdx = 75;
                    section.data(5).dtTransOffset = 16;

                    ;% rtDW.e3blyisgmn
                    section.data(6).logicalSrcIdx = 76;
                    section.data(6).dtTransOffset = 17;

                    ;% rtDW.gec2s0ca1c
                    section.data(7).logicalSrcIdx = 77;
                    section.data(7).dtTransOffset = 18;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.oxd3jdpj3m
                    section.data(1).logicalSrcIdx = 78;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 10;
            section.data(10)  = dumData; %prealloc

                    ;% rtDW.o0x5lbiob5
                    section.data(1).logicalSrcIdx = 79;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ahhoctykn4
                    section.data(2).logicalSrcIdx = 80;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.k5xfzbblwz
                    section.data(3).logicalSrcIdx = 81;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.edtg4kj00v
                    section.data(4).logicalSrcIdx = 82;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.b2qkq25rvg
                    section.data(5).logicalSrcIdx = 83;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.ktuqamait3
                    section.data(6).logicalSrcIdx = 84;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.ek45xjngfn
                    section.data(7).logicalSrcIdx = 85;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.azh4415pqq
                    section.data(8).logicalSrcIdx = 86;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.ojw2rfh0vz
                    section.data(9).logicalSrcIdx = 87;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.lepvpew1bh
                    section.data(10).logicalSrcIdx = 88;
                    section.data(10).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 17;
            section.data(17)  = dumData; %prealloc

                    ;% rtDW.cib0rsibyp
                    section.data(1).logicalSrcIdx = 89;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.f5l4mejcso
                    section.data(2).logicalSrcIdx = 90;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.lj1nigh1k3
                    section.data(3).logicalSrcIdx = 91;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.d5dx45ifuu
                    section.data(4).logicalSrcIdx = 92;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.lalbvns2ey
                    section.data(5).logicalSrcIdx = 93;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.bwwnp4vllr
                    section.data(6).logicalSrcIdx = 94;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.kifb4xs2sg
                    section.data(7).logicalSrcIdx = 95;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.matqsxxxrc
                    section.data(8).logicalSrcIdx = 96;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.pxdkablayw
                    section.data(9).logicalSrcIdx = 97;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.ewkx4jjihz
                    section.data(10).logicalSrcIdx = 98;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.auflpvk210
                    section.data(11).logicalSrcIdx = 99;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.oncrpe5ech
                    section.data(12).logicalSrcIdx = 100;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.hpahkolgt4
                    section.data(13).logicalSrcIdx = 101;
                    section.data(13).dtTransOffset = 12;

                    ;% rtDW.nvyqp32j2v
                    section.data(14).logicalSrcIdx = 102;
                    section.data(14).dtTransOffset = 13;

                    ;% rtDW.fkwwa0cx4f
                    section.data(15).logicalSrcIdx = 103;
                    section.data(15).dtTransOffset = 14;

                    ;% rtDW.hs5g2jfz2c
                    section.data(16).logicalSrcIdx = 104;
                    section.data(16).dtTransOffset = 15;

                    ;% rtDW.kj5atigrxz
                    section.data(17).logicalSrcIdx = 105;
                    section.data(17).dtTransOffset = 16;

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


    targMap.checksum0 = 3749213316;
    targMap.checksum1 = 4240322648;
    targMap.checksum2 = 3479569499;
    targMap.checksum3 = 3637953017;

