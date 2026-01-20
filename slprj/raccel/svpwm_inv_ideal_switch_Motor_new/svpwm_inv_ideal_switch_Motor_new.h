#ifndef svpwm_inv_ideal_switch_Motor_new_h_
#define svpwm_inv_ideal_switch_Motor_new_h_
#ifndef svpwm_inv_ideal_switch_Motor_new_COMMON_INCLUDES_
#define svpwm_inv_ideal_switch_Motor_new_COMMON_INCLUDES_
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
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_1_gateway.h"
#include "nesl_rtw.h"
#endif
#include "svpwm_inv_ideal_switch_Motor_new_types.h"
#include <string.h>
#include "rt_zcfcnRefine.h"
#include <float.h>
#include "mwmathutil.h"
#include <stddef.h>
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#include "rtGetInf.h"
#include "zero_crossing_types.h"
#define MODEL_NAME svpwm_inv_ideal_switch_Motor_new
#define NSAMPLE_TIMES (8) 
#define NINPUTS (0)       
#define NOUTPUTS (0)     
#define NBLOCKIO (110) 
#define NUM_ZC_EVENTS (56) 
#ifndef NCSTATES
#define NCSTATES (48)   
#elif NCSTATES != 48
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
typedef struct { int8_T bhzbsdgdq2 ; } kmkcmbn4x2 ; typedef struct { int8_T
b04yz5cggf ; } mseuwxpwum ; typedef struct { real_T avbxeqmegl ; real_T
fe5unc2cot ; real_T p3x1nykh2h ; real_T i2v3lquv1p ; real_T d40jfrqtzi ;
real_T amgnvzmzwj ; real_T f22ceovzjn [ 2 ] ; real_T orioptsoka ; real_T
nzoc5isxce ; uint16_T ae04vdxys5 ; } hbv5brro3b ; typedef struct { real_T
nv0ckczzyt ; real_T a5fxpo2jxt ; real_T pjkri1jfmf ; real_T ogchot533s ;
real_T ci2ghpeho2 ; real_T a5n3mph1is ; real_T jw0vzjayld ; real_T aqgs4lwcs0
[ 4 ] ; real_T jt5s25x4p3 [ 3 ] ; real_T pqvtd1k3mi [ 2 ] ; real_T mq5qplabet
; real_T attsietxrb ; real_T olxy0g0r43 ; real_T nqxxmvygdv [ 4 ] ; real_T
mfc5rthlud [ 2 ] ; real_T hqgajqd4gg ; real_T eeejp3hcbz ; real_T a3tspmrrna
; real_T on1icacbha [ 4 ] ; real_T eazkiebo53 [ 2 ] ; real_T iu0ck3e2ez ;
real_T fe1dgvexri ; real_T asdck0n5ju ; real_T kbjfstfe15 [ 4 ] ; real_T
a2retnjkq0 ; real_T puivzlqjlu [ 107 ] ; real_T k1eiyylkke [ 14 ] ; real_T
nzlrdh2b4b ; real_T e01yjnpztv ; real_T fg325xp0yq ; real_T j0maas2lit ;
real_T gkjhzrc0ug ; real_T cowcz23por ; real_T lz2rmtvn33 [ 3 ] ; real_T
mu1ykcvogj ; real_T c50g454aul [ 3 ] ; real_T e410pyvokt [ 3 ] ; real_T
kbw21xjeom ; real_T ovoojs43mn [ 3 ] ; real_T fqqbu1r1j2 ; real_T f5vac40zun
; real_T ddah5ogtmi ; real_T p2be4saqbu ; real_T eehi02ch5z ; real_T
ay2creuefx ; real_T a5i54y0z3o ; real_T ovoi2remfu ; real_T c5xjaf0iqb ;
real_T hfolnftp5h ; real_T gp0uutzxp4 ; real_T db4wiwn3hg ; real_T pvpo4dg4qc
; real_T hs3y5twomy [ 3 ] ; real_T bvzw0vglfd ; real_T pu3qcgib04 [ 3 ] ;
real_T lpbmqhqsqu [ 3 ] ; real_T pwekhu3x01 [ 3 ] ; real_T lpgmd2q015 ;
real_T m1uh04odyi ; real_T mr1iatoryd ; real_T hm5t2h1rgd [ 3 ] ; real_T
lgwztqmxwk ; real_T ajaepkbehz ; real_T pioyostcdx ; real_T bw2ptspu3o ;
real_T bm3xrdrtau ; real_T i1kxbx0fl3 ; real_T cqr23xsn4l [ 3 ] ; real_T
l2dxjxzbdu ; real_T pkpq0xh4wk ; real_T ie0db3elvh ; real_T dx4fq34fve ;
real_T c3zpjpjkqw ; real_T l0xwi0oi4s ; real_T lzduwlidlb ; real_T ajypk3su2v
; real_T pqqvqqoci2 ; real_T jpgo40l01h ; real_T kejvf4vqow ; real_T
jtnr2ugrfm ; real_T e2m3azo0l4 ; boolean_T py2agdkuqw ; boolean_T gvldvxx1fr
; boolean_T htz4padxwn ; hbv5brro3b gktxriwlgy ; hbv5brro3b drq5j5xu31j ; } B
; typedef struct { real_T cvlf0sz5z2 ; real_T hpoj2t5rol ; real_T cnxu2jgn15
[ 3 ] ; real_T kacob3q1yk ; real_T a3hwfmo41h ; real_T bo0zmiyk5k [ 2 ] ;
real_T m2bsciclhj ; real_T p2uhnlceoc ; real_T o4bl5l0tbp [ 2 ] ; real_T
hr5tgveolm ; real_T e0wxl4ik0r ; real_T dho2ajn5zj [ 2 ] ; real_T ktjxnunjaj
[ 147 ] ; real_T jpmvr23hc2 ; real_T noxl051g2e ; real_T echo5z2mnm ; real_T
d0joumf120 ; real_T kay1grlant ; real_T lr2o13tomh [ 56 ] ; real_T bszd5zyxst
; real_T dpobqi5c1i ; real_T duecfhiu0z [ 3 ] ; real_T aw0a1ljg2j [ 3 ] ;
real_T kqf0lx5xyj ; real_T gfo4de2zaa ; real_T jccdx03rub ; real_T fezw1m0e0j
; real_T gsszsd23zk ; real_T gxe5im5qje ; real_T piba5dt355 ; real_T
kqui3kli12 ; void * nwbm1hryfv ; void * pretereqed ; void * lasd3pluwl ; void
* hglkxaq2vf ; void * pi55vn1l4g ; void * a5yngbes4r ; void * oyx3y13v5w ;
void * mfs5bkjldx ; void * nnw115q33t ; void * insmgmngh4 ; void * ltw3jtrsae
; struct { void * LoggedData [ 5 ] ; } ftwvlai4sn ; void * gdkn0cgqhc [ 6 ] ;
struct { void * LoggedData [ 6 ] ; } apv1x5zmlb ; struct { void * LoggedData
[ 2 ] ; } i5vdc10ucn ; struct { void * LoggedData [ 4 ] ; } h0wdqoc4xl ;
struct { void * LoggedData ; } emeadmg2yr ; struct { void * LoggedData [ 2 ]
; } n2t5vja4sl ; struct { void * LoggedData [ 4 ] ; } ltskfsfapp ; struct {
void * LoggedData ; } ghq2jbfd4d ; struct { void * LoggedData [ 4 ] ; }
ggonkasefx ; struct { void * LoggedData [ 2 ] ; } imabffuyys ; struct { void
* LoggedData [ 3 ] ; } gn3r00kkvz ; void * kh45mvm3ga [ 6 ] ; struct { void *
LoggedData [ 2 ] ; } blbm211puw ; struct { void * LoggedData [ 2 ] ; }
bnhlnu5ojf ; struct { void * LoggedData [ 2 ] ; } oirftpfry0 ; struct { void
* LoggedData ; } eukm4ueyhs ; struct { void * LoggedData [ 2 ] ; } dpmshqcwd2
; struct { void * LoggedData ; } dwns3xng00 ; int32_T lbx0a3r5ty ; int32_T
apbfflzbrk ; int_T jmwilz4rac [ 56 ] ; int_T pondge5iap ; int_T b5mfmzrvbn [
13 ] ; int_T ihb23v2z11 [ 13 ] ; int_T gidjbxhmna ; int_T h4khszcqqc ; int_T
cg00ue1evq ; int_T pyb3144cpm ; int32_T p22r1acn5y ; int8_T pxxgjwxzvm ;
int8_T jgmhcjf2af ; int8_T e02yp4tp41 ; int8_T fsarw0rvd4 ; int8_T onqm04i3wu
; uint8_T oh3kqsoklo [ 56 ] ; uint8_T li0wrxfc1o [ 56 ] ; uint8_T dbahqblq4e
; uint8_T kjsbw2zvju ; boolean_T hqunhpnj0f ; boolean_T ko35wd2dy1 ;
boolean_T icxkgnrrog ; boolean_T n1dvytwheh ; boolean_T elvna2erlz ;
boolean_T f21cr3nx41 ; boolean_T nsdwswsgpc ; boolean_T g1lgatltwb ;
boolean_T ijdzmikxb4 ; boolean_T jscknfg22u ; boolean_T pdnqrf3bhn ;
boolean_T mrmwo2kn0b ; boolean_T d21mds4jgp ; boolean_T lb1zcadvpy ;
boolean_T ov5rixfask ; boolean_T adyvc5ipkj ; boolean_T lsrlmclszf ;
boolean_T jigphfe0ej ; boolean_T jhge2zamyn ; boolean_T eygu4ecplj ;
boolean_T fkt4at5q33 ; boolean_T mml4e0wrpx ; mseuwxpwum jwf4wp1234 ;
kmkcmbn4x2 erkivpk2vi ; mseuwxpwum e1tifyq5w5 ; kmkcmbn4x2 otz3zt2q0t ;
mseuwxpwum cjfqdwpmbh ; kmkcmbn4x2 fnjxwv0fqt ; mseuwxpwum gi3iqkjyylx ;
kmkcmbn4x2 ou05yx5eiq4 ; } DW ; typedef struct { real_T n43nw5oqny ; real_T
pdijgg2gvv ; real_T kcg2y4wo5x [ 36 ] ; real_T gb0unu3ef4 ; real_T fitspwnvjd
; real_T nqeqm5cvnz ; real_T ngd5ihuh4v [ 3 ] ; real_T nvt3hasywb ; real_T
l3i0d1x3a5 [ 3 ] ; } X ; typedef struct { real_T n43nw5oqny ; real_T
pdijgg2gvv ; real_T kcg2y4wo5x [ 36 ] ; real_T gb0unu3ef4 ; real_T fitspwnvjd
; real_T nqeqm5cvnz ; real_T ngd5ihuh4v [ 3 ] ; real_T nvt3hasywb ; real_T
l3i0d1x3a5 [ 3 ] ; } XDot ; typedef struct { boolean_T n43nw5oqny ; boolean_T
pdijgg2gvv ; boolean_T kcg2y4wo5x [ 36 ] ; boolean_T gb0unu3ef4 ; boolean_T
fitspwnvjd ; boolean_T nqeqm5cvnz ; boolean_T ngd5ihuh4v [ 3 ] ; boolean_T
nvt3hasywb ; boolean_T l3i0d1x3a5 [ 3 ] ; } XDis ; typedef struct { real_T
n43nw5oqny ; real_T pdijgg2gvv ; real_T kcg2y4wo5x [ 36 ] ; real_T gb0unu3ef4
; real_T fitspwnvjd ; real_T nqeqm5cvnz ; real_T ngd5ihuh4v [ 3 ] ; real_T
nvt3hasywb ; real_T l3i0d1x3a5 [ 3 ] ; } CStateAbsTol ; typedef struct {
real_T n43nw5oqny ; real_T pdijgg2gvv ; real_T kcg2y4wo5x [ 36 ] ; real_T
gb0unu3ef4 ; real_T fitspwnvjd ; real_T nqeqm5cvnz ; real_T ngd5ihuh4v [ 3 ]
; real_T nvt3hasywb ; real_T l3i0d1x3a5 [ 3 ] ; } CXPtMin ; typedef struct {
real_T n43nw5oqny ; real_T pdijgg2gvv ; real_T kcg2y4wo5x [ 36 ] ; real_T
gb0unu3ef4 ; real_T fitspwnvjd ; real_T nqeqm5cvnz ; real_T ngd5ihuh4v [ 3 ]
; real_T nvt3hasywb ; real_T l3i0d1x3a5 [ 3 ] ; } CXPtMax ; typedef struct {
real_T ltv0icwey0 ; real_T gnwyvbivm1 ; real_T etkcsqtev0 ; real_T nubq4koksb
; real_T fjkrec03wk ; real_T nmyqaariqq ; real_T gkke5ech0r ; real_T
hekfwphtdl ; real_T cuj5jr4ffn ; real_T igka3sribs ; real_T ftkzqqkgk1 ;
real_T nobhtaf54u ; real_T l3nrcvs1ns ; real_T nyptwqhkjt ; real_T p4xxserad0
; real_T m3vxi0nlrn ; real_T ntripjm2ol ; real_T h4acezk0zb ; real_T
g0wvl5n5rg ; real_T fvlbpp2lmj ; real_T beoodn2iii ; real_T pht13b5g0c ;
real_T gxkb2nr4ou ; real_T ln2xxemlul ; real_T hnxssh5qun ; real_T bzj2yf20kx
; real_T isjqidchxq ; real_T lsmwdpgz2v ; real_T h1rkxv0c45 ; real_T
bbjb2b3ka5 ; real_T cjdvakuumf ; real_T ffwtjgq5sv ; real_T f1frnql1qn ;
real_T ltvtfocpie ; real_T ctzd3glmtc ; real_T olxm3vxvku ; real_T hylkuihisw
; real_T bdmifbfvqn ; real_T clm5bdikvr ; real_T cnq0iwuywu ; real_T
eiojcl4a5r ; real_T jovikshe0r ; real_T mbz0yscpiq ; real_T a1ythxnhco ;
real_T nawblt5h4v ; real_T jnltdjjh2q ; real_T ogl4egqwok ; real_T mg53ite0ug
; real_T f4vo33zu2b ; real_T egsdff54l1 ; real_T nln5bd02zv ; real_T
eihr1qhq0t ; real_T l0cx0fe1ku ; real_T i1asbrlhh3 ; real_T g3hwzzbskt ;
real_T n3g1ium0du ; real_T pazrksjbcf ; real_T hvio2q3tlr ; real_T ewvihbbozh
; real_T fguqsnco1h ; real_T lwoppvvrjp ; real_T nlqjezaema ; real_T
kk22zj3wsr ; real_T hq0kr0npdm ; real_T mkbkuibnpr ; real_T neuku0dcje ;
real_T kmcqcbqhrs ; } ZCV ; typedef struct { ZCSigState fndfwgz4fv ;
ZCSigState cuyxuyc3p3 ; ZCSigState n2ozi02fkx ; ZCSigState gzihxpxpwo ;
ZCSigState ancclk51fo ; ZCSigState hzcdh440bk ; ZCSigState a0ehtixdsl ;
ZCSigState d5z1iqmrct ; ZCSigState dudwl04ag2 ; ZCSigState mrgeprnb1e ;
ZCSigState ctza41pwr1 ; ZCSigState bvzahvjvf3 ; ZCSigState mujk3ibigs ;
ZCSigState jnzhrewgpu ; ZCSigState g4tp4dnunb ; ZCSigState dd2iteuaa4 ;
ZCSigState fnetj3chfu ; ZCSigState nmztlxejup ; ZCSigState ef2hmt1k3m ;
ZCSigState l5tgleuhpf ; ZCSigState l2kpk3vg1i ; ZCSigState pdyvux531e ;
ZCSigState kxdbtabidt ; ZCSigState mjd1vpuoar ; ZCSigState bwurysic45 ;
ZCSigState i1xffzdulk ; ZCSigState aj5h0mduri ; ZCSigState p0mv4iguyr ;
ZCSigState auh4jthc1u ; ZCSigState dwwnnlyg22 ; ZCSigState hmlenxsyfg ;
ZCSigState bcj3opv0wy ; ZCSigState m4ecx2qkcy ; ZCSigState bcx3zjiueo ;
ZCSigState kzdg31mjai ; ZCSigState jgpm4ktff0 ; ZCSigState otifn4z2wm ;
ZCSigState oajzy4mks5 ; ZCSigState n3dkmeafxi ; ZCSigState i1uthiwetf ;
ZCSigState fguzxjvqcj ; ZCSigState matc5qs2lx ; ZCSigState pcqrdtjrzb ;
ZCSigState aw3u4nneac ; ZCSigState k442ftb0wi ; ZCSigState cf0gtc2etv ;
ZCSigState daot2pfvcm ; ZCSigState jij3ouhnns ; ZCSigState coexg0p4a2 ;
ZCSigState gb22w500rn ; ZCSigState cmwljsu02u ; ZCSigState egj5ekzrtu ;
ZCSigState msvhtmhtwf ; ZCSigState hnbrlnzxdi ; ZCSigState blcvz2gtft ;
ZCSigState bin1mm200u ; } PrevZCX ; typedef struct { int_T ir [ 19 ] ; int_T
jc [ 49 ] ; real_T pr [ 19 ] ; } MassMatrix ; typedef struct {
rtwCAPI_ModelMappingInfo mmi ; } DataMapInfo ; struct esroert1yg_ { uint16_T
Offset_Value ; uint16_T Switch_Threshold ; } ; struct P_ { real_T
Carriercounter_CarrCount ; real_T Carriercounter_CarrCount_l1cfgyteuy ;
real_T Carriercounter_CarrCount_pcpzckqge2 ; real_T PIDController3_I ; real_T
PIDController4_I ; real_T PIDController_I ; real_T PIDController2_I ; real_T
PIDController3_InitialConditionForIntegrator ; real_T
PIDController4_InitialConditionForIntegrator ; real_T
PIDController2_InitialConditionForIntegrator ; real_T
PIDController_InitialConditionForIntegrator ; real_T
PIDController3_LowerSaturationLimit ; real_T
PIDController2_LowerSaturationLimit ; real_T
PIDController_LowerSaturationLimit ; real_T PIDController3_P ; real_T
PIDController4_P ; real_T PIDController2_P ; real_T PIDController_P ; real_T
Carriercounter_Range ; real_T Carriercounter_Range_fbb5yen5s5 ; real_T
Carriercounter_Range_iry5nbrdqx ; real_T PWMGenerator1_Tdelay ; real_T
PWMGenerator2_Tdelay ; real_T PWMGenerator_Tdelay ; real_T PWMGenerator_Tper
; real_T PWMGenerator1_Tper ; real_T PWMGenerator2_Tper ; real_T
PIDController3_UpperSaturationLimit ; real_T
PIDController2_UpperSaturationLimit ; real_T
PIDController_UpperSaturationLimit ; real_T
IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue ;
real_T IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue
; real_T
IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue_gmxko0ufcx
; real_T
 IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue_ppty12eo1o
; real_T
IntegratorwithWrappedStateDiscreteorContinuous_WrappedStateLowerValue_czzrcv1xs0
; real_T
 IntegratorwithWrappedStateDiscreteorContinuous1_WrappedStateLowerValue_cznn0srx2d
; real_T IntegratorwithWrappedStateDiscreteorContinuous_x0 ; real_T
IntegratorwithWrappedStateDiscreteorContinuous_x0_jmi4gwmvri ; real_T
IntegratorwithWrappedStateDiscreteorContinuous_x0_cmhchouter ; real_T
Gain_Gain ; real_T Gain_Gain_bxmudsa0q5 ; real_T one_by_3_Gain ; real_T
one_by_sqrt3_Gain ; real_T Kalphabeta0_Gain [ 3 ] ; real_T
sine_table_values_Value [ 1002 ] ; real_T convert_pu_Gain ; real_T
indexing_Gain ; real_T Integrator_gainval ; real_T Gain3_Gain ; real_T
Gain4_Gain ; real_T Gain5_Gain ; real_T Gain_Gain_liagklf45c ; real_T
Saturation_UpperSat ; real_T Saturation_LowerSat ; real_T
Integrator_gainval_knsztftnss ; real_T Gain1_Gain ; real_T Gain6_Gain ;
real_T sine_table_values_Value_a3bovsahiy [ 1002 ] ; real_T Gain2_Gain ;
real_T convert_pu_Gain_pd3tvpp05x ; real_T indexing_Gain_f4hf3xgt40 ; real_T
Constant_Value ; real_T Constant1_Value ; real_T Constant_Value_futibpkv4r ;
real_T Clamping_zero_Value ; real_T Constant1_Value_hwdnaks4hk ; real_T
Clamping_zero_Value_dzbkr5nj33 ; real_T Constant1_Value_heb03z0qwi ; real_T
Constant_Value_amqem3vix4 ; real_T Constant1_Value_plzth135fi ; real_T
Constant1_Value_kzv5mijxnd ; real_T Constant_Value_d51pvnudts ; real_T
Constant_Value_aedbii5zo1 ; real_T Constant_Value_otslvflthu ; real_T
Constant_Value_aidlcpdktu ; real_T Constant_Value_pethsdhkm3 ; real_T
TransferFcn_A ; real_T TransferFcn_C ; real_T Gain2_Gain_lkmtsx4hep ; real_T
Gain_Gain_fe1rn1jbbk ; real_T Gain2_Gain_hglxtjghlc ; real_T
UnitDelay2_InitialCondition ; real_T Integrator_gainval_mrdvyychkv ; real_T
Constant2_Value ; real_T Integrator_gainval_c0fk5uxyeb ; real_T
Constant2_Value_mcxfir2knc ; real_T Saturation_UpperSat_g2zpvvxvhz ; real_T
Saturation_LowerSat_mmnoh5s0jp ; real_T Integrator_gainval_b2tc3y3sp3 ;
real_T Constant2_Value_pu52vdaelf ; real_T Integrator_gainval_ginifr2xlq ;
real_T Constant2_Value_fomuzpjuar ; real_T Saturation_UpperSat_j5u4qljnv5 ;
real_T Saturation_LowerSat_em3rmibbhe ; real_T Integrator_gainval_clmxe4wonv
; real_T Constant2_Value_gkaf0w0kw1 ; real_T Integrator_gainval_lsanfb5e3f ;
real_T Constant2_Value_pweuhgyjqa ; real_T Saturation_UpperSat_c1q2ftmtjs ;
real_T Saturation_LowerSat_jkunmti0xg ; real_T Bias2_Bias ; real_T Bias_Bias
; real_T Bias1_Bias ; real_T TransferFcn1_A ; real_T TransferFcn1_C ; real_T
TransferFcn2_A ; real_T TransferFcn2_C ; real_T TransferFcn3_A ; real_T
TransferFcn3_C ; real_T integrator_IC ; real_T TransportDelay_Delay ; real_T
TransportDelay_InitOutput ; real_T K1_Value ; real_T Memory_InitialCondition
; real_T Gain3_Gain_m0x4i4tgxy ; real_T one_by_3_Gain_lq50khpwgl ; real_T
one_by_sqrt3_Gain_bbbfyvtmfv ; real_T Kalphabeta0_Gain_pvcgmqyz1g [ 3 ] ;
real_T sine_table_values_Value_ph5vfaxqmh [ 1002 ] ; real_T
convert_pu_Gain_flpdghdw0l ; real_T indexing_Gain_d4wzw4thi3 ; real_T
TransferFcn_A_kmf2rzcsuh ; real_T TransferFcn_C_nnooprdpdc ; real_T
Integrator_gainval_kcogqwyqqm ; real_T Gain4_Gain_ayr4kf20mm ; real_T
Gain5_Gain_mux3bkz4kz ; real_T Saturation1_UpperSat ; real_T
Saturation1_LowerSat ; real_T Gain6_Gain_ouwwchll42 ; real_T Gain7_Gain ;
real_T DelayOneStep_InitialCondition ; real_T Gain_Gain_jbuyqabnwy ; real_T
Saturation_UpperSat_jtqyrsjebw ; real_T Saturation_LowerSat_niuqztsdpt ;
real_T integrator_IC_e2za4lfqec ; real_T TransportDelay_Delay_erz0uctopi ;
real_T TransportDelay_InitOutput_mx5tkf3a5z ; real_T K1_Value_bqidwejw0r ;
real_T Memory_InitialCondition_l045dbli4n ; real_T one_by_3_Gain_ffu1pqh3k5 ;
real_T one_by_sqrt3_Gain_ipkvtvw4ob ; real_T Kalphabeta0_Gain_pgpgg03wzb [ 3
] ; real_T sine_table_values_Value_hsy4ofjnpf [ 1002 ] ; real_T
convert_pu_Gain_ngxl3nt3kt ; real_T indexing_Gain_c3131ohag4 ; real_T
Gain1_Gain_a3h5l5zylu ; real_T Integrator_gainval_dhnaqjdnlv ; real_T
Constant3_Value ; real_T Constant3_Value_j4b4zpsigk ; real_T
Constant3_Value_ltnm24yy5d ; real_T Constant_Value_fke3pdcioo ; real_T
Constant1_Value_ovkugjom0j ; real_T Constant2_Value_lvuo5jfnnc ; real_T
Constant4_Value ; real_T Clamping_zero_Value_bhl50gjfmv ; real_T
Clamping_zero_Value_editfihzwr ; real_T Constant_Value_kxfziju4tw ; real_T
Constant1_Value_ah5g1obm1c ; real_T Constant10_Value ; real_T
Constant11_Value ; real_T Constant5_Value ; real_T Constant7_Value ; real_T
RTP_0A3A8918_w_Value ; real_T RTP_0BF8E32F_angular_position_Value ; real_T
RTP_0BF8E32F_angular_velocity_Value ; real_T RTP_0BF8E32F_i_d_Value ; real_T
RTP_0BF8E32F_i_q_Value ; real_T RTP_0BF8E32F_torque_Value ; real_T
RTP_12AF5A6E_v_Value ; real_T RTP_6FFE9E78_v_Value ; real_T
RTP_8519EF23_i_L_Value ; int16_T offset_Value [ 4 ] ; int16_T
offset_Value_cuuhtbq0gv [ 4 ] ; int16_T offset_Value_mwsc4qa1fy [ 4 ] ;
int16_T offset_Value_lryd2zcqwd [ 4 ] ; uint16_T Offset_Value ; uint16_T
Switch_Threshold ; uint16_T Offset_Value_fboskqo1ag ; uint16_T
Switch_Threshold_owcqsnmcfg ; int8_T Constant_Value_c2e1y2gzc3 ; int8_T
Constant2_Value_drbxu45em3 ; int8_T Constant3_Value_lutrgydyga ; int8_T
Constant4_Value_ej5apk0vfj ; int8_T Constant_Value_f5v4rjr542 ; int8_T
Constant2_Value_fpcgfo0hw0 ; int8_T Constant3_Value_bjlbtqusro ; int8_T
Constant4_Value_jnji3qyt13 ; int8_T Constant_Value_dkhphikhxn ; int8_T
Constant2_Value_chfiiyl2xo ; int8_T Constant3_Value_ckuyfoczpd ; int8_T
Constant4_Value_d5cs5fwkek ; int8_T Constant_Value_ljwvnj1h33 ; int8_T
Constant2_Value_pr0foizd4c ; int8_T Constant3_Value_j5j0j3jbky ; int8_T
Constant4_Value_jrpwj3ts4p ; esroert1yg gktxriwlgy ; esroert1yg drq5j5xu31j ;
} ; extern const char_T * RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern
X rtX ; extern DW rtDW ; extern PrevZCX rtPrevZCX ; extern MassMatrix
rtMassMatrix ; extern P rtP ; extern mxArray *
mr_svpwm_inv_ideal_switch_Motor_new_GetDWork ( ) ; extern void
mr_svpwm_inv_ideal_switch_Motor_new_SetDWork ( const mxArray * ssDW ) ;
extern mxArray *
mr_svpwm_inv_ideal_switch_Motor_new_GetSimStateDisallowedBlocks ( ) ; extern
const rtwCAPI_ModelMappingStaticInfo *
svpwm_inv_ideal_switch_Motor_new_GetCAPIStaticMap ( void ) ; extern SimStruct
* const rtS ; extern DataMapInfo * rt_dataMapInfoPtr ; extern
rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs ( int_T tid )
; void MdlOutputsParameterSampleTime ( int_T tid ) ; void MdlUpdate ( int_T
tid ) ; void MdlTerminate ( void ) ; void MdlInitializeSizes ( void ) ; void
MdlInitializeSampleTimes ( void ) ; SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) ;
#endif
