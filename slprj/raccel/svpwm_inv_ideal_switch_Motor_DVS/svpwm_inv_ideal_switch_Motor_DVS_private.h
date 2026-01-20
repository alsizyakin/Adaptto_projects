#ifndef svpwm_inv_ideal_switch_Motor_DVS_private_h_
#define svpwm_inv_ideal_switch_Motor_DVS_private_h_
#include "rtwtypes.h"
#include "builtin_typeid_types.h"
#include "multiword_types.h"
#include "zero_crossing_types.h"
#include "svpwm_inv_ideal_switch_Motor_DVS.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_types.h"
#if !defined(rt_VALIDATE_MEMORY)
#define rt_VALIDATE_MEMORY(S, ptr)     if(!(ptr)) {\
    ssSetErrorStatus(rtS, RT_MEMORY_ALLOCATION_ERROR);\
    }
#endif
#if !defined(rt_FREE)
#if !defined(_WIN32)
#define rt_FREE(ptr)     if((ptr) != (NULL)) {\
    free((ptr));\
    (ptr) = (NULL);\
    }
#else
#define rt_FREE(ptr)     if((ptr) != (NULL)) {\
    free((void *)(ptr));\
    (ptr) = (NULL);\
    }
#endif
#endif
real_T rt_TDelayInterpolate ( real_T tMinusDelay , real_T tStart , real_T *
uBuf , int_T bufSz , int_T * lastIdx , int_T oldestIdx , int_T newIdx ,
real_T initOutput , boolean_T discrete , boolean_T
minorStepAndTAtLastMajorOutput ) ; extern boolean_T
rt_TDelayUpdateTailOrGrowBuf ( int32_T * bufSzPtr , int32_T * tailPtr ,
int32_T * headPtr , int32_T * lastPtr , real_T tMinusDelay , real_T * *
uBufPtr , boolean_T isfixedbuf , boolean_T istransportdelay , int32_T *
maxNewBufSzPtr ) ; extern void fjixkqcnfq ( SimStruct * rtS_e ) ; extern void
gnhjvudhuw ( SimStruct * rtS_p ) ; extern void nemd0xquqd ( real_T h01awjl4xm
, real_T * meqi1yryy1 ) ; extern void karlynolyn ( SimStruct * rtS_i ) ;
extern void prs432wv05 ( SimStruct * rtS_m ) ; extern void kcj2zolraj ( real_T
or3ytsoy4j , real_T * owkglg1fwx ) ; extern void pcpnuvejbf ( hi20sc41b1 *
localB , nxi4v0kzor * localDW , nu44fdvb4j * localP , mlpnvvuyvo * localX ) ;
extern void e2bkq2a5ik ( SimStruct * rtS_g , nxi4v0kzor * localDW ,
nu44fdvb4j * localP , gc2tevljn2 * localXdis ) ; extern void eglsprierf ( hi20sc41b1 * localB , nxi4v0kzor * localDW , hu4c1xiall * localXdot ) ; extern void ootzupqdby ( hi20sc41b1 * localB , nxi4v0kzor * localDW , hu4c1xiall * localXdot ) ; extern void fiw1rh0uh5 ( nxi4v0kzor * localDW ) ; extern void gj0w1w4zyz ( SimStruct * rtS_f , hi20sc41b1 * localB , nxi4v0kzor * localDW , nu44fdvb4j * localP ) ; extern void mrd0p0xbft ( SimStruct * rtS_j , boolean_T epatawa0lc , real_T im5j0a424g , hi20sc41b1 * localB , nxi4v0kzor * localDW , nu44fdvb4j * localP , mlpnvvuyvo * localX , gc2tevljn2 * localXdis ) ; extern void lgbadqdq2k ( lodmfg4juf * localB , fl0yhvaxty * localDW , ep3ovv0mfn * localP , o1ybtyxfa3 * localX ) ; extern void ejpjrkehjt ( SimStruct * rtS_b , fl0yhvaxty * localDW , ep3ovv0mfn * localP , njsdbic2n3 * localXdis ) ; extern void cp2dmw3wlu ( lodmfg4juf * localB , fl0yhvaxty * localDW , brlvdbk1nh * localXdot ) ; extern void ed0azhwecq ( lodmfg4juf * localB , fl0yhvaxty * localDW , brlvdbk1nh * localXdot ) ; extern void fc0g1f0g5i ( lodmfg4juf * localB , fl0yhvaxty * localDW , ep3ovv0mfn * localP , bmb5fit0m1 * localZCSV ) ; extern void ps35lqzvsr ( fl0yhvaxty * localDW ) ; extern void hstle3nmye ( SimStruct * rtS_f , lodmfg4juf * localB , fl0yhvaxty * localDW , ep3ovv0mfn * localP ) ; extern void bnqfkp2to4 ( SimStruct * rtS_c , boolean_T fvtivweqiz , real_T cxoaacv4cj , lodmfg4juf * localB , fl0yhvaxty * localDW , ep3ovv0mfn * localP , o1ybtyxfa3 * localX , njsdbic2n3 * localXdis ) ; extern void g4ycrlutg5 ( nxi4v0kzor * localDW ) ; extern void h1d4sl2hha ( fl0yhvaxty * localDW ) ;
#if defined(MULTITASKING)
#error Models using the variable step solvers cannot define MULTITASKING
#endif
#endif
