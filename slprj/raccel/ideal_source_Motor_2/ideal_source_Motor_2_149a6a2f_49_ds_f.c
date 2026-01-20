#include "ne_ds.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds_sys_struct.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds_f.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds_externals.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_2_149a6a2f_49_ds_f ( const NeDynamicSystem * sys ,
const NeDynamicSystemInput * t23 , NeDsMethodOutput * out ) { real_T
Controlled_Voltage_Source2_p_v ; real_T PMSM_electrical_angle ; real_T
PMSM_v_ce ; real_T t11 ; real_T t12 ; real_T t13 ; real_T t14 ; real_T t15 ;
real_T t16 ; real_T t18 ; real_T t21 ; real_T t4 ; t21 = cos ( t23 -> mX . mX
[ 2UL ] ) * 0.66666666666666663 ; t11 = cos ( t23 -> mX . mX [ 2UL ] -
2.0943951023931953 ) * 0.66666666666666663 ; t12 = cos ( t23 -> mX . mX [ 2UL
] + 2.0943951023931953 ) * 0.66666666666666663 ; t13 = - sin ( t23 -> mX . mX
[ 2UL ] ) * 0.66666666666666663 ; t14 = - sin ( t23 -> mX . mX [ 2UL ] -
2.0943951023931953 ) * 0.66666666666666663 ; t15 = - sin ( t23 -> mX . mX [
2UL ] + 2.0943951023931953 ) * 0.66666666666666663 ; PMSM_electrical_angle =
t23 -> mX . mX [ 3UL ] * 7.0E-5 + 0.0151 ; t4 = t23 -> mX . mX [ 4UL ] *
7.0E-5 ; t18 = t23 -> mU . mX [ 1UL ] - t23 -> mX . mX [ 5UL ] * - 0.187 ;
t16 = t23 -> mU . mX [ 2UL ] - t23 -> mX . mX [ 6UL ] * - 0.187 ; PMSM_v_ce =
t23 -> mU . mX [ 3UL ] - t23 -> mX . mX [ 7UL ] * - 0.187 ;
Controlled_Voltage_Source2_p_v = ( t21 * t18 + t11 * t16 ) + t12 * PMSM_v_ce
; t11 = ( t13 * t18 + t14 * t16 ) + t15 * PMSM_v_ce ; t16 = cos ( t23 -> mX .
mX [ 2UL ] ) ; PMSM_v_ce = - sin ( t23 -> mX . mX [ 2UL ] ) ; t18 = cos ( t23
-> mX . mX [ 2UL ] - 2.0943951023931953 ) ; t12 = - sin ( t23 -> mX . mX [
2UL ] - 2.0943951023931953 ) ; t13 = cos ( t23 -> mX . mX [ 2UL ] +
2.0943951023931953 ) ; t21 = - sin ( t23 -> mX . mX [ 2UL ] +
2.0943951023931953 ) ; out -> mF . mX [ 0UL ] = - 0.0 ; out -> mF . mX [ 1UL
] = - 0.0 ; out -> mF . mX [ 2UL ] = - 0.0 ; out -> mF . mX [ 3UL ] = - ( ( Controlled_Voltage_Source2_p_v - ( - ( t23 -> mX . mX [ 0UL ] * t4 ) ) ) / 0.66666666666666663 ) ; out -> mF . mX [ 4UL ] = - ( ( t11 - t23 -> mX . mX [ 0UL ] * PMSM_electrical_angle ) / 0.57735026918962573 ) ; out -> mF . mX [ 5UL ] = - ( ( t23 -> mX . mX [ 4UL ] * PMSM_electrical_angle - t23 -> mX . mX [ 3UL ] * t4 ) * 1.5 ) ; out -> mF . mX [ 6UL ] = - ( t16 * t23 -> mX . mX [ 3UL ] + PMSM_v_ce * t23 -> mX . mX [ 4UL ] ) ; out -> mF . mX [ 7UL ] = - ( t18 * t23 -> mX . mX [ 3UL ] + t12 * t23 -> mX . mX [ 4UL ] ) ; out -> mF . mX [ 8UL ] = - ( t13 * t23 -> mX . mX [ 3UL ] + t21 * t23 -> mX . mX [ 4UL ] ) ; ( void ) sys ; ( void ) out ; return 0 ; }
