#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_ic.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_ic ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { out -> mIC . mX [ 0UL ] = t1 -> mP_R . mX [ 0UL ] ; out -> mIC . mX [
1UL ] = 0.0 ; out -> mIC . mX [ 2UL ] = 0.0 ; out -> mIC . mX [ 3UL ] = 0.0 ;
out -> mIC . mX [ 4UL ] = t1 -> mP_R . mX [ 2UL ] * 0.017453292519943295 ;
out -> mIC . mX [ 5UL ] = t1 -> mP_R . mX [ 3UL ] ; out -> mIC . mX [ 6UL ] =
t1 -> mP_R . mX [ 4UL ] ; out -> mIC . mX [ 7UL ] = 0.0 ; out -> mIC . mX [
8UL ] = 0.0 ; out -> mIC . mX [ 9UL ] = 0.0 ; out -> mIC . mX [ 10UL ] = 0.0
; out -> mIC . mX [ 11UL ] = 0.0 ; out -> mIC . mX [ 12UL ] = 0.0 ; out ->
mIC . mX [ 13UL ] = 0.0 ; out -> mIC . mX [ 14UL ] = 0.0 ; out -> mIC . mX [
15UL ] = 0.0 ; out -> mIC . mX [ 16UL ] = 0.0 ; out -> mIC . mX [ 17UL ] =
0.0 ; out -> mIC . mX [ 18UL ] = 0.0 ; out -> mIC . mX [ 19UL ] = 0.0 ; out
-> mIC . mX [ 20UL ] = 0.0 ; out -> mIC . mX [ 21UL ] = 0.0 ; out -> mIC . mX
[ 22UL ] = 0.0 ; out -> mIC . mX [ 23UL ] = 0.0 ; out -> mIC . mX [ 24UL ] =
0.0 ; out -> mIC . mX [ 25UL ] = 0.0 ; out -> mIC . mX [ 26UL ] = 0.0 ; out
-> mIC . mX [ 27UL ] = 0.0 ; out -> mIC . mX [ 28UL ] = 0.0 ; out -> mIC . mX
[ 29UL ] = 0.0 ; out -> mIC . mX [ 30UL ] = 0.0 ; out -> mIC . mX [ 31UL ] =
0.0 ; out -> mIC . mX [ 32UL ] = 0.0 ; out -> mIC . mX [ 33UL ] = 0.0 ; out
-> mIC . mX [ 34UL ] = 0.0 ; out -> mIC . mX [ 35UL ] = t1 -> mP_R . mX [ 1UL
] ; ( void ) sys ; ( void ) out ; return 0 ; }
