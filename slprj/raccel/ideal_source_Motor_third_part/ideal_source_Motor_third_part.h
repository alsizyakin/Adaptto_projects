#ifndef ideal_source_Motor_third_part_h_
#define ideal_source_Motor_third_part_h_
#ifndef ideal_source_Motor_third_part_COMMON_INCLUDES_
#define ideal_source_Motor_third_part_COMMON_INCLUDES_
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
#include "ideal_source_Motor_third_part_cf48dd25_1_gateway.h"
#include "nesl_rtw.h"
#endif
#include "ideal_source_Motor_third_part_types.h"
#include <string.h>
#include <float.h>
#include "mwmathutil.h"
#include <stddef.h>
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#include "rtGetInf.h"
#define MODEL_NAME ideal_source_Motor_third_part
#define NSAMPLE_TIMES (6) 
#define NINPUTS (0)       
#define NOUTPUTS (0)     
#define NBLOCKIO (61) 
#define NUM_ZC_EVENTS (0) 
#ifndef NCSTATES
#define NCSTATES (18)   
#elif NCSTATES != 18
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
typedef struct { real_T lkrbyfva2x ; real_T ishpuiro10 [ 4 ] ; real_T
e55htk3pfw ; real_T ecs3113j05 [ 4 ] ; real_T egh4xrjo1b ; real_T nlyifuedcq
[ 4 ] ; real_T gaxf5cowwh ; real_T onvptbntlc [ 9 ] ; real_T bqa4j5t1cx [ 6 ]
; real_T hayrkxuehd ; real_T iu20gyy2hh ; real_T jgak10fleo ; real_T
osxfawwy0j ; real_T gmfip5f2v4 ; real_T o5n3mne5gf ; real_T kxanullmfc [ 3 ]
; real_T mxq1kf5lqm ; real_T gsaqqf4ies [ 3 ] ; real_T efz432ojph [ 3 ] ;
real_T ccms5olhak ; real_T jyynsoiryi ; real_T dsswpmwtg1 ; real_T oqmetubmx5
; real_T mmtt0e15nl ; real_T inqmk4vdyd ; real_T eyfwvzqhha ; real_T
ewud1bjp0q ; real_T hr4bgkfu34 ; real_T bqwpmu5kwu ; real_T nlw5gsr2wg ;
real_T jambhlej54 ; real_T pffdet3yfy ; real_T jxpspkmnmo ; real_T akcx1ox0nr
; real_T ewvbppgbkw ; real_T anq4bf1lcm [ 3 ] ; real_T o200142ity ; real_T
eye513eels ; real_T m5twsqsl0v ; real_T orn0jh2i4o ; real_T ko2w2cjwj0 [ 4 ]
; real_T ieagif2e03 ; real_T karnu54w4u ; real_T kcw2h4xit4 ; real_T
dad4m2ft4s [ 3 ] ; real_T ikpvq5oh2u ; real_T hmvh40uow0 ; real_T bjh54oxshx
; real_T poorpthumo ; real_T dliw4r2krr ; real_T drjyjjirk2 ; real_T
gaa2450cri ; real_T ieiq2rkh3k ; real_T h0dcq1s54j ; real_T gjayk3b42r ;
real_T iuq0wknzfk ; real_T gzszz5sxo0 ; real_T dwpsejdxzk ; boolean_T
kkk1ch2oey ; boolean_T mptuo0xvqx ; boolean_T dsyyzt5uzs ; } B ; typedef
struct { real_T ayfyterivi [ 3 ] ; real_T d13r1mdnua [ 2 ] ; real_T
bslypm3ql2 [ 2 ] ; real_T jzk1kb2qux [ 2 ] ; real_T ewnhzhxjdp ; real_T
dqunrmzayf ; real_T j5f4wg1bik ; real_T fvr5c4sbrh ; real_T cgjg4r2djl ;
real_T etmmbm4mjz ; real_T dvoi2nxpgp ; real_T bko51uf5qr ; real_T alxvlhgjvq
; real_T mwwedytadh ; real_T olavfqs5ip ; real_T my4gyvtvo1 [ 3 ] ; real_T
pgobe33dha ; real_T gjj1f1fsqs ; real_T nna5sclk2g ; real_T fvze32edfl ;
real_T hjnzafkm2s ; real_T ikqfcg04xc ; real_T hfwe5ek5en ; real_T esyrfoj0mm
; real_T nmhukr4brr ; real_T kxuytrcm0s ; real_T exgujflst2 ; real_T
bjff5cvntg ; real_T jddttpr1rb ; void * ms3ebsyzac ; void * agtciovsfs ; void
* gwl0nwwspb ; void * cosl4e0xox ; void * gj03zukysb ; void * horbkt0qxq ;
void * caankmtg54 ; void * ogkreiim0r ; void * gt4bmzupct ; void * fl2ganddep
; void * oxbziiycqb ; struct { void * LoggedData [ 5 ] ; } epy4wpvzba ; void
* gtf1my31bo [ 6 ] ; void * aqwiyfl0mz ; void * pdnc1mjm20 ; void *
isj1plbg4d ; void * dypvzf0lkt ; void * gjcoh2sc2r ; void * b3e2mkcp10 ; void
* blrlfdc415 ; void * lsfbpkq22m ; void * af2pbhzdsv ; void * g4sjlsmsgd ;
void * lxxa3c2jxy ; void * md5ghiyiru ; void * fl5sn5egtj ; void * es2tkiqghn
; void * mtrjf0fpld ; struct { void * LoggedData [ 6 ] ; } b2pyjpifzh ;
struct { void * LoggedData [ 4 ] ; } hghfm3rlkk ; struct { void * LoggedData
[ 2 ] ; } kz3odgikoa ; struct { void * LoggedData ; } nean0ymtsr ; struct {
void * LoggedData [ 3 ] ; } hkgsfueq3s ; struct { void * LoggedData [ 2 ] ; }
fh1l45101o ; struct { void * LoggedData [ 2 ] ; } nkjln0diva ; struct { void
* LoggedData [ 3 ] ; } l30zsyv5uy ; struct { void * LoggedData [ 2 ] ; }
llhohy2sqb ; struct { void * LoggedData [ 2 ] ; } jfb2yypwix ; struct { void
* LoggedData ; } bampplfpxx ; struct { void * LoggedData [ 2 ] ; } hlellw3bwi
; int32_T m3vg2r5bla ; int32_T h3e553yt0b ; int_T pkwzttzllw ; int_T
dx151ppspm ; int_T pat0hif5oj [ 13 ] ; int_T mcrt0rmn3e ; int_T ezyy2ngohb ;
int_T e3blyisgmn ; int_T gec2s0ca1c ; int32_T oxd3jdpj3m ; uint8_T o0x5lbiob5
; uint8_T ahhoctykn4 ; uint8_T k5xfzbblwz ; uint8_T edtg4kj00v ; uint8_T
b2qkq25rvg ; uint8_T ktuqamait3 ; uint8_T ek45xjngfn ; uint8_T azh4415pqq ;
uint8_T ojw2rfh0vz ; uint8_T lepvpew1bh ; boolean_T cib0rsibyp ; boolean_T
f5l4mejcso ; boolean_T lj1nigh1k3 ; boolean_T d5dx45ifuu ; boolean_T
lalbvns2ey ; boolean_T bwwnp4vllr ; boolean_T kifb4xs2sg ; boolean_T
matqsxxxrc ; boolean_T pxdkablayw ; boolean_T ewkx4jjihz ; boolean_T
auflpvk210 ; boolean_T oncrpe5ech ; boolean_T hpahkolgt4 ; boolean_T
nvyqp32j2v ; boolean_T fkwwa0cx4f ; boolean_T hs5g2jfz2c ; boolean_T
kj5atigrxz ; } DW ; typedef struct { real_T hvn0szxtjn [ 9 ] ; real_T
lh5uwee0ni ; real_T pnhc23em4x ; real_T bexrojeeed ; real_T jdoaxbsycm [ 3 ]
; real_T lruofsglcs ; real_T gqdmw4foke ; real_T at4zew4ie0 ; } X ; typedef
struct { real_T hvn0szxtjn [ 9 ] ; real_T lh5uwee0ni ; real_T pnhc23em4x ;
real_T bexrojeeed ; real_T jdoaxbsycm [ 3 ] ; real_T lruofsglcs ; real_T
gqdmw4foke ; real_T at4zew4ie0 ; } XDot ; typedef struct { boolean_T
hvn0szxtjn [ 9 ] ; boolean_T lh5uwee0ni ; boolean_T pnhc23em4x ; boolean_T
bexrojeeed ; boolean_T jdoaxbsycm [ 3 ] ; boolean_T lruofsglcs ; boolean_T
gqdmw4foke ; boolean_T at4zew4ie0 ; } XDis ; typedef struct { real_T
hvn0szxtjn [ 9 ] ; real_T lh5uwee0ni ; real_T pnhc23em4x ; real_T bexrojeeed
; real_T jdoaxbsycm [ 3 ] ; real_T lruofsglcs ; real_T gqdmw4foke ; real_T
at4zew4ie0 ; } CStateAbsTol ; typedef struct { real_T hvn0szxtjn [ 9 ] ;
real_T lh5uwee0ni ; real_T pnhc23em4x ; real_T bexrojeeed ; real_T jdoaxbsycm
[ 3 ] ; real_T lruofsglcs ; real_T gqdmw4foke ; real_T at4zew4ie0 ; } CXPtMin
; typedef struct { real_T hvn0szxtjn [ 9 ] ; real_T lh5uwee0ni ; real_T
pnhc23em4x ; real_T bexrojeeed ; real_T jdoaxbsycm [ 3 ] ; real_T lruofsglcs
; real_T gqdmw4foke ; real_T at4zew4ie0 ; } CXPtMax ; typedef struct { real_T
hcuuf1h45l ; real_T bays103zch ; real_T ias100nndu ; real_T kusb4wbu3x ; }
ZCV ; typedef struct { int_T ir [ 14 ] ; int_T jc [ 19 ] ; real_T pr [ 14 ] ;
} MassMatrix ; typedef struct { rtwCAPI_ModelMappingInfo mmi ; } DataMapInfo
; struct P_ { real_T PIDController3_I ; real_T PIDController4_I ; real_T
PIDController_I ; real_T PIDController2_I ; real_T
PIDController3_InitialConditionForIntegrator ; real_T
PIDController4_InitialConditionForIntegrator ; real_T
PIDController2_InitialConditionForIntegrator ; real_T
PIDController_InitialConditionForIntegrator ; real_T
PIDController3_LowerSaturationLimit ; real_T
PIDController2_LowerSaturationLimit ; real_T
PIDController_LowerSaturationLimit ; real_T PIDController3_P ; real_T
PIDController4_P ; real_T PIDController2_P ; real_T PIDController_P ; real_T
PIDController3_UpperSaturationLimit ; real_T
PIDController2_UpperSaturationLimit ; real_T
PIDController_UpperSaturationLimit ; real_T Gain_Gain ; real_T one_by_3_Gain
; real_T one_by_sqrt3_Gain ; real_T Kalphabeta0_Gain [ 3 ] ; real_T
Gain1_Gain ; real_T Integrator_gainval ; real_T Saturation_UpperSat ; real_T
Saturation_LowerSat ; real_T Integrator_gainval_mmicgpbiea ; real_T
Constant_Value ; real_T Constant1_Value ; real_T Gain5_Gain ; real_T
Gain_Gain_lppk3mta2p ; real_T Clamping_zero_Value ; real_T
Constant1_Value_pdlqszw0vn ; real_T Clamping_zero_Value_gnjax5wz53 ; real_T
Constant1_Value_g253h4coe1 ; real_T Constant1_Value_edysncsmyo ; real_T
Constant1_Value_jszzsjitnn ; real_T UnitDelay2_InitialCondition ; real_T
Bias_Bias ; real_T Gain4_Gain ; real_T Bias1_Bias ; real_T
Gain5_Gain_mvpbfzf3kt ; real_T Bias2_Bias ; real_T Gain6_Gain ; real_T
Bias2_Bias_pijqquyjya ; real_T Bias_Bias_efhi0y5uma ; real_T
Bias1_Bias_irfkdds0dd ; real_T TransferFcn1_A ; real_T TransferFcn1_C ;
real_T TransferFcn2_A ; real_T TransferFcn2_C ; real_T TransferFcn3_A ;
real_T TransferFcn3_C ; real_T integrator_IC ; real_T TransportDelay_Delay ;
real_T TransportDelay_InitOutput ; real_T K1_Value ; real_T
Memory_InitialCondition ; real_T Gain3_Gain ; real_T TransferFcn_A ; real_T
TransferFcn_C ; real_T Integrator_gainval_paibil4hm3 ; real_T
DelayOneStep_InitialCondition ; real_T Gain_Gain_dcq3hhosxh ; real_T
Saturation_UpperSat_cu3nw2rsao ; real_T Saturation_LowerSat_emlvh0qmtn ;
real_T TransferFcn_A_porg30uzpo ; real_T TransferFcn_C_dflx33qq2y ; real_T
uDLookupTable_tableData [ 4 ] ; real_T uDLookupTable_bp01Data [ 4 ] ; real_T
Gain2_Gain ; real_T Gain_Gain_e32s35ttd5 ; real_T Gain1_Gain_aky310m5rd ;
real_T Gain2_Gain_o3tud2eors ; real_T Integrator_gainval_kjm4cdufio ; real_T
Constant_Value_ghquyjzppt ; real_T Constant1_Value_m33mlo4sc4 ; real_T
Constant2_Value ; real_T Constant4_Value ; real_T
Clamping_zero_Value_jy1x5upbbv ; real_T Clamping_zero_Value_pqk5pd1sjw ;
real_T Constant_Value_mumexc0o4r ; real_T Constant1_Value_bvfdufyota ; real_T
Constant10_Value ; real_T Constant11_Value ; real_T Constant5_Value ; real_T
Constant7_Value ; real_T RTP_7551B8C1_angular_position_Value ; real_T
RTP_7551B8C1_angular_velocity_Value ; real_T RTP_7551B8C1_i_d_Value ; real_T
RTP_7551B8C1_i_q_Value ; real_T RTP_7551B8C1_torque_Value ; real_T
RTP_7A33EE0C_w_Value ; uint16_T Offset_Value ; uint16_T Switch_Threshold ;
uint16_T Offset_Value_hojuzc4gn2 ; uint16_T Switch_Threshold_embc3f53jt ;
int8_T Constant_Value_ojwbrykqnf ; int8_T Constant2_Value_dvmtpujkng ; int8_T
Constant3_Value ; int8_T Constant4_Value_pcjum05zgv ; int8_T
Constant_Value_lfttqo04a0 ; int8_T Constant2_Value_o04grbg5o0 ; int8_T
Constant3_Value_mungrkxsuk ; int8_T Constant4_Value_l3bae5o0hd ; int8_T
Constant_Value_mfediak5c4 ; int8_T Constant2_Value_kijbp3voqw ; int8_T
Constant3_Value_laknfu3ue1 ; int8_T Constant4_Value_ar5r5hg21b ; int8_T
Constant_Value_jztjkp0m2j ; int8_T Constant2_Value_d2bnea0b2y ; int8_T
Constant3_Value_ijyrlqhtqs ; int8_T Constant4_Value_dza1ovdwgp ; } ; extern
const char_T * RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern X rtX ;
extern DW rtDW ; extern MassMatrix rtMassMatrix ; extern P rtP ; extern
mxArray * mr_ideal_source_Motor_third_part_GetDWork ( ) ; extern void
mr_ideal_source_Motor_third_part_SetDWork ( const mxArray * ssDW ) ; extern
mxArray * mr_ideal_source_Motor_third_part_GetSimStateDisallowedBlocks ( ) ;
extern const rtwCAPI_ModelMappingStaticInfo *
ideal_source_Motor_third_part_GetCAPIStaticMap ( void ) ; extern SimStruct *
const rtS ; extern DataMapInfo * rt_dataMapInfoPtr ; extern
rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs ( int_T tid )
; void MdlOutputsParameterSampleTime ( int_T tid ) ; void MdlUpdate ( int_T
tid ) ; void MdlTerminate ( void ) ; void MdlInitializeSizes ( void ) ; void
MdlInitializeSampleTimes ( void ) ; SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) ;
#endif
