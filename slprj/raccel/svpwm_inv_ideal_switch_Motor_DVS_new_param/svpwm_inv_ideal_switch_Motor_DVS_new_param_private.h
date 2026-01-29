#ifndef svpwm_inv_ideal_switch_Motor_DVS_new_param_private_h_
#define svpwm_inv_ideal_switch_Motor_DVS_new_param_private_h_
#include "rtwtypes.h"
#include "builtin_typeid_types.h"
#include "multiword_types.h"
#include "zero_crossing_types.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_types.h"
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
maxNewBufSzPtr ) ; extern real_T look1_binlxpw ( real_T u0 , const real_T bp0
[ ] , const real_T table [ ] , uint32_T maxIndex ) ; extern void i4m3ix52el ( SimStruct * rtS_e ) ; extern void ernvh5leis ( SimStruct * rtS_p ) ; extern void nkpbe1gtc1 ( real_T ex5gaayff2 , real_T * nhlacgsbhb ) ; extern void ocnr1jwl1n ( SimStruct * rtS_i ) ; extern void ayq54hy1lf ( SimStruct * rtS_m ) ; extern void e3ag2h2bsy ( real_T dicm3bq0cx , real_T * lb3chhstkn ) ; extern void c3bi55yu0h ( ckdk0ui41k * localB , fh2obcwgzj * localDW , fta3d5yfx2 * localP , buitogemqh * localX ) ; extern void hqa1o444lq ( SimStruct * rtS_g , fh2obcwgzj * localDW , fta3d5yfx2 * localP , dz4dpqdvrc * localXdis ) ; extern void n2bs1bkhvn ( ckdk0ui41k * localB , fh2obcwgzj * localDW , o3yxwsyuwv * localXdot ) ; extern void bpjft2untn ( ckdk0ui41k * localB , fh2obcwgzj * localDW , o3yxwsyuwv * localXdot ) ; extern void ez2zuqjiw2 ( fh2obcwgzj * localDW ) ; extern void ocqaflhl53 ( SimStruct * rtS_f , ckdk0ui41k * localB , fh2obcwgzj * localDW , fta3d5yfx2 * localP ) ; extern void hovqtw2gqe ( SimStruct * rtS_j , boolean_T p2gsh344h0 , real_T oroi4fejiw , ckdk0ui41k * localB , fh2obcwgzj * localDW , fta3d5yfx2 * localP , buitogemqh * localX , dz4dpqdvrc * localXdis ) ; extern void pudh2jbqzu ( milt31ioj2 * localB , kewgbes053 * localDW , bu3ztsyp32 * localP , nb4auzncwf * localX ) ; extern void d5dbyltadc ( SimStruct * rtS_b , kewgbes053 * localDW , bu3ztsyp32 * localP , jqrelymrvm * localXdis ) ; extern void lrbpnljtxf ( milt31ioj2 * localB , kewgbes053 * localDW , eonop1azih * localXdot ) ; extern void mhxijejjil ( milt31ioj2 * localB , kewgbes053 * localDW , eonop1azih * localXdot ) ; extern void hpu1gq1nlg ( milt31ioj2 * localB , kewgbes053 * localDW , bu3ztsyp32 * localP , hfij4b10rn * localZCSV ) ; extern void kjleveirl0 ( kewgbes053 * localDW ) ; extern void mmksn2flxi ( SimStruct * rtS_f , milt31ioj2 * localB , kewgbes053 * localDW , bu3ztsyp32 * localP ) ; extern void ozrniap2np ( SimStruct * rtS_c , boolean_T djrifgi3j3 , real_T iybboxxokq , milt31ioj2 * localB , kewgbes053 * localDW , bu3ztsyp32 * localP , nb4auzncwf * localX , jqrelymrvm * localXdis ) ; extern void c3huthlvad ( fh2obcwgzj * localDW ) ; extern void f05jj3ysxg ( kewgbes053 * localDW ) ;
#if defined(MULTITASKING)
#error Models using the variable step solvers cannot define MULTITASKING
#endif
#endif
