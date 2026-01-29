#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_dxf.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_dxf ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t163 , NeDsMethodOutput
* out ) { real_T t29 [ 17 ] ; real_T t35 [ 17 ] ; real_T t34 [ 11 ] ; real_T
t28 [ 9 ] ; real_T t36 [ 7 ] ; real_T t37 [ 7 ] ; real_T t38 [ 7 ] ; real_T
t31 [ 5 ] ; real_T t32 [ 5 ] ; real_T t33 [ 5 ] ; real_T t44 [ 5 ] ; real_T
t45 [ 5 ] ; real_T t40 [ 4 ] ; real_T t41 [ 4 ] ; real_T t42 [ 4 ] ; real_T
t43 [ 4 ] ; real_T PMSM_v_ce ; real_T intermediate_der174 ; real_T
intermediate_der175 ; real_T intermediate_der177 ; real_T intermediate_der181
; real_T intermediate_der183 ; real_T t104 ; real_T t105 ; real_T t106 ;
real_T t107 ; real_T t108 ; real_T t109 ; real_T t110 ; real_T t114 ; real_T
t116 ; real_T t119 ; real_T t126 ; real_T t127 ; real_T t128 ; real_T t130 ;
real_T t136 ; real_T t137 ; real_T t4 ; real_T t5 ; real_T t7 ; real_T t8 ;
real_T t95 ; real_T t96 ; real_T t97 ; real_T t99 ; size_t t62 ; t136 = t163
-> mX . mX [ 4UL ] * 20.0 ; t96 = t136 ; t97 = t136 - 2.0943951023931953 ; t4
= t136 + 2.0943951023931953 ; t99 = cos ( t136 ) * 0.66666666666666663 ;
intermediate_der177 = cos ( t136 - 2.0943951023931953 ) * 0.66666666666666663
; intermediate_der174 = cos ( t136 + 2.0943951023931953 ) *
0.66666666666666663 ; intermediate_der183 = - sin ( t136 ) *
0.66666666666666663 ; t5 = - sin ( t136 - 2.0943951023931953 ) *
0.66666666666666663 ; t104 = - sin ( t136 + 2.0943951023931953 ) *
0.66666666666666663 ; t136 = t163 -> mX . mX [ 5UL ] * 0.0001646 + 0.045729 ;
t137 = t163 -> mX . mX [ 6UL ] * 0.0001612 ; t95 = t163 -> mX . mX [ 16UL ] -
t163 -> mX . mX [ 31UL ] * 0.0013 ; intermediate_der181 = t163 -> mX . mX [
13UL ] - t163 -> mX . mX [ 25UL ] * 0.0013 ; PMSM_v_ce = t163 -> mX . mX [
10UL ] - t163 -> mX . mX [ 26UL ] * 0.0013 ; t105 = cos ( t96 ) ; t106 = -
sin ( t96 ) ; t107 = cos ( t97 ) ; t108 = - sin ( t97 ) ; t109 = cos ( t4 ) ;
t110 = - sin ( t4 ) ; t114 = - sin ( t96 ) * 20.0 * 0.66666666666666663 ;
intermediate_der175 = - sin ( t97 ) * 20.0 * 0.66666666666666663 ; t116 = -
sin ( t4 ) * 20.0 * 0.66666666666666663 ; t7 = - ( cos ( t96 ) * 20.0 ) *
0.66666666666666663 ; t8 = - ( cos ( t97 ) * 20.0 ) * 0.66666666666666663 ;
t119 = - ( cos ( t4 ) * 20.0 ) * 0.66666666666666663 ; t126 = - sin ( t96 ) *
20.0 ; t127 = - ( cos ( t96 ) * 20.0 ) ; t128 = - sin ( t97 ) * 20.0 ; t97 =
- ( cos ( t97 ) * 20.0 ) ; t130 = - sin ( t4 ) * 20.0 ; t96 = - ( cos ( t4 )
* 20.0 ) ; if ( t163 -> mM . mX [ 47UL ] != 0 ) { t28 [ 4UL ] = 1.0 ; } else
{ t28 [ 4UL ] = 1.0E-6 ; } if ( t163 -> mM . mX [ 49UL ] != 0 ) { t28 [ 6UL ]
= 1.0 ; } else { t28 [ 6UL ] = 1.0E-6 ; } if ( t163 -> mM . mX [ 53UL ] != 0
) { t28 [ 8UL ] = 1.0 ; } else { t28 [ 8UL ] = 1.0E-6 ; } if ( t163 -> mM .
mX [ 43UL ] != 0 ) { t29 [ 5UL ] = - 0.001 ; } else { t29 [ 5UL ] = - 1.0E-9
; } if ( t163 -> mM . mX [ 45UL ] != 0 ) { t29 [ 7UL ] = - 0.001 ; } else {
t29 [ 7UL ] = - 1.0E-9 ; } if ( t163 -> mM . mX [ 47UL ] != 0 ) { t29 [ 10UL
] = 0.001 ; } else { t29 [ 10UL ] = 1.0E-9 ; } if ( t163 -> mM . mX [ 49UL ]
!= 0 ) { t29 [ 12UL ] = 0.001 ; } else { t29 [ 12UL ] = 1.0E-9 ; } if ( t163
-> mM . mX [ 51UL ] != 0 ) { t29 [ 14UL ] = - 0.001 ; } else { t29 [ 14UL ] =
- 1.0E-9 ; } if ( t163 -> mM . mX [ 53UL ] != 0 ) { t29 [ 16UL ] = 0.001 ; }
else { t29 [ 16UL ] = 1.0E-9 ; } if ( t163 -> mM . mX [ 47UL ] != 0 ) { t34 [
6UL ] = 0.001 ; } else { t34 [ 6UL ] = 1.0E-9 ; } if ( t163 -> mM . mX [ 49UL
] != 0 ) { t34 [ 8UL ] = 0.001 ; } else { t34 [ 8UL ] = 1.0E-9 ; } if ( t163
-> mM . mX [ 53UL ] != 0 ) { t34 [ 10UL ] = 0.001 ; } else { t34 [ 10UL ] =
1.0E-9 ; } if ( t163 -> mM . mX [ 43UL ] != 0 ) { t35 [ 5UL ] = -
1.000000000001 ; } else { t35 [ 5UL ] = - 1.000000000001E-6 ; } if ( t163 ->
mM . mX [ 45UL ] != 0 ) { t35 [ 7UL ] = - 1.000000000001 ; } else { t35 [ 7UL
] = - 1.000000000001E-6 ; } if ( t163 -> mM . mX [ 47UL ] != 0 ) { t35 [ 10UL
] = 1.000000000001 ; } else { t35 [ 10UL ] = 1.000000000001E-6 ; } if ( t163
-> mM . mX [ 49UL ] != 0 ) { t35 [ 12UL ] = 1.000000000001 ; } else { t35 [
12UL ] = 1.000000000001E-6 ; } if ( t163 -> mM . mX [ 51UL ] != 0 ) { t35 [
14UL ] = - 1.000000000001 ; } else { t35 [ 14UL ] = - 1.000000000001E-6 ; }
if ( t163 -> mM . mX [ 53UL ] != 0 ) { t35 [ 16UL ] = 1.000000000001 ; } else
{ t35 [ 16UL ] = 1.000000000001E-6 ; } if ( t163 -> mM . mX [ 51UL ] != 0 ) {
t36 [ 4UL ] = - 1.0 ; } else { t36 [ 4UL ] = - 1.0E-6 ; } if ( t163 -> mM .
mX [ 53UL ] != 0 ) { t36 [ 6UL ] = 1.0 ; } else { t36 [ 6UL ] = 1.0E-6 ; } if
( t163 -> mM . mX [ 45UL ] != 0 ) { t37 [ 4UL ] = - 1.0 ; } else { t37 [ 4UL
] = - 1.0E-6 ; } if ( t163 -> mM . mX [ 49UL ] != 0 ) { t37 [ 6UL ] = 1.0 ; }
else { t37 [ 6UL ] = 1.0E-6 ; } if ( t163 -> mM . mX [ 43UL ] != 0 ) { t38 [
4UL ] = - 1.0 ; } else { t38 [ 4UL ] = - 1.0E-6 ; } if ( t163 -> mM . mX [
47UL ] != 0 ) { t38 [ 6UL ] = 1.0 ; } else { t38 [ 6UL ] = 1.0E-6 ; } t28 [
0UL ] = 1.0 ; t28 [ 1UL ] = 1.0 ; t28 [ 2UL ] = 1.0 ; t28 [ 3UL ] = - 1.0 ;
t28 [ 5UL ] = - 1.0 ; t28 [ 7UL ] = - 1.0 ; t29 [ 0UL ] = 0.001 ; t29 [ 1UL ]
= 0.001 ; t29 [ 2UL ] = 0.001 ; t29 [ 3UL ] = 0.001 ; t29 [ 4UL ] = - 1.0 ;
t29 [ 6UL ] = 0.001 ; t29 [ 8UL ] = - 0.001 ; t29 [ 9UL ] = - 1.0 ; t29 [
11UL ] = - 0.001 ; t29 [ 13UL ] = 0.001 ; t29 [ 15UL ] = - 0.001 ; t31 [ 0UL
] = - ( ( ( t114 * t95 + intermediate_der175 * intermediate_der181 ) + t116 *
PMSM_v_ce ) / 0.66666666666666663 ) ; t31 [ 1UL ] = - ( ( ( t7 * t95 + t8 *
intermediate_der181 ) + t119 * PMSM_v_ce ) / 0.91458 ) ; t31 [ 2UL ] = - ( t126
* t163 -> mX . mX [ 5UL ] + t127 * t163 -> mX . mX [ 6UL ] ) ; t31 [ 3UL ] =
- ( t128 * t163 -> mX . mX [ 5UL ] + t97 * t163 -> mX . mX [ 6UL ] ) ; t31 [
4UL ] = - ( t130 * t163 -> mX . mX [ 5UL ] + t96 * t163 -> mX . mX [ 6UL ] )
; t32 [ 0UL ] = - ( - ( t163 -> mX . mX [ 2UL ] * 0.0001646 * 20.0 ) /
0.91458 ) ; t32 [ 1UL ] = - ( ( t163 -> mX . mX [ 6UL ] * 0.0001646 - t137 )
* 30.0 ) / 1.37187 ; t32 [ 2UL ] = - t105 ; t32 [ 3UL ] = - t107 ; t32 [ 4UL
] = - t109 ; t33 [ 0UL ] = - ( t163 -> mX . mX [ 2UL ] * 0.0001612 * 20.0 /
0.66666666666666663 ) ; t33 [ 1UL ] = - ( ( t136 - t163 -> mX . mX [ 5UL ] *
0.0001612 ) * 30.0 ) / 1.37187 ; t33 [ 2UL ] = - t106 ; t33 [ 3UL ] = - t108
; t33 [ 4UL ] = - t110 ; t34 [ 0UL ] = 0.001 ; t34 [ 1UL ] = 0.001 ; t34 [
2UL ] = 0.001 ; t34 [ 3UL ] = 1.0 ; t34 [ 4UL ] = - 0.001 ; t34 [ 5UL ] = 1.0
; t34 [ 7UL ] = - 0.001 ; t34 [ 9UL ] = - 0.001 ; t35 [ 0UL ] =
1.000000000001 ; t35 [ 1UL ] = 1.000000000001 ; t35 [ 2UL ] = 1.000000000001
; t35 [ 3UL ] = 1.000000000001 ; t35 [ 4UL ] = - 1.0E-9 ; t35 [ 6UL ] =
1.000000000001 ; t35 [ 8UL ] = - 1.000000000001 ; t35 [ 9UL ] = - 1.0E-9 ;
t35 [ 11UL ] = - 1.000000000001 ; t35 [ 13UL ] = 1.000000000001 ; t35 [ 15UL
] = - 1.000000000001 ; t36 [ 0UL ] = - ( intermediate_der174 /
0.66666666666666663 ) ; t36 [ 1UL ] = - ( t104 / 0.91458 ) ; t36 [ 2UL ] = -
1.0 ; t36 [ 3UL ] = 1.0 ; t36 [ 5UL ] = - 1.0 ; t37 [ 0UL ] = - ( intermediate_der177 / 0.66666666666666663 ) ; t37 [ 1UL ] = - ( t5 / 0.91458 ) ; t37 [ 2UL ] = - 1.0 ; t37 [ 3UL ] = 1.0 ; t37 [ 5UL ] = - 1.0 ; t38 [ 0UL ] = - ( t99 / 0.66666666666666663 ) ; t38 [ 1UL ] = - ( intermediate_der183 / 0.91458 ) ; t38 [ 2UL ] = - 1.0 ; t38 [ 3UL ] = 1.0 ; t38 [ 5UL ] = - 1.0 ; t40 [ 0UL ] = - 1.0 ; t40 [ 1UL ] = 1.0 ; t40 [ 2UL ] = - 1.0 ; t40 [ 3UL ] = 1.0 ; t41 [ 0UL ] = 1.0 ; t41 [ 1UL ] = - 1.0 ; t41 [ 2UL ] = 1.0 ; t41 [ 3UL ] = t163 -> mM . mX [ 49UL ] != 0 ? - 0.0001 : - 1.0 ; t42 [ 0UL ] = - 1.0 ; t42 [ 1UL ] = - 1.0 ; t42 [ 2UL ] = 1.0 ; t42 [ 3UL ] = 1.0 ; t43 [ 0UL ] = 1.0 ; t43 [ 1UL ] = 1.0 ; t43 [ 2UL ] = - 1.0 ; t43 [ 3UL ] = t163 -> mM . mX [ 53UL ] != 0 ? - 0.0001 : - 1.0 ; t44 [ 0UL ] = - ( intermediate_der177 * - 0.0013 / 0.66666666666666663 ) ; t44 [ 1UL ] = - ( t5 * - 0.0013 / 0.91458 ) ; t44 [ 2UL ] = 1.0 ; t44 [ 3UL ] = - 1.0 ; t44 [ 4UL ] = 1.0 ; t45 [ 0UL ] = - ( intermediate_der174 * - 0.0013 / 0.66666666666666663 ) ; t45 [ 1UL ] = - ( t104 * - 0.0013 / 0.91458 ) ; t45 [ 2UL ] = 1.0 ; t45 [ 3UL ] = 1.0 ; t45 [ 4UL ] = - 1.0 ; for ( t62 = 0UL ; t62 < 9UL ; t62 ++ ) { out -> mDXF . mX [ t62 ] = t28 [ t62 ] ; } for ( t62 = 0UL ; t62 < 17UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 9UL ] = t29 [ t62 ] ; } out -> mDXF . mX [ 26UL ] = - ( t137 * 20.0 / 0.66666666666666663 ) ; out -> mDXF . mX [ 27UL ] = - ( - ( t136 * 20.0 ) / 0.91458 ) ; for ( t62 = 0UL ; t62 < 5UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 28UL ] = t31 [ t62 ] ; } for ( t62 = 0UL ; t62 < 5UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 33UL ] = t32 [ t62 ] ; } for ( t62 = 0UL ; t62 < 5UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 38UL ] = t33 [ t62 ] ; } for ( t62 = 0UL ; t62 < 11UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 43UL ] = t34 [ t62 ] ; } for ( t62 = 0UL ; t62 < 17UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 54UL ] = t35 [ t62 ] ; } out -> mDXF . mX [ 71UL ] = 1.0 ; for ( t62 = 0UL ; t62 < 7UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 72UL ] = t36 [ t62 ] ; } out -> mDXF . mX [ 79UL ] = 1.0 ; out -> mDXF . mX [ 80UL ] = 1.0 ; for ( t62 = 0UL ; t62 < 7UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 81UL ] = t37 [ t62 ] ; } out -> mDXF . mX [ 88UL ] = 1.0 ; out -> mDXF . mX [ 89UL ] = 1.0 ; for ( t62 = 0UL ; t62 < 7UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 90UL ] = t38 [ t62 ] ; } out -> mDXF . mX [ 97UL ] = 1.0 ; out -> mDXF . mX [ 98UL ] = 1.0 ; out -> mDXF . mX [ 99UL ] = t163 -> mM . mX [ 43UL ] != 0 ? - 0.0001 : - 1.0 ; for ( t62 = 0UL ; t62 < 4UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 100UL ] = t40 [ t62 ] ; } for ( t62 = 0UL ; t62 < 4UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 104UL ] = t41 [ t62 ] ; } for ( t62 = 0UL ; t62 < 4UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 108UL ] = t42 [ t62 ] ; } for ( t62 = 0UL ; t62 < 4UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 112UL ] = t43 [ t62 ] ; } for ( t62 = 0UL ; t62 < 5UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 116UL ] = t44 [ t62 ] ; } for ( t62 = 0UL ; t62 < 5UL ; t62 ++ ) { out -> mDXF . mX [ t62 + 121UL ] = t45 [ t62 ] ; } out -> mDXF . mX [ 126UL ] = t163 -> mM . mX [ 42UL ] != 0 ? - 1.0 : - 0.001 ; out -> mDXF . mX [ 127UL ] = t163 -> mM . mX [ 42UL ] != 0 ? - 1.0E-5 : - 1.0 ; out -> mDXF . mX [ 128UL ] = 1.0 ; out -> mDXF . mX [ 129UL ] = t163 -> mM . mX [ 45UL ] != 0 ? - 0.0001 : - 1.0 ; out -> mDXF . mX [ 130UL ] = t163 -> mM . mX [ 44UL ] != 0 ? - 1.0 : - 0.001 ; out -> mDXF . mX [ 131UL ] = t163 -> mM . mX [ 44UL ] != 0 ? - 1.0E-5 : - 1.0 ; out -> mDXF . mX [ 132UL ] = 1.0 ; out -> mDXF . mX [ 133UL ] = t163 -> mM . mX [ 47UL ] != 0 ? - 0.0001 : - 1.0 ; out -> mDXF . mX [ 134UL ] = - ( t99 * - 0.0013 / 0.66666666666666663 ) ; out -> mDXF . mX [ 135UL ] = - ( intermediate_der183 * - 0.0013 / 0.91458 ) ; out -> mDXF . mX [ 136UL ] = 1.0 ; out -> mDXF . mX [ 137UL ] = t163 -> mM . mX [ 46UL ] != 0 ? - 1.0 : - 0.001 ; out -> mDXF . mX [ 138UL ] = t163 -> mM . mX [ 46UL ] != 0 ? - 1.0E-5 : - 1.0 ; out -> mDXF . mX [ 139UL ] = t163 -> mM . mX [ 48UL ] != 0 ? - 1.0 : - 0.001 ; out -> mDXF . mX [ 140UL ] = t163 -> mM . mX [ 48UL ] != 0 ? - 1.0E-5 : - 1.0 ; out -> mDXF . mX [ 141UL ] = 1.0 ; out -> mDXF . mX [ 142UL ] = t163 -> mM . mX [ 51UL ] != 0 ? - 0.0001 : - 1.0 ; out -> mDXF . mX [ 143UL ] = t163 -> mM . mX [ 50UL ] != 0 ? - 1.0 : - 0.001 ; out -> mDXF . mX [ 144UL ] = t163 -> mM . mX [ 50UL ] != 0 ? - 1.0E-5 : - 1.0 ; out -> mDXF . mX [ 145UL ] = t163 -> mM . mX [ 52UL ] != 0 ? - 1.0 : - 0.001 ; out -> mDXF . mX [ 146UL ] = t163 -> mM . mX [ 52UL ] != 0 ? - 1.0E-5 : - 1.0 ; ( void ) sys ; ( void ) out ; return 0 ; }
