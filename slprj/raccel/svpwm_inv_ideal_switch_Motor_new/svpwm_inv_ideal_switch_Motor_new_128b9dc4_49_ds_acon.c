#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_acon.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_acon ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t43 , NeDsMethodOutput *
out ) { ( void ) t43 ; out -> mACON . mX [ 2UL ] = 0.004 ; out -> mACON . mX
[ 21UL ] = 1.000000000004 ; out -> mACON . mX [ 5UL ] = 1.0 ; out -> mACON .
mX [ 19UL ] = - 1.0E-9 ; out -> mACON . mX [ 29UL ] = - 0.73710435923518036 ;
out -> mACON . mX [ 0UL ] = - 1.0 ; out -> mACON . mX [ 1UL ] = - 0.0 ; out
-> mACON . mX [ 3UL ] = - 0.0 ; out -> mACON . mX [ 4UL ] = 1.0 ; out ->
mACON . mX [ 6UL ] = - 1.0 ; out -> mACON . mX [ 7UL ] = - 1.0 ; out -> mACON
. mX [ 8UL ] = 0.002 ; out -> mACON . mX [ 9UL ] = 1.0 ; out -> mACON . mX [
10UL ] = - 0.002 ; out -> mACON . mX [ 11UL ] = - 1.0 ; out -> mACON . mX [
12UL ] = 0.002 ; out -> mACON . mX [ 13UL ] = 1.0 ; out -> mACON . mX [ 14UL
] = - 0.002 ; out -> mACON . mX [ 15UL ] = - 1.0 ; out -> mACON . mX [ 16UL ]
= 0.002 ; out -> mACON . mX [ 17UL ] = 1.0 ; out -> mACON . mX [ 18UL ] = -
0.002 ; out -> mACON . mX [ 20UL ] = - 1.0 ; out -> mACON . mX [ 22UL ] = -
1.0E-12 ; out -> mACON . mX [ 23UL ] = - 1.0E-12 ; out -> mACON . mX [ 24UL ]
= - 1.0E-12 ; out -> mACON . mX [ 25UL ] = 1.0 ; out -> mACON . mX [ 26UL ] =
1.0 ; out -> mACON . mX [ 27UL ] = 1.0 ; out -> mACON . mX [ 28UL ] = 1.0 ; ( void ) sys ; ( void ) out ; return 0 ; }
