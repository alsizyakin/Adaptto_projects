#include "ne_ds.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds_sys_struct.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds_dxf.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds_externals.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_2_149a6a2f_49_ds_dxf ( const NeDynamicSystem * sys
, const NeDynamicSystemInput * t78 , NeDsMethodOutput * out ) { real_T t5 [ 5
] ; real_T t6 [ 5 ] ; real_T t7 [ 5 ] ; real_T PMSM_v_ce ; real_T
intermediate_der19 ; real_T intermediate_der21 ; real_T intermediate_der22 ;
real_T intermediate_der28 ; real_T intermediate_der31 ; real_T t27 ; real_T
t34 ; real_T t35 ; real_T t39 ; real_T t40 ; real_T t41 ; real_T t42 ; real_T
t43 ; real_T t44 ; real_T t50 ; real_T t51 ; real_T t52 ; real_T t53 ; real_T
t61 ; real_T t63 ; real_T t65 ; real_T t69 ; real_T t75 ; size_t t12 ;
intermediate_der22 = cos ( t78 -> mX . mX [ 2UL ] ) * 0.66666666666666663 ;
t34 = cos ( t78 -> mX . mX [ 2UL ] - 2.0943951023931953 ) *
0.66666666666666663 ; t35 = cos ( t78 -> mX . mX [ 2UL ] + 2.0943951023931953
) * 0.66666666666666663 ; t61 = - sin ( t78 -> mX . mX [ 2UL ] ) *
0.66666666666666663 ; t63 = - sin ( t78 -> mX . mX [ 2UL ] -
2.0943951023931953 ) * 0.66666666666666663 ; t65 = - sin ( t78 -> mX . mX [
2UL ] + 2.0943951023931953 ) * 0.66666666666666663 ; t69 = t78 -> mX . mX [
3UL ] * 7.0E-5 + 0.0151 ; t27 = t78 -> mX . mX [ 4UL ] * 7.0E-5 ;
intermediate_der31 = t78 -> mU . mX [ 1UL ] - t78 -> mX . mX [ 5UL ] * -
0.187 ; intermediate_der28 = t78 -> mU . mX [ 2UL ] - t78 -> mX . mX [ 6UL ]
* - 0.187 ; PMSM_v_ce = t78 -> mU . mX [ 3UL ] - t78 -> mX . mX [ 7UL ] * -
0.187 ; t39 = cos ( t78 -> mX . mX [ 2UL ] ) ; t40 = - sin ( t78 -> mX . mX [
2UL ] ) ; t41 = cos ( t78 -> mX . mX [ 2UL ] - 2.0943951023931953 ) ; t42 = -
sin ( t78 -> mX . mX [ 2UL ] - 2.0943951023931953 ) ; t43 = cos ( t78 -> mX .
mX [ 2UL ] + 2.0943951023931953 ) ; t44 = - sin ( t78 -> mX . mX [ 2UL ] +
2.0943951023931953 ) ; intermediate_der21 = - sin ( t78 -> mX . mX [ 2UL ] )
* 0.66666666666666663 ; t75 = - sin ( t78 -> mX . mX [ 2UL ] -
2.0943951023931953 ) * 0.66666666666666663 ; t50 = - sin ( t78 -> mX . mX [
2UL ] + 2.0943951023931953 ) * 0.66666666666666663 ; t51 = - cos ( t78 -> mX
. mX [ 2UL ] ) * 0.66666666666666663 ; t52 = - cos ( t78 -> mX . mX [ 2UL ] -
2.0943951023931953 ) * 0.66666666666666663 ; t53 = - cos ( t78 -> mX . mX [
2UL ] + 2.0943951023931953 ) * 0.66666666666666663 ; intermediate_der19 = ( intermediate_der21 * intermediate_der31 + t75 * intermediate_der28 ) + t50 * PMSM_v_ce ; intermediate_der21 = intermediate_der22 * 0.187 ; intermediate_der22 = t35 * 0.187 ; t35 = t34 * 0.187 ; t34 = ( t51 * intermediate_der31 + t52 * intermediate_der28 ) + t53 * PMSM_v_ce ; intermediate_der28 = t61 * 0.187 ; PMSM_v_ce = t65 * 0.187 ; intermediate_der31 = t63 * 0.187 ; t75 = - sin ( t78 -> mX . mX [ 2UL ] ) ; t61 = - cos ( t78 -> mX . mX [ 2UL ] ) ; t50 = - sin ( t78 -> mX . mX [ 2UL ] - 2.0943951023931953 ) ; t63 = - cos ( t78 -> mX . mX [ 2UL ] - 2.0943951023931953 ) ; t51 = - sin ( t78 -> mX . mX [ 2UL ] + 2.0943951023931953 ) ; t65 = - cos ( t78 -> mX . mX [ 2UL ] + 2.0943951023931953 ) ; out -> mDXF . mX [ 0UL ] = - ( t27 / 0.66666666666666663 ) ; out -> mDXF . mX [ 1UL ] = - ( - t69 / 0.57735026918962573 ) ; t5 [ 0UL ] = - ( intermediate_der19 / 0.66666666666666663 ) ; t5 [ 1UL ] = - ( t34 / 0.57735026918962573 ) ; t5 [ 2UL ] = - ( t75 * t78 -> mX . mX [ 3UL ] + t61 * t78 -> mX . mX [ 4UL ] ) ; t5 [ 3UL ] = - ( t50 * t78 -> mX . mX [ 3UL ] + t63 * t78 -> mX . mX [ 4UL ] ) ; t5 [ 4UL ] = - ( t51 * t78 -> mX . mX [ 3UL ] + t65 * t78 -> mX . mX [ 4UL ] ) ; t6 [ 0UL ] = - ( - ( t78 -> mX . mX [ 0UL ] * 7.0E-5 ) / 0.57735026918962573 ) ; t6 [ 1UL ] = - ( ( t78 -> mX . mX [ 4UL ] * 7.0E-5 - t27 ) * 1.5 ) ; t6 [ 2UL ] = - t39 ; t6 [ 3UL ] = - t41 ; t6 [ 4UL ] = - t43 ; t7 [ 0UL ] = - ( t78 -> mX . mX [ 0UL ] * 7.0E-5 / 0.66666666666666663 ) ; t7 [ 1UL ] = - ( ( t69 - t78 -> mX . mX [ 3UL ] * 7.0E-5 ) * 1.5 ) ; t7 [ 2UL ] = - t40 ; t7 [ 3UL ] = - t42 ; t7 [ 4UL ] = - t44 ; for ( t12 = 0UL ; t12 < 5UL ; t12 ++ ) { out -> mDXF . mX [ t12 + 2UL ] = t5 [ t12 ] ; } for ( t12 = 0UL ; t12 < 5UL ; t12 ++ ) { out -> mDXF . mX [ t12 + 7UL ] = t6 [ t12 ] ; } for ( t12 = 0UL ; t12 < 5UL ; t12 ++ ) { out -> mDXF . mX [ t12 + 12UL ] = t7 [ t12 ] ; } out -> mDXF . mX [ 17UL ] = - ( intermediate_der21 / 0.66666666666666663 ) ; out -> mDXF . mX [ 18UL ] = - ( intermediate_der28 / 0.57735026918962573 ) ; out -> mDXF . mX [ 19UL ] = - ( t35 / 0.66666666666666663 ) ; out -> mDXF . mX [ 20UL ] = - ( intermediate_der31 / 0.57735026918962573 ) ; out -> mDXF . mX [ 21UL ] = - ( intermediate_der22 / 0.66666666666666663 ) ; out -> mDXF . mX [ 22UL ] = - ( PMSM_v_ce / 0.57735026918962573 ) ; ( void ) sys ; ( void ) out ; return 0 ; }
