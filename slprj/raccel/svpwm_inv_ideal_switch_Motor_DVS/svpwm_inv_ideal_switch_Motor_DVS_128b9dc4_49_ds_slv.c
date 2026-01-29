#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_slv.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_slv ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { ( void ) t1 ; out -> mSLV . mX [ 0 ] = false ; out -> mSLV . mX [ 1 ]
= false ; out -> mSLV . mX [ 2 ] = false ; out -> mSLV . mX [ 3 ] = false ;
out -> mSLV . mX [ 4 ] = false ; out -> mSLV . mX [ 5 ] = false ; out -> mSLV
. mX [ 6 ] = false ; out -> mSLV . mX [ 7 ] = false ; out -> mSLV . mX [ 8 ]
= false ; out -> mSLV . mX [ 9 ] = false ; out -> mSLV . mX [ 10 ] = false ;
out -> mSLV . mX [ 11 ] = false ; out -> mSLV . mX [ 12 ] = false ; out ->
mSLV . mX [ 13 ] = false ; out -> mSLV . mX [ 14 ] = false ; out -> mSLV . mX
[ 15 ] = false ; out -> mSLV . mX [ 16 ] = false ; out -> mSLV . mX [ 17 ] =
false ; out -> mSLV . mX [ 18 ] = false ; out -> mSLV . mX [ 19 ] = false ;
out -> mSLV . mX [ 20 ] = false ; out -> mSLV . mX [ 21 ] = false ; out ->
mSLV . mX [ 22 ] = false ; out -> mSLV . mX [ 23 ] = false ; out -> mSLV . mX
[ 24 ] = false ; out -> mSLV . mX [ 25 ] = false ; out -> mSLV . mX [ 26 ] =
false ; out -> mSLV . mX [ 27 ] = false ; out -> mSLV . mX [ 28 ] = false ;
out -> mSLV . mX [ 29 ] = false ; out -> mSLV . mX [ 30 ] = false ; out ->
mSLV . mX [ 31 ] = false ; out -> mSLV . mX [ 32 ] = false ; out -> mSLV . mX
[ 33 ] = false ; out -> mSLV . mX [ 34 ] = false ; out -> mSLV . mX [ 35 ] =
false ; ( void ) sys ; ( void ) out ; return 0 ; }
