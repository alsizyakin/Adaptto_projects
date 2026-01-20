#ifndef ideal_source_Motor_2_h_
#define ideal_source_Motor_2_h_
#ifndef ideal_source_Motor_2_COMMON_INCLUDES_
#define ideal_source_Motor_2_COMMON_INCLUDES_
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
#include "ideal_source_Motor_2_149a6a2f_1_gateway.h"
#include "nesl_rtw.h"
#endif
#include "ideal_source_Motor_2_types.h"
#include <string.h>
#include <float.h>
#include "mwmathutil.h"
#include <stddef.h>
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#include "rtGetInf.h"
#define MODEL_NAME ideal_source_Motor_2
#define NSAMPLE_TIMES (7) 
#define NINPUTS (0)       
#define NOUTPUTS (0)     
#define NBLOCKIO (93) 
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
typedef struct { real_T oxvqfiiat3 ; real_T kn1bsnx4ij ; real_T iriu1n3dd3 ;
real_T mxbwv2acty ; real_T i1bmnmi0zd ; real_T ew3ttdga3r ; real_T did35k3ejv
[ 2 ] ; real_T ft1lxyywrk ; real_T ekh0unv521 ; uint16_T htytqrpdwk ; }
n4jyoq21xu ; typedef struct { real_T i54ue34n5x [ 3 ] ; real_T cwznregxer [ 3
] ; real_T gwankjx5dp [ 4 ] ; real_T ptqopoo5a0 [ 4 ] ; real_T ahrgvkrqzg [ 4
] ; real_T ipt2ur32mp ; real_T gfndefs3h4 [ 9 ] ; real_T iv0yt3bhaf [ 6 ] ;
real_T mk5co5mj0e ; real_T lvjnpb4mlb ; real_T o4u3ezejmq ; real_T lzpyqcsir5
; real_T hzoue04mnm ; real_T htdqxeus3u ; real_T luayq3k40n ; real_T
jboa3v1vcd ; real_T ef0mf23nco ; real_T jyxntg0jkg [ 3 ] ; real_T gjdcffqwgr
; real_T fvizhxlshy [ 3 ] ; real_T ow2qdvnyma [ 3 ] ; real_T my2uwthwh2 ;
real_T ilodzicaaj ; real_T fe5nwvrn1q ; real_T lgwigw3i5g ; real_T dudxba2hds
; real_T b25kfw3fxo ; real_T hotfbcj2e4 ; real_T kzt0mfk1mh ; real_T
el5fozxcuo ; real_T jhiv5vu2zt ; real_T fvlstjwgkv ; real_T hmrfbyxln4 [ 3 ]
; real_T obl5vdzz2x [ 4 ] ; real_T cbsfunqgt4 ; real_T iqnry4zdqd ; real_T
bzaybxa53m ; real_T cbfpsulty0 ; real_T eomqm3ot4z ; real_T nw4cxa5ez4 ;
real_T ohfae4vr4n ; real_T jugc0otico ; real_T e0tf0jiq4h ; real_T hevgdkybt3
; real_T j3omezihol ; real_T hifd3hnktv ; real_T gibaxx2qcv ; real_T
ojlpj4mop2 ; real_T dyh1mop1ek ; real_T b52r041zyr ; real_T l1tv1fuuij ;
real_T bbepohfyhr ; real_T g42yuqb4jq ; real_T gv1s20vl1l ; real_T o30p1bb3jm
; real_T k4lyflm45h ; real_T cgpqsrtlgr ; real_T acyjqxlxye ; real_T
pxfc4cwdtc ; real_T g2dyw3bccw ; real_T fc5addqg2r ; real_T oz2mntvwc2 ;
real_T prgzbxak2t ; real_T hihc4i2for ; real_T njf1ik3hol ; real_T gfe5x4dtw2
; real_T dycyup4zwc ; real_T duh1isvcs3 ; real_T lgme4omzjf ; real_T
kkv4x2gx0o ; boolean_T mjjgcun11p ; boolean_T az3llrd5fg ; boolean_T
ccvd42oawv ; n4jyoq21xu m1ruyuhwwh ; n4jyoq21xu ofp4g0emipz ; } B ; typedef
struct { real_T ijyfrnke5y [ 3 ] ; real_T e42shbphve [ 2 ] ; real_T
mvsfi5ctf2 [ 2 ] ; real_T l2gmfl2x2j [ 2 ] ; real_T fcr5hrjjl4 ; real_T
gesf3esjin ; real_T a35vqrb1zz ; real_T eubbcjpsml ; real_T e5jcpk1krb ;
real_T bywkomhnhf ; real_T ckpvw4u0fe ; real_T fcjbipeggk ; real_T g3lblwbqdq
; real_T ojthwnpgum [ 3 ] ; real_T jqacgzsayx ; real_T m1wpexm5ir ; real_T
ptgupiklqu ; real_T gflxcukiyy ; real_T h0ax24i4ex ; real_T bud3xoxufg ;
real_T pjgj144cto ; real_T ayblctidbm ; real_T khwikvi3rh ; real_T ktvgooobz4
; real_T fusmelphx3 ; real_T dpsfaiosi2 ; real_T jjyj0bi3kd ; real_T
cjipt0fh30 ; void * l4agzxlxpz ; void * kce5ylcpue ; void * chjtv40leh ; void
* nbr1fzfrh4 ; void * j0gscovgxo ; void * jwvhvbxkni ; void * mrrk2wuzuh ;
void * f5hohzllp4 ; void * let5shumsw ; void * jdt33fjjky ; void * ifmajz3dm3
; struct { void * LoggedData [ 2 ] ; } bjsga0nyec ; void * bzmwkgnxc5 [ 6 ] ;
struct { void * LoggedData [ 8 ] ; } jhxrdbgqn4 ; struct { void * LoggedData
[ 2 ] ; } czyrsjok0i ; struct { void * LoggedData ; } h0lrvbm5tl ; struct {
void * LoggedData ; } bhbrlgalll ; void * odbifi0vtq ; void * f5vjsmkgyb ;
void * k035gkpvjj ; void * drzslprml5 ; void * jn3g2qjfa1 ; void * aikzypsiso
; void * lrvdsrgosi ; void * dnuvcc21xx ; void * or44dommzh ; void *
otnkdndfa4 ; void * oi10dlfxom ; void * e3lcaw35ay ; void * mp3ywj0bcn ; void
* lvcbi3um2v ; void * mlu2n2ebxy ; struct { void * LoggedData [ 2 ] ; }
k05bww3utb ; struct { void * LoggedData [ 2 ] ; } inyuxhbvg2 ; struct { void
* LoggedData ; } gjot1x0z44 ; struct { void * LoggedData [ 4 ] ; } f45sc1xnnp
; struct { void * LoggedData [ 3 ] ; } mqooipzjvf ; struct { void *
LoggedData [ 6 ] ; } j2e1r1kkg2 ; int32_T p2brasowmj ; int32_T jvmhuxjbku ;
int_T nv5yvnrnog ; int_T i00qwcptev ; int_T ltj1cvxtf1 [ 13 ] ; int_T
ofizapz5id ; int_T k54qn2bgmz ; int_T pk4c1mpfuv ; int_T mvhcuytijb ; int32_T
jo3qsivldn ; uint8_T fbzzhsc0qu ; uint8_T mrhec4bsow ; uint8_T oc1p42ktiy ;
uint8_T oe5tzbxwwr ; uint8_T njhitdju5e ; uint8_T g4nrllonox ; uint8_T
obm0k15crs ; uint8_T pcw5qglzkg ; uint8_T bzti1i3thd ; uint8_T imzsbj1jgo ;
boolean_T jpc20qpomn ; boolean_T lvo4y1ytk5 ; boolean_T h3t5qeqrnn ;
boolean_T nzomd4yi2n ; boolean_T e5evnuntoo ; boolean_T bgyi43vmnr ;
boolean_T kjhyvdtxp5 ; boolean_T h34ydbmpjb ; boolean_T bxtpfeqhah ;
boolean_T ectksyzujz ; boolean_T e4npfx11iy ; boolean_T cqnjqt41op ;
boolean_T iuglgelyun ; boolean_T jnm03v4nju ; boolean_T igsloezryz ;
boolean_T dzdcvwm2jz ; boolean_T picembwpsd ; boolean_T ofqmwzn52o ; } DW ;
typedef struct { real_T kq0n4fmsru [ 9 ] ; real_T mvf4afayuy ; real_T
nkibglrfld ; real_T gxrj3lutbi ; real_T cevegsargq ; real_T odtlru4h23 [ 3 ]
; real_T jwzwfdw2vt ; real_T fq3muvfikq ; } X ; typedef struct { real_T
kq0n4fmsru [ 9 ] ; real_T mvf4afayuy ; real_T nkibglrfld ; real_T gxrj3lutbi
; real_T cevegsargq ; real_T odtlru4h23 [ 3 ] ; real_T jwzwfdw2vt ; real_T
fq3muvfikq ; } XDot ; typedef struct { boolean_T kq0n4fmsru [ 9 ] ; boolean_T
mvf4afayuy ; boolean_T nkibglrfld ; boolean_T gxrj3lutbi ; boolean_T
cevegsargq ; boolean_T odtlru4h23 [ 3 ] ; boolean_T jwzwfdw2vt ; boolean_T
fq3muvfikq ; } XDis ; typedef struct { real_T kq0n4fmsru [ 9 ] ; real_T
mvf4afayuy ; real_T nkibglrfld ; real_T gxrj3lutbi ; real_T cevegsargq ;
real_T odtlru4h23 [ 3 ] ; real_T jwzwfdw2vt ; real_T fq3muvfikq ; }
CStateAbsTol ; typedef struct { real_T kq0n4fmsru [ 9 ] ; real_T mvf4afayuy ;
real_T nkibglrfld ; real_T gxrj3lutbi ; real_T cevegsargq ; real_T odtlru4h23
[ 3 ] ; real_T jwzwfdw2vt ; real_T fq3muvfikq ; } CXPtMin ; typedef struct {
real_T kq0n4fmsru [ 9 ] ; real_T mvf4afayuy ; real_T nkibglrfld ; real_T
gxrj3lutbi ; real_T cevegsargq ; real_T odtlru4h23 [ 3 ] ; real_T jwzwfdw2vt
; real_T fq3muvfikq ; } CXPtMax ; typedef struct { real_T il05gmw2ph ; real_T
hgvchvtsxh ; real_T jwpbx5srup ; real_T c2suottud0 ; } ZCV ; typedef struct {
int_T ir [ 14 ] ; int_T jc [ 19 ] ; real_T pr [ 14 ] ; } MassMatrix ; typedef
struct { rtwCAPI_ModelMappingInfo mmi ; } DataMapInfo ; struct kfeqy1knwp_ {
uint16_T Offset_Value ; uint16_T Switch_Threshold ; } ; struct P_ { real_T
PIDController3_I ; real_T PIDController4_I ; real_T PIDController2_I ; real_T
PIDController3_InitialConditionForIntegrator ; real_T
PIDController4_InitialConditionForIntegrator ; real_T
PIDController2_InitialConditionForIntegrator ; real_T
PIDController3_LowerSaturationLimit ; real_T
PIDController2_LowerSaturationLimit ; real_T PIDController3_P ; real_T
PIDController4_P ; real_T PIDController2_P ; real_T
PIDController3_UpperSaturationLimit ; real_T
PIDController2_UpperSaturationLimit ; real_T one_by_3_Gain ; real_T
one_by_sqrt3_Gain ; real_T Kalphabeta0_Gain [ 3 ] ; real_T Integrator_gainval
; real_T Gain4_Gain ; real_T Gain5_Gain ; real_T Gain2_Gain ; real_T
Gain3_Gain ; real_T Integrator_gainval_k5jjwwdxok ; real_T Gain1_Gain ;
real_T Gain6_Gain ; real_T Ka_Gain ; real_T one_by_two_Gain ; real_T
sqrt3_by_two_Gain ; real_T Kb_Gain ; real_T Kc_Gain ; real_T Constant_Value ;
real_T Constant1_Value ; real_T Constant3_Value ; real_T Gain_Gain ; real_T
Clamping_zero_Value ; real_T Constant1_Value_hn0ebem5eo ; real_T
Clamping_zero_Value_ovzqjd3hns ; real_T Constant1_Value_dewfjbqnbe ; real_T
Gain_Gain_nisirajfbb ; real_T Constant1_Value_jszzsjitnn ; real_T
UnitDelay2_InitialCondition ; real_T one_by_3_Gain_nkybza1gt4 ; real_T
one_by_sqrt3_Gain_oanrm0whfm ; real_T Kalphabeta0_Gain_ej1ljv5nho [ 3 ] ;
real_T TransferFcn2_A ; real_T TransferFcn2_C ; real_T TransferFcn1_A ;
real_T TransferFcn1_C ; real_T TransferFcn3_A ; real_T TransferFcn3_C ;
real_T Bias2_Bias ; real_T Bias_Bias ; real_T Bias1_Bias ; real_T
TransferFcn_A ; real_T TransferFcn_C ; real_T Integrator_gainval_paibil4hm3 ;
real_T integrator_IC ; real_T TransportDelay_Delay ; real_T
TransportDelay_InitOutput ; real_T K1_Value ; real_T Memory_InitialCondition
; real_T one_by_3_Gain_ftvqyvuzmt ; real_T one_by_sqrt3_Gain_pgvhkr2jgu ;
real_T Kalphabeta0_Gain_ilfd34dpsq [ 3 ] ; real_T Gain1_Gain_nxhl14je3b ;
real_T TransferFcn_A_porg30uzpo ; real_T TransferFcn_C_dflx33qq2y ; real_T
uDLookupTable_tableData [ 4 ] ; real_T uDLookupTable_bp01Data [ 4 ] ; real_T
Gain2_Gain_hrv0gbf0t1 ; real_T Gain_Gain_e32s35ttd5 ; real_T
Constant1_Value_l24qi4amhg ; real_T Constant2_Value ; real_T Constant4_Value
; real_T Clamping_zero_Value_pqk5pd1sjw ; real_T Constant_Value_mumexc0o4r ;
real_T Constant1_Value_bvfdufyota ; real_T Constant10_Value ; real_T
Constant11_Value ; real_T Constant5_Value ; real_T Constant7_Value ; real_T
RTP_7551B8C1_angular_position_Value ; real_T
RTP_7551B8C1_angular_velocity_Value ; real_T RTP_7551B8C1_i_d_Value ; real_T
RTP_7551B8C1_i_q_Value ; real_T RTP_7551B8C1_torque_Value ; real_T
RTP_7A33EE0C_w_Value ; uint16_T Offset_Value ; uint16_T Switch_Threshold ;
uint16_T Offset_Value_l5jnuwrncz ; uint16_T Switch_Threshold_ol0hmyrsdr ;
int8_T Constant_Value_a2jar3lhp4 ; int8_T Constant2_Value_lbyro00v5f ; int8_T
Constant3_Value_aq5acwyktw ; int8_T Constant4_Value_d1otvnztfk ; int8_T
Constant_Value_my1055dhqj ; int8_T Constant2_Value_p5zxcofuiw ; int8_T
Constant3_Value_jeu0fwmuhz ; int8_T Constant4_Value_lfnvvruexs ; int8_T
Constant_Value_jztjkp0m2j ; int8_T Constant2_Value_d2bnea0b2y ; int8_T
Constant3_Value_ijyrlqhtqs ; int8_T Constant4_Value_dza1ovdwgp ; kfeqy1knwp
m1ruyuhwwh ; kfeqy1knwp ofp4g0emipz ; } ; extern const char_T *
RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern X rtX ; extern DW rtDW ;
extern MassMatrix rtMassMatrix ; extern P rtP ; extern mxArray *
mr_ideal_source_Motor_2_GetDWork ( ) ; extern void
mr_ideal_source_Motor_2_SetDWork ( const mxArray * ssDW ) ; extern mxArray *
mr_ideal_source_Motor_2_GetSimStateDisallowedBlocks ( ) ; extern const
rtwCAPI_ModelMappingStaticInfo * ideal_source_Motor_2_GetCAPIStaticMap ( void
) ; extern SimStruct * const rtS ; extern DataMapInfo * rt_dataMapInfoPtr ;
extern rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs ( int_T
tid ) ; void MdlOutputsParameterSampleTime ( int_T tid ) ; void MdlUpdate ( int_T tid ) ; void MdlTerminate ( void ) ; void MdlInitializeSizes ( void ) ; void MdlInitializeSampleTimes ( void ) ; SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) ;
#endif
