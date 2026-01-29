#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_dxf_p.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_DVS_new_param_128b9dc4_49_ds_dxf_p ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static int32_T _cg_const_2 [ 147 ] = { 8 , 10 , 12 , 20 , 22 , 23 ,
25 , 29 , 31 , 8 , 10 , 12 , 14 , 15 , 16 , 17 , 19 , 20 , 21 , 22 , 23 , 25
, 26 , 28 , 29 , 31 , 5 , 6 , 5 , 6 , 33 , 34 , 35 , 6 , 32 , 33 , 34 , 35 ,
5 , 32 , 33 , 34 , 35 , 8 , 10 , 12 , 15 , 20 , 21 , 22 , 23 , 25 , 29 , 31 ,
8 , 10 , 12 , 14 , 15 , 16 , 17 , 19 , 20 , 21 , 22 , 23 , 25 , 26 , 28 , 29
, 31 , 7 , 5 , 6 , 7 , 26 , 28 , 29 , 31 , 8 , 9 , 5 , 6 , 9 , 17 , 19 , 23 ,
25 , 10 , 11 , 5 , 6 , 11 , 14 , 16 , 20 , 22 , 12 , 15 , 16 , 15 , 18 , 21 ,
24 , 15 , 18 , 21 , 25 , 15 , 21 , 27 , 30 , 15 , 21 , 27 , 31 , 5 , 6 , 15 ,
18 , 21 , 5 , 6 , 15 , 21 , 27 , 14 , 15 , 18 , 19 , 17 , 18 , 21 , 22 , 5 ,
6 , 21 , 20 , 21 , 23 , 24 , 27 , 28 , 26 , 27 , 29 , 30 } ; static int32_T
_cg_const_1 [ 38 ] = { 0 , 9 , 26 , 28 , 28 , 33 , 38 , 43 , 54 , 71 , 72 ,
79 , 80 , 81 , 88 , 89 , 90 , 97 , 98 , 98 , 98 , 100 , 104 , 108 , 112 , 116
, 121 , 126 , 128 , 130 , 132 , 134 , 137 , 139 , 141 , 143 , 145 , 147 } ;
int32_T i1 ; ( void ) t1 ; out -> mDXF_P . mNumCol = 37UL ; out -> mDXF_P .
mNumRow = 37UL ; out -> mDXF_P . mJc [ 0 ] = _cg_const_1 [ 0 ] ; out ->
mDXF_P . mJc [ 1 ] = _cg_const_1 [ 1 ] ; out -> mDXF_P . mJc [ 2 ] =
_cg_const_1 [ 2 ] ; out -> mDXF_P . mJc [ 3 ] = _cg_const_1 [ 3 ] ; out ->
mDXF_P . mJc [ 4 ] = _cg_const_1 [ 4 ] ; out -> mDXF_P . mJc [ 5 ] =
_cg_const_1 [ 5 ] ; out -> mDXF_P . mJc [ 6 ] = _cg_const_1 [ 6 ] ; out ->
mDXF_P . mJc [ 7 ] = _cg_const_1 [ 7 ] ; out -> mDXF_P . mJc [ 8 ] =
_cg_const_1 [ 8 ] ; out -> mDXF_P . mJc [ 9 ] = _cg_const_1 [ 9 ] ; out ->
mDXF_P . mJc [ 10 ] = _cg_const_1 [ 10 ] ; out -> mDXF_P . mJc [ 11 ] =
_cg_const_1 [ 11 ] ; out -> mDXF_P . mJc [ 12 ] = _cg_const_1 [ 12 ] ; out ->
mDXF_P . mJc [ 13 ] = _cg_const_1 [ 13 ] ; out -> mDXF_P . mJc [ 14 ] =
_cg_const_1 [ 14 ] ; out -> mDXF_P . mJc [ 15 ] = _cg_const_1 [ 15 ] ; out ->
mDXF_P . mJc [ 16 ] = _cg_const_1 [ 16 ] ; out -> mDXF_P . mJc [ 17 ] =
_cg_const_1 [ 17 ] ; out -> mDXF_P . mJc [ 18 ] = _cg_const_1 [ 18 ] ; out ->
mDXF_P . mJc [ 19 ] = _cg_const_1 [ 19 ] ; out -> mDXF_P . mJc [ 20 ] =
_cg_const_1 [ 20 ] ; out -> mDXF_P . mJc [ 21 ] = _cg_const_1 [ 21 ] ; out ->
mDXF_P . mJc [ 22 ] = _cg_const_1 [ 22 ] ; out -> mDXF_P . mJc [ 23 ] =
_cg_const_1 [ 23 ] ; out -> mDXF_P . mJc [ 24 ] = _cg_const_1 [ 24 ] ; out ->
mDXF_P . mJc [ 25 ] = _cg_const_1 [ 25 ] ; out -> mDXF_P . mJc [ 26 ] =
_cg_const_1 [ 26 ] ; out -> mDXF_P . mJc [ 27 ] = _cg_const_1 [ 27 ] ; out ->
mDXF_P . mJc [ 28 ] = _cg_const_1 [ 28 ] ; out -> mDXF_P . mJc [ 29 ] =
_cg_const_1 [ 29 ] ; out -> mDXF_P . mJc [ 30 ] = _cg_const_1 [ 30 ] ; out ->
mDXF_P . mJc [ 31 ] = _cg_const_1 [ 31 ] ; out -> mDXF_P . mJc [ 32 ] =
_cg_const_1 [ 32 ] ; out -> mDXF_P . mJc [ 33 ] = _cg_const_1 [ 33 ] ; out ->
mDXF_P . mJc [ 34 ] = _cg_const_1 [ 34 ] ; out -> mDXF_P . mJc [ 35 ] =
_cg_const_1 [ 35 ] ; out -> mDXF_P . mJc [ 36 ] = _cg_const_1 [ 36 ] ; out ->
mDXF_P . mJc [ 37 ] = _cg_const_1 [ 37 ] ; for ( i1 = 0 ; i1 < 147 ; i1 ++ )
{ out -> mDXF_P . mIr [ i1 ] = _cg_const_2 [ i1 ] ; } ( void ) sys ; ( void )
out ; return 0 ; }
