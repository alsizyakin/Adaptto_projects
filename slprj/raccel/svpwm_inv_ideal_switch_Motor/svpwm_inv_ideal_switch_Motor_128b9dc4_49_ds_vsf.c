#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_vsf.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_vsf ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { ( void ) t1 ; out -> mVSF . mX [ 0 ] = false ; out -> mVSF . mX [ 1 ]
= false ; out -> mVSF . mX [ 2 ] = false ; out -> mVSF . mX [ 3 ] = false ;
out -> mVSF . mX [ 4 ] = false ; out -> mVSF . mX [ 5 ] = false ; out -> mVSF
. mX [ 6 ] = false ; out -> mVSF . mX [ 7 ] = false ; out -> mVSF . mX [ 8 ]
= false ; out -> mVSF . mX [ 9 ] = false ; out -> mVSF . mX [ 10 ] = false ;
out -> mVSF . mX [ 11 ] = false ; out -> mVSF . mX [ 12 ] = false ; out ->
mVSF . mX [ 13 ] = false ; out -> mVSF . mX [ 14 ] = false ; out -> mVSF . mX
[ 15 ] = false ; out -> mVSF . mX [ 16 ] = false ; out -> mVSF . mX [ 17 ] =
false ; out -> mVSF . mX [ 18 ] = false ; out -> mVSF . mX [ 19 ] = false ;
out -> mVSF . mX [ 20 ] = false ; out -> mVSF . mX [ 21 ] = false ; out ->
mVSF . mX [ 22 ] = false ; out -> mVSF . mX [ 23 ] = false ; out -> mVSF . mX
[ 24 ] = false ; out -> mVSF . mX [ 25 ] = false ; out -> mVSF . mX [ 26 ] =
false ; out -> mVSF . mX [ 27 ] = false ; out -> mVSF . mX [ 28 ] = false ;
out -> mVSF . mX [ 29 ] = false ; out -> mVSF . mX [ 30 ] = false ; out ->
mVSF . mX [ 31 ] = false ; out -> mVSF . mX [ 32 ] = false ; out -> mVSF . mX
[ 33 ] = false ; out -> mVSF . mX [ 34 ] = false ; out -> mVSF . mX [ 35 ] =
false ; ( void ) sys ; ( void ) out ; return 0 ; }
