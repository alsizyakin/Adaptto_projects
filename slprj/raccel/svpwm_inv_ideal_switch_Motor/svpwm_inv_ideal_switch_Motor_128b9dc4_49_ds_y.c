#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_y.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_y ( const NeDynamicSystem
* sys , const NeDynamicSystemInput * t5 , NeDsMethodOutput * out ) { out ->
mY . mX [ 0UL ] = ( ( ( ( ( ( - t5 -> mX . mX [ 8UL ] - t5 -> mX . mX [ 10UL
] ) - t5 -> mX . mX [ 12UL ] ) + t5 -> mX . mX [ 13UL ] * 1.0E-9 ) + t5 -> mX
. mX [ 7UL ] ) + t5 -> mX . mX [ 9UL ] ) + t5 -> mX . mX [ 11UL ] ) + t5 ->
mX . mX [ 0UL ] ; out -> mY . mX [ 1UL ] = t5 -> mX . mX [ 13UL ] * 1.0E-9 +
t5 -> mX . mX [ 0UL ] ; out -> mY . mX [ 2UL ] = ( ( ( ( - t5 -> mX . mX [
7UL ] - t5 -> mX . mX [ 9UL ] ) - t5 -> mX . mX [ 11UL ] ) + t5 -> mX . mX [
8UL ] ) + t5 -> mX . mX [ 10UL ] ) + t5 -> mX . mX [ 12UL ] ; out -> mY . mX
[ 4UL ] = t5 -> mX . mX [ 2UL ] ; out -> mY . mX [ 10UL ] = t5 -> mX . mX [
21UL ] - t5 -> mX . mX [ 18UL ] ; out -> mY . mX [ 9UL ] = t5 -> mX . mX [
18UL ] - t5 -> mX . mX [ 15UL ] ; out -> mY . mX [ 11UL ] = t5 -> mX . mX [
15UL ] - t5 -> mX . mX [ 21UL ] ; out -> mY . mX [ 12UL ] = ( ( ( ( ( ( ( ( t5
-> mX . mX [ 0UL ] * 0.003 + t5 -> mX . mX [ 7UL ] * 0.002 ) + t5 -> mX . mX
[ 8UL ] * - 0.002 ) + t5 -> mX . mX [ 9UL ] * 0.002 ) + t5 -> mX . mX [ 10UL
] * - 0.002 ) + t5 -> mX . mX [ 11UL ] * 0.002 ) + t5 -> mX . mX [ 12UL ] * -
0.002 ) + t5 -> mX . mX [ 13UL ] * 1.0000000000029998 ) + t5 -> mX . mX [ 1UL
] ) - ( t5 -> mX . mX [ 0UL ] * - 0.001 + t5 -> mX . mX [ 13UL ] * -
1.0000000000000002E-12 ) ; out -> mY . mX [ 13UL ] = ( ( ( ( ( ( ( t5 -> mX .
mX [ 0UL ] * 0.002 + t5 -> mX . mX [ 7UL ] * 0.002 ) + t5 -> mX . mX [ 8UL ]
* - 0.002 ) + t5 -> mX . mX [ 9UL ] * 0.002 ) + t5 -> mX . mX [ 10UL ] * -
0.002 ) + t5 -> mX . mX [ 11UL ] * 0.002 ) + t5 -> mX . mX [ 12UL ] * - 0.002
) + t5 -> mX . mX [ 13UL ] * 2.0000000000000004E-12 ) + t5 -> mX . mX [ 1UL ]
; out -> mY . mX [ 3UL ] = t5 -> mX . mX [ 3UL ] ; out -> mY . mX [ 5UL ] = -
t5 -> mX . mX [ 35UL ] ; out -> mY . mX [ 6UL ] = t5 -> mX . mX [ 26UL ] ;
out -> mY . mX [ 7UL ] = t5 -> mX . mX [ 29UL ] ; out -> mY . mX [ 8UL ] = t5
-> mX . mX [ 33UL ] ; ( void ) sys ; ( void ) out ; return 0 ; }
