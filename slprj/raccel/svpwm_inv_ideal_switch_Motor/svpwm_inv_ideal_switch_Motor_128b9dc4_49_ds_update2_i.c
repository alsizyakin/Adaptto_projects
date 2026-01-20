#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_update2_i.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_update2_i ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t19 , NeDsMethodOutput *
out ) { size_t t0 ; size_t t12 ; size_t t15 ; size_t t3 ; size_t t6 ; size_t
t9 ; boolean_T t7 ; if ( ( t19 -> mCI . mX [ 107UL ] == 0 ) && ( t19 -> mU .
mX [ 2UL ] < 0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 0UL ] == 1UL ) ) { t0 =
2UL ; } else if ( ( t19 -> mCI . mX [ 106UL ] == 0 ) && ( t19 -> mU . mX [
2UL ] > 0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 0UL ] == 1UL ) ) { t0 = 5UL ;
} else if ( ( t19 -> mCI . mX [ 105UL ] == 0 ) && ( t19 -> mU . mX [ 2UL ] >
0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 0UL ] == 2UL ) ) { t0 = 3UL ; } else {
if ( ( ! ( fabs ( - t19 -> mD . mX [ 1UL ] ) == pmf_get_inf ( ) ) ) && ( ! ( -
t19 -> mD . mX [ 1UL ] != - t19 -> mD . mX [ 1UL ] ) ) ) { t7 = ( t19 -> mT .
mX [ 0UL ] > 0.0 ) ; } else { t7 = false ; } if ( ( t19 -> mCI . mX [ 104UL ]
== 0 ) && ( ( size_t ) t19 -> mQ . mX [ 0UL ] == 3UL ) && t7 ) { t0 = 5UL ; }
else if ( ( t19 -> mCI . mX [ 103UL ] == 0 ) && ( t19 -> mU . mX [ 2UL ] <
0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 0UL ] == 5UL ) ) { t0 = 6UL ; } else {
if ( ( ! ( fabs ( - t19 -> mD . mX [ 0UL ] ) == pmf_get_inf ( ) ) ) && ( ! ( -
t19 -> mD . mX [ 0UL ] != - t19 -> mD . mX [ 0UL ] ) ) ) { t7 = ( t19 -> mT .
mX [ 0UL ] > 0.0 ) ; } else { t7 = false ; } if ( ( t19 -> mCI . mX [ 102UL ]
== 0 ) && ( ( size_t ) t19 -> mQ . mX [ 0UL ] == 6UL ) && t7 ) { t0 = 2UL ; }
else { t0 = ( size_t ) t19 -> mQ . mX [ 0UL ] ; } } } if ( ( t19 -> mCI . mX
[ 118UL ] == 0 ) && ( t19 -> mU . mX [ 2UL ] > 0.0 ) && ( ( size_t ) t19 ->
mQ . mX [ 1UL ] == 1UL ) ) { t3 = 2UL ; } else if ( ( t19 -> mCI . mX [ 117UL
] == 0 ) && ( t19 -> mU . mX [ 2UL ] < 0.0 ) && ( ( size_t ) t19 -> mQ . mX [
1UL ] == 1UL ) ) { t3 = 5UL ; } else if ( ( t19 -> mCI . mX [ 116UL ] == 0 )
&& ( t19 -> mU . mX [ 2UL ] < 0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 1UL ] ==
2UL ) ) { t3 = 3UL ; } else { if ( ( ! ( fabs ( - t19 -> mD . mX [ 0UL ] ) ==
pmf_get_inf ( ) ) ) && ( ! ( - t19 -> mD . mX [ 0UL ] != - t19 -> mD . mX [
0UL ] ) ) ) { t7 = ( t19 -> mT . mX [ 0UL ] > 0.0 ) ; } else { t7 = false ; }
if ( ( t19 -> mCI . mX [ 115UL ] == 0 ) && ( ( size_t ) t19 -> mQ . mX [ 1UL
] == 3UL ) && t7 ) { t3 = 5UL ; } else if ( ( t19 -> mCI . mX [ 114UL ] == 0
) && ( t19 -> mU . mX [ 2UL ] > 0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 1UL ]
== 5UL ) ) { t3 = 6UL ; } else { if ( ( ! ( fabs ( - t19 -> mD . mX [ 1UL ] )
== pmf_get_inf ( ) ) ) && ( ! ( - t19 -> mD . mX [ 1UL ] != - t19 -> mD . mX
[ 1UL ] ) ) ) { t7 = ( t19 -> mT . mX [ 0UL ] > 0.0 ) ; } else { t7 = false ;
} if ( ( t19 -> mCI . mX [ 113UL ] == 0 ) && ( ( size_t ) t19 -> mQ . mX [
1UL ] == 6UL ) && t7 ) { t3 = 2UL ; } else { t3 = ( size_t ) t19 -> mQ . mX [
1UL ] ; } } } if ( ( t19 -> mCI . mX [ 131UL ] == 0 ) && ( t19 -> mU . mX [
1UL ] < 0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 2UL ] == 1UL ) ) { t6 = 2UL ;
} else if ( ( t19 -> mCI . mX [ 130UL ] == 0 ) && ( t19 -> mU . mX [ 1UL ] >
0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 2UL ] == 1UL ) ) { t6 = 5UL ; } else
if ( ( t19 -> mCI . mX [ 129UL ] == 0 ) && ( t19 -> mU . mX [ 1UL ] > 0.0 )
&& ( ( size_t ) t19 -> mQ . mX [ 2UL ] == 2UL ) ) { t6 = 3UL ; } else { if ( ( !
( fabs ( - t19 -> mD . mX [ 3UL ] ) == pmf_get_inf ( ) ) ) && ( ! ( - t19 ->
mD . mX [ 3UL ] != - t19 -> mD . mX [ 3UL ] ) ) ) { t7 = ( t19 -> mT . mX [
0UL ] > 0.0 ) ; } else { t7 = false ; } if ( ( t19 -> mCI . mX [ 128UL ] == 0
) && ( ( size_t ) t19 -> mQ . mX [ 2UL ] == 3UL ) && t7 ) { t6 = 5UL ; } else
if ( ( t19 -> mCI . mX [ 127UL ] == 0 ) && ( t19 -> mU . mX [ 1UL ] < 0.0 )
&& ( ( size_t ) t19 -> mQ . mX [ 2UL ] == 5UL ) ) { t6 = 6UL ; } else { if ( ( !
( fabs ( - t19 -> mD . mX [ 2UL ] ) == pmf_get_inf ( ) ) ) && ( ! ( - t19 ->
mD . mX [ 2UL ] != - t19 -> mD . mX [ 2UL ] ) ) ) { t7 = ( t19 -> mT . mX [
0UL ] > 0.0 ) ; } else { t7 = false ; } if ( ( t19 -> mCI . mX [ 126UL ] == 0
) && ( ( size_t ) t19 -> mQ . mX [ 2UL ] == 6UL ) && t7 ) { t6 = 2UL ; } else
{ t6 = ( size_t ) t19 -> mQ . mX [ 2UL ] ; } } } if ( ( t19 -> mCI . mX [
12UL ] == 0 ) && ( t19 -> mU . mX [ 1UL ] > 0.0 ) && ( ( size_t ) t19 -> mQ .
mX [ 3UL ] == 1UL ) ) { t9 = 2UL ; } else if ( ( t19 -> mCI . mX [ 11UL ] ==
0 ) && ( t19 -> mU . mX [ 1UL ] < 0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 3UL
] == 1UL ) ) { t9 = 5UL ; } else if ( ( t19 -> mCI . mX [ 10UL ] == 0 ) && ( t19
-> mU . mX [ 1UL ] < 0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 3UL ] == 2UL ) )
{ t9 = 3UL ; } else { if ( ( ! ( fabs ( - t19 -> mD . mX [ 2UL ] ) ==
pmf_get_inf ( ) ) ) && ( ! ( - t19 -> mD . mX [ 2UL ] != - t19 -> mD . mX [
2UL ] ) ) ) { t7 = ( t19 -> mT . mX [ 0UL ] > 0.0 ) ; } else { t7 = false ; }
if ( ( t19 -> mCI . mX [ 9UL ] == 0 ) && ( ( size_t ) t19 -> mQ . mX [ 3UL ]
== 3UL ) && t7 ) { t9 = 5UL ; } else if ( ( t19 -> mCI . mX [ 8UL ] == 0 ) &&
( t19 -> mU . mX [ 1UL ] > 0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 3UL ] ==
5UL ) ) { t9 = 6UL ; } else { if ( ( ! ( fabs ( - t19 -> mD . mX [ 3UL ] ) ==
pmf_get_inf ( ) ) ) && ( ! ( - t19 -> mD . mX [ 3UL ] != - t19 -> mD . mX [
3UL ] ) ) ) { t7 = ( t19 -> mT . mX [ 0UL ] > 0.0 ) ; } else { t7 = false ; }
if ( ( t19 -> mCI . mX [ 7UL ] == 0 ) && ( ( size_t ) t19 -> mQ . mX [ 3UL ]
== 6UL ) && t7 ) { t9 = 2UL ; } else { t9 = ( size_t ) t19 -> mQ . mX [ 3UL ]
; } } } if ( ( t19 -> mCI . mX [ 26UL ] == 0 ) && ( t19 -> mU . mX [ 3UL ] <
0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 4UL ] == 1UL ) ) { t12 = 2UL ; } else
if ( ( t19 -> mCI . mX [ 25UL ] == 0 ) && ( t19 -> mU . mX [ 3UL ] > 0.0 ) &&
( ( size_t ) t19 -> mQ . mX [ 4UL ] == 1UL ) ) { t12 = 5UL ; } else if ( ( t19
-> mCI . mX [ 23UL ] == 0 ) && ( t19 -> mU . mX [ 3UL ] > 0.0 ) && ( ( size_t
) t19 -> mQ . mX [ 4UL ] == 2UL ) ) { t12 = 3UL ; } else { if ( ( ! ( fabs ( -
t19 -> mD . mX [ 5UL ] ) == pmf_get_inf ( ) ) ) && ( ! ( - t19 -> mD . mX [
5UL ] != - t19 -> mD . mX [ 5UL ] ) ) ) { t7 = ( t19 -> mT . mX [ 0UL ] > 0.0
) ; } else { t7 = false ; } if ( ( t19 -> mCI . mX [ 22UL ] == 0 ) && ( ( size_t
) t19 -> mQ . mX [ 4UL ] == 3UL ) && t7 ) { t12 = 5UL ; } else if ( ( t19 ->
mCI . mX [ 21UL ] == 0 ) && ( t19 -> mU . mX [ 3UL ] < 0.0 ) && ( ( size_t )
t19 -> mQ . mX [ 4UL ] == 5UL ) ) { t12 = 6UL ; } else { if ( ( ! ( fabs ( -
t19 -> mD . mX [ 4UL ] ) == pmf_get_inf ( ) ) ) && ( ! ( - t19 -> mD . mX [
4UL ] != - t19 -> mD . mX [ 4UL ] ) ) ) { t7 = ( t19 -> mT . mX [ 0UL ] > 0.0
) ; } else { t7 = false ; } if ( ( t19 -> mCI . mX [ 20UL ] == 0 ) && ( ( size_t
) t19 -> mQ . mX [ 4UL ] == 6UL ) && t7 ) { t12 = 2UL ; } else { t12 = ( size_t
) t19 -> mQ . mX [ 4UL ] ; } } } if ( ( t19 -> mCI . mX [ 37UL ] == 0 ) && ( t19
-> mU . mX [ 3UL ] > 0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 5UL ] == 1UL ) )
{ t15 = 2UL ; } else if ( ( t19 -> mCI . mX [ 36UL ] == 0 ) && ( t19 -> mU .
mX [ 3UL ] < 0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 5UL ] == 1UL ) ) { t15 =
5UL ; } else if ( ( t19 -> mCI . mX [ 34UL ] == 0 ) && ( t19 -> mU . mX [ 3UL
] < 0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 5UL ] == 2UL ) ) { t15 = 3UL ; }
else { if ( ( ! ( fabs ( - t19 -> mD . mX [ 4UL ] ) == pmf_get_inf ( ) ) ) &&
( ! ( - t19 -> mD . mX [ 4UL ] != - t19 -> mD . mX [ 4UL ] ) ) ) { t7 = ( t19
-> mT . mX [ 0UL ] > 0.0 ) ; } else { t7 = false ; } if ( ( t19 -> mCI . mX [
33UL ] == 0 ) && ( ( size_t ) t19 -> mQ . mX [ 5UL ] == 3UL ) && t7 ) { t15 =
5UL ; } else if ( ( t19 -> mCI . mX [ 32UL ] == 0 ) && ( t19 -> mU . mX [ 3UL
] > 0.0 ) && ( ( size_t ) t19 -> mQ . mX [ 5UL ] == 5UL ) ) { t15 = 6UL ; }
else { if ( ( ! ( fabs ( - t19 -> mD . mX [ 5UL ] ) == pmf_get_inf ( ) ) ) &&
( ! ( - t19 -> mD . mX [ 5UL ] != - t19 -> mD . mX [ 5UL ] ) ) ) { t7 = ( t19
-> mT . mX [ 0UL ] > 0.0 ) ; } else { t7 = false ; } if ( ( t19 -> mCI . mX [
31UL ] == 0 ) && ( ( size_t ) t19 -> mQ . mX [ 5UL ] == 6UL ) && t7 ) { t15 =
2UL ; } else { t15 = ( size_t ) t19 -> mQ . mX [ 5UL ] ; } } } out ->
mUPDATE2_I . mX [ 0UL ] = ( int32_T ) t0 ; out -> mUPDATE2_I . mX [ 1UL ] = ( int32_T ) t3 ; out -> mUPDATE2_I . mX [ 2UL ] = ( int32_T ) t6 ; out -> mUPDATE2_I . mX [ 3UL ] = ( int32_T ) t9 ; out -> mUPDATE2_I . mX [ 4UL ] = ( int32_T ) t12 ; out -> mUPDATE2_I . mX [ 5UL ] = ( int32_T ) t15 ; out -> mUPDATE2_I . mX [ 6UL ] = ( int32_T ) ( t19 -> mQ . mX [ 6UL ] != 0 ) ; out -> mUPDATE2_I . mX [ 7UL ] = 0 ; ( void ) sys ; ( void ) out ; return 0 ; }
