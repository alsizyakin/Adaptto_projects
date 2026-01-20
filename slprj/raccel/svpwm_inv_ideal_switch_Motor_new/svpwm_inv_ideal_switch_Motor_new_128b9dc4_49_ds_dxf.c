#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_dxf.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_dxf ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t176 , NeDsMethodOutput
* out ) { real_T t43 [ 8 ] ; real_T t45 [ 8 ] ; real_T t47 [ 8 ] ; real_T t44
[ 7 ] ; real_T t46 [ 7 ] ; real_T t48 [ 7 ] ; real_T t50 [ 7 ] ; real_T t51 [
7 ] ; real_T t52 [ 7 ] ; real_T t37 [ 6 ] ; real_T t38 [ 6 ] ; real_T t49 [ 6
] ; real_T t40 [ 5 ] ; real_T t41 [ 5 ] ; real_T t42 [ 5 ] ; real_T
Ideal_Semiconductor_Switch3_ideal_switch_v ; real_T PMSM_v_ae ; real_T
PMSM_v_ce ; real_T intermediate_der163 ; real_T intermediate_der167 ; real_T
t111 ; real_T t114 ; real_T t115 ; real_T t116 ; real_T t117 ; real_T t118 ;
real_T t119 ; real_T t123 ; real_T t135 ; real_T t136 ; real_T t137 ; real_T
t139 ; real_T t146 ; real_T t148 ; real_T t164 ; real_T t165 ; real_T t169 ;
real_T t2 ; real_T t3 ; real_T t4 ; real_T t5 ; real_T t6 ; real_T t7 ;
real_T t8 ; real_T t9 ; size_t t73 ; t146 = t176 -> mX . mX [ 4UL ] * 24.0 ;
t2 = t146 ; t3 = t146 - 2.0943951023931953 ; t4 = t146 + 2.0943951023931953 ;
t165 = cos ( t146 ) * 0.66666666666666663 ; t169 = cos ( t146 -
2.0943951023931953 ) * 0.66666666666666663 ; intermediate_der163 = cos ( t146
+ 2.0943951023931953 ) * 0.66666666666666663 ; t111 = - sin ( t146 ) *
0.66666666666666663 ; t5 = - sin ( t146 - 2.0943951023931953 ) *
0.66666666666666663 ; t6 = - sin ( t146 + 2.0943951023931953 ) *
0.66666666666666663 ; t146 = t176 -> mX . mX [ 5UL ] * 4.9E-5 + 0.037685 ;
t148 = t176 -> mX . mX [ 6UL ] * 5.8E-5 ; PMSM_v_ae = t176 -> mX . mX [ 21UL
] - t176 -> mX . mX [ 26UL ] * 0.0013000000000000002 ;
Ideal_Semiconductor_Switch3_ideal_switch_v = t176 -> mX . mX [ 18UL ] - t176
-> mX . mX [ 29UL ] * 0.0013000000000000002 ; PMSM_v_ce = t176 -> mX . mX [
15UL ] - t176 -> mX . mX [ 33UL ] * 0.0013000000000000002 ; t114 = cos ( t2 )
; t115 = - sin ( t2 ) ; t116 = cos ( t3 ) ; t117 = - sin ( t3 ) ; t118 = cos
( t4 ) ; t119 = - sin ( t4 ) ; t123 = - sin ( t2 ) * 24.0 *
0.66666666666666663 ; t164 = - sin ( t3 ) * 24.0 * 0.66666666666666663 ;
intermediate_der167 = - sin ( t4 ) * 24.0 * 0.66666666666666663 ; t7 = - ( cos
( t2 ) * 24.0 ) * 0.66666666666666663 ; t8 = - ( cos ( t3 ) * 24.0 ) *
0.66666666666666663 ; t9 = - ( cos ( t4 ) * 24.0 ) * 0.66666666666666663 ;
t135 = - sin ( t2 ) * 24.0 ; t136 = - ( cos ( t2 ) * 24.0 ) ; t137 = - sin ( t3
) * 24.0 ; t3 = - ( cos ( t3 ) * 24.0 ) ; t139 = - sin ( t4 ) * 24.0 ; t2 = -
( cos ( t4 ) * 24.0 ) ; if ( t176 -> mM . mX [ 45UL ] != 0 ) { t37 [ 1UL ] =
0.002 ; } else { t37 [ 1UL ] = 2.0E-9 ; } if ( t176 -> mM . mX [ 47UL ] != 0
) { t37 [ 3UL ] = 0.002 ; } else { t37 [ 3UL ] = 2.0E-9 ; } if ( t176 -> mM .
mX [ 53UL ] != 0 ) { t37 [ 5UL ] = 0.002 ; } else { t37 [ 5UL ] = 2.0E-9 ; }
if ( t176 -> mM . mX [ 45UL ] != 0 ) { t38 [ 1UL ] = 1.0 ; } else { t38 [ 1UL
] = 1.0E-6 ; } if ( t176 -> mM . mX [ 47UL ] != 0 ) { t38 [ 3UL ] = 1.0 ; }
else { t38 [ 3UL ] = 1.0E-6 ; } if ( t176 -> mM . mX [ 53UL ] != 0 ) { t38 [
5UL ] = 1.0 ; } else { t38 [ 5UL ] = 1.0E-6 ; } if ( t176 -> mM . mX [ 45UL ]
!= 0 ) { t43 [ 2UL ] = 0.002 ; } else { t43 [ 2UL ] = 2.0E-9 ; } if ( t176 ->
mM . mX [ 47UL ] != 0 ) { t43 [ 4UL ] = 0.002 ; } else { t43 [ 4UL ] = 2.0E-9
; } if ( t176 -> mM . mX [ 53UL ] != 0 ) { t43 [ 7UL ] = 0.002 ; } else { t43
[ 7UL ] = 2.0E-9 ; } if ( t176 -> mM . mX [ 45UL ] != 0 ) { t44 [ 1UL ] = -
0.003 ; } else { t44 [ 1UL ] = - 1.000000002 ; } if ( t176 -> mM . mX [ 47UL
] != 0 ) { t44 [ 3UL ] = - 0.002 ; } else { t44 [ 3UL ] = - 2.0E-9 ; } if ( t176
-> mM . mX [ 53UL ] != 0 ) { t44 [ 6UL ] = - 0.002 ; } else { t44 [ 6UL ] = -
2.0E-9 ; } if ( t176 -> mM . mX [ 45UL ] != 0 ) { t45 [ 1UL ] = 0.002 ; }
else { t45 [ 1UL ] = 2.0E-9 ; } if ( t176 -> mM . mX [ 47UL ] != 0 ) { t45 [
4UL ] = 0.002 ; } else { t45 [ 4UL ] = 2.0E-9 ; } if ( t176 -> mM . mX [ 53UL
] != 0 ) { t45 [ 7UL ] = 0.002 ; } else { t45 [ 7UL ] = 2.0E-9 ; } if ( t176
-> mM . mX [ 45UL ] != 0 ) { t46 [ 1UL ] = - 0.002 ; } else { t46 [ 1UL ] = -
2.0E-9 ; } if ( t176 -> mM . mX [ 47UL ] != 0 ) { t46 [ 3UL ] = - 0.003 ; }
else { t46 [ 3UL ] = - 1.000000002 ; } if ( t176 -> mM . mX [ 53UL ] != 0 ) {
t46 [ 6UL ] = - 0.002 ; } else { t46 [ 6UL ] = - 2.0E-9 ; } if ( t176 -> mM .
mX [ 45UL ] != 0 ) { t47 [ 1UL ] = 0.002 ; } else { t47 [ 1UL ] = 2.0E-9 ; }
if ( t176 -> mM . mX [ 47UL ] != 0 ) { t47 [ 3UL ] = 0.002 ; } else { t47 [
3UL ] = 2.0E-9 ; } if ( t176 -> mM . mX [ 53UL ] != 0 ) { t47 [ 6UL ] = 0.002
; } else { t47 [ 6UL ] = 2.0E-9 ; } if ( t176 -> mM . mX [ 45UL ] != 0 ) {
t48 [ 1UL ] = - 0.002 ; } else { t48 [ 1UL ] = - 2.0E-9 ; } if ( t176 -> mM .
mX [ 47UL ] != 0 ) { t48 [ 3UL ] = - 0.002 ; } else { t48 [ 3UL ] = - 2.0E-9
; } if ( t176 -> mM . mX [ 53UL ] != 0 ) { t48 [ 5UL ] = - 0.003 ; } else {
t48 [ 5UL ] = - 1.000000002 ; } if ( t176 -> mM . mX [ 45UL ] != 0 ) { t49 [
1UL ] = 2.0000000000000004E-12 ; } else { t49 [ 1UL ] = 2.0E-18 ; } if ( t176
-> mM . mX [ 47UL ] != 0 ) { t49 [ 3UL ] = 2.0000000000000004E-12 ; } else {
t49 [ 3UL ] = 2.0E-18 ; } if ( t176 -> mM . mX [ 53UL ] != 0 ) { t49 [ 5UL ]
= 2.0000000000000004E-12 ; } else { t49 [ 5UL ] = 2.0E-18 ; } if ( t176 -> mM
. mX [ 53UL ] != 0 ) { t50 [ 4UL ] = - 1.0 ; } else { t50 [ 4UL ] = - 1.0E-6
; } if ( t176 -> mM . mX [ 55UL ] != 0 ) { t50 [ 6UL ] = 1.0 ; } else { t50 [
6UL ] = 1.0E-6 ; } if ( t176 -> mM . mX [ 47UL ] != 0 ) { t51 [ 4UL ] = - 1.0
; } else { t51 [ 4UL ] = - 1.0E-6 ; } if ( t176 -> mM . mX [ 51UL ] != 0 ) {
t51 [ 6UL ] = 1.0 ; } else { t51 [ 6UL ] = 1.0E-6 ; } if ( t176 -> mM . mX [
45UL ] != 0 ) { t52 [ 4UL ] = - 1.0 ; } else { t52 [ 4UL ] = - 1.0E-6 ; } if
( t176 -> mM . mX [ 49UL ] != 0 ) { t52 [ 6UL ] = 1.0 ; } else { t52 [ 6UL ]
= 1.0E-6 ; } t37 [ 0UL ] = - 0.002 ; t37 [ 2UL ] = - 0.002 ; t37 [ 4UL ] = -
0.002 ; t38 [ 0UL ] = - 1.0 ; t38 [ 2UL ] = - 1.0 ; t38 [ 4UL ] = - 1.0 ; t40
[ 0UL ] = - ( ( ( t123 * PMSM_v_ae + t164 *
Ideal_Semiconductor_Switch3_ideal_switch_v ) + intermediate_der167 *
PMSM_v_ce ) / 0.66666666666666663 ) ; t40 [ 1UL ] = - ( ( ( t7 * PMSM_v_ae +
t8 * Ideal_Semiconductor_Switch3_ideal_switch_v ) + t9 * PMSM_v_ce ) /
0.90444000000000013 ) ; t40 [ 2UL ] = - ( t135 * t176 -> mX . mX [ 5UL ] +
t136 * t176 -> mX . mX [ 6UL ] ) ; t40 [ 3UL ] = - ( t137 * t176 -> mX . mX [
5UL ] + t3 * t176 -> mX . mX [ 6UL ] ) ; t40 [ 4UL ] = - ( t139 * t176 -> mX
. mX [ 5UL ] + t2 * t176 -> mX . mX [ 6UL ] ) ; t41 [ 0UL ] = - ( - ( t176 ->
mX . mX [ 2UL ] * 4.9E-5 * 24.0 ) / 0.90444000000000013 ) ; t41 [ 1UL ] = - ( ( t176 -> mX . mX [ 6UL ] * 4.9E-5 - t148 ) * 36.0 ) / 1.3566600000000002 ; t41 [ 2UL ] = - t114 ; t41 [ 3UL ] = - t116 ; t41 [ 4UL ] = - t118 ; t42 [ 0UL ] = - ( t176 -> mX . mX [ 2UL ] * 5.8E-5 * 24.0 / 0.66666666666666663 ) ; t42 [ 1UL ] = - ( ( t146 - t176 -> mX . mX [ 5UL ] * 5.8E-5 ) * 36.0 ) / 1.3566600000000002 ; t42 [ 2UL ] = - t115 ; t42 [ 3UL ] = - t117 ; t42 [ 4UL ] = - t119 ; t43 [ 0UL ] = - 0.002 ; t43 [ 1UL ] = 1.0 ; t43 [ 3UL ] = - 0.002 ; t43 [ 5UL ] = 1.0 ; t43 [ 6UL ] = - 0.002 ; t44 [ 0UL ] = 0.002 ; t44 [ 2UL ] = 0.002 ; t44 [ 4UL ] = - 1.0 ; t44 [ 5UL ] = 0.002 ; t45 [ 0UL ] = - 0.002 ; t45 [ 2UL ] = - 0.002 ; t45 [ 3UL ] = 1.0 ; t45 [ 5UL ] = 1.0 ; t45 [ 6UL ] = - 0.002 ; t46 [ 0UL ] = 0.002 ; t46 [ 2UL ] = 0.002 ; t46 [ 4UL ] = - 1.0 ; t46 [ 5UL ] = 0.002 ; t47 [ 0UL ] = - 0.002 ; t47 [ 2UL ] = - 0.002 ; t47 [ 4UL ] = - 0.002 ; t47 [ 5UL ] = 1.0 ; t47 [ 7UL ] = 1.0 ; t48 [ 0UL ] = 0.002 ; t48 [ 2UL ] = 0.002 ; t48 [ 4UL ] = 0.002 ; t48 [ 6UL ] = - 1.0 ; t49 [ 0UL ] = - 2.0000000000000004E-12 ; t49 [ 2UL ] = - 2.0000000000000004E-12 ; t49 [ 4UL ] = - 2.0000000000000004E-12 ; t50 [ 0UL ] = - ( intermediate_der163 / 0.66666666666666663 ) ; t50 [ 1UL ] = - ( t6 / 0.90444000000000013 ) ; t50 [ 2UL ] = - 1.0 ; t50 [ 3UL ] = 1.0 ; t50 [ 5UL ] = - 1.0 ; t51 [ 0UL ] = - ( t169 / 0.66666666666666663 ) ; t51 [ 1UL ] = - ( t5 / 0.90444000000000013 ) ; t51 [ 2UL ] = - 1.0 ; t51 [ 3UL ] = 1.0 ; t51 [ 5UL ] = - 1.0 ; t52 [ 0UL ] = - ( t165 / 0.66666666666666663 ) ; t52 [ 1UL ] = - ( t111 / 0.90444000000000013 ) ; t52 [ 2UL ] = - 1.0 ; t52 [ 3UL ] = 1.0 ; t52 [ 5UL ] = - 1.0 ; for ( t73 = 0UL ; t73 < 6UL ; t73 ++ ) { out -> mDXF . mX [ t73 ] = t37 [ t73 ] ; } for ( t73 = 0UL ; t73 < 6UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 6UL ] = t38 [ t73 ] ; } out -> mDXF . mX [ 12UL ] = - ( t148 * 24.0 / 0.66666666666666663 ) ; out -> mDXF . mX [ 13UL ] = - ( - ( t146 * 24.0 ) / 0.90444000000000013 ) ; for ( t73 = 0UL ; t73 < 5UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 14UL ] = t40 [ t73 ] ; } for ( t73 = 0UL ; t73 < 5UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 19UL ] = t41 [ t73 ] ; } for ( t73 = 0UL ; t73 < 5UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 24UL ] = t42 [ t73 ] ; } for ( t73 = 0UL ; t73 < 8UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 29UL ] = t43 [ t73 ] ; } for ( t73 = 0UL ; t73 < 7UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 37UL ] = t44 [ t73 ] ; } for ( t73 = 0UL ; t73 < 8UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 44UL ] = t45 [ t73 ] ; } for ( t73 = 0UL ; t73 < 7UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 52UL ] = t46 [ t73 ] ; } for ( t73 = 0UL ; t73 < 8UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 59UL ] = t47 [ t73 ] ; } for ( t73 = 0UL ; t73 < 7UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 67UL ] = t48 [ t73 ] ; } for ( t73 = 0UL ; t73 < 6UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 74UL ] = t49 [ t73 ] ; } out -> mDXF . mX [ 80UL ] = 1.0 ; for ( t73 = 0UL ; t73 < 7UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 81UL ] = t50 [ t73 ] ; } out -> mDXF . mX [ 88UL ] = 1.0 ; out -> mDXF . mX [ 89UL ] = 1.0 ; for ( t73 = 0UL ; t73 < 7UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 90UL ] = t51 [ t73 ] ; } out -> mDXF . mX [ 97UL ] = 1.0 ; out -> mDXF . mX [ 98UL ] = 1.0 ; for ( t73 = 0UL ; t73 < 7UL ; t73 ++ ) { out -> mDXF . mX [ t73 + 99UL ] = t52 [ t73 ] ; } out -> mDXF . mX [ 106UL ] = 1.0 ; out -> mDXF . mX [ 107UL ] = t176 -> mM . mX [ 44UL ] != 0 ? - 1.0 : - 0.001 ; out -> mDXF . mX [ 108UL ] = t176 -> mM . mX [ 44UL ] != 0 ? - 1.0E-5 : - 1.0 ; out -> mDXF . mX [ 109UL ] = t176 -> mM . mX [ 46UL ] != 0 ? - 1.0 : - 0.001 ; out -> mDXF . mX [ 110UL ] = t176 -> mM . mX [ 46UL ] != 0 ? - 1.0E-5 : - 1.0 ; out -> mDXF . mX [ 111UL ] = 1.0 ; out -> mDXF . mX [ 112UL ] = t176 -> mM . mX [ 49UL ] != 0 ? - 0.001 : - 1.0 ; out -> mDXF . mX [ 113UL ] = - ( t165 * - 0.0013000000000000002 / 0.66666666666666663 ) ; out -> mDXF . mX [ 114UL ] = - ( t111 * - 0.0013000000000000002 / 0.90444000000000013 ) ; out -> mDXF . mX [ 115UL ] = 1.0 ; out -> mDXF . mX [ 116UL ] = t176 -> mM . mX [ 48UL ] != 0 ? - 1.0 : - 0.001 ; out -> mDXF . mX [ 117UL ] = t176 -> mM . mX [ 48UL ] != 0 ? - 1.0E-5 : - 1.0 ; out -> mDXF . mX [ 118UL ] = 1.0 ; out -> mDXF . mX [ 119UL ] = t176 -> mM . mX [ 51UL ] != 0 ? - 0.001 : - 1.0 ; out -> mDXF . mX [ 120UL ] = - ( t169 * - 0.0013000000000000002 / 0.66666666666666663 ) ; out -> mDXF . mX [ 121UL ] = - ( t5 * - 0.0013000000000000002 / 0.90444000000000013 ) ; out -> mDXF . mX [ 122UL ] = 1.0 ; out -> mDXF . mX [ 123UL ] = t176 -> mM . mX [ 50UL ] != 0 ? - 1.0 : - 0.001 ; out -> mDXF . mX [ 124UL ] = t176 -> mM . mX [ 50UL ] != 0 ? - 1.0E-5 : - 1.0 ; out -> mDXF . mX [ 125UL ] = t176 -> mM . mX [ 52UL ] != 0 ? - 1.0 : - 0.001 ; out -> mDXF . mX [ 126UL ] = t176 -> mM . mX [ 52UL ] != 0 ? - 1.0E-5 : - 1.0 ; out -> mDXF . mX [ 127UL ] = 1.0 ; out -> mDXF . mX [ 128UL ] = t176 -> mM . mX [ 55UL ] != 0 ? - 0.001 : - 1.0 ; out -> mDXF . mX [ 129UL ] = - ( intermediate_der163 * - 0.0013000000000000002 / 0.66666666666666663 ) ; out -> mDXF . mX [ 130UL ] = - ( t6 * - 0.0013000000000000002 / 0.90444000000000013 ) ; out -> mDXF . mX [ 131UL ] = 1.0 ; out -> mDXF . mX [ 132UL ] = t176 -> mM . mX [ 54UL ] != 0 ? - 1.0 : - 0.001 ; out -> mDXF . mX [ 133UL ] = t176 -> mM . mX [ 54UL ] != 0 ? - 1.0E-5 : - 1.0 ; ( void ) sys ; ( void ) out ; return 0 ; }
