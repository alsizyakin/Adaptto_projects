#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_obs_il.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_obs_il ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static boolean_T _cg_const_1 [ 451 ] = { true , true , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true , true , true , true , true , true , false , false
, true , true , true , true , true , true , true , true , true , true , true
, true , false , false , false , false , false , false , true , true , true ,
true , true , true , true , true , true , true , true , true , false , false
, false , false , false , false , true , true , true , true , true , true ,
true , true , true , true , true , true , false , false , false , false ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
false , true , true , true , true , true , true , true , false , true , true
, false , true , true , true , true , true , true , true , true , true , true
, true , true , true , true , true , true , true , true , true , true , true
, true , true , true , true , true , true , false , true , true , true , true
, true , true , true , false , true , true , false , true , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , false , true , true , true , true , true , true , true , false
, true , true , false , true , true , true , true , true , true , true , true
, true , true , true , true , true , true , true , true , true , true , true
, true , true , true , true , true , true , true , true , false , true , true
, true , true , true , true , true , false , true , true , false , true ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true , false , true , true , true , true , true , true ,
true , false , true , true , false , true , true , true , true , true , true
, true , true , true , true , true , true , true , true , true , true , true
, true , true , true , true , true , true , true , true , true , true , false
, true , true , true , true , true , true , true , false , true , true ,
false , true , true , true , true , true , true , true , true , true , false
, false , true , true , true , true , true , true , true , false , true ,
true , true , false , true , true , true , true , true , true , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
true , false , true , false , true , true , true , true , true , true , true
, true , true , false , true , false , true , false , false , false , false ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true } ; int32_T i ; ( void ) t1 ; for ( i = 0 ; i < 451
; i ++ ) { out -> mOBS_IL . mX [ i ] = _cg_const_1 [ i ] ; } ( void ) sys ; ( void ) out ; return 0 ; }
