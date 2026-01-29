#ifndef svpwm_inv_ideal_switch_Motor_DVS_new_param_h_
#define svpwm_inv_ideal_switch_Motor_DVS_new_param_h_
#ifndef svpwm_inv_ideal_switch_Motor_DVS_new_param_COMMON_INCLUDES_
#define svpwm_inv_ideal_switch_Motor_DVS_new_param_COMMON_INCLUDES_
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
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_1_gateway.h"
#include "nesl_rtw.h"
#endif
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_types.h"
#include <string.h>
#include <float.h>
#include "mwmathutil.h"
#include "rt_zcfcnRefine.h"
#include <stddef.h>
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#include "rtGetInf.h"
#include "zero_crossing_types.h"
#define MODEL_NAME svpwm_inv_ideal_switch_Motor_DVS_new_param
#define NSAMPLE_TIMES (7) 
#define NINPUTS (0)       
#define NOUTPUTS (0)     
#define NBLOCKIO (223) 
#define NUM_ZC_EVENTS (54) 
#ifndef NCSTATES
#define NCSTATES (58)   
#elif NCSTATES != 58
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
typedef struct { int8_T nhnnjimzig ; } c4zkgxgwib ; typedef struct { int8_T
ifwnh2zuio ; } lxoowvwfvw ; typedef struct { creal_T f1gw21c2wo ; real_T
dvkyghqb1k ; real_T aojepeosf5 ; real_T i2ynohgi2m ; real_T jjlm1m1qoi ;
real_T g3wugwu3x5 ; real_T lan5r423sd ; real_T he3vmexx3i ; real_T pcjf3k3koy
; real_T d4mnpl54hg ; real_T hnhua3rvsa ; real_T ot1dcofcbx ; real_T
iyw1cyz0sm ; real_T nferl15f13 ; real_T eel0lgvg3q ; real_T gbsywuneo2 ;
real_T g05pgql0ef ; real_T dqsm1ev051 ; } ckdk0ui41k ; typedef struct {
real_T hlgsjbi2ok ; real_T h35vgdfsdr ; real_T kkla3zra01 ; real_T d04tpcndxi
; void * pdyvaldgck [ 2 ] ; void * nfniev4dv0 [ 2 ] ; int_T hu4jrkmr4i [ 5 ]
; int_T pjjpsaeqwa [ 5 ] ; int8_T lfxcuh40zn ; boolean_T fn41aknbta ; }
fh2obcwgzj ; typedef struct { real_T ktfhztdakl ; real_T iihnof0no0 ; }
buitogemqh ; typedef struct { real_T ktfhztdakl ; real_T iihnof0no0 ; }
o3yxwsyuwv ; typedef struct { boolean_T ktfhztdakl ; boolean_T iihnof0no0 ; }
dz4dpqdvrc ; typedef struct { real_T ktfhztdakl ; real_T iihnof0no0 ; }
nltolpxwng ; typedef struct { real_T ktfhztdakl ; real_T iihnof0no0 ; }
ofaom2mtje ; typedef struct { real_T ktfhztdakl ; real_T iihnof0no0 ; }
j4pio42h0w ; typedef struct { real_T m51ft2hiql ; real_T arwglbhwpo ; real_T
bu2abxnzbv ; real_T h0tj1cpxzd ; real_T afaydkbj32 ; real_T oxbjjome0i ;
real_T lng0rfri31 ; real_T ou0jlgy0mr ; real_T dqj2wqjqfx ; real_T ekipj4payc
; } milt31ioj2 ; typedef struct { real_T cqdgkrei3r ; real_T o0wxt1e0kp ;
void * mjwwn4qght [ 2 ] ; int_T anx51fidkl [ 5 ] ; int_T njbaiu3p0p ; int8_T
gie0lqzeuv ; int8_T onci4u3t5h ; boolean_T izuizsweeu ; } kewgbes053 ;
typedef struct { real_T jcs2b3d5zc ; } nb4auzncwf ; typedef struct { real_T
jcs2b3d5zc ; } eonop1azih ; typedef struct { boolean_T jcs2b3d5zc ; }
jqrelymrvm ; typedef struct { real_T jcs2b3d5zc ; } hpaduuykxf ; typedef
struct { real_T jcs2b3d5zc ; } hl2k3kdtfy ; typedef struct { real_T
jcs2b3d5zc ; } e4af4rz1cf ; typedef struct { real_T mo4vfohlqe ; real_T
c35fke1bux ; } hfij4b10rn ; typedef struct { real_T lq5ea53xxd ; real_T
kmpohrsouu [ 4 ] ; real_T o5la3xfhjn [ 4 ] ; real_T cs4yj0vkgp [ 3 ] ; real_T
e2lry31wlf [ 2 ] ; real_T cermcbwoxe ; real_T jq24qc4eg2 ; real_T peln4lvxr3
; real_T dm5nqlqqge [ 4 ] ; real_T ipqsxfgzo0 [ 2 ] ; real_T coffjttnsa ;
real_T kytgn4xdku ; real_T iu2wyyfrrw ; real_T hyzzueql2v [ 4 ] ; real_T
jzpjnydpfx [ 2 ] ; real_T bc0njkkghu ; real_T oveuam2gjo ; real_T amqu2pnmx0
; real_T akpie0iu4n [ 4 ] ; real_T am4fmemr3p ; real_T ho2kcwfukw [ 104 ] ;
real_T clkkceozh2 [ 13 ] ; real_T mgxkac2st3 ; real_T ksdi5fcw2n ; real_T
itv3mcjljb ; real_T k45qcnjqvx ; real_T m0vky4qvvt ; real_T eus4b3qjnl ;
real_T jhl1xg0pwm ; real_T dsgdqt2k5k ; real_T kmd2jbyk4j ; real_T oq3d44muo1
; real_T ng4hyuwiqc ; real_T cvqgy1izcp ; real_T dbara4sgn0 ; real_T
l3gdtaskbv ; real_T jfs4cbl4wy ; real_T mfrtox3kkw ; real_T i0c300rdvn ;
real_T mgykwyql4r ; real_T ip4gnxdg0y ; real_T eiuim2edbm ; real_T buarotbg2h
; real_T fh4jfdoyno ; real_T cfkrzhwapr ; real_T bbaav4i0i0 ; real_T
l2xbfe0czc ; real_T fbtz5m4bl3 ; real_T iseho3q0z4 ; real_T f21mottlr1 ;
real_T jkbou15ats ; real_T izeia10oyl ; real_T l45yjpegwk ; real_T dt40ryw0ry
; real_T m3vvroiwvd ; real_T aumw5nbixq ; real_T lt2cauuryk ; real_T
elxarkdthp ; real_T m3xaj3guf5 ; real_T h32tpjzxff ; real_T ekyqhistvs ;
real_T gjlqc5qhwt ; real_T blcych1n0n ; real_T ptlphjmuo4 ; real_T jcr0jmmzt1
[ 3 ] ; real_T awrt4lftax ; real_T mf25tz205x ; real_T jfij2fzkrk ; real_T
mb2yx01dx2 [ 3 ] ; real_T jdyvv0bamw ; real_T f3w313oeyy ; real_T jrsry3kk24
; real_T ahqdqhrbpa ; real_T gkjtsnptpq ; real_T kryusifzhr ; real_T
jw2wblmzyn ; real_T bijpi54m3f ; real_T hiati1jmtl ; real_T diryynaesk ;
real_T jtgjtbklpn ; real_T bj50ppf4de ; real_T niql3yp4k3 ; real_T he2ifln0eb
[ 3 ] ; real_T df1mys3hmw ; real_T dwdaphcbuu [ 3 ] ; real_T jmc5ga02rr [ 3 ]
; real_T bf1sw5b3ed ; real_T brldx1geei [ 3 ] ; real_T p3l4uri5qr ; real_T
ee43tbkncr ; real_T jdo3i5unfe ; real_T mirebamtlg ; real_T d53khmsdob ;
real_T iop5u0r041 ; real_T fgbx0na4tm ; real_T g3lclgghi2 ; real_T f1xjqnfitc
; real_T obzkzp0w1x ; real_T h112sa0yrr ; real_T cv0cxwtq3t ; real_T
bc3qcybaqn ; real_T jlil3asqcu ; real_T p4kvtbv1o1 ; real_T ehoklyeeqo ;
real_T imucpwzkjs ; real_T iqeewowch1 ; real_T fl43w51udj ; real_T pin4vxfk5k
; real_T k15hhjwlas [ 3 ] ; real_T at0xgpnmmz ; real_T mfy1mutlb3 ; real_T
ml1qcrflo1 ; real_T dkmmfrq0ap ; real_T hde5zdvgpr ; real_T krarad0nkl ;
real_T aesrpeophn ; real_T cjmdmsv1sk ; real_T encgdzk4mt ; real_T ldysqeoch1
; real_T m3ehmuvrq5 ; real_T i534i2lnnn ; real_T jmwjcsvmm3 ; real_T
kxu2i40bau ; real_T llvjkgvm5y ; real_T e00d3kbiw1 ; real_T hbzpcgt0x5 ;
real_T fi42uuhojt ; real_T hnhlr2se25 ; real_T eorqrndrjh ; real_T ht3qhz5gsv
; real_T ohtjecku3e ; real_T ganxpnwg3b ; real_T ej1vz2borp ; real_T
i5kbqu3hm2 ; real_T kgamnsklxu ; real_T f0ynaskrbx ; real_T ikelajde01 ;
real_T ctkaw3ecbv ; real_T jbx451w0iy ; real_T gqb5astach ; real_T f3dyesridv
; real_T euvmyq2f3h ; real_T flffivwt3s ; real_T nmyg35nmyy ; real_T
ekyx0elpf3 ; real_T eoql05ofgw [ 2 ] ; real_T gwc4b4l0z5 ; real_T npye5l2xtp
; real_T nxonson0ib ; uint16_T ll2ajaw4rk ; uint16_T jtheasxax3 ; boolean_T
p03bojrqbg ; boolean_T g4dn1tm3yr ; boolean_T cowlabq4wc ; boolean_T
lkj40havn1 ; boolean_T j41gtpgwtn ; boolean_T mutkvm4ooz ; boolean_T
pp5exscs3g ; boolean_T krymqtt4cb ; boolean_T iqsaibftw3 ; milt31ioj2
hhhygqmhdt ; ckdk0ui41k lf14jcxnlk ; milt31ioj2 ozrniap2npg ; ckdk0ui41k
hovqtw2gqef ; } B ; typedef struct { real_T bdgl5gkxau ; real_T ffvck4soyr ;
real_T f4t2gzxdzo ; real_T jyndun01me ; real_T ckjtakgpk3 [ 3 ] ; real_T
crq03jnnuq ; real_T bvuxwp0slw ; real_T bfu5goggea [ 2 ] ; real_T kushr1y0po
; real_T haydi2j0hm ; real_T igfwehz0ql [ 2 ] ; real_T i41155v2sx ; real_T
cbeo0rohkk ; real_T o11ornrryg [ 2 ] ; real_T a3qu0xbs0k [ 145 ] ; real_T
eauxdkrxli ; real_T hg14s5y1lm ; real_T dcod4141fy ; real_T o4cigzhwsu ;
real_T iurwpxoavg ; real_T h1yukdlzt4 ; real_T pkfitaixfx ; real_T foffqbdmo4
[ 54 ] ; real_T lr1zk1ixil ; real_T nu1c1a1e0o ; real_T hyz3yhk14q ; real_T
ggruzf0ifj ; real_T kvz0acwp3d ; real_T bdrkttwawo ; real_T h2kzi5k4bh ;
real_T iw01hy2b4h [ 3 ] ; real_T ipsqgq53te ; real_T fmnehtiu5h ; real_T
lsk3kyntug ; real_T gcoc4nslup ; real_T pmrbgnuhv5 ; real_T a2g3rmjjlk ;
real_T kf4teb2ow0 ; real_T fux34qatdy ; real_T dp4rg20nqd ; real_T ivzafmgt5b
; real_T oit4xhlvfj ; real_T ajjwlhmp0g ; real_T nqfghzlbpv ; real_T
b5umjdikem ; struct { void * LoggedData ; } atxckwogba ; void * jpvw4zoijh ;
void * no0qoxk4yp ; void * eleirexodm ; void * jxojagl5d4 ; void * gj15opmqbf
; void * n00dsmxm3r ; void * cobef3eass ; void * datbg1lb11 ; void *
pacuhjoen5 ; void * d4lxw4s3b1 ; void * bigzwrmfa5 ; struct { void *
LoggedData [ 5 ] ; } khrd0m3wsd ; struct { void * LoggedData [ 2 ] ; }
j5lswbq3tn ; void * j0hhinzhdx [ 2 ] ; struct { void * LoggedData [ 2 ] ; }
lyydyjkfjc ; struct { void * LoggedData [ 2 ] ; } nfvlonp2vp ; struct { void
* LoggedData ; } ct2cucnlki ; struct { void * LoggedData ; } dnqoq04i4r ;
void * emysjaigvw [ 2 ] ; struct { void * LoggedData [ 3 ] ; } ebuypziku5 ;
struct { void * LoggedData [ 4 ] ; } ovxg3qnsqe ; struct { void * LoggedData
[ 3 ] ; } omuglr3brh ; struct { void * LoggedData [ 4 ] ; } ornfgcsad5 ; void
* nzhzk20pan [ 2 ] ; void * phm2pplslk [ 2 ] ; void * o5sivl2rhf [ 2 ] ; void
* dqqjodxjku [ 6 ] ; struct { void * LoggedData [ 6 ] ; } pydxe5taxg ; struct
{ void * LoggedData [ 4 ] ; } egiqojbrda ; struct { void * LoggedData [ 4 ] ;
} mzs2cql5uy ; struct { void * LoggedData [ 4 ] ; } evd1nze543 ; struct {
void * LoggedData [ 4 ] ; } ov0tcvqzpt ; struct { void * LoggedData [ 6 ] ; }
hphp12keze ; struct { void * LoggedData [ 3 ] ; } cegsykimbe ; struct { void
* LoggedData [ 5 ] ; } oxqcvataan ; int32_T hti5ubch1w ; int32_T mjpfgsoscg ;
int_T c2lxz4uw52 [ 54 ] ; int_T ixmfpm5fo0 ; int_T n4h4424ht5 [ 5 ] ; int_T
jjxomzenu2 [ 5 ] ; int_T fivpcenwwv [ 5 ] ; int_T hrc2vh4z2e [ 5 ] ; int_T
hu5dselzp5 [ 5 ] ; int_T jq1vxvhkwa [ 13 ] ; int_T cyaz0jiisc ; int_T
ctgux2cfsx ; int_T ergzv2l5tt ; int_T ozxxrhth3m ; int_T le4rkd1bem ; int_T
hwekpc4pjr ; int_T fcugtrl4mm ; int_T lepwqc04z3 ; int_T kr2delj3jl ; int_T
p3vrpe25uz ; int_T kab5qkrp4g ; int_T jt5tvilo2a ; int_T eqylns1jpo ; int_T
p2w3n2n54r ; int_T jmzfvdn2xf ; int_T eh0zg50ghs ; int32_T clb2qi1eua ;
int8_T icjxlxvnon ; int8_T lq1qe4woum ; int8_T ddo3sysh20 ; int8_T pi1z2ykl1z
; int8_T kh0ztz5tag ; int8_T ofgawnpqzg ; uint8_T mjomtqprne [ 54 ] ; uint8_T
jchusw3p0v [ 54 ] ; uint8_T ahgzfmtccs ; uint8_T emol2d2wzt ; boolean_T
hzl2nxpfhg ; boolean_T eydsnc531x ; boolean_T iam25nbk0t ; boolean_T
g5g1gmthpi ; boolean_T fzfyh4tpl4 ; boolean_T ouwekuhe3n ; boolean_T
d133yd2jgw ; boolean_T gz0aernse5 ; boolean_T gzr5sloj34 ; boolean_T
dter15fojq ; boolean_T pg0htsmjmf ; boolean_T a4wjn3drzs ; boolean_T
oulypmcilp ; boolean_T j012lzzqav ; boolean_T d0jynnwocx ; boolean_T
aaq43ayaok ; boolean_T fdhse2olvv ; boolean_T o0i1winn3t ; boolean_T
dxvltny3vc ; boolean_T iho0wfh0su ; boolean_T bakspkn4jr ; boolean_T
ce1zujzmfy ; boolean_T gp43zbwbi5 ; boolean_T bjh0icdfls ; boolean_T
nvnpnay0br ; boolean_T e1gm5ua4ga ; boolean_T cyomdetsg0 ; lxoowvwfvw
klrqnhrpje ; c4zkgxgwib kkcjpfpj4k ; lxoowvwfvw leieu0xvzr ; c4zkgxgwib
ovprx5wuu0 ; kewgbes053 hhhygqmhdt ; fh2obcwgzj lf14jcxnlk ; kewgbes053
ozrniap2npg ; fh2obcwgzj hovqtw2gqef ; lxoowvwfvw ewwnuehzjs ; c4zkgxgwib
afz4d0hhcj ; lxoowvwfvw e3ag2h2bsyu ; c4zkgxgwib nkpbe1gtc14 ; } DW ; typedef
struct { real_T pwi1p11tls ; real_T aytxzyjlsk ; real_T okdo3jm5yw [ 37 ] ;
real_T j4phi0oebs ; real_T kqccnqu52s ; real_T lpe40gudqw ; real_T li2ahzkyfs
; real_T kdokz1qboy ; real_T br22nbkmyi ; real_T htfy4vsdfh ; real_T
na3ljocltm ; real_T hij0255jcs ; real_T i2rdzbohrq [ 3 ] ; real_T icwadvgioi
; nb4auzncwf hhhygqmhdt ; buitogemqh lf14jcxnlk ; nb4auzncwf ozrniap2npg ;
buitogemqh hovqtw2gqef ; } X ; typedef struct { real_T pwi1p11tls ; real_T
aytxzyjlsk ; real_T okdo3jm5yw [ 37 ] ; real_T j4phi0oebs ; real_T kqccnqu52s
; real_T lpe40gudqw ; real_T li2ahzkyfs ; real_T kdokz1qboy ; real_T
br22nbkmyi ; real_T htfy4vsdfh ; real_T na3ljocltm ; real_T hij0255jcs ;
real_T i2rdzbohrq [ 3 ] ; real_T icwadvgioi ; eonop1azih hhhygqmhdt ;
o3yxwsyuwv lf14jcxnlk ; eonop1azih ozrniap2npg ; o3yxwsyuwv hovqtw2gqef ; }
XDot ; typedef struct { boolean_T pwi1p11tls ; boolean_T aytxzyjlsk ;
boolean_T okdo3jm5yw [ 37 ] ; boolean_T j4phi0oebs ; boolean_T kqccnqu52s ;
boolean_T lpe40gudqw ; boolean_T li2ahzkyfs ; boolean_T kdokz1qboy ;
boolean_T br22nbkmyi ; boolean_T htfy4vsdfh ; boolean_T na3ljocltm ;
boolean_T hij0255jcs ; boolean_T i2rdzbohrq [ 3 ] ; boolean_T icwadvgioi ;
jqrelymrvm hhhygqmhdt ; dz4dpqdvrc lf14jcxnlk ; jqrelymrvm ozrniap2npg ;
dz4dpqdvrc hovqtw2gqef ; } XDis ; typedef struct { real_T pwi1p11tls ; real_T
aytxzyjlsk ; real_T okdo3jm5yw [ 37 ] ; real_T j4phi0oebs ; real_T kqccnqu52s
; real_T lpe40gudqw ; real_T li2ahzkyfs ; real_T kdokz1qboy ; real_T
br22nbkmyi ; real_T htfy4vsdfh ; real_T na3ljocltm ; real_T hij0255jcs ;
real_T i2rdzbohrq [ 3 ] ; real_T icwadvgioi ; hpaduuykxf hhhygqmhdt ;
nltolpxwng lf14jcxnlk ; hpaduuykxf ozrniap2npg ; nltolpxwng hovqtw2gqef ; }
CStateAbsTol ; typedef struct { real_T pwi1p11tls ; real_T aytxzyjlsk ;
real_T okdo3jm5yw [ 37 ] ; real_T j4phi0oebs ; real_T kqccnqu52s ; real_T
lpe40gudqw ; real_T li2ahzkyfs ; real_T kdokz1qboy ; real_T br22nbkmyi ;
real_T htfy4vsdfh ; real_T na3ljocltm ; real_T hij0255jcs ; real_T i2rdzbohrq
[ 3 ] ; real_T icwadvgioi ; hl2k3kdtfy hhhygqmhdt ; ofaom2mtje lf14jcxnlk ;
hl2k3kdtfy ozrniap2npg ; ofaom2mtje hovqtw2gqef ; } CXPtMin ; typedef struct
{ real_T pwi1p11tls ; real_T aytxzyjlsk ; real_T okdo3jm5yw [ 37 ] ; real_T
j4phi0oebs ; real_T kqccnqu52s ; real_T lpe40gudqw ; real_T li2ahzkyfs ;
real_T kdokz1qboy ; real_T br22nbkmyi ; real_T htfy4vsdfh ; real_T na3ljocltm
; real_T hij0255jcs ; real_T i2rdzbohrq [ 3 ] ; real_T icwadvgioi ;
e4af4rz1cf hhhygqmhdt ; j4pio42h0w lf14jcxnlk ; e4af4rz1cf ozrniap2npg ;
j4pio42h0w hovqtw2gqef ; } CXPtMax ; typedef struct { real_T c2d10jarhy ;
real_T cy4lnz3ytg ; real_T khqogp4424 ; real_T pmjsnagnfh ; real_T oql0152ifl
; real_T ahiyktbzhh ; real_T azxk1nudly ; real_T mdm0ddorjg ; real_T
hjs22b1hoh ; real_T fzg12j0t5a ; real_T mlbuqaahwn ; real_T pnivohz52l ;
real_T bzln34u5dg ; real_T f0g5jlgaty ; real_T dzzhtbudrc ; real_T ibnxw4jvhd
; real_T elkbw21vfy ; real_T c14trmeyxr ; real_T a35fymdoke ; real_T
pr0ggkdqt1 ; real_T luzprcyhyh ; real_T i2nx3taj2a ; real_T odjsabfe35 ;
real_T jxd1mslv0f ; real_T kcwbdlkdrl ; real_T j5azskhf1m ; real_T muoirxqkd1
; real_T in1mxv1zw0 ; real_T ccrkaru1um ; real_T m1lvntaw53 ; real_T
hcu3raxcfo ; real_T gawokdpleb ; real_T oxgckfmvxm ; real_T oevbznat0h ;
real_T nt1buq0wsx ; real_T iktegmwjir ; real_T dytxyyxbzh ; real_T iqnfl5mbw1
; real_T nvfdt3lc2x ; real_T dofaznwj2w ; real_T bbyt2zd4r1 ; real_T
ol3aqxu1gi ; real_T psvi1w2fpf ; real_T o4jj4wjile ; real_T dsi4chcwca ;
real_T cpgnlrsbh0 ; real_T eizgzj5qmi ; real_T fydeynph03 ; real_T by3jqmaibe
; real_T ckvweamsop ; real_T ji0rmh41ie ; real_T lr4apr3z2k ; real_T
bifunmeqna ; real_T clrzlrl3hc ; real_T d0lcatefu0 ; real_T n2s44amyc4 ;
real_T hp1siwz0kw ; real_T mcaoxv4jra ; real_T imxxbhpkcw ; real_T hjnhf1rnvq
; real_T oiqlztjljt ; real_T mgnfjn5ezh ; real_T lxnfrdgsrl ; real_T
az5yy5nz2f ; real_T adw4usmf3u ; real_T i5lzfa1esj ; real_T az5rdgjjjd ;
real_T gpyitptcbi ; real_T dwvy4rigqs ; real_T dofpgylkb1 ; real_T dnoegluyks
; real_T hr4xqqkdiy ; real_T auha4w0fyr ; real_T g1cwavvrsh ; real_T
cvgeqddadf ; real_T i4qzikt5co ; real_T nokcdbfpwd ; real_T gbmcnmzifw ;
real_T m0lvd4zb4k ; real_T csyl2df5cq ; real_T jnltecflgi ; real_T akuczwz1eo
; real_T nnnilfgeee ; real_T awzelacpq0 ; real_T dktjqxeqm4 ; hfij4b10rn
hhhygqmhdt ; hfij4b10rn ozrniap2npg ; } ZCV ; typedef struct { ZCSigState
drkfipzke0 ; ZCSigState il3a3k3dck ; ZCSigState h1l2glfgr0 ; ZCSigState
hrvenrls3r ; ZCSigState ktvjdshdt0 ; ZCSigState b5porig4ty ; ZCSigState
jnh3ojmj0c ; ZCSigState dl2hmb2qrr ; ZCSigState bfh0c3b31k ; ZCSigState
pe0aqdyjfi ; ZCSigState bfrvq0cuhj ; ZCSigState pdy1m42psq ; ZCSigState
lz35ottfyn ; ZCSigState awu3mdttky ; ZCSigState pznbwk5zok ; ZCSigState
ou0judfm0t ; ZCSigState k2cfzfdilh ; ZCSigState i2zgwztwmv ; ZCSigState
nvgul13d1k ; ZCSigState bkjfrbmjtv ; ZCSigState b5zjcpn1jh ; ZCSigState
hwvab2tp5x ; ZCSigState fuptwhuf3j ; ZCSigState l5mxmomwfy ; ZCSigState
psbzzalv5r ; ZCSigState cqeo0xepwd ; ZCSigState o45r4bhz2x ; ZCSigState
l2tzpsgmgd ; ZCSigState jp4nkdjlpr ; ZCSigState ehob2cjkpn ; ZCSigState
j3o2ixbbts ; ZCSigState hff5whsip3 ; ZCSigState kbdk0yfkwx ; ZCSigState
kpd0tyugct ; ZCSigState bkroyst45s ; ZCSigState hbav3m0acs ; ZCSigState
a1bwjieddd ; ZCSigState ovps0vb5oz ; ZCSigState pntsvziqhh ; ZCSigState
an1rycyjj0 ; ZCSigState gkwayl2wem ; ZCSigState dgauxvlbl1 ; ZCSigState
okfxvy0qxt ; ZCSigState idjyudjesa ; ZCSigState iymuuqjf41 ; ZCSigState
kpy53arbtd ; ZCSigState pbpiwbqdq4 ; ZCSigState fpvjnvrj3d ; ZCSigState
h4wtma0x45 ; ZCSigState oryxv5rc0k ; ZCSigState izaku0fd4c ; ZCSigState
hh53xbzwuz ; ZCSigState f4x5njm3pc ; ZCSigState fakp511q00 ; } PrevZCX ;
typedef struct { int_T ir [ 41 ] ; int_T jc [ 59 ] ; real_T pr [ 41 ] ; }
MassMatrix ; typedef struct { rtwCAPI_ModelMappingInfo mmi ; } DataMapInfo ;
struct fta3d5yfx2_ { real_T Gain_Gain ; real_T Gain_Gain_lcakt0uqm5 ; real_T
RMS_Y0 ; real_T integrator_IC ; real_T TransportDelay_Delay ; real_T
TransportDelay_InitOutput ; real_T K1_Value ; real_T Memory_InitialCondition
; real_T integrator_IC_kjog5ftnvn ; real_T TransportDelay_Delay_pzcjdymxhr ;
real_T TransportDelay_InitOutput_hry3bkiyft ; real_T K1_Value_jrn3b22hcd ;
real_T Memory_InitialCondition_ee2jw0csk4 ; real_T sinwt_Amp ; real_T
sinwt_Bias ; real_T sinwt_Freq ; real_T sinwt_Phase ; real_T coswt_Amp ;
real_T coswt_Bias ; real_T coswt_Freq ; real_T coswt_Phase ; real_T
Gain_Gain_gqtqomfgpx ; } ; struct bu3ztsyp32_ { real_T Gain_Gain ; real_T
RMS_Y0 ; real_T integrator_IC ; real_T TransportDelay_Delay ; real_T
TransportDelay_InitOutput ; real_T K1_Value ; real_T Memory_InitialCondition
; real_T Saturationtoavoidnegativesqrt_UpperSat ; real_T
Saturationtoavoidnegativesqrt_LowerSat ; } ; struct P_ { real_T FocDiscrTime
; real_T Is_max ; real_T Ld ; real_T Lq ; real_T PolePairs ; real_T Psi ;
real_T Rs ; real_T compensate_pwm ; real_T piBandwidth ; real_T
Carriercounter_CarrCount ; real_T Carriercounter_CarrCount_l1cfgyteuy ;
real_T Carriercounter_CarrCount_pcpzckqge2 ; real_T PIDController_I ; real_T
PIDController2_I ; real_T PIDController2_I_owcfixlqvt ; real_T
PIDController3_InitialConditionForIntegrator ; real_T
PIDController4_InitialConditionForIntegrator ; real_T
PIDController2_InitialConditionForIntegrator ; real_T
PIDController_InitialConditionForIntegrator ; real_T
PIDController2_InitialConditionForIntegrator_mxpj1qp5uu ; real_T
Ramp1_InitialOutput ; real_T Ramp2_InitialOutput ; real_T
PIDController_LowerSaturationLimit ; real_T PIDController2_P ; real_T
PIDController_P ; real_T PIDController2_P_fxegkff3ky ; real_T
Carriercounter_Range ; real_T Carriercounter_Range_fbb5yen5s5 ; real_T
Carriercounter_Range_iry5nbrdqx ; real_T RMS_TrueRMS ; real_T RMS1_TrueRMS ;
real_T PIDController_UpperSaturationLimit ; real_T
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
; real_T Ramp1_slope ; real_T Ramp2_slope ; real_T Ramp1_start ; real_T
Ramp2_start ; real_T IntegratorwithWrappedStateDiscreteorContinuous_x0 ;
real_T IntegratorwithWrappedStateDiscreteorContinuous_x0_jmi4gwmvri ; real_T
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
Constant1_Value_fdpeh2imtc ; real_T uDLookupTable_tableData [ 6 ] ; real_T
uDLookupTable_bp01Data [ 6 ] ; real_T UnitDelay2_InitialCondition ; real_T
Integrator_gainval_mrdvyychkv ; real_T Constant2_Value ; real_T
Integrator_gainval_c0fk5uxyeb ; real_T Constant2_Value_mcxfir2knc ; real_T
Saturation_UpperSat_g2zpvvxvhz ; real_T Saturation_LowerSat_mmnoh5s0jp ;
real_T Integrator_gainval_b2tc3y3sp3 ; real_T Constant2_Value_pu52vdaelf ;
real_T Integrator_gainval_ginifr2xlq ; real_T Constant2_Value_fomuzpjuar ;
real_T Saturation_UpperSat_j5u4qljnv5 ; real_T Saturation_LowerSat_em3rmibbhe
; real_T Integrator_gainval_clmxe4wonv ; real_T Constant2_Value_gkaf0w0kw1 ;
real_T Integrator_gainval_lsanfb5e3f ; real_T Constant2_Value_pweuhgyjqa ;
real_T Saturation_UpperSat_c1q2ftmtjs ; real_T Saturation_LowerSat_jkunmti0xg
; real_T Bias2_Bias ; real_T Bias_Bias ; real_T Bias1_Bias ; real_T
TransferFcn1_A ; real_T TransferFcn1_C ; real_T Saturation5_UpperSat ; real_T
Saturation5_LowerSat ; real_T Integrator1_IC ; real_T Integrator1_UpperSat ;
real_T Saturation_UpperSat_jtqyrsjebw ; real_T Saturation_LowerSat_niuqztsdpt
; real_T Step_Y0 ; real_T Saturation2_UpperSat ; real_T Saturation2_LowerSat
; real_T uDLookupTable_tableData_hmhkvqrroe [ 8 ] ; real_T
uDLookupTable_bp01Data_dw5uryy1bo [ 8 ] ; real_T Gain2_Gain ; real_T
TransferFcn_A ; real_T TransferFcn_C ; real_T Integrator_gainval_bz1x4sdu54 ;
real_T Gain_Gain_ccpd1tkjyt ; real_T Step_Time ; real_T Step_Y0_iilvtmdfoa ;
real_T Step_YFinal ; real_T integrator_IC ; real_T TransportDelay_Delay ;
real_T TransportDelay_InitOutput ; real_T K1_Value ; real_T
Memory_InitialCondition ; real_T Switch_Threshold ; real_T
Gain_Gain_jxuwxy0g01 ; real_T Integrator_IC ; real_T Integrator_UpperSat ;
real_T integrator_IC_cewwxj2gip ; real_T TransportDelay_Delay_nsr41clxsc ;
real_T TransportDelay_InitOutput_n24jgiss12 ; real_T K1_Value_h5aqg4redb ;
real_T Memory_InitialCondition_ecfbyrmftp ; real_T Saturation1_UpperSat ;
real_T Saturation1_LowerSat ; real_T Gain7_Gain ; real_T
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
Memory_InitialCondition_l1hfk5anpl ; real_T Bias_Bias_eywhmtq0nz ; real_T
Gain1_Gain ; real_T Gain2_Gain_nbtmsufn1q ; real_T UnitDelay_InitialCondition
; real_T Integrator_gainval_dhnaqjdnlv ; real_T Constant3_Value ; real_T
Constant3_Value_j4b4zpsigk ; real_T Constant3_Value_ltnm24yy5d ; real_T
Step1_Time ; real_T Step1_Y0 ; real_T Step1_YFinal ; real_T
Step_Y0_n1ghy4ife5 ; real_T Saturation3_UpperSat ; real_T
Saturation4_UpperSat ; real_T Saturation4_LowerSat ; real_T
TransferFcn_A_kmf2rzcsuh ; real_T TransferFcn_C_nnooprdpdc ; real_T
Integrator_gainval_kcogqwyqqm ; real_T Gain_Gain_pm4qz0kgbm ; real_T
UnitDelay1_InitialCondition ; real_T Constant_Value_kxfziju4tw ; real_T
Constant1_Value_ah5g1obm1c ; real_T Constant10_Value ; real_T
Constant11_Value ; real_T Constant5_Value ; real_T Constant7_Value ; real_T
Constant2_Value_j5gua0l1cu ; real_T Gain5_Gain_fy5i4oqac2 ; real_T
Clamping_zero_Value_bhl50gjfmv ; real_T Clamping_zero_Value_editfihzwr ;
real_T Clamping_zero_Value_jk10yi11gb ; real_T Constant1_Value_lshxyldrcl ;
real_T RTP_0BF8E32F_angular_position_Value ; real_T
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
Constant4_Value_jrpwj3ts4p ; int8_T Constant_Value_jk41wjclje ; int8_T
Constant2_Value_kpw2yqrrrh ; int8_T Constant3_Value_ioufd4meag ; int8_T
Constant4_Value_bmlxtdrt3t ; bu3ztsyp32 hhhygqmhdt ; fta3d5yfx2 lf14jcxnlk ;
bu3ztsyp32 ozrniap2npg ; fta3d5yfx2 hovqtw2gqef ; } ; extern const char_T *
RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern X rtX ; extern DW rtDW ;
extern PrevZCX rtPrevZCX ; extern MassMatrix rtMassMatrix ; extern P rtP ;
extern mxArray * mr_svpwm_inv_ideal_switch_Motor_DVS_new_param_GetDWork ( ) ;
extern void mr_svpwm_inv_ideal_switch_Motor_DVS_new_param_SetDWork ( const
mxArray * ssDW ) ; extern mxArray *
mr_svpwm_inv_ideal_switch_Motor_DVS_new_param_GetSimStateDisallowedBlocks ( )
; extern const rtwCAPI_ModelMappingStaticInfo *
svpwm_inv_ideal_switch_Motor_DVS_new_param_GetCAPIStaticMap ( void ) ; extern
SimStruct * const rtS ; extern DataMapInfo * rt_dataMapInfoPtr ; extern
rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs ( int_T tid )
; void MdlOutputsParameterSampleTime ( int_T tid ) ; void MdlUpdate ( int_T
tid ) ; void MdlTerminate ( void ) ; void MdlInitializeSizes ( void ) ; void
MdlInitializeSampleTimes ( void ) ; SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) ;
#endif
