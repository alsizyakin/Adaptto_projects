#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_q1_p.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_q1_p ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static int32_T _cg_const_2 [ 16 ] = { 1 , 7 , 8 , 18 , 19 , 20 , 21 ,
22 , 23 , 24 , 25 , 26 , 28 , 30 , 31 , 34 } ; ( void ) t1 ; out -> mQ1_P .
mNumCol = 1UL ; out -> mQ1_P . mNumRow = 37UL ; out -> mQ1_P . mJc [ 0 ] = 0
; out -> mQ1_P . mJc [ 1 ] = 16 ; out -> mQ1_P . mIr [ 0 ] = _cg_const_2 [ 0
] ; out -> mQ1_P . mIr [ 1 ] = _cg_const_2 [ 1 ] ; out -> mQ1_P . mIr [ 2 ] =
_cg_const_2 [ 2 ] ; out -> mQ1_P . mIr [ 3 ] = _cg_const_2 [ 3 ] ; out ->
mQ1_P . mIr [ 4 ] = _cg_const_2 [ 4 ] ; out -> mQ1_P . mIr [ 5 ] =
_cg_const_2 [ 5 ] ; out -> mQ1_P . mIr [ 6 ] = _cg_const_2 [ 6 ] ; out ->
mQ1_P . mIr [ 7 ] = _cg_const_2 [ 7 ] ; out -> mQ1_P . mIr [ 8 ] =
_cg_const_2 [ 8 ] ; out -> mQ1_P . mIr [ 9 ] = _cg_const_2 [ 9 ] ; out ->
mQ1_P . mIr [ 10 ] = _cg_const_2 [ 10 ] ; out -> mQ1_P . mIr [ 11 ] =
_cg_const_2 [ 11 ] ; out -> mQ1_P . mIr [ 12 ] = _cg_const_2 [ 12 ] ; out ->
mQ1_P . mIr [ 13 ] = _cg_const_2 [ 13 ] ; out -> mQ1_P . mIr [ 14 ] =
_cg_const_2 [ 14 ] ; out -> mQ1_P . mIr [ 15 ] = _cg_const_2 [ 15 ] ; ( void
) sys ; ( void ) out ; return 0 ; }
