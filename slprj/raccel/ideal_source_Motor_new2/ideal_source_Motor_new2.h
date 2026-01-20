#ifndef ideal_source_Motor_new2_h_
#define ideal_source_Motor_new2_h_
#ifndef ideal_source_Motor_new2_COMMON_INCLUDES_
#define ideal_source_Motor_new2_COMMON_INCLUDES_
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
#include "ideal_source_Motor_new2_cf48dd25_1_gateway.h"
#include "nesl_rtw.h"
#endif
#include "ideal_source_Motor_new2_types.h"
#include <string.h>
#include <float.h>
#include "mwmathutil.h"
#include <stddef.h>
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#include "rtGetInf.h"
#define MODEL_NAME ideal_source_Motor_new2
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
typedef struct { real_T cyqj1g0s03 ; real_T ppku3irac2 [ 4 ] ; real_T
bwv5n0t2y4 ; real_T anzszsbpm0 [ 4 ] ; real_T n3dpeitc2m ; real_T dvdpbky5ok
[ 4 ] ; real_T a50a32nlpi ; real_T hoylcd32ul [ 9 ] ; real_T geqfirig2v [ 6 ]
; real_T k3puqjahgx ; real_T bhkrf1fg2g ; real_T lljzt5saea ; real_T
kat2xxb4km ; real_T gm0qw21phr ; real_T bhme1umkoj ; real_T fcantvi543 [ 3 ]
; real_T fmzyryctv4 ; real_T dgrhbixezq [ 3 ] ; real_T ghx2xypsrc [ 3 ] ;
real_T gh41lqmrfd ; real_T h4hezqviom ; real_T fsxebxwgwc ; real_T h3izpj2x2n
; real_T nn0kq1symb ; real_T e0za4fl0n4 ; real_T ckvyeou45u ; real_T
frtbzqwx22 ; real_T gwd2bh5ngv ; real_T g2ibb5fsdk ; real_T p0cebxcwta ;
real_T mzn2qmyexn ; real_T e1mq5lfjax ; real_T klwn33a3wo ; real_T fo43hxkxnz
; real_T axo4hlj4pi ; real_T pqgjmuvaq0 [ 3 ] ; real_T ltb3cxy0ch ; real_T
hpka1ewq3e ; real_T dgqidkvekm ; real_T b54yurrbw4 ; real_T hsqwx0c3dj [ 4 ]
; real_T dtbgio2rko ; real_T avokydldoe ; real_T m20t1h4olg ; real_T
dxymwsegxa [ 3 ] ; real_T pl1zfilzir ; real_T gdzs4j1dvz ; real_T pyvom52buk
; real_T lleexihhfy ; real_T eljw32wd3v ; real_T jwwvqvlc5y ; real_T
aovfctzyey ; real_T b4keqquanm ; real_T golrn5qvph ; real_T ntwcjm4ut1 ;
real_T lu1yycdzrk ; real_T jfj1ibozzo ; real_T i2hunpw5gj ; boolean_T
nprppndqzz ; boolean_T bttgd1ibtg ; boolean_T k3etynj4yv ; } B ; typedef
struct { real_T gp3320y5ir [ 3 ] ; real_T kqlkhmtzr1 [ 2 ] ; real_T
f1wrwcndim [ 2 ] ; real_T ac31ojar3l [ 2 ] ; real_T mgxhm0ueh5 ; real_T
nwshry55fv ; real_T c4rlkk5kur ; real_T kmwocgarii ; real_T njcfi3zwgd ;
real_T elzgigxmfy ; real_T kadygvb2sp ; real_T prsqmumbo2 ; real_T cnikhvggmm
; real_T n3w0ud2zc5 ; real_T gfxfbhuahn ; real_T ctndfjcc00 [ 3 ] ; real_T
nyrgktk3y4 ; real_T p5hd4i2xcq ; real_T kcno3ryhpm ; real_T pnqg2ncs0u ;
real_T ppjc1mieof ; real_T j4k5ieyuxb ; real_T on5pv2zt1v ; real_T pfal4fivmn
; real_T kzvctl5n5u ; real_T jii4ac2idt ; real_T nidojzckkr ; real_T
li3r55of1p ; real_T go33oww31o ; void * hikez502t0 ; void * mzflpxiny4 ; void
* gofujirxf2 ; void * mrru2uvlxn ; void * omgozmmxuv ; void * n0fzex43g1 ;
void * jxwc1v1spw ; void * eluyvz35rl ; void * kvsu5c3icn ; void * drmtq2a0uo
; void * adkyb5mipg ; struct { void * LoggedData [ 5 ] ; } bkgyek0w2j ; void
* px1ce5yydw [ 6 ] ; void * o5cokgq3zx ; void * fboiy4doh3 ; void *
hejgrj5ej0 ; void * emh1wo4ucq ; void * np1ap05udo ; void * dcevmz5grn ; void
* pjbvbxkeuv ; void * lj1hwd3lbg ; void * f314lydios ; void * aljpckbw2y ;
void * pi4g4tou3k ; void * nfsjitfbpp ; void * kgpq1irzju ; void * m2wbvjm3fe
; void * k2vn2w3fxj ; struct { void * LoggedData [ 6 ] ; } gdkbhity1y ;
struct { void * LoggedData [ 4 ] ; } egl10f0uit ; struct { void * LoggedData
[ 2 ] ; } haazqzlz1y ; struct { void * LoggedData ; } hl2aaenabe ; struct {
void * LoggedData [ 3 ] ; } dgyjee0qc5 ; struct { void * LoggedData [ 2 ] ; }
oswg1yvmfe ; struct { void * LoggedData [ 2 ] ; } blix1sffqy ; struct { void
* LoggedData [ 3 ] ; } jzuzw2hu4h ; struct { void * LoggedData [ 2 ] ; }
grxmn25azb ; struct { void * LoggedData [ 2 ] ; } hgw2e0tajc ; struct { void
* LoggedData ; } b43ggrw2wc ; struct { void * LoggedData [ 2 ] ; } chubpw3vcz
; int32_T fljjeeyz51 ; int32_T a503v0j4rz ; int_T lql4veg1na ; int_T
gmewurak2d ; int_T h04fbmi5fl [ 13 ] ; int_T dsnscgocdd ; int_T ij4mwq15mf ;
int_T o43ct045h1 ; int_T n0wupy4n02 ; int32_T bkphinn1ug ; uint8_T nhmc5hlhnt
; uint8_T huqdupwocl ; uint8_T lhg3wxfjw3 ; uint8_T mj2304xy0b ; uint8_T
ogzziqmnia ; uint8_T h2acaql5co ; uint8_T d2ci1cu3fa ; uint8_T ihoxsvc0wl ;
uint8_T ndg0fv4kdr ; uint8_T jag5xxflnx ; boolean_T pyy04hszvm ; boolean_T
gfq12kacr1 ; boolean_T mh4btuds5o ; boolean_T olswxq5srv ; boolean_T
ej0cijw0l1 ; boolean_T hdkra2pbcj ; boolean_T lc2crheqrw ; boolean_T
h122t4xt45 ; boolean_T mnvgsjxxv4 ; boolean_T lafkzuwyba ; boolean_T
iazoz0fubw ; boolean_T bjt1zwexlg ; boolean_T abdiai1p3w ; boolean_T
nwkaubaa21 ; boolean_T og5jgsbl45 ; boolean_T gf0tvwqlp2 ; boolean_T
bjisxnjmax ; } DW ; typedef struct { real_T evsyzgfso4 [ 9 ] ; real_T
j0d2fzkhdv ; real_T fyl0gc0e4u ; real_T a3dx2mmonx ; real_T pvd2zrgrrf [ 3 ]
; real_T jta01i0l41 ; real_T bw3bbhlvok ; real_T nwjrdxsfki ; } X ; typedef
struct { real_T evsyzgfso4 [ 9 ] ; real_T j0d2fzkhdv ; real_T fyl0gc0e4u ;
real_T a3dx2mmonx ; real_T pvd2zrgrrf [ 3 ] ; real_T jta01i0l41 ; real_T
bw3bbhlvok ; real_T nwjrdxsfki ; } XDot ; typedef struct { boolean_T
evsyzgfso4 [ 9 ] ; boolean_T j0d2fzkhdv ; boolean_T fyl0gc0e4u ; boolean_T
a3dx2mmonx ; boolean_T pvd2zrgrrf [ 3 ] ; boolean_T jta01i0l41 ; boolean_T
bw3bbhlvok ; boolean_T nwjrdxsfki ; } XDis ; typedef struct { real_T
evsyzgfso4 [ 9 ] ; real_T j0d2fzkhdv ; real_T fyl0gc0e4u ; real_T a3dx2mmonx
; real_T pvd2zrgrrf [ 3 ] ; real_T jta01i0l41 ; real_T bw3bbhlvok ; real_T
nwjrdxsfki ; } CStateAbsTol ; typedef struct { real_T evsyzgfso4 [ 9 ] ;
real_T j0d2fzkhdv ; real_T fyl0gc0e4u ; real_T a3dx2mmonx ; real_T pvd2zrgrrf
[ 3 ] ; real_T jta01i0l41 ; real_T bw3bbhlvok ; real_T nwjrdxsfki ; } CXPtMin
; typedef struct { real_T evsyzgfso4 [ 9 ] ; real_T j0d2fzkhdv ; real_T
fyl0gc0e4u ; real_T a3dx2mmonx ; real_T pvd2zrgrrf [ 3 ] ; real_T jta01i0l41
; real_T bw3bbhlvok ; real_T nwjrdxsfki ; } CXPtMax ; typedef struct { real_T
nvyte4dmtj ; real_T i441cw52v3 ; real_T lys2zxmwhn ; real_T fgwyuchgte ; }
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
mxArray * mr_ideal_source_Motor_new2_GetDWork ( ) ; extern void
mr_ideal_source_Motor_new2_SetDWork ( const mxArray * ssDW ) ; extern mxArray
* mr_ideal_source_Motor_new2_GetSimStateDisallowedBlocks ( ) ; extern const
rtwCAPI_ModelMappingStaticInfo * ideal_source_Motor_new2_GetCAPIStaticMap ( void
) ; extern SimStruct * const rtS ; extern DataMapInfo * rt_dataMapInfoPtr ;
extern rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs ( int_T
tid ) ; void MdlOutputsParameterSampleTime ( int_T tid ) ; void MdlUpdate ( int_T tid ) ; void MdlTerminate ( void ) ; void MdlInitializeSizes ( void ) ; void MdlInitializeSampleTimes ( void ) ; SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) ;
#endif
