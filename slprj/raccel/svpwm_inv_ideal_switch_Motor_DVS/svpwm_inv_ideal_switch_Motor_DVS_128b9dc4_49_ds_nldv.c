#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_nldv.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_nldv ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static boolean_T _cg_const_1 [ 35 ] = { false , false , false , true
, true , true , false , false , false , false , false , false , false , false
, false , false , false , false , false , false , false , false , false ,
false , false , false , false , false , false , false , false , false , false
, false , false } ; ( void ) t1 ; out -> mNLDV . mX [ 0 ] = _cg_const_1 [ 0 ]
; out -> mNLDV . mX [ 1 ] = _cg_const_1 [ 1 ] ; out -> mNLDV . mX [ 2 ] =
_cg_const_1 [ 2 ] ; out -> mNLDV . mX [ 3 ] = _cg_const_1 [ 3 ] ; out ->
mNLDV . mX [ 4 ] = _cg_const_1 [ 4 ] ; out -> mNLDV . mX [ 5 ] = _cg_const_1
[ 5 ] ; out -> mNLDV . mX [ 6 ] = _cg_const_1 [ 6 ] ; out -> mNLDV . mX [ 7 ]
= _cg_const_1 [ 7 ] ; out -> mNLDV . mX [ 8 ] = _cg_const_1 [ 8 ] ; out ->
mNLDV . mX [ 9 ] = _cg_const_1 [ 9 ] ; out -> mNLDV . mX [ 10 ] = _cg_const_1
[ 10 ] ; out -> mNLDV . mX [ 11 ] = _cg_const_1 [ 11 ] ; out -> mNLDV . mX [
12 ] = _cg_const_1 [ 12 ] ; out -> mNLDV . mX [ 13 ] = _cg_const_1 [ 13 ] ;
out -> mNLDV . mX [ 14 ] = _cg_const_1 [ 14 ] ; out -> mNLDV . mX [ 15 ] =
_cg_const_1 [ 15 ] ; out -> mNLDV . mX [ 16 ] = _cg_const_1 [ 16 ] ; out ->
mNLDV . mX [ 17 ] = _cg_const_1 [ 17 ] ; out -> mNLDV . mX [ 18 ] =
_cg_const_1 [ 18 ] ; out -> mNLDV . mX [ 19 ] = _cg_const_1 [ 19 ] ; out ->
mNLDV . mX [ 20 ] = _cg_const_1 [ 20 ] ; out -> mNLDV . mX [ 21 ] =
_cg_const_1 [ 21 ] ; out -> mNLDV . mX [ 22 ] = _cg_const_1 [ 22 ] ; out ->
mNLDV . mX [ 23 ] = _cg_const_1 [ 23 ] ; out -> mNLDV . mX [ 24 ] =
_cg_const_1 [ 24 ] ; out -> mNLDV . mX [ 25 ] = _cg_const_1 [ 25 ] ; out ->
mNLDV . mX [ 26 ] = _cg_const_1 [ 26 ] ; out -> mNLDV . mX [ 27 ] =
_cg_const_1 [ 27 ] ; out -> mNLDV . mX [ 28 ] = _cg_const_1 [ 28 ] ; out ->
mNLDV . mX [ 29 ] = _cg_const_1 [ 29 ] ; out -> mNLDV . mX [ 30 ] =
_cg_const_1 [ 30 ] ; out -> mNLDV . mX [ 31 ] = _cg_const_1 [ 31 ] ; out ->
mNLDV . mX [ 32 ] = _cg_const_1 [ 32 ] ; out -> mNLDV . mX [ 33 ] =
_cg_const_1 [ 33 ] ; out -> mNLDV . mX [ 34 ] = _cg_const_1 [ 34 ] ; ( void )
sys ; ( void ) out ; return 0 ; }
