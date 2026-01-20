#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_assert.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_assert ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t7 , NeDsMethodOutput *
out ) { boolean_T t0 ; boolean_T t1 ; boolean_T t2 ; boolean_T t3 ; boolean_T
t4 ; boolean_T t5 ; if ( ( size_t ) t7 -> mQ . mX [ 0UL ] >= 1UL ) { t0 = ( ( size_t ) t7 -> mQ . mX [ 0UL ] <= 7UL ) ; } else { t0 = false ; } if ( ( size_t ) t7 -> mQ . mX [ 1UL ] >= 1UL ) { t1 = ( ( size_t ) t7 -> mQ . mX [ 1UL ] <= 7UL ) ; } else { t1 = false ; } if ( ( size_t ) t7 -> mQ . mX [ 2UL ] >= 1UL ) { t2 = ( ( size_t ) t7 -> mQ . mX [ 2UL ] <= 7UL ) ; } else { t2 = false ; } if ( ( size_t ) t7 -> mQ . mX [ 3UL ] >= 1UL ) { t3 = ( ( size_t ) t7 -> mQ . mX [ 3UL ] <= 7UL ) ; } else { t3 = false ; } if ( ( size_t ) t7 -> mQ . mX [ 4UL ] >= 1UL ) { t4 = ( ( size_t ) t7 -> mQ . mX [ 4UL ] <= 7UL ) ; } else { t4 = false ; } if ( ( size_t ) t7 -> mQ . mX [ 5UL ] >= 1UL ) { t5 = ( ( size_t ) t7 -> mQ . mX [ 5UL ] <= 7UL ) ; } else { t5 = false ; } out -> mASSERT . mX [ 0UL ] = ( int32_T ) t0 ; out -> mASSERT . mX [ 1UL ] = ( int32_T ) t1 ; out -> mASSERT . mX [ 2UL ] = ( int32_T ) t2 ; out -> mASSERT . mX [ 3UL ] = ( int32_T ) t3 ; out -> mASSERT . mX [ 4UL ] = ( int32_T ) t4 ; out -> mASSERT . mX [ 5UL ] = ( int32_T ) t5 ; ( void ) sys ; ( void ) out ; return 0 ; }
