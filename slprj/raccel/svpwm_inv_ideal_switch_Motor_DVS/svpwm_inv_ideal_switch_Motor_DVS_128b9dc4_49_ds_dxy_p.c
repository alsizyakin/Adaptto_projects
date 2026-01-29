#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_dxy_p.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_dxy_p ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static int32_T _cg_const_1 [ 37 ] = { 0 , 1 , 4 , 5 , 6 , 6 , 6 , 6 ,
9 , 12 , 12 , 14 , 14 , 14 , 16 , 16 , 16 , 18 , 18 , 18 , 18 , 18 , 18 , 18
, 19 , 20 , 20 , 20 , 20 , 20 , 21 , 21 , 21 , 21 , 21 , 21 , 22 } ; static
int32_T _cg_const_2 [ 22 ] = { 12 , 1 , 2 , 12 , 4 , 3 , 0 , 2 , 12 , 1 , 2 ,
12 , 9 , 11 , 9 , 10 , 10 , 11 , 7 , 8 , 6 , 5 } ; ( void ) t1 ; out ->
mDXY_P . mNumCol = 36UL ; out -> mDXY_P . mNumRow = 13UL ; out -> mDXY_P .
mJc [ 0 ] = _cg_const_1 [ 0 ] ; out -> mDXY_P . mJc [ 1 ] = _cg_const_1 [ 1 ]
; out -> mDXY_P . mJc [ 2 ] = _cg_const_1 [ 2 ] ; out -> mDXY_P . mJc [ 3 ] =
_cg_const_1 [ 3 ] ; out -> mDXY_P . mJc [ 4 ] = _cg_const_1 [ 4 ] ; out ->
mDXY_P . mJc [ 5 ] = _cg_const_1 [ 5 ] ; out -> mDXY_P . mJc [ 6 ] =
_cg_const_1 [ 6 ] ; out -> mDXY_P . mJc [ 7 ] = _cg_const_1 [ 7 ] ; out ->
mDXY_P . mJc [ 8 ] = _cg_const_1 [ 8 ] ; out -> mDXY_P . mJc [ 9 ] =
_cg_const_1 [ 9 ] ; out -> mDXY_P . mJc [ 10 ] = _cg_const_1 [ 10 ] ; out ->
mDXY_P . mJc [ 11 ] = _cg_const_1 [ 11 ] ; out -> mDXY_P . mJc [ 12 ] =
_cg_const_1 [ 12 ] ; out -> mDXY_P . mJc [ 13 ] = _cg_const_1 [ 13 ] ; out ->
mDXY_P . mJc [ 14 ] = _cg_const_1 [ 14 ] ; out -> mDXY_P . mJc [ 15 ] =
_cg_const_1 [ 15 ] ; out -> mDXY_P . mJc [ 16 ] = _cg_const_1 [ 16 ] ; out ->
mDXY_P . mJc [ 17 ] = _cg_const_1 [ 17 ] ; out -> mDXY_P . mJc [ 18 ] =
_cg_const_1 [ 18 ] ; out -> mDXY_P . mJc [ 19 ] = _cg_const_1 [ 19 ] ; out ->
mDXY_P . mJc [ 20 ] = _cg_const_1 [ 20 ] ; out -> mDXY_P . mJc [ 21 ] =
_cg_const_1 [ 21 ] ; out -> mDXY_P . mJc [ 22 ] = _cg_const_1 [ 22 ] ; out ->
mDXY_P . mJc [ 23 ] = _cg_const_1 [ 23 ] ; out -> mDXY_P . mJc [ 24 ] =
_cg_const_1 [ 24 ] ; out -> mDXY_P . mJc [ 25 ] = _cg_const_1 [ 25 ] ; out ->
mDXY_P . mJc [ 26 ] = _cg_const_1 [ 26 ] ; out -> mDXY_P . mJc [ 27 ] =
_cg_const_1 [ 27 ] ; out -> mDXY_P . mJc [ 28 ] = _cg_const_1 [ 28 ] ; out ->
mDXY_P . mJc [ 29 ] = _cg_const_1 [ 29 ] ; out -> mDXY_P . mJc [ 30 ] =
_cg_const_1 [ 30 ] ; out -> mDXY_P . mJc [ 31 ] = _cg_const_1 [ 31 ] ; out ->
mDXY_P . mJc [ 32 ] = _cg_const_1 [ 32 ] ; out -> mDXY_P . mJc [ 33 ] =
_cg_const_1 [ 33 ] ; out -> mDXY_P . mJc [ 34 ] = _cg_const_1 [ 34 ] ; out ->
mDXY_P . mJc [ 35 ] = _cg_const_1 [ 35 ] ; out -> mDXY_P . mJc [ 36 ] =
_cg_const_1 [ 36 ] ; out -> mDXY_P . mIr [ 0 ] = _cg_const_2 [ 0 ] ; out ->
mDXY_P . mIr [ 1 ] = _cg_const_2 [ 1 ] ; out -> mDXY_P . mIr [ 2 ] =
_cg_const_2 [ 2 ] ; out -> mDXY_P . mIr [ 3 ] = _cg_const_2 [ 3 ] ; out ->
mDXY_P . mIr [ 4 ] = _cg_const_2 [ 4 ] ; out -> mDXY_P . mIr [ 5 ] =
_cg_const_2 [ 5 ] ; out -> mDXY_P . mIr [ 6 ] = _cg_const_2 [ 6 ] ; out ->
mDXY_P . mIr [ 7 ] = _cg_const_2 [ 7 ] ; out -> mDXY_P . mIr [ 8 ] =
_cg_const_2 [ 8 ] ; out -> mDXY_P . mIr [ 9 ] = _cg_const_2 [ 9 ] ; out ->
mDXY_P . mIr [ 10 ] = _cg_const_2 [ 10 ] ; out -> mDXY_P . mIr [ 11 ] =
_cg_const_2 [ 11 ] ; out -> mDXY_P . mIr [ 12 ] = _cg_const_2 [ 12 ] ; out ->
mDXY_P . mIr [ 13 ] = _cg_const_2 [ 13 ] ; out -> mDXY_P . mIr [ 14 ] =
_cg_const_2 [ 14 ] ; out -> mDXY_P . mIr [ 15 ] = _cg_const_2 [ 15 ] ; out ->
mDXY_P . mIr [ 16 ] = _cg_const_2 [ 16 ] ; out -> mDXY_P . mIr [ 17 ] =
_cg_const_2 [ 17 ] ; out -> mDXY_P . mIr [ 18 ] = _cg_const_2 [ 18 ] ; out ->
mDXY_P . mIr [ 19 ] = _cg_const_2 [ 19 ] ; out -> mDXY_P . mIr [ 20 ] =
_cg_const_2 [ 20 ] ; out -> mDXY_P . mIr [ 21 ] = _cg_const_2 [ 21 ] ; ( void
) sys ; ( void ) out ; return 0 ; }
