#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_dxy.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_dxy ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t42 , NeDsMethodOutput *
out ) { real_T t1 [ 4 ] ; real_T t3 [ 4 ] ; real_T t4 [ 4 ] ; real_T t5 [ 4 ]
; real_T t6 [ 4 ] ; real_T t7 [ 4 ] ; real_T t8 [ 4 ] ; real_T t9 [ 4 ] ;
size_t t18 ; ( void ) t42 ; t1 [ 2UL ] = 0.004 ; t9 [ 2UL ] = 1.000000000004
; t9 [ 3UL ] = 2.0000000000000004E-12 ; t1 [ 0UL ] = 1.0 ; t1 [ 1UL ] = 1.0 ;
t1 [ 3UL ] = 0.002 ; t3 [ 0UL ] = 1.0 ; t3 [ 1UL ] = - 1.0 ; t3 [ 2UL ] =
0.002 ; t3 [ 3UL ] = 0.002 ; t4 [ 0UL ] = - 1.0 ; t4 [ 1UL ] = 1.0 ; t4 [ 2UL
] = - 0.002 ; t4 [ 3UL ] = - 0.002 ; t5 [ 0UL ] = 1.0 ; t5 [ 1UL ] = - 1.0 ;
t5 [ 2UL ] = 0.002 ; t5 [ 3UL ] = 0.002 ; t6 [ 0UL ] = - 1.0 ; t6 [ 1UL ] =
1.0 ; t6 [ 2UL ] = - 0.002 ; t6 [ 3UL ] = - 0.002 ; t7 [ 0UL ] = 1.0 ; t7 [
1UL ] = - 1.0 ; t7 [ 2UL ] = 0.002 ; t7 [ 3UL ] = 0.002 ; t8 [ 0UL ] = - 1.0
; t8 [ 1UL ] = 1.0 ; t8 [ 2UL ] = - 0.002 ; t8 [ 3UL ] = - 0.002 ; t9 [ 0UL ]
= 1.0E-9 ; t9 [ 1UL ] = 1.0E-9 ; for ( t18 = 0UL ; t18 < 4UL ; t18 ++ ) { out
-> mDXY . mX [ t18 ] = t1 [ t18 ] ; } out -> mDXY . mX [ 4UL ] = 1.0 ; out ->
mDXY . mX [ 5UL ] = 1.0 ; out -> mDXY . mX [ 6UL ] = 1.0 ; out -> mDXY . mX [
7UL ] = 1.0 ; for ( t18 = 0UL ; t18 < 4UL ; t18 ++ ) { out -> mDXY . mX [ t18
+ 8UL ] = t3 [ t18 ] ; } for ( t18 = 0UL ; t18 < 4UL ; t18 ++ ) { out -> mDXY
. mX [ t18 + 12UL ] = t4 [ t18 ] ; } for ( t18 = 0UL ; t18 < 4UL ; t18 ++ ) {
out -> mDXY . mX [ t18 + 16UL ] = t5 [ t18 ] ; } for ( t18 = 0UL ; t18 < 4UL
; t18 ++ ) { out -> mDXY . mX [ t18 + 20UL ] = t6 [ t18 ] ; } for ( t18 = 0UL
; t18 < 4UL ; t18 ++ ) { out -> mDXY . mX [ t18 + 24UL ] = t7 [ t18 ] ; } for
( t18 = 0UL ; t18 < 4UL ; t18 ++ ) { out -> mDXY . mX [ t18 + 28UL ] = t8 [
t18 ] ; } for ( t18 = 0UL ; t18 < 4UL ; t18 ++ ) { out -> mDXY . mX [ t18 +
32UL ] = t9 [ t18 ] ; } out -> mDXY . mX [ 36UL ] = - 1.0 ; out -> mDXY . mX
[ 37UL ] = 1.0 ; out -> mDXY . mX [ 38UL ] = 1.0 ; out -> mDXY . mX [ 39UL ]
= - 1.0 ; out -> mDXY . mX [ 40UL ] = 1.0 ; out -> mDXY . mX [ 41UL ] = - 1.0
; out -> mDXY . mX [ 42UL ] = 1.0 ; out -> mDXY . mX [ 43UL ] = 1.0 ; out ->
mDXY . mX [ 44UL ] = 1.0 ; out -> mDXY . mX [ 45UL ] = - 1.0 ; ( void ) sys ;
( void ) out ; return 0 ; }
