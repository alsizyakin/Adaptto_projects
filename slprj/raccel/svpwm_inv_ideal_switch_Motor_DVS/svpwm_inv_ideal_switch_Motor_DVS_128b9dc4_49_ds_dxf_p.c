#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_dxf_p.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_dxf_p ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static int32_T _cg_const_2 [ 145 ] = { 7 , 9 , 11 , 18 , 20 , 21 , 23
, 27 , 29 , 7 , 9 , 11 , 12 , 13 , 14 , 15 , 17 , 18 , 19 , 20 , 21 , 23 , 24
, 26 , 27 , 29 , 4 , 5 , 31 , 32 , 33 , 5 , 30 , 31 , 32 , 33 , 4 , 30 , 31 ,
32 , 33 , 7 , 9 , 11 , 13 , 18 , 19 , 20 , 21 , 23 , 27 , 29 , 7 , 9 , 11 ,
12 , 13 , 14 , 15 , 17 , 18 , 19 , 20 , 21 , 23 , 24 , 26 , 27 , 29 , 6 , 4 ,
5 , 6 , 24 , 26 , 27 , 29 , 7 , 8 , 4 , 5 , 8 , 15 , 17 , 21 , 23 , 9 , 10 ,
4 , 5 , 10 , 12 , 14 , 18 , 20 , 11 , 13 , 14 , 13 , 16 , 19 , 22 , 13 , 16 ,
19 , 23 , 13 , 19 , 25 , 28 , 13 , 19 , 25 , 29 , 4 , 5 , 13 , 16 , 19 , 4 ,
5 , 13 , 19 , 25 , 12 , 13 , 16 , 17 , 15 , 16 , 19 , 20 , 4 , 5 , 19 , 18 ,
19 , 21 , 22 , 25 , 26 , 24 , 25 , 27 , 28 } ; static int32_T _cg_const_1 [
36 ] = { 0 , 9 , 26 , 26 , 31 , 36 , 41 , 52 , 69 , 70 , 77 , 78 , 79 , 86 ,
87 , 88 , 95 , 96 , 98 , 102 , 106 , 110 , 114 , 119 , 124 , 126 , 128 , 130
, 132 , 135 , 137 , 139 , 141 , 143 , 145 , 145 } ; int32_T i1 ; ( void ) t1
; out -> mDXF_P . mNumCol = 35UL ; out -> mDXF_P . mNumRow = 35UL ; out ->
mDXF_P . mJc [ 0 ] = _cg_const_1 [ 0 ] ; out -> mDXF_P . mJc [ 1 ] =
_cg_const_1 [ 1 ] ; out -> mDXF_P . mJc [ 2 ] = _cg_const_1 [ 2 ] ; out ->
mDXF_P . mJc [ 3 ] = _cg_const_1 [ 3 ] ; out -> mDXF_P . mJc [ 4 ] =
_cg_const_1 [ 4 ] ; out -> mDXF_P . mJc [ 5 ] = _cg_const_1 [ 5 ] ; out ->
mDXF_P . mJc [ 6 ] = _cg_const_1 [ 6 ] ; out -> mDXF_P . mJc [ 7 ] =
_cg_const_1 [ 7 ] ; out -> mDXF_P . mJc [ 8 ] = _cg_const_1 [ 8 ] ; out ->
mDXF_P . mJc [ 9 ] = _cg_const_1 [ 9 ] ; out -> mDXF_P . mJc [ 10 ] =
_cg_const_1 [ 10 ] ; out -> mDXF_P . mJc [ 11 ] = _cg_const_1 [ 11 ] ; out ->
mDXF_P . mJc [ 12 ] = _cg_const_1 [ 12 ] ; out -> mDXF_P . mJc [ 13 ] =
_cg_const_1 [ 13 ] ; out -> mDXF_P . mJc [ 14 ] = _cg_const_1 [ 14 ] ; out ->
mDXF_P . mJc [ 15 ] = _cg_const_1 [ 15 ] ; out -> mDXF_P . mJc [ 16 ] =
_cg_const_1 [ 16 ] ; out -> mDXF_P . mJc [ 17 ] = _cg_const_1 [ 17 ] ; out ->
mDXF_P . mJc [ 18 ] = _cg_const_1 [ 18 ] ; out -> mDXF_P . mJc [ 19 ] =
_cg_const_1 [ 19 ] ; out -> mDXF_P . mJc [ 20 ] = _cg_const_1 [ 20 ] ; out ->
mDXF_P . mJc [ 21 ] = _cg_const_1 [ 21 ] ; out -> mDXF_P . mJc [ 22 ] =
_cg_const_1 [ 22 ] ; out -> mDXF_P . mJc [ 23 ] = _cg_const_1 [ 23 ] ; out ->
mDXF_P . mJc [ 24 ] = _cg_const_1 [ 24 ] ; out -> mDXF_P . mJc [ 25 ] =
_cg_const_1 [ 25 ] ; out -> mDXF_P . mJc [ 26 ] = _cg_const_1 [ 26 ] ; out ->
mDXF_P . mJc [ 27 ] = _cg_const_1 [ 27 ] ; out -> mDXF_P . mJc [ 28 ] =
_cg_const_1 [ 28 ] ; out -> mDXF_P . mJc [ 29 ] = _cg_const_1 [ 29 ] ; out ->
mDXF_P . mJc [ 30 ] = _cg_const_1 [ 30 ] ; out -> mDXF_P . mJc [ 31 ] =
_cg_const_1 [ 31 ] ; out -> mDXF_P . mJc [ 32 ] = _cg_const_1 [ 32 ] ; out ->
mDXF_P . mJc [ 33 ] = _cg_const_1 [ 33 ] ; out -> mDXF_P . mJc [ 34 ] =
_cg_const_1 [ 34 ] ; out -> mDXF_P . mJc [ 35 ] = _cg_const_1 [ 35 ] ; for ( i1
= 0 ; i1 < 145 ; i1 ++ ) { out -> mDXF_P . mIr [ i1 ] = _cg_const_2 [ i1 ] ;
} ( void ) sys ; ( void ) out ; return 0 ; }
