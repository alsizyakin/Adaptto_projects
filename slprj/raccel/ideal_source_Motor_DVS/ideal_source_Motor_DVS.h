#ifndef ideal_source_Motor_DVS_h_
#define ideal_source_Motor_DVS_h_
#ifndef ideal_source_Motor_DVS_COMMON_INCLUDES_
#define ideal_source_Motor_DVS_COMMON_INCLUDES_
#include <stdlib.h>
#include "rtwtypes.h"
#include "sigstream_rtw.h"
#include "simtarget/slSimTgtSigstreamRTW.h"
#include "simtarget/slSimTgtSlioCoreRTW.h"
#include "simtarget/slSimTgtSlioClientsRTW.h"
#include "simtarget/slSimTgtSlioSdiRTW.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "raccel.h"
#include "slsv_diagnostic_codegen_c_api.h"
#include "rt_logging_simtarget.h"
#include "rt_nonfinite.h"
#include "math.h"
#include "dt_info.h"
#include "ext_work.h"
#include "nesl_rtw_rtp.h"
#include "ideal_source_Motor_DVS_18188449_1_gateway.h"
#include "nesl_rtw.h"
#endif
#include "ideal_source_Motor_DVS_types.h"
#include <string.h>
#include <float.h>
#include "mwmathutil.h"
#include <stddef.h>
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#include "rtGetInf.h"
#define MODEL_NAME ideal_source_Motor_DVS
#define NSAMPLE_TIMES (7) 
#define NINPUTS (0)       
#define NOUTPUTS (0)     
#define NBLOCKIO (132) 
#define NUM_ZC_EVENTS (0) 
#ifndef NCSTATES
#define NCSTATES (20)   
#elif NCSTATES != 20
#error Invalid specification of NCSTATES defined in compiler command
#endif
#ifndef rtmGetDataMapInfo
#define rtmGetDataMapInfo(rtm) (*rt_dataMapInfoPtr)
#endif
#ifndef rtmSetDataMapInfo
#define rtmSetDataMapInfo(rtm, val) (rt_dataMapInfoPtr = &val)
#endif
#ifndef IN_RACCEL_MAIN
#endif
typedef struct { int8_T anoxqeev0m ; } p4ksevaxpv ; typedef struct { int8_T
ejurx0a1nn ; } cfbfjy0f0x ; typedef struct { real_T f4xms5nl2i ; real_T
bdyqr01nd0 [ 4 ] ; real_T i4okceizf1 ; real_T dej35e4dzg [ 4 ] ; real_T
ec44uefjjj ; real_T cnfi5qwoin [ 4 ] ; real_T jisaecfw2g ; real_T cs0znog1zr
[ 8 ] ; real_T nt4qh4kpwq [ 5 ] ; real_T jdagzfgvyi ; real_T nb0dn4tjq1 ;
real_T gvp4vd1awv ; real_T grqyjb3tnb ; real_T jhuave5n5r ; real_T fxz0ydruj2
; real_T gcvh0zdzfa ; real_T h0p1zn1ozm ; real_T je5scgkscu ; real_T
eaff0q0c31 ; real_T ifrt3jlyjd [ 4 ] ; real_T cdg5qedfzl ; real_T bjppw1lpys
; real_T alh2gcqxlo ; real_T hihb2qf0gm ; real_T aytsjpben5 ; real_T
nemh1sdzvc ; real_T fjttxfeogw ; real_T iu4ki3bw3z ; real_T juskda3hxe ;
real_T ihr1xs5myu ; real_T lwpjjtsjj2 ; real_T owiylkvmny ; real_T c2u4i3gxmu
; real_T h1gxb2oxsk ; real_T nhexxjav05 ; real_T hkrgtts42e ; real_T
nxpgzurv0f ; real_T jewlkrd5nk ; real_T jdnemrz1uw ; real_T ll2posuui3 ;
real_T oq35ifmgt4 ; real_T oqwo31swj0 ; real_T hzqtl30f3h ; real_T gizltdczhw
; real_T enxilxfcnq ; real_T f1mfwtoy0p ; real_T fxvscmt5z5 ; real_T
oygt4eoo0a ; real_T lmj3xxmdui [ 3 ] ; real_T lilemuyxxn ; real_T immol2kg12
; real_T auigwjn22l ; real_T du3twbjk0n [ 3 ] ; real_T kaex3dcozt ; real_T
ocjyv0uiyz ; real_T jy5jnbpg4z ; real_T jdqjoyjdku ; real_T avttudx0nz ;
real_T hhdempmrx5 ; real_T blriw03jkc ; real_T hre1hfm0ad ; real_T gcku0hzdbg
; real_T aodm4skvkp ; real_T lv0sh41sji ; real_T chmxfw1dzg ; real_T
bekyycocb5 ; real_T axudahswg2 [ 3 ] ; real_T ofetnjkwdx ; real_T fzmoprsr0o
[ 3 ] ; real_T ch5i2yosua [ 3 ] ; real_T eytvckuxmi ; real_T lox5guvikg ;
real_T c5wegmzkle ; real_T mrgv1e0tkx ; real_T dg0crwjxc2 [ 3 ] ; real_T
cc4x0orfan ; real_T dw5fq55fea ; real_T bmp01fvaxs ; real_T i2chflbz4r ;
real_T debd22phbh ; real_T fjp5slplhr ; real_T ag02t3ehew ; real_T p134l1cx3l
; real_T n3dgyp1n15 ; real_T en3s3thtoj [ 3 ] ; real_T huacziribi ; real_T
l3prqjjut3 ; real_T h5mxuulv0z ; real_T mzoon2xwef ; real_T mpqsjkrzrd ;
real_T dj5ob4dsrr ; real_T o3fxy1x4wc ; real_T axdevibv1y ; real_T iktkcx1u2k
; real_T hrhn4qbziz ; real_T dgzt1ojfsm ; real_T ka1jirsbmh ; real_T
jy23m0n4zk ; real_T abzz31jw1i ; real_T o2rudzvzpc ; real_T g22rv3nnj3 ;
real_T pf0eehn13m ; real_T bnuegxidqe ; real_T iupucqiurp ; real_T dsb3k5km1d
; real_T brefwp01n2 ; real_T bgzy2gz4ul ; real_T kbxoz4ughp ; real_T
c0x4fq4ndq ; real_T amfxz4w2o0 ; real_T dufgoh52xq ; real_T mybxs1tgn2 ;
real_T h2kli15p1q ; real_T huys5fixcu ; real_T euhzdoyuhl ; real_T b1n3hjjaeu
; real_T gvw3g2ao0i ; real_T d5x5fnjdub ; real_T fv50zpz45w ; real_T
a10bu0hpe4 [ 2 ] ; real_T dke4ttom05 ; real_T f220xzrsn0 ; real_T po52i2djxm
; real_T ngtvvcubii ; uint16_T gb350culcr ; uint16_T houwboqs2i ; boolean_T
eixa3whjg5 ; boolean_T odexacfrnx ; boolean_T jkp1rhnmfv ; boolean_T
cnrk303h4i ; boolean_T czj0xbnocj ; } B ; typedef struct { real_T gryfwaapqt
[ 3 ] ; real_T jzglbdat43 [ 2 ] ; real_T pktleajqrr [ 2 ] ; real_T nyvyvzossb
[ 2 ] ; real_T brd2wlm0vp ; real_T aerlviqjte ; real_T ha4y4yn5nm ; real_T
kpsxxznykj ; real_T mbkcfyshe1 ; real_T o2gue1diuc ; real_T h3x2r3wdhw ;
real_T b1ds5o1rtg ; real_T p1ppri0zaz ; real_T llbtos11vn ; real_T dbwwl2rixz
; real_T fqsqyu2zgj ; real_T dsidn5juli ; real_T ivh0eyh50w ; real_T
cceolj5ykg ; real_T jkbtcergvc ; real_T nembsiarrv ; real_T pfkj2cnoag [ 3 ]
; real_T aw0eettwsj ; real_T mjpiwumszg ; real_T fekcpe3df5 ; real_T
kkvearnnqp ; real_T cq3fwkjxuu ; real_T dxxtokrqcb ; real_T do33lhn2bi ;
real_T nm33qwzxd5 ; real_T arz3f1om2l ; real_T kweouapser ; real_T bzwbotnvic
; real_T ajyntb4ygb ; real_T g0rxvwksdg ; real_T fnnyxudmyr ; real_T
psfsjpprke ; real_T pfebfjf0qz ; real_T nwk0yt2ldg ; real_T hinsdmadei ;
real_T dzyc5lkwda ; void * hrvru3xtvt ; void * actruhskdf ; void * lyojfd10qb
; void * ej43dm0lha ; void * ixt0as5weg ; void * bnmwqrhliq ; void *
ayla2cqt1o ; void * nczljgvd1k ; void * dyx2kjtba4 ; void * io1hx1mqf3 ; void
* dwmovdhv5r ; struct { void * LoggedData [ 5 ] ; } ajhblicmh5 ; void *
okradnwfv3 ; void * o24xoaehpc ; void * ds4tomhypc ; void * ad3zktfgpo ; void
* hkfl5qq1sm ; struct { void * LoggedData [ 2 ] ; } don4cavtzy ; void *
ae0fcwjlby [ 2 ] ; struct { void * LoggedData [ 2 ] ; } cc5fcqc4pv ; struct {
void * LoggedData [ 2 ] ; } js2velz5zm ; struct { void * LoggedData ; }
b5jggde0di ; struct { void * LoggedData [ 3 ] ; } m40jdj23hw ; struct { void
* LoggedData ; } ic1bicfjds ; struct { void * LoggedData [ 4 ] ; } eu0zi0l1fc
; struct { void * LoggedData [ 3 ] ; } dqhhlplnv4 ; struct { void *
LoggedData [ 4 ] ; } oybvplxg1a ; void * mjwpkovidm [ 2 ] ; void * boov5bbzyl
[ 2 ] ; void * cjsjm0jmdg [ 2 ] ; void * hyzbgozeus [ 6 ] ; void * bj5vr5bigv
; void * bbzy5mnal0 ; void * fxnp2q4c1e ; void * ns4izse1vz ; void *
itibi0d2pz ; void * pkb24lsjlj ; void * dgjfo2ase3 ; void * duelaneiva ; void
* hiyptrjx4e ; void * pd5iodqqhq ; void * lpijobo1li ; void * asspmqjwrz ;
void * fdkryiohd2 ; void * gkijx5a1jg ; void * fc3ez3wkuw ; struct { void *
LoggedData [ 6 ] ; } ndxq1um0wb ; struct { void * LoggedData [ 4 ] ; }
a0mw3xj1fr ; struct { void * LoggedData [ 4 ] ; } o31rsf1enn ; struct { void
* LoggedData [ 5 ] ; } e5q3i3m4mc ; struct { void * LoggedData [ 3 ] ; }
kzxoswjpka ; struct { void * LoggedData [ 5 ] ; } jufc5wwdoo ; int32_T
onbaoth1i5 ; int32_T dilpmc0vlt ; int32_T pohd0j4mdj ; int_T nlxub2bocz ;
int_T bsk5xyz2fy ; int_T pb121ze3jb ; int_T enc02h0lkm [ 5 ] ; int_T
jlsqg1wi3s [ 5 ] ; int_T aslz2ocnev [ 5 ] ; int_T ilsoenshkb [ 5 ] ; int_T
aybterglkg [ 13 ] ; int_T hluwayc3l5 ; int_T lubhts53dp ; int_T pvtwjlxhcp ;
int_T azi2cvdmt5 ; int_T dckcxovucp ; int_T kbaaotjgsl ; int_T pkplal1ah0 ;
int_T mevd5gffsh ; int_T a3cbux4ehj ; int_T durcpnqh0b ; int_T ewppjkklvg ;
int_T ib2cxgy3zk ; int_T inhqwurjiv ; int32_T ohklipqz2o ; int8_T dzjyg0fd1v
; int8_T dr23szxxuk ; int8_T bv1c3gmqj2 ; int8_T lzogzgyfis ; int8_T
ldzj3w1yoj ; int8_T kwpwfm2nde ; uint8_T ax5d3atq5l ; uint8_T kfrw2qmxrh ;
uint8_T iua0vtyf43 ; uint8_T oacoagyug5 ; uint8_T ihgmhwug4a ; uint8_T
k1xhqzub4q ; uint8_T a5v3s0nybm ; uint8_T g3qcouey4v ; uint8_T ioju1mlu5t ;
uint8_T psersj2g2s ; uint8_T dsfvdb5bfz ; uint8_T kwxwo03un0 ; boolean_T
ldoy1brot0 ; boolean_T ltxljxctq2 ; boolean_T aag2x0zbo5 ; boolean_T
our24h0obe ; boolean_T ilyxa1mikz ; boolean_T ej44o1jr3m ; boolean_T
pdawr2zj2a ; boolean_T i2vake1evn ; boolean_T irjhrxjolm ; boolean_T
ixhnynfygw ; boolean_T cr4b4ownah ; boolean_T nymxlbr1p2 ; boolean_T
pif2ajzyk2 ; boolean_T mn2csmgrie ; boolean_T l2bicmuxz1 ; boolean_T
isrcx1xmai ; boolean_T h25yfvk5sq ; boolean_T l40u5esajc ; boolean_T
ed5ammlp0r ; boolean_T jlz2vk0mn2 ; boolean_T ews55sxp3l ; boolean_T
gpwyug4vv4 ; boolean_T hrh4rjn2mp ; boolean_T hcvfq4zzqb ; boolean_T
nseda40oze ; boolean_T ccft5v3xux ; cfbfjy0f0x oicpqfoumb ; p4ksevaxpv
lykvoxa5oj ; cfbfjy0f0x bs1lyechiq ; p4ksevaxpv jm1szxhn3j ; cfbfjy0f0x
bh2lhy5mc2 ; p4ksevaxpv dj3tel0mec ; cfbfjy0f0x en1etzgb25t ; p4ksevaxpv
hdua2qktjg2 ; } DW ; typedef struct { real_T elei25m2d0 [ 8 ] ; real_T
l2i1oh21ka ; real_T igt0k1kscp ; real_T ltw5nbcgop ; real_T dxm5y3ylyt ;
real_T ihh4ovpeec ; real_T beabpnqlb4 ; real_T bp124zlzya ; real_T g0itdjik1a
[ 3 ] ; real_T eu4tflgyd1 ; real_T cvaqhyhpmw ; } X ; typedef struct { real_T
elei25m2d0 [ 8 ] ; real_T l2i1oh21ka ; real_T igt0k1kscp ; real_T ltw5nbcgop
; real_T dxm5y3ylyt ; real_T ihh4ovpeec ; real_T beabpnqlb4 ; real_T
bp124zlzya ; real_T g0itdjik1a [ 3 ] ; real_T eu4tflgyd1 ; real_T cvaqhyhpmw
; } XDot ; typedef struct { boolean_T elei25m2d0 [ 8 ] ; boolean_T l2i1oh21ka
; boolean_T igt0k1kscp ; boolean_T ltw5nbcgop ; boolean_T dxm5y3ylyt ;
boolean_T ihh4ovpeec ; boolean_T beabpnqlb4 ; boolean_T bp124zlzya ;
boolean_T g0itdjik1a [ 3 ] ; boolean_T eu4tflgyd1 ; boolean_T cvaqhyhpmw ; }
XDis ; typedef struct { real_T elei25m2d0 [ 8 ] ; real_T l2i1oh21ka ; real_T
igt0k1kscp ; real_T ltw5nbcgop ; real_T dxm5y3ylyt ; real_T ihh4ovpeec ;
real_T beabpnqlb4 ; real_T bp124zlzya ; real_T g0itdjik1a [ 3 ] ; real_T
eu4tflgyd1 ; real_T cvaqhyhpmw ; } CStateAbsTol ; typedef struct { real_T
elei25m2d0 [ 8 ] ; real_T l2i1oh21ka ; real_T igt0k1kscp ; real_T ltw5nbcgop
; real_T dxm5y3ylyt ; real_T ihh4ovpeec ; real_T beabpnqlb4 ; real_T
bp124zlzya ; real_T g0itdjik1a [ 3 ] ; real_T eu4tflgyd1 ; real_T cvaqhyhpmw
; } CXPtMin ; typedef struct { real_T elei25m2d0 [ 8 ] ; real_T l2i1oh21ka ;
real_T igt0k1kscp ; real_T ltw5nbcgop ; real_T dxm5y3ylyt ; real_T ihh4ovpeec
; real_T beabpnqlb4 ; real_T bp124zlzya ; real_T g0itdjik1a [ 3 ] ; real_T
eu4tflgyd1 ; real_T cvaqhyhpmw ; } CXPtMax ; typedef struct { real_T
jgh2vjb1lg ; real_T m4r1imynwa ; real_T baluufalsx ; real_T dhyexv5y1n ;
real_T m3kqnhvdky ; real_T is2ld5okz5 ; real_T mi3rvp3j2q ; real_T ot0ghbmn0z
; real_T cdb3d3i3e4 ; real_T gwap2qgtol ; real_T euf3y1pxnr ; real_T
ivbjm5iv2m ; real_T jyexnwokbj ; real_T gqg44s1wfe ; real_T m0yjfbradk ;
real_T hifdcilvqx ; real_T gatoqp3jiu ; real_T mt32btzfb3 ; real_T ip4fgpm4kj
; real_T h55ioi3zg5 ; real_T idkjk3wsor ; real_T hkqy1b42fg ; } ZCV ; typedef
struct { int_T ir [ 16 ] ; int_T jc [ 21 ] ; real_T pr [ 16 ] ; } MassMatrix
; typedef struct { rtwCAPI_ModelMappingInfo mmi ; } DataMapInfo ; struct P_ {
real_T FocDiscrTime ; real_T Ld ; real_T Lq ; real_T PolePairs ; real_T Psi ;
real_T Rs ; real_T piBandwidth ; real_T PIDController_I ; real_T
PIDController2_I ; real_T PIDController3_InitialConditionForIntegrator ;
real_T PIDController4_InitialConditionForIntegrator ; real_T
PIDController_InitialConditionForIntegrator ; real_T
PIDController2_InitialConditionForIntegrator ; real_T Ramp2_InitialOutput ;
real_T Ramp_InitialOutput ; real_T PIDController_LowerSaturationLimit ;
real_T PIDController_P ; real_T PIDController2_P ; real_T
PIDController_UpperSaturationLimit ; real_T Ramp_slope ; real_T Ramp2_slope ;
real_T Ramp_start ; real_T Ramp2_start ; real_T Gain_Gain ; real_T
Gain_Gain_djxhftize0 ; real_T Gain_Gain_ifj1132abx ; real_T
Gain_Gain_punknji3it ; real_T Gain_Gain_j2qfegrfnm ; real_T one_by_3_Gain ;
real_T one_by_sqrt3_Gain ; real_T Kalphabeta0_Gain [ 3 ] ; real_T
sine_table_values_Value [ 1002 ] ; real_T convert_pu_Gain ; real_T
indexing_Gain ; real_T Gain_Gain_nb14jbfzwo ; real_T Integrator_gainval ;
real_T Gain5_Gain ; real_T Gain5_Gain_ityqyfpnsc ; real_T
Gain_Gain_liagklf45c ; real_T Saturation_UpperSat ; real_T
Saturation_LowerSat ; real_T Integrator_gainval_knsztftnss ; real_T
sine_table_values_Value_a3bovsahiy [ 1002 ] ; real_T Gain7_Gain ; real_T
convert_pu_Gain_pd3tvpp05x ; real_T indexing_Gain_f4hf3xgt40 ; real_T
Constant_Value ; real_T Clamping_zero_Value ; real_T Constant1_Value ; real_T
Clamping_zero_Value_dzbkr5nj33 ; real_T Constant1_Value_heb03z0qwi ; real_T
Constant_Value_amqem3vix4 ; real_T Constant1_Value_plzth135fi ; real_T
Constant_Value_aidlcpdktu ; real_T Constant_Value_naavg1wwyy ; real_T
Constant1_Value_kzv5mijxnd ; real_T UnitDelay2_InitialCondition ; real_T
Bias1_Bias ; real_T Gain1_Gain ; real_T Bias2_Bias ; real_T
Gain5_Gain_ayumsuhwru ; real_T Bias3_Bias ; real_T Gain8_Gain ; real_T
Bias2_Bias_hiaognvlhf ; real_T Bias_Bias ; real_T Bias1_Bias_duuhdzfogo ;
real_T TransferFcn1_A ; real_T TransferFcn1_C ; real_T Step_Y0 ; real_T
Saturation2_UpperSat ; real_T Saturation2_LowerSat ; real_T
Saturation5_UpperSat ; real_T Saturation5_LowerSat ; real_T
UnitDelay_InitialCondition ; real_T Integrator_gainval_dhnaqjdnlv ; real_T
Saturation1_UpperSat ; real_T Saturation1_LowerSat ; real_T
Gain7_Gain_nvzv4otdtq ; real_T Saturation_UpperSat_jtqyrsjebw ; real_T
Saturation_LowerSat_niuqztsdpt ; real_T Step_Y0_n1ghy4ife5 ; real_T
Saturation4_UpperSat ; real_T Saturation4_LowerSat ; real_T TransferFcn_A ;
real_T TransferFcn_C ; real_T Integrator_gainval_kcogqwyqqm ; real_T
Gain_Gain_pm4qz0kgbm ; real_T Step_Time ; real_T Step_Y0_fkn1ochaqa ; real_T
Step_YFinal ; real_T integrator_IC ; real_T TransportDelay_Delay ; real_T
TransportDelay_InitOutput ; real_T K1_Value ; real_T Memory_InitialCondition
; real_T Switch_Threshold ; real_T Gain_Gain_nximn4s4ry ; real_T
one_by_3_Gain_lq50khpwgl ; real_T one_by_sqrt3_Gain_bbbfyvtmfv ; real_T
Kalphabeta0_Gain_pvcgmqyz1g [ 3 ] ; real_T sine_table_values_Value_ph5vfaxqmh
[ 1002 ] ; real_T convert_pu_Gain_flpdghdw0l ; real_T
indexing_Gain_d4wzw4thi3 ; real_T one_by_3_Gain_dy5n1llkjm ; real_T
one_by_sqrt3_Gain_ot11yk20jv ; real_T Kalphabeta0_Gain_b1jcwqkjuu [ 3 ] ;
real_T sine_table_values_Value_pz4e1lr51y [ 1002 ] ; real_T
convert_pu_Gain_ocuvhlhykv ; real_T indexing_Gain_jnauyr3dqe ; real_T
integrator_IC_o5k0p0omuk ; real_T TransportDelay_Delay_khxusi3syg ; real_T
TransportDelay_InitOutput_fcurpnfims ; real_T K1_Value_p2yed5qh2t ; real_T
Memory_InitialCondition_moqgj1emy3 ; real_T integrator_IC_nx1ywgu3yd ; real_T
TransportDelay_Delay_ofg0lwkz05 ; real_T TransportDelay_InitOutput_hpctjm5rzm
; real_T K1_Value_ful2v3oltv ; real_T Memory_InitialCondition_hff0nofxg3 ;
real_T integrator_IC_i0o4ll0jcd ; real_T TransportDelay_Delay_gievexvnzj ;
real_T TransportDelay_InitOutput_balur43s2o ; real_T K1_Value_gff0kfd14l ;
real_T Memory_InitialCondition_mu0u35defg ; real_T integrator_IC_droafotp5y ;
real_T TransportDelay_Delay_gfwbehe5ez ; real_T
TransportDelay_InitOutput_n232vm3mqw ; real_T K1_Value_bwyabfwh1v ; real_T
Memory_InitialCondition_l1hfk5anpl ; real_T Bias_Bias_pazrq3uvdz ; real_T
Integrator_IC ; real_T Gain2_Gain ; real_T Saturation3_UpperSat ; real_T
Saturation3_LowerSat ; real_T TransferFcn_A_dvdqductor ; real_T
TransferFcn_C_objfxqqpad ; real_T Constant_Value_kxfziju4tw ; real_T
Constant1_Value_ah5g1obm1c ; real_T Constant10_Value ; real_T
Constant11_Value ; real_T Constant5_Value ; real_T Constant7_Value ; real_T
Constant_Value_fke3pdcioo ; real_T Constant1_Value_ggoqmq1p4s ; real_T
Constant2_Value ; real_T Clamping_zero_Value_bhl50gjfmv ; real_T
Clamping_zero_Value_editfihzwr ; real_T RTP_0BF8E32F_angular_position_Value ;
real_T RTP_0BF8E32F_angular_velocity_Value ; real_T RTP_0BF8E32F_i_d_Value ;
real_T RTP_0BF8E32F_i_q_Value ; real_T RTP_0BF8E32F_torque_Value ; int16_T
offset_Value [ 4 ] ; int16_T offset_Value_cuuhtbq0gv [ 4 ] ; int16_T
offset_Value_mwsc4qa1fy [ 4 ] ; int16_T offset_Value_mdzj24mdnx [ 4 ] ;
uint16_T Offset_Value ; uint16_T Switch_Threshold_jxr2cmuqwa ; uint16_T
Offset_Value_ekf4xacrxj ; uint16_T Switch_Threshold_nxmpevclsq ; uint16_T
Offset_Value_jgu0pcvj3b ; uint16_T Switch_Threshold_apekzvb1le ; uint16_T
Offset_Value_fboskqo1ag ; uint16_T Switch_Threshold_owcqsnmcfg ; int8_T
Constant_Value_c2e1y2gzc3 ; int8_T Constant2_Value_drbxu45em3 ; int8_T
Constant3_Value ; int8_T Constant4_Value ; int8_T Constant_Value_f5v4rjr542 ;
int8_T Constant2_Value_fpcgfo0hw0 ; int8_T Constant3_Value_bjlbtqusro ;
int8_T Constant4_Value_jnji3qyt13 ; int8_T Constant_Value_dkhphikhxn ; int8_T
Constant2_Value_chfiiyl2xo ; int8_T Constant3_Value_ckuyfoczpd ; int8_T
Constant4_Value_d5cs5fwkek ; int8_T Constant_Value_ljwvnj1h33 ; int8_T
Constant2_Value_pr0foizd4c ; int8_T Constant3_Value_j5j0j3jbky ; int8_T
Constant4_Value_jrpwj3ts4p ; } ; extern const char_T *
RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern X rtX ; extern DW rtDW ;
extern MassMatrix rtMassMatrix ; extern P rtP ; extern mxArray *
mr_ideal_source_Motor_DVS_GetDWork ( ) ; extern void
mr_ideal_source_Motor_DVS_SetDWork ( const mxArray * ssDW ) ; extern mxArray
* mr_ideal_source_Motor_DVS_GetSimStateDisallowedBlocks ( ) ; extern const
rtwCAPI_ModelMappingStaticInfo * ideal_source_Motor_DVS_GetCAPIStaticMap ( void
) ; extern SimStruct * const rtS ; extern DataMapInfo * rt_dataMapInfoPtr ;
extern rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs ( int_T
tid ) ; void MdlOutputsParameterSampleTime ( int_T tid ) ; void MdlUpdate ( int_T tid ) ; void MdlTerminate ( void ) ; void MdlInitializeSizes ( void ) ; void MdlInitializeSampleTimes ( void ) ; SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) ;
#endif
