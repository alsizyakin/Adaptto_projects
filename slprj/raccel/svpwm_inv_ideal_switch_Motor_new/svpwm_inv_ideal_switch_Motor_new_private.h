#ifndef svpwm_inv_ideal_switch_Motor_new_private_h_
#define svpwm_inv_ideal_switch_Motor_new_private_h_
#include "rtwtypes.h"
#include "builtin_typeid_types.h"
#include "multiword_types.h"
#include "zero_crossing_types.h"
#include "svpwm_inv_ideal_switch_Motor_new.h"
#include "svpwm_inv_ideal_switch_Motor_new_types.h"
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
maxNewBufSzPtr ) ; extern void a2ngwugbke ( SimStruct * rtS_e ) ; extern void
opezqr1l3x ( SimStruct * rtS_p ) ; extern void ou05yx5eiq ( real_T himvi4aswh
, real_T * fwv2jedoey ) ; extern void beadeu4ewx ( SimStruct * rtS_i ) ;
extern void ko5sojcjrj ( SimStruct * rtS_m ) ; extern void gi3iqkjyyl ( real_T
fsnstqkjbs , real_T * dz1z2jj0ho ) ; extern void drq5j5xu31 ( SimStruct *
rtS_g , real_T gliyfy3z1e , real_T purz345j3y , real_T lux0dhvaoe , real_T
djgahzxmss , hbv5brro3b * localB , esroert1yg * localP ) ;
#if defined(MULTITASKING)
#error Models using the variable step solvers cannot define MULTITASKING
#endif
#endif
