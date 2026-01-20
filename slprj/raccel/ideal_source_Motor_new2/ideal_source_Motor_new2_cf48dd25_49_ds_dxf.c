#include "ne_ds.h"
#include "ideal_source_Motor_new2_cf48dd25_49_ds_sys_struct.h"
#include "ideal_source_Motor_new2_cf48dd25_49_ds_dxf.h"
#include "ideal_source_Motor_new2_cf48dd25_49_ds.h"
#include "ideal_source_Motor_new2_cf48dd25_49_ds_externals.h"
#include "ideal_source_Motor_new2_cf48dd25_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_new2_cf48dd25_49_ds_dxf ( const NeDynamicSystem *
sys , const NeDynamicSystemInput * t79 , NeDsMethodOutput * out ) { real_T t5
[ 5 ] ; real_T t6 [ 5 ] ; real_T t7 [ 5 ] ; real_T PMSM_v_ce ; real_T
intermediate_der21 ; real_T intermediate_der22 ; real_T intermediate_der28 ;
real_T intermediate_der31 ; real_T t27 ; real_T t34 ; real_T t35 ; real_T t39
; real_T t40 ; real_T t41 ; real_T t42 ; real_T t43 ; real_T t44 ; real_T t49
; real_T t50 ; real_T t51 ; real_T t52 ; real_T t53 ; real_T t61 ; real_T t62
; real_T t63 ; real_T t64 ; real_T t65 ; real_T t69 ; real_T t75 ; size_t t12
; t69 = t79 -> mX . mX [ 2UL ] * 24.0 ; t62 = t69 ; t64 = t69 -
2.0943951023931953 ; t75 = t69 + 2.0943951023931953 ; intermediate_der22 =
cos ( t69 ) * 0.66666666666666663 ; t34 = cos ( t69 - 2.0943951023931953 ) *
0.66666666666666663 ; t35 = cos ( t69 + 2.0943951023931953 ) *
0.66666666666666663 ; t61 = - sin ( t69 ) * 0.66666666666666663 ; t63 = - sin
( t69 - 2.0943951023931953 ) * 0.66666666666666663 ; t65 = - sin ( t69 +
2.0943951023931953 ) * 0.66666666666666663 ; t69 = t79 -> mX . mX [ 3UL ] *
4.45E-5 + 0.0374 ; t27 = t79 -> mX . mX [ 4UL ] * 5.2E-5 ; intermediate_der31
= t79 -> mU . mX [ 1UL ] - t79 -> mX . mX [ 5UL ] * - 0.005 ;
intermediate_der28 = t79 -> mU . mX [ 2UL ] - t79 -> mX . mX [ 6UL ] * -
0.005 ; PMSM_v_ce = t79 -> mU . mX [ 3UL ] - t79 -> mX . mX [ 7UL ] * - 0.005
; t39 = cos ( t62 ) ; t40 = - sin ( t62 ) ; t41 = cos ( t64 ) ; t42 = - sin ( t64 ) ; t43 = cos ( t75 ) ; t44 = - sin ( t75 ) ; intermediate_der21 = - sin ( t62 ) * 24.0 * 0.66666666666666663 ; t49 = - sin ( t64 ) * 24.0 * 0.66666666666666663 ; t50 = - sin ( t75 ) * 24.0 * 0.66666666666666663 ; t51 = - ( cos ( t62 ) * 24.0 ) * 0.66666666666666663 ; t52 = - ( cos ( t64 ) * 24.0 ) * 0.66666666666666663 ; t53 = - ( cos ( t75 ) * 24.0 ) * 0.66666666666666663 ; t50 = ( intermediate_der21 * intermediate_der31 + t49 * intermediate_der28 ) + t50 * PMSM_v_ce ; intermediate_der21 = intermediate_der22 * 0.005 ; intermediate_der22 = t35 * 0.005 ; t35 = t34 * 0.005 ; t34 = ( t51 * intermediate_der31 + t52 * intermediate_der28 ) + t53 * PMSM_v_ce ; intermediate_der28 = t61 * 0.005 ; PMSM_v_ce = t65 * 0.005 ; intermediate_der31 = t63 * 0.005 ; t49 = - sin ( t62 ) * 24.0 ; t61 = - ( cos ( t62 ) * 24.0 ) ; t62 = - sin ( t64 ) * 24.0 ; t63 = - ( cos ( t64 ) * 24.0 ) ; t64 = - sin ( t75 ) * 24.0 ; t65 = - ( cos ( t75 ) * 24.0 ) ; out -> mDXF . mX [ 0UL ] = - ( t27 * 24.0 / 0.66666666666666663 ) ; out -> mDXF . mX [ 1UL ] = - ( - ( t69 * 24.0 ) / 0.89760000000000006 ) ; t5 [ 0UL ] = - ( t50 / 0.66666666666666663 ) ; t5 [ 1UL ] = - ( t34 / 0.89760000000000006 ) ; t5 [ 2UL ] = - ( t49 * t79 -> mX . mX [ 3UL ] + t61 * t79 -> mX . mX [ 4UL ] ) ; t5 [ 3UL ] = - ( t62 * t79 -> mX . mX [ 3UL ] + t63 * t79 -> mX . mX [ 4UL ] ) ; t5 [ 4UL ] = - ( t64 * t79 -> mX . mX [ 3UL ] + t65 * t79 -> mX . mX [ 4UL ] ) ; t6 [ 0UL ] = - ( - ( t79 -> mX . mX [ 0UL ] * 4.45E-5 * 24.0 ) / 0.89760000000000006 ) ; t6 [ 1UL ] = - ( ( t79 -> mX . mX [ 4UL ] * 4.45E-5 - t27 ) * 36.0 ) / 1.3464 ; t6 [ 2UL ] = - t39 ; t6 [ 3UL ] = - t41 ; t6 [ 4UL ] = - t43 ; t7 [ 0UL ] = - ( t79 -> mX . mX [ 0UL ] * 5.2E-5 * 24.0 / 0.66666666666666663 ) ; t7 [ 1UL ] = - ( ( t69 - t79 -> mX . mX [ 3UL ] * 5.2E-5 ) * 36.0 ) / 1.3464 ; t7 [ 2UL ] = - t40 ; t7 [ 3UL ] = - t42 ; t7 [ 4UL ] = - t44 ; for ( t12 = 0UL ; t12 < 5UL ; t12 ++ ) { out -> mDXF . mX [ t12 + 2UL ] = t5 [ t12 ] ; } for ( t12 = 0UL ; t12 < 5UL ; t12 ++ ) { out -> mDXF . mX [ t12 + 7UL ] = t6 [ t12 ] ; } for ( t12 = 0UL ; t12 < 5UL ; t12 ++ ) { out -> mDXF . mX [ t12 + 12UL ] = t7 [ t12 ] ; } out -> mDXF . mX [ 17UL ] = - ( intermediate_der21 / 0.66666666666666663 ) ; out -> mDXF . mX [ 18UL ] = - ( intermediate_der28 / 0.89760000000000006 ) ; out -> mDXF . mX [ 19UL ] = - ( t35 / 0.66666666666666663 ) ; out -> mDXF . mX [ 20UL ] = - ( intermediate_der31 / 0.89760000000000006 ) ; out -> mDXF . mX [ 21UL ] = - ( intermediate_der22 / 0.66666666666666663 ) ; out -> mDXF . mX [ 22UL ] = - ( PMSM_v_ce / 0.89760000000000006 ) ; ( void ) sys ; ( void ) out ; return 0 ; }
