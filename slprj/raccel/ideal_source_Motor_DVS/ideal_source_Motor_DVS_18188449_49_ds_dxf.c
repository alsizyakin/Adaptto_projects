#include "ne_ds.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_sys_struct.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_dxf.h"
#include "ideal_source_Motor_DVS_18188449_49_ds.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_externals.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_DVS_18188449_49_ds_dxf ( const NeDynamicSystem *
sys , const NeDynamicSystemInput * t68 , NeDsMethodOutput * out ) { real_T t4
[ 5 ] ; real_T t5 [ 5 ] ; real_T t6 [ 5 ] ; real_T PMSM_v_ce ; real_T
intermediate_der17 ; real_T intermediate_der20 ; real_T intermediate_der22 ;
real_T t26 ; real_T t32 ; real_T t34 ; real_T t37 ; real_T t38 ; real_T t39 ;
real_T t40 ; real_T t41 ; real_T t42 ; real_T t46 ; real_T t47 ; real_T t48 ;
real_T t49 ; real_T t50 ; real_T t51 ; real_T t61 ; real_T t63 ; real_T t66 ;
real_T t67 ; size_t t12 ; t67 = t68 -> mX . mX [ 1UL ] * 24.0 ;
intermediate_der20 = cos ( t67 ) * 0.66666666666666663 ; t32 = cos ( t67 -
2.0943951023931953 ) * 0.66666666666666663 ; intermediate_der22 = cos ( t67 +
2.0943951023931953 ) * 0.66666666666666663 ; t34 = - sin ( t67 ) *
0.66666666666666663 ; t61 = - sin ( t67 - 2.0943951023931953 ) *
0.66666666666666663 ; t63 = - sin ( t67 + 2.0943951023931953 ) *
0.66666666666666663 ; t26 = t68 -> mU . mX [ 1UL ] - t68 -> mX . mX [ 4UL ] *
- 0.0013 ; t66 = t68 -> mU . mX [ 2UL ] - t68 -> mX . mX [ 5UL ] * - 0.0013 ;
PMSM_v_ce = t68 -> mU . mX [ 3UL ] - t68 -> mX . mX [ 6UL ] * - 0.0013 ; t37
= cos ( t67 ) ; t38 = - sin ( t67 ) ; t39 = cos ( t67 - 2.0943951023931953 )
; t40 = - sin ( t67 - 2.0943951023931953 ) ; t41 = cos ( t67 +
2.0943951023931953 ) ; t42 = - sin ( t67 + 2.0943951023931953 ) ; t46 = - sin
( t67 ) * 24.0 * 0.66666666666666663 ; t47 = - sin ( t67 - 2.0943951023931953
) * 24.0 * 0.66666666666666663 ; t48 = - sin ( t67 + 2.0943951023931953 ) *
24.0 * 0.66666666666666663 ; t49 = - ( cos ( t67 ) * 24.0 ) *
0.66666666666666663 ; t50 = - ( cos ( t67 - 2.0943951023931953 ) * 24.0 ) *
0.66666666666666663 ; t51 = - ( cos ( t67 + 2.0943951023931953 ) * 24.0 ) *
0.66666666666666663 ; intermediate_der17 = ( t46 * t26 + t47 * t66 ) + t48 *
PMSM_v_ce ; t46 = intermediate_der20 * 0.0013 ; intermediate_der20 =
intermediate_der22 * 0.0013 ; intermediate_der22 = t32 * 0.0013 ; t32 = ( t49
* t26 + t50 * t66 ) + t51 * PMSM_v_ce ; t66 = t34 * 0.0013 ; PMSM_v_ce = t63
* 0.0013 ; t26 = t61 * 0.0013 ; t47 = - sin ( t67 ) * 24.0 ; t34 = - ( cos ( t67
) * 24.0 ) ; t48 = - sin ( t67 - 2.0943951023931953 ) * 24.0 ; t61 = - ( cos
( t67 - 2.0943951023931953 ) * 24.0 ) ; t49 = - sin ( t67 +
2.0943951023931953 ) * 24.0 ; t63 = - ( cos ( t67 + 2.0943951023931953 ) *
24.0 ) ; t4 [ 0UL ] = - ( intermediate_der17 / 0.66666666666666663 ) ; t4 [
1UL ] = - ( t32 / 0.90444000000000013 ) ; t4 [ 2UL ] = - ( t47 * t68 -> mX .
mX [ 2UL ] + t34 * t68 -> mX . mX [ 3UL ] ) ; t4 [ 3UL ] = - ( t48 * t68 ->
mX . mX [ 2UL ] + t61 * t68 -> mX . mX [ 3UL ] ) ; t4 [ 4UL ] = - ( t49 * t68
-> mX . mX [ 2UL ] + t63 * t68 -> mX . mX [ 3UL ] ) ; t5 [ 0UL ] = - ( - ( t68
-> mU . mX [ 0UL ] * 4.9E-5 * 24.0 ) / 0.90444000000000013 ) ; t5 [ 1UL ] = -
( ( t68 -> mX . mX [ 3UL ] * 4.9E-5 - t68 -> mX . mX [ 3UL ] * 4.9E-5 ) *
36.0 ) / 1.3566600000000002 ; t5 [ 2UL ] = - t37 ; t5 [ 3UL ] = - t39 ; t5 [
4UL ] = - t41 ; t6 [ 0UL ] = - ( t68 -> mU . mX [ 0UL ] * 4.9E-5 * 24.0 /
0.66666666666666663 ) ; t6 [ 1UL ] = - ( ( ( t68 -> mX . mX [ 2UL ] * 4.9E-5
+ 0.037685 ) - t68 -> mX . mX [ 2UL ] * 4.9E-5 ) * 36.0 ) /
1.3566600000000002 ; t6 [ 2UL ] = - t38 ; t6 [ 3UL ] = - t40 ; t6 [ 4UL ] = -
t42 ; for ( t12 = 0UL ; t12 < 5UL ; t12 ++ ) { out -> mDXF . mX [ t12 ] = t4
[ t12 ] ; } for ( t12 = 0UL ; t12 < 5UL ; t12 ++ ) { out -> mDXF . mX [ t12 +
5UL ] = t5 [ t12 ] ; } for ( t12 = 0UL ; t12 < 5UL ; t12 ++ ) { out -> mDXF .
mX [ t12 + 10UL ] = t6 [ t12 ] ; } out -> mDXF . mX [ 15UL ] = - ( t46 /
0.66666666666666663 ) ; out -> mDXF . mX [ 16UL ] = - ( t66 /
0.90444000000000013 ) ; out -> mDXF . mX [ 17UL ] = - ( intermediate_der22 /
0.66666666666666663 ) ; out -> mDXF . mX [ 18UL ] = - ( t26 /
0.90444000000000013 ) ; out -> mDXF . mX [ 19UL ] = - ( intermediate_der20 /
0.66666666666666663 ) ; out -> mDXF . mX [ 20UL ] = - ( PMSM_v_ce /
0.90444000000000013 ) ; ( void ) sys ; ( void ) out ; return 0 ; }
