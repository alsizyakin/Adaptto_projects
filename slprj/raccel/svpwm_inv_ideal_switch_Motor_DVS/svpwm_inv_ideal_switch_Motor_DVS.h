#ifndef svpwm_inv_ideal_switch_Motor_DVS_h_
#define svpwm_inv_ideal_switch_Motor_DVS_h_
#ifndef svpwm_inv_ideal_switch_Motor_DVS_COMMON_INCLUDES_
#define svpwm_inv_ideal_switch_Motor_DVS_COMMON_INCLUDES_
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
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_1_gateway.h"
#include "nesl_rtw.h"
#endif
#include "svpwm_inv_ideal_switch_Motor_DVS_types.h"
#include <string.h>
#include <float.h>
#include "mwmathutil.h"
#include "rt_zcfcnRefine.h"
#include <stddef.h>
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#include "rtGetInf.h"
#include "zero_crossing_types.h"
#define MODEL_NAME svpwm_inv_ideal_switch_Motor_DVS
#define NSAMPLE_TIMES (8) 
#define NINPUTS (0)       
#define NOUTPUTS (0)     
#define NBLOCKIO (210) 
#define NUM_ZC_EVENTS (54) 
#ifndef NCSTATES
#define NCSTATES (54)   
#elif NCSTATES != 54
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
typedef struct { int8_T mis0isw31s ; } iekhfuenzr ; typedef struct { int8_T
js430d51ko ; } pu2vwtjngx ; typedef struct { creal_T j3h3pcq4al ; real_T
b2obo2k4w3 ; real_T mwhghtglia ; real_T mjq3svnwjc ; real_T ptxvibbhgk ;
real_T hxe55nlwnf ; real_T ctfogtrwii ; real_T e5aqacrdrg ; real_T baysa5tphs
; real_T pnyy1dfsha ; real_T en5vrdrbct ; real_T cqhv5wzfd3 ; real_T
isi4pku4mf ; real_T iigcaletkn ; real_T go2ofm21cc ; real_T fqzh5bmcbs ;
real_T p1yaqm2mly ; real_T a5f01yxli2 ; } hi20sc41b1 ; typedef struct {
real_T gpefuoor5e ; real_T kebsytq2xe ; real_T glwrz5pjcq ; real_T nbi4s2icax
; void * dcdmaqgr2q [ 2 ] ; void * albmshzw1i [ 2 ] ; int_T b4iq4vyuor [ 5 ]
; int_T kbk10zqztt [ 5 ] ; int8_T iirxwp05k3 ; boolean_T p3lkixy2r2 ; }
nxi4v0kzor ; typedef struct { real_T fucr2oqqvp ; real_T ctrery2hqi ; }
mlpnvvuyvo ; typedef struct { real_T fucr2oqqvp ; real_T ctrery2hqi ; }
hu4c1xiall ; typedef struct { boolean_T fucr2oqqvp ; boolean_T ctrery2hqi ; }
gc2tevljn2 ; typedef struct { real_T fucr2oqqvp ; real_T ctrery2hqi ; }
cijkpecjxc ; typedef struct { real_T fucr2oqqvp ; real_T ctrery2hqi ; }
e5s5yk03ni ; typedef struct { real_T fucr2oqqvp ; real_T ctrery2hqi ; }
dsncbiunt4 ; typedef struct { real_T gsqfcp2tb4 ; real_T hz5wvvr03q ; real_T
cwh2pn5wy1 ; real_T abkbpgkuss ; real_T lxtste3lck ; real_T et4ozkucqq ;
real_T m2mmtijmri ; real_T ios53bkxrm ; real_T p2eadsrfnq ; real_T h0wo1aetl0
; } lodmfg4juf ; typedef struct { real_T gcntdtbtkh ; real_T o3pqs4tnmx ;
void * llqgtftx1x [ 2 ] ; int_T llakzjlxxr [ 5 ] ; int_T kltkuvytnu ; int8_T
pv3ytlnr1b ; int8_T elaxv2ovi1 ; boolean_T du0hdfadhp ; } fl0yhvaxty ;
typedef struct { real_T cmo3bfaj3s ; } o1ybtyxfa3 ; typedef struct { real_T
cmo3bfaj3s ; } brlvdbk1nh ; typedef struct { boolean_T cmo3bfaj3s ; }
njsdbic2n3 ; typedef struct { real_T cmo3bfaj3s ; } is5452ib2g ; typedef
struct { real_T cmo3bfaj3s ; } ovv2y534kt ; typedef struct { real_T
cmo3bfaj3s ; } boyfellpo3 ; typedef struct { real_T hz1wkjhuyi ; real_T
lfsfvzpepa ; } bmb5fit0m1 ; typedef struct { real_T lx3o2nzd5a [ 4 ] ; real_T
k1kxogzjq2 [ 3 ] ; real_T ax5cd4l5sy [ 2 ] ; real_T dnkaa0wdib ; real_T
a5tod41fib ; real_T kjqqzkb4qm ; real_T lkbqqqpmru [ 4 ] ; real_T ccguvhfirq
[ 2 ] ; real_T kfqhgevtwz ; real_T oc5qjsgey3 ; real_T eyj4z12rtz ; real_T
fvmivjv3lb [ 4 ] ; real_T dnaovulvlb [ 2 ] ; real_T jdpnhxzdjk ; real_T
dasdy132yx ; real_T d1d1zaapqh ; real_T bhgw4g2foh [ 4 ] ; real_T kvsxukkcmj
; real_T auatjqdhf0 [ 103 ] ; real_T penrlhu4sz [ 13 ] ; real_T bbnzbwdua0 ;
real_T iqdew0e4el ; real_T hwiizqythe ; real_T lbrq5h4ui5 ; real_T eojl0a42ce
; real_T bcuwqh32s5 ; real_T g5g1ppgz3t ; real_T bazmfcvoth ; real_T
d4ciwwvfa2 ; real_T fpbcf53fcr ; real_T pjkrckrbmi ; real_T m4t3yxnlif ;
real_T b0viev4kse ; real_T edf2q5bfk2 ; real_T m555x5ha03 ; real_T fj1uu02s3f
; real_T lfphzr3zkl ; real_T inimsgpdgr ; real_T casm2noqiq ; real_T
m2ui1ybdof ; real_T iesgkvkxzq ; real_T ekihv3chvn ; real_T j4ke03ls2t ;
real_T gmzmjbpdyb ; real_T cih22fdyok ; real_T ajkvz5ci0m [ 3 ] ; real_T
aezqvkzl1a ; real_T czpfblkmwj ; real_T jfh33nt3he ; real_T kd15rro4dn [ 3 ]
; real_T kwmvrvaytb ; real_T jgity2osqp ; real_T dx2ufdiafd ; real_T
bh3adjtw3a ; real_T facrebrkle ; real_T mua0vkjnxz ; real_T gwxyrbeurc ;
real_T h1hb414rrc ; real_T nc3sgro020 ; real_T m3yw3qpyy5 ; real_T jhrx2rptab
; real_T gpqy41urpo ; real_T bmsygqhng1 ; real_T mc01v50j1n ; real_T
on1rqioqcn ; real_T dewc2widgy ; real_T eam0hrf2nm ; real_T ewo5ddkpno ;
real_T j5p2ia5v2q ; real_T ehefe0csih ; real_T lssacfysri ; real_T dldtrnzhoi
[ 3 ] ; real_T m2nda4lnht ; real_T gp50ky12vc [ 3 ] ; real_T acfwypvu3k [ 3 ]
; real_T jpa4fhevkb [ 3 ] ; real_T erxv4o2xnb ; real_T a0waq2yige ; real_T
ebgz4e1c3g ; real_T lerymqaro5 ; real_T f3fa0bs5yo ; real_T duantldayg ;
real_T ceb1wb5dhs ; real_T m3zdvdemp1 ; real_T dmapaibmba ; real_T ayi2asd3kf
; real_T jl0z5ju0tz ; real_T mk5absh4ch ; real_T njf0zqooka ; real_T
mhvmaspfn2 ; real_T o0xapzxixz ; real_T omv3banczb ; real_T ksk3rgvgha ;
real_T bk2w4t5edx ; real_T otibbq1ybw ; real_T dw2bf0o3qc [ 3 ] ; real_T
ibmra4o1q3 ; real_T av4t0lwnot ; real_T ik01ip0emy ; real_T i0bz332zpr ;
real_T pzjmlq5eg1 ; real_T lpm2ybqpkn ; real_T ewyzc4ea3q ; real_T nfxiwn1dyf
; real_T crdcjqcybf ; real_T dm1ua4d4p4 ; real_T adkyaqr1hi ; real_T
nsrfmn2s2t ; real_T psgyet3cnl ; real_T nxiojvqwee ; real_T d3f12ipwbj ;
real_T d3cez0rwmm ; real_T b2vm2ezgel ; real_T pg4q23epyz ; real_T nlhidx3ehg
; real_T kckbrisjzm ; real_T g4tdqbd1jh ; real_T nmjljcwgm1 ; real_T
dlix5rchrw ; real_T btw4nehwhl ; real_T mvggiakmde ; real_T aew5xboqsq ;
real_T oryej5mskv ; real_T omn34xrzyy ; real_T n5ksnoniny ; real_T ompzojzvpx
; real_T abg1iowprd ; real_T hqp3kk4vrz ; real_T beofpf1tft ; real_T
njyxzuxd0a ; real_T pzih1oilt4 ; real_T jnuez1rr0j ; real_T pggv4jdvwv [ 2 ]
; real_T exjj4nbbit ; real_T ektoy1cwjp ; real_T lhopohw40v ; uint16_T
igsucrokit ; uint16_T ewgbhxkzbm ; boolean_T iszk1zp113 ; boolean_T
ago5jfunj3 ; boolean_T g4wriih5k0 ; boolean_T ne52f44fra ; boolean_T
fju2qqux5g ; boolean_T k2hkvd0khb ; boolean_T cey5qn1gkj ; boolean_T
glolkkkv2d ; boolean_T k5ripsc1fv ; lodmfg4juf gniufkjjvw ; hi20sc41b1
p2ivnqp1am ; lodmfg4juf bnqfkp2to4b ; hi20sc41b1 mrd0p0xbfto ; } B ; typedef
struct { real_T efpskzcxep ; real_T ai422kezz0 ; real_T lnnnftehp1 [ 3 ] ;
real_T icvu5mibir ; real_T cb4xq0bjj4 ; real_T m3u2dkcxlz [ 2 ] ; real_T
k50emfigjc ; real_T dbbqckc2is ; real_T hlljggzjhf [ 2 ] ; real_T emz4ibixwn
; real_T kfq4cem22r ; real_T e25c3tmq20 [ 2 ] ; real_T i3vdcetmqe [ 145 ] ;
real_T mnmoquclvd ; real_T ceigtphubr ; real_T aljpcds43v ; real_T osf4mzxagr
; real_T klrbzagy05 ; real_T gwh2ncoyhs ; real_T lhy0ge3tud [ 54 ] ; real_T
in20t3ujpy ; real_T cslzxqexmu ; real_T g01dhr0w1d ; real_T ezil1yxcvy ;
real_T n3xqnbproq ; real_T dio11vnhkw ; real_T ocpxj414bz [ 3 ] ; real_T
mv3sh0gql1 ; real_T pguvwiktiy ; real_T n3dox33xbz ; real_T kx3oonvoou ;
real_T ltubjlx2ff ; real_T gngsentxwk ; real_T chnksmy5a2 ; real_T or1oxtso3w
; real_T mwedu0ttdg ; real_T mid4tugodz ; real_T kujk2izer3 ; real_T
bexizt5nd3 ; real_T nkvf05zwlz ; real_T bxjnuxcal0 ; real_T ddmdrqoiqr ; void
* mkn0smb45c ; void * kmzoqk3hrt ; void * fujaejwgqx ; void * lucuvz545x ;
void * ooorpxruqh ; void * ouj3vdr1tu ; void * fryyyqnzld ; void * jjzwrc4ift
; void * p4likipcey ; void * iovoyycjoy ; void * opqjgnpg0m ; struct { void *
LoggedData [ 5 ] ; } d4blsk2dpg ; struct { void * LoggedData [ 2 ] ; }
lptqpodbrr ; struct { void * LoggedData [ 2 ] ; } fufsp4rhxt ; struct { void
* LoggedData [ 2 ] ; } bnmefmsg4a ; struct { void * LoggedData ; } mpxie31yye
; struct { void * LoggedData ; } huvspw5lf2 ; struct { void * LoggedData [ 4
] ; } klt5ontc51 ; struct { void * LoggedData [ 3 ] ; } cem5i4tn2t ; void *
cos4th5ihy [ 2 ] ; struct { void * LoggedData [ 4 ] ; } bsgkw31sea ; void *
i21nwnk1vb [ 2 ] ; void * dvluhddqdu [ 2 ] ; void * d4fpdtzp4b [ 2 ] ; void *
gl5wlbfz5w [ 6 ] ; struct { void * LoggedData [ 6 ] ; } ktbj4lgqph ; struct {
void * LoggedData [ 4 ] ; } aqihcohwpi ; void * idsqnoqmih [ 2 ] ; struct {
void * LoggedData [ 3 ] ; } nyy5puiaiw ; struct { void * LoggedData ; }
eiudbjke0o ; struct { void * LoggedData [ 4 ] ; } gqiuetli0h ; struct { void
* LoggedData [ 6 ] ; } kgdwcutibf ; struct { void * LoggedData [ 3 ] ; }
csbed4alhp ; struct { void * LoggedData [ 5 ] ; } eccmsmgine ; int32_T
jybvry15cx ; int32_T og3glzkrkn ; int_T ci3flsowjr [ 54 ] ; int_T ee4tnkvtia
; int_T pau214bwzs [ 5 ] ; int_T f2jbwqrx1g [ 5 ] ; int_T amljx2ytrh [ 5 ] ;
int_T kep5r5jb3p [ 5 ] ; int_T afuv1ukzbi [ 13 ] ; int_T idafjiibzh [ 5 ] ;
int_T oqlftfpyzo ; int_T lwfxqushzf ; int_T hbdfbj2hrl ; int_T ehouvfqdi4 ;
int_T dmjxaamnqj ; int_T is4xcvejv4 ; int_T jo5cnjmjnv ; int_T ewlivdkxpi ;
int_T ea3ux1cs3q ; int_T e3et0hhslh ; int_T gp0btav2p3 ; int_T o50aojckos ;
int_T chjrngylzv ; int_T i0zxk0esvr ; int32_T pqjp0akxnx ; int8_T prqclxc3hl
; int8_T aqlfx3zwxf ; int8_T eiye4d5f1z ; int8_T lcp2ajv2ha ; int8_T
pfq3t3xk2j ; int8_T h0bgdncuha ; uint8_T gmfnujiv4w [ 54 ] ; uint8_T
pec13ae3dq [ 54 ] ; uint8_T kym2403csi ; uint8_T dth5njbdy2 ; boolean_T
jap351cpx1 ; boolean_T ckn4muy4ys ; boolean_T hkol5soztp ; boolean_T
lxn2321qt1 ; boolean_T maap1oa50o ; boolean_T oy5qewybxi ; boolean_T
botydpplw2 ; boolean_T gp5pqc1tfw ; boolean_T of2b4wxn5d ; boolean_T
hnvsl0l1bn ; boolean_T nnybis1v23 ; boolean_T hy3wpocjoz ; boolean_T
p4fjp5mdzh ; boolean_T jkxjr1sq5p ; boolean_T p5gesufkqo ; boolean_T
iw0ngkazoq ; boolean_T c0dig1xxmy ; boolean_T dtfebsdaux ; boolean_T
clj1uqqbhg ; boolean_T f0qhxkkptm ; boolean_T kxe5p1dtch ; boolean_T
fwyfyfafi5 ; boolean_T bu3egesnsd ; boolean_T p2fmoh1eok ; boolean_T
ejgnlent0u ; boolean_T msehqkshup ; boolean_T nikzvd40e0 ; pu2vwtjngx
mix4hjlcly ; iekhfuenzr ka1jh3z0pf ; pu2vwtjngx jydwi5bupo ; iekhfuenzr
jnonmpw3r1 ; fl0yhvaxty gniufkjjvw ; nxi4v0kzor p2ivnqp1am ; fl0yhvaxty
bnqfkp2to4b ; nxi4v0kzor mrd0p0xbfto ; pu2vwtjngx ffqmtelrsh ; iekhfuenzr
owaizpjyhh ; pu2vwtjngx kcj2zolraji ; iekhfuenzr nemd0xquqdy ; } DW ; typedef
struct { real_T elqbpfiove ; real_T auqnvufznb [ 36 ] ; real_T oqs5jusmxf ;
real_T eeqoe1qt1r ; real_T i2xawuwxyk ; real_T m5yolwlmtw ; real_T hb10qbn4br
; real_T fbqv55jvfv ; real_T jqxly5i0od ; real_T gapi4osmiz [ 3 ] ; real_T
a520ta0svt ; o1ybtyxfa3 gniufkjjvw ; mlpnvvuyvo p2ivnqp1am ; o1ybtyxfa3
bnqfkp2to4b ; mlpnvvuyvo mrd0p0xbfto ; } X ; typedef struct { real_T
elqbpfiove ; real_T auqnvufznb [ 36 ] ; real_T oqs5jusmxf ; real_T eeqoe1qt1r
; real_T i2xawuwxyk ; real_T m5yolwlmtw ; real_T hb10qbn4br ; real_T
fbqv55jvfv ; real_T jqxly5i0od ; real_T gapi4osmiz [ 3 ] ; real_T a520ta0svt
; brlvdbk1nh gniufkjjvw ; hu4c1xiall p2ivnqp1am ; brlvdbk1nh bnqfkp2to4b ;
hu4c1xiall mrd0p0xbfto ; } XDot ; typedef struct { boolean_T elqbpfiove ;
boolean_T auqnvufznb [ 36 ] ; boolean_T oqs5jusmxf ; boolean_T eeqoe1qt1r ;
boolean_T i2xawuwxyk ; boolean_T m5yolwlmtw ; boolean_T hb10qbn4br ;
boolean_T fbqv55jvfv ; boolean_T jqxly5i0od ; boolean_T gapi4osmiz [ 3 ] ;
boolean_T a520ta0svt ; njsdbic2n3 gniufkjjvw ; gc2tevljn2 p2ivnqp1am ;
njsdbic2n3 bnqfkp2to4b ; gc2tevljn2 mrd0p0xbfto ; } XDis ; typedef struct {
real_T elqbpfiove ; real_T auqnvufznb [ 36 ] ; real_T oqs5jusmxf ; real_T
eeqoe1qt1r ; real_T i2xawuwxyk ; real_T m5yolwlmtw ; real_T hb10qbn4br ;
real_T fbqv55jvfv ; real_T jqxly5i0od ; real_T gapi4osmiz [ 3 ] ; real_T
a520ta0svt ; is5452ib2g gniufkjjvw ; cijkpecjxc p2ivnqp1am ; is5452ib2g
bnqfkp2to4b ; cijkpecjxc mrd0p0xbfto ; } CStateAbsTol ; typedef struct {
real_T elqbpfiove ; real_T auqnvufznb [ 36 ] ; real_T oqs5jusmxf ; real_T
eeqoe1qt1r ; real_T i2xawuwxyk ; real_T m5yolwlmtw ; real_T hb10qbn4br ;
real_T fbqv55jvfv ; real_T jqxly5i0od ; real_T gapi4osmiz [ 3 ] ; real_T
a520ta0svt ; ovv2y534kt gniufkjjvw ; e5s5yk03ni p2ivnqp1am ; ovv2y534kt
bnqfkp2to4b ; e5s5yk03ni mrd0p0xbfto ; } CXPtMin ; typedef struct { real_T
elqbpfiove ; real_T auqnvufznb [ 36 ] ; real_T oqs5jusmxf ; real_T eeqoe1qt1r
; real_T i2xawuwxyk ; real_T m5yolwlmtw ; real_T hb10qbn4br ; real_T
fbqv55jvfv ; real_T jqxly5i0od ; real_T gapi4osmiz [ 3 ] ; real_T a520ta0svt
; boyfellpo3 gniufkjjvw ; dsncbiunt4 p2ivnqp1am ; boyfellpo3 bnqfkp2to4b ;
dsncbiunt4 mrd0p0xbfto ; } CXPtMax ; typedef struct { real_T gndeqpl3fh ;
real_T phktcmbgzn ; real_T ja3ok2vlt2 ; real_T idduzq304l ; real_T mhdca2kkct
; real_T nxilsya43y ; real_T k430oyjrvf ; real_T khsagq2pvw ; real_T
mql5hfegla ; real_T eyv5v1hjyi ; real_T g1tus1o41e ; real_T nfuz0jsyyj ;
real_T jjlbyau13a ; real_T p3sogjiiwb ; real_T mxixcian2w ; real_T opqhxnlnsp
; real_T djdulfmtkv ; real_T cbz2mvk1t1 ; real_T p1b1e12ieh ; real_T
fuj55u0zo0 ; real_T alvfbtqdds ; real_T gqzrdpjejk ; real_T jgyqahzssa ;
real_T hvepczlczc ; real_T alsao4lwxk ; real_T kn2sjngtsj ; real_T kpevaysu4v
; real_T cie4vbyxvz ; real_T bkyefwvjj5 ; real_T eldawefxdn ; real_T
kb3fju2shq ; real_T jml4wq0l1m ; real_T bnpbxhobwd ; real_T a5dd53bxry ;
real_T iufi0eojz2 ; real_T l540roovpy ; real_T catmd0gghi ; real_T c13bkshwvc
; real_T ime1mknx0j ; real_T plqvywdvyq ; real_T fbrukqa3yd ; real_T
f5lnjkbhdn ; real_T hbgq5qqclk ; real_T lpknxy24th ; real_T i3vcukwhuz ;
real_T jv5jpssutu ; real_T hkomsdykjt ; real_T b1oa3eubfo ; real_T mbucfpsuo4
; real_T cj1ow3h0py ; real_T c0aqvk3q5o ; real_T apo5zpwbba ; real_T
b4cqrileuk ; real_T lp3gbrepoo ; real_T huf3uv4j0v ; real_T as5fbguykc ;
real_T dthybnxrt1 ; real_T buvkvzigtk ; real_T cd2rrdbkge ; real_T mktffmdqvg
; real_T cgwhzqt4ya ; real_T dnqu4bpgun ; real_T fzmn0bwjdx ; real_T
bzwshnm0kc ; real_T nntztw5nc1 ; real_T ha3dadelar ; real_T gxiztgi1jz ;
real_T jymjqlcxsm ; real_T o5jho24gc4 ; real_T b2yubrwq1z ; real_T he55zbhjej
; real_T mgk5qcpkd5 ; real_T l4t21nagte ; real_T hnp2xgjptt ; real_T
l3r5n30btn ; real_T hqqqpunvvr ; real_T d2advaq4lx ; real_T hdwkndco5u ;
real_T a12zpal2ne ; real_T gn4y4qmzyy ; real_T l5ajvniuj4 ; real_T kkjuvstghw
; bmb5fit0m1 gniufkjjvw ; bmb5fit0m1 bnqfkp2to4b ; } ZCV ; typedef struct {
ZCSigState ackrl115b3 ; ZCSigState h4angc5loh ; ZCSigState n1cbj0svzr ;
ZCSigState fsab2zybth ; ZCSigState lenstli4gw ; ZCSigState e0v0ovrue4 ;
ZCSigState bmjzj13chi ; ZCSigState l13xgvvkmv ; ZCSigState ezc1e5dhoa ;
ZCSigState ctxu0mnwhx ; ZCSigState a4ql04qx0c ; ZCSigState oqhvhwy3iy ;
ZCSigState e4vj1ghpqw ; ZCSigState nitmc1kbje ; ZCSigState don1rxs1ip ;
ZCSigState k1i5dsmkpx ; ZCSigState acqnf01b13 ; ZCSigState nqusvwd40f ;
ZCSigState cckfrv1fru ; ZCSigState jl5xcfbew2 ; ZCSigState e3cqvjq2op ;
ZCSigState dchwpokzhj ; ZCSigState bghgxp5rxy ; ZCSigState jyflll5kor ;
ZCSigState isiczyjcac ; ZCSigState aqpkea1gsv ; ZCSigState kc4mzapcxw ;
ZCSigState hbanbgzjlz ; ZCSigState g4ajhs1r51 ; ZCSigState e3xvw3odq0 ;
ZCSigState hyc2xvnlqa ; ZCSigState ao4yd3050u ; ZCSigState jbxwspvdch ;
ZCSigState a1qdvfpw44 ; ZCSigState lgqt4spdhz ; ZCSigState bcce0cxoue ;
ZCSigState nxw32jeldx ; ZCSigState hma41rdeqm ; ZCSigState psksx4k2x4 ;
ZCSigState ac3qxvfy4b ; ZCSigState ihfeynja3e ; ZCSigState eawlca20bc ;
ZCSigState pnm1bwjou2 ; ZCSigState pqymkgqral ; ZCSigState ccrhuluqqd ;
ZCSigState pcmbod2kmc ; ZCSigState ny3h0fmba1 ; ZCSigState bdwhf0agzz ;
ZCSigState e2z1ristsj ; ZCSigState fmvlcuqkka ; ZCSigState e1cizgokeb ;
ZCSigState blcfjvphij ; ZCSigState cy45wmrldl ; ZCSigState oj1xupstf5 ; }
PrevZCX ; typedef struct { int_T ir [ 37 ] ; int_T jc [ 55 ] ; real_T pr [ 37
] ; } MassMatrix ; typedef struct { rtwCAPI_ModelMappingInfo mmi ; }
DataMapInfo ; struct nu44fdvb4j_ { real_T Gain_Gain ; real_T
Gain_Gain_lcakt0uqm5 ; real_T RMS_Y0 ; real_T integrator_IC ; real_T
TransportDelay_Delay ; real_T TransportDelay_InitOutput ; real_T K1_Value ;
real_T Memory_InitialCondition ; real_T integrator_IC_kjog5ftnvn ; real_T
TransportDelay_Delay_pzcjdymxhr ; real_T TransportDelay_InitOutput_hry3bkiyft
; real_T K1_Value_jrn3b22hcd ; real_T Memory_InitialCondition_ee2jw0csk4 ;
real_T sinwt_Amp ; real_T sinwt_Bias ; real_T sinwt_Freq ; real_T sinwt_Phase
; real_T coswt_Amp ; real_T coswt_Bias ; real_T coswt_Freq ; real_T
coswt_Phase ; real_T Gain_Gain_gqtqomfgpx ; } ; struct ep3ovv0mfn_ { real_T
Gain_Gain ; real_T RMS_Y0 ; real_T integrator_IC ; real_T
TransportDelay_Delay ; real_T TransportDelay_InitOutput ; real_T K1_Value ;
real_T Memory_InitialCondition ; real_T
Saturationtoavoidnegativesqrt_UpperSat ; real_T
Saturationtoavoidnegativesqrt_LowerSat ; } ; struct P_ { real_T FocDiscrTime
; real_T Ld ; real_T Lq ; real_T PolePairs ; real_T Psi ; real_T Rs ; real_T
compensate_pwm ; real_T piBandwidth ; real_T Carriercounter_CarrCount ;
real_T Carriercounter_CarrCount_l1cfgyteuy ; real_T
Carriercounter_CarrCount_pcpzckqge2 ; real_T PIDController_I ; real_T
PIDController2_I ; real_T PIDController3_InitialConditionForIntegrator ;
real_T PIDController4_InitialConditionForIntegrator ; real_T
PIDController_InitialConditionForIntegrator ; real_T
PIDController2_InitialConditionForIntegrator ; real_T Ramp2_InitialOutput ;
real_T Ramp_InitialOutput ; real_T Ramp1_InitialOutput ; real_T
PIDController_LowerSaturationLimit ; real_T PIDController_P ; real_T
PIDController2_P ; real_T Carriercounter_Range ; real_T
Carriercounter_Range_fbb5yen5s5 ; real_T Carriercounter_Range_iry5nbrdqx ;
real_T RMS_TrueRMS ; real_T RMS1_TrueRMS ; real_T
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
; real_T Ramp2_slope ; real_T Ramp_slope ; real_T Ramp1_slope ; real_T
Ramp2_start ; real_T Ramp_start ; real_T Ramp1_start ; real_T
IntegratorwithWrappedStateDiscreteorContinuous_x0 ; real_T
IntegratorwithWrappedStateDiscreteorContinuous_x0_jmi4gwmvri ; real_T
IntegratorwithWrappedStateDiscreteorContinuous_x0_cmhchouter ; real_T
Gain_Gain ; real_T Gain_Gain_djxhftize0 ; real_T Gain_Gain_ifj1132abx ;
real_T Gain_Gain_punknji3it ; real_T Gain_Gain_hi1h0shmrd ; real_T
Gain_Gain_lnud520pox ; real_T one_by_3_Gain ; real_T one_by_sqrt3_Gain ;
real_T Kalphabeta0_Gain [ 3 ] ; real_T sine_table_values_Value [ 1002 ] ;
real_T convert_pu_Gain ; real_T indexing_Gain ; real_T Gain_Gain_efigkyvqib ;
real_T Integrator_gainval ; real_T Gain5_Gain ; real_T Gain5_Gain_g5bjdsfyip
; real_T Gain_Gain_kpqlcty2dv ; real_T Saturation_UpperSat ; real_T
Saturation_LowerSat ; real_T Integrator_gainval_aawdszzfsk ; real_T
sine_table_values_Value_kvrvrtlo05 [ 1002 ] ; real_T
convert_pu_Gain_hohxgx3xh0 ; real_T indexing_Gain_fh111rwjev ; real_T
Constant_Value ; real_T Clamping_zero_Value ; real_T Constant1_Value ; real_T
Clamping_zero_Value_k5huge04pc ; real_T Constant1_Value_g2slp2tih2 ; real_T
Constant_Value_nybomaw50f ; real_T Constant1_Value_plzth135fi ; real_T
Constant_Value_d51pvnudts ; real_T Constant_Value_aedbii5zo1 ; real_T
Constant_Value_otslvflthu ; real_T Constant_Value_aidlcpdktu ; real_T
Constant_Value_naavg1wwyy ; real_T Constant1_Value_kzv5mijxnd ; real_T
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
Saturation5_UpperSat ; real_T Saturation5_LowerSat ; real_T
UnitDelay_InitialCondition ; real_T Integrator_gainval_dhnaqjdnlv ; real_T
Saturation1_UpperSat ; real_T Saturation1_LowerSat ; real_T Gain7_Gain ;
real_T Saturation_UpperSat_jtqyrsjebw ; real_T Saturation_LowerSat_niuqztsdpt
; real_T Step_Y0 ; real_T Saturation4_UpperSat ; real_T Saturation4_LowerSat
; real_T TransferFcn_A ; real_T TransferFcn_C ; real_T
Integrator_gainval_kcogqwyqqm ; real_T Gain_Gain_pm4qz0kgbm ; real_T
Integrator_IC ; real_T Integrator_UpperSat ; real_T Integrator_LowerSat ;
real_T one_by_3_Gain_lq50khpwgl ; real_T one_by_sqrt3_Gain_bbbfyvtmfv ;
real_T Kalphabeta0_Gain_pvcgmqyz1g [ 3 ] ; real_T
sine_table_values_Value_ph5vfaxqmh [ 1002 ] ; real_T
convert_pu_Gain_flpdghdw0l ; real_T indexing_Gain_d4wzw4thi3 ; real_T
one_by_3_Gain_dy5n1llkjm ; real_T one_by_sqrt3_Gain_ot11yk20jv ; real_T
Kalphabeta0_Gain_b1jcwqkjuu [ 3 ] ; real_T sine_table_values_Value_pz4e1lr51y
[ 1002 ] ; real_T convert_pu_Gain_ocuvhlhykv ; real_T
indexing_Gain_jnauyr3dqe ; real_T Gain_Gain_jxuwxy0g01 ; real_T Step_Time ;
real_T Step_Y0_iilvtmdfoa ; real_T Step_YFinal ; real_T integrator_IC ;
real_T TransportDelay_Delay ; real_T TransportDelay_InitOutput ; real_T
K1_Value ; real_T Memory_InitialCondition ; real_T Switch_Threshold ; real_T
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
Memory_InitialCondition_l1hfk5anpl ; real_T Bias_Bias_eywhmtq0nz ; real_T
Gain2_Gain ; real_T Constant3_Value ; real_T Constant3_Value_j4b4zpsigk ;
real_T Constant3_Value_ltnm24yy5d ; real_T Step1_Time ; real_T Step1_Y0 ;
real_T Step1_YFinal ; real_T Saturation3_UpperSat ; real_T
Saturation3_LowerSat ; real_T UnitDelay1_InitialCondition ; real_T
integrator_IC_cewwxj2gip ; real_T TransportDelay_Delay_nsr41clxsc ; real_T
TransportDelay_InitOutput_n24jgiss12 ; real_T K1_Value_h5aqg4redb ; real_T
Memory_InitialCondition_ecfbyrmftp ; real_T Step_Y0_fnc41asoey ; real_T
Saturation2_UpperSat ; real_T Saturation2_LowerSat ; real_T
Step_Y0_gd5oj533he ; real_T Saturation6_UpperSat ; real_T
Saturation6_LowerSat ; real_T Constant_Value_kxfziju4tw ; real_T
Constant1_Value_ah5g1obm1c ; real_T Constant10_Value ; real_T
Constant11_Value ; real_T Constant5_Value ; real_T Constant7_Value ; real_T
Constant_Value_fke3pdcioo ; real_T Constant2_Value_j5gua0l1cu ; real_T
Clamping_zero_Value_bhl50gjfmv ; real_T Clamping_zero_Value_editfihzwr ;
real_T Constant1_Value_lshxyldrcl ; real_T
RTP_0BF8E32F_angular_position_Value ; real_T
RTP_0BF8E32F_angular_velocity_Value ; real_T RTP_0BF8E32F_i_d_Value ; real_T
RTP_0BF8E32F_i_q_Value ; real_T RTP_0BF8E32F_torque_Value ; real_T
RTP_12AF5A6E_vc_Value ; int16_T offset_Value [ 4 ] ; int16_T
offset_Value_lmhvh4midj [ 4 ] ; int16_T offset_Value_mwsc4qa1fy [ 4 ] ;
int16_T offset_Value_mdzj24mdnx [ 4 ] ; uint16_T Offset_Value ; uint16_T
Switch_Threshold_jxr2cmuqwa ; uint16_T Offset_Value_ekf4xacrxj ; uint16_T
Switch_Threshold_nxmpevclsq ; uint16_T Offset_Value_fdpl4fkqt4 ; uint16_T
Switch_Threshold_hxqfqghb4d ; uint16_T Offset_Value_m3zt2yvby3 ; uint16_T
Switch_Threshold_ln2jpvokjq ; int8_T Constant_Value_m5jwagwauz ; int8_T
Constant2_Value_g15j3l5i1j ; int8_T Constant3_Value_hshw5uztzr ; int8_T
Constant4_Value ; int8_T Constant_Value_aijixv30rt ; int8_T
Constant2_Value_kruxguatfq ; int8_T Constant3_Value_cagblpulww ; int8_T
Constant4_Value_gaiqol5vq3 ; int8_T Constant_Value_dkhphikhxn ; int8_T
Constant2_Value_chfiiyl2xo ; int8_T Constant3_Value_ckuyfoczpd ; int8_T
Constant4_Value_d5cs5fwkek ; int8_T Constant_Value_ljwvnj1h33 ; int8_T
Constant2_Value_pr0foizd4c ; int8_T Constant3_Value_j5j0j3jbky ; int8_T
Constant4_Value_jrpwj3ts4p ; ep3ovv0mfn gniufkjjvw ; nu44fdvb4j p2ivnqp1am ;
ep3ovv0mfn bnqfkp2to4b ; nu44fdvb4j mrd0p0xbfto ; } ; extern const char_T *
RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern X rtX ; extern DW rtDW ;
extern PrevZCX rtPrevZCX ; extern MassMatrix rtMassMatrix ; extern P rtP ;
extern mxArray * mr_svpwm_inv_ideal_switch_Motor_DVS_GetDWork ( ) ; extern
void mr_svpwm_inv_ideal_switch_Motor_DVS_SetDWork ( const mxArray * ssDW ) ;
extern mxArray *
mr_svpwm_inv_ideal_switch_Motor_DVS_GetSimStateDisallowedBlocks ( ) ; extern
const rtwCAPI_ModelMappingStaticInfo *
svpwm_inv_ideal_switch_Motor_DVS_GetCAPIStaticMap ( void ) ; extern SimStruct
* const rtS ; extern DataMapInfo * rt_dataMapInfoPtr ; extern
rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs ( int_T tid )
; void MdlOutputsParameterSampleTime ( int_T tid ) ; void MdlUpdate ( int_T
tid ) ; void MdlTerminate ( void ) ; void MdlInitializeSizes ( void ) ; void
MdlInitializeSampleTimes ( void ) ; SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) ;
#endif
