#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_qx_p.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_qx_p ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static int32_T _cg_const_2 [ 155 ] = { 1 , 7 , 8 , 18 , 19 , 20 , 21
, 22 , 23 , 24 , 28 , 29 , 1 , 7 , 8 , 18 , 19 , 20 , 21 , 22 , 23 , 24 , 28
, 29 , 1 , 7 , 8 , 18 , 19 , 20 , 21 , 22 , 23 , 24 , 28 , 29 , 1 , 7 , 8 ,
18 , 19 , 20 , 21 , 22 , 23 , 24 , 1 , 7 , 8 , 18 , 19 , 20 , 21 , 22 , 23 ,
24 , 26 , 28 , 29 , 1 , 7 , 8 , 18 , 19 , 20 , 21 , 22 , 23 , 24 , 26 , 28 ,
29 , 1 , 7 , 8 , 18 , 19 , 20 , 21 , 22 , 23 , 24 , 28 , 29 , 32 , 1 , 7 , 8
, 18 , 19 , 20 , 21 , 22 , 23 , 24 , 28 , 29 , 32 , 1 , 7 , 8 , 18 , 19 , 20
, 21 , 22 , 23 , 24 , 26 , 28 , 29 , 1 , 7 , 8 , 18 , 19 , 20 , 21 , 22 , 23
, 24 , 28 , 29 , 32 , 19 , 20 , 23 , 26 , 1 , 7 , 8 , 19 , 20 , 21 , 22 , 23
, 24 , 28 , 29 , 1 , 7 , 8 , 19 , 20 , 21 , 22 , 23 , 24 , 28 , 29 , 21 , 22
, 24 , 32 , 35 } ; static int32_T _cg_const_1 [ 37 ] = { 0 , 0 , 12 , 12 , 12
, 12 , 12 , 12 , 24 , 36 , 36 , 36 , 36 , 36 , 36 , 36 , 36 , 36 , 36 , 46 ,
59 , 72 , 85 , 98 , 111 , 124 , 124 , 128 , 128 , 139 , 150 , 150 , 150 , 154
, 154 , 154 , 155 } ; int32_T i1 ; ( void ) t1 ; out -> mQX_P . mNumCol =
36UL ; out -> mQX_P . mNumRow = 36UL ; out -> mQX_P . mJc [ 0 ] = _cg_const_1
[ 0 ] ; out -> mQX_P . mJc [ 1 ] = _cg_const_1 [ 1 ] ; out -> mQX_P . mJc [ 2
] = _cg_const_1 [ 2 ] ; out -> mQX_P . mJc [ 3 ] = _cg_const_1 [ 3 ] ; out ->
mQX_P . mJc [ 4 ] = _cg_const_1 [ 4 ] ; out -> mQX_P . mJc [ 5 ] =
_cg_const_1 [ 5 ] ; out -> mQX_P . mJc [ 6 ] = _cg_const_1 [ 6 ] ; out ->
mQX_P . mJc [ 7 ] = _cg_const_1 [ 7 ] ; out -> mQX_P . mJc [ 8 ] =
_cg_const_1 [ 8 ] ; out -> mQX_P . mJc [ 9 ] = _cg_const_1 [ 9 ] ; out ->
mQX_P . mJc [ 10 ] = _cg_const_1 [ 10 ] ; out -> mQX_P . mJc [ 11 ] =
_cg_const_1 [ 11 ] ; out -> mQX_P . mJc [ 12 ] = _cg_const_1 [ 12 ] ; out ->
mQX_P . mJc [ 13 ] = _cg_const_1 [ 13 ] ; out -> mQX_P . mJc [ 14 ] =
_cg_const_1 [ 14 ] ; out -> mQX_P . mJc [ 15 ] = _cg_const_1 [ 15 ] ; out ->
mQX_P . mJc [ 16 ] = _cg_const_1 [ 16 ] ; out -> mQX_P . mJc [ 17 ] =
_cg_const_1 [ 17 ] ; out -> mQX_P . mJc [ 18 ] = _cg_const_1 [ 18 ] ; out ->
mQX_P . mJc [ 19 ] = _cg_const_1 [ 19 ] ; out -> mQX_P . mJc [ 20 ] =
_cg_const_1 [ 20 ] ; out -> mQX_P . mJc [ 21 ] = _cg_const_1 [ 21 ] ; out ->
mQX_P . mJc [ 22 ] = _cg_const_1 [ 22 ] ; out -> mQX_P . mJc [ 23 ] =
_cg_const_1 [ 23 ] ; out -> mQX_P . mJc [ 24 ] = _cg_const_1 [ 24 ] ; out ->
mQX_P . mJc [ 25 ] = _cg_const_1 [ 25 ] ; out -> mQX_P . mJc [ 26 ] =
_cg_const_1 [ 26 ] ; out -> mQX_P . mJc [ 27 ] = _cg_const_1 [ 27 ] ; out ->
mQX_P . mJc [ 28 ] = _cg_const_1 [ 28 ] ; out -> mQX_P . mJc [ 29 ] =
_cg_const_1 [ 29 ] ; out -> mQX_P . mJc [ 30 ] = _cg_const_1 [ 30 ] ; out ->
mQX_P . mJc [ 31 ] = _cg_const_1 [ 31 ] ; out -> mQX_P . mJc [ 32 ] =
_cg_const_1 [ 32 ] ; out -> mQX_P . mJc [ 33 ] = _cg_const_1 [ 33 ] ; out ->
mQX_P . mJc [ 34 ] = _cg_const_1 [ 34 ] ; out -> mQX_P . mJc [ 35 ] =
_cg_const_1 [ 35 ] ; out -> mQX_P . mJc [ 36 ] = _cg_const_1 [ 36 ] ; for ( i1
= 0 ; i1 < 155 ; i1 ++ ) { out -> mQX_P . mIr [ i1 ] = _cg_const_2 [ i1 ] ; }
( void ) sys ; ( void ) out ; return 0 ; }
