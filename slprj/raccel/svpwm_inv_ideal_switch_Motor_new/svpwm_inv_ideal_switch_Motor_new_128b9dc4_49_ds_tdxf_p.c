#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_tdxf_p.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_new_128b9dc4_49_ds_tdxf_p ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static int32_T _cg_const_2 [ 170 ] = { 0 , 2 , 13 , 15 , 16 , 18 , 25
, 27 , 35 , 0 , 13 , 15 , 16 , 18 , 25 , 27 , 35 , 1 , 4 , 5 , 6 , 5 , 6 , 32
, 33 , 34 , 6 , 31 , 32 , 33 , 34 , 5 , 31 , 32 , 33 , 34 , 0 , 13 , 14 , 15
, 16 , 18 , 20 , 25 , 27 , 35 , 0 , 13 , 15 , 16 , 18 , 20 , 25 , 27 , 35 , 0
, 13 , 15 , 16 , 17 , 18 , 23 , 25 , 27 , 35 , 0 , 13 , 15 , 16 , 18 , 23 ,
25 , 27 , 35 , 0 , 13 , 15 , 16 , 18 , 25 , 26 , 27 , 29 , 35 , 0 , 13 , 15 ,
16 , 18 , 25 , 27 , 29 , 35 , 0 , 2 , 13 , 15 , 16 , 18 , 25 , 27 , 35 , 7 ,
27 , 5 , 6 , 7 , 25 , 27 , 28 , 30 , 34 , 8 , 30 , 9 , 18 , 5 , 6 , 9 , 16 ,
18 , 22 , 24 , 33 , 10 , 24 , 11 , 15 , 5 , 6 , 11 , 13 , 15 , 19 , 21 , 32 ,
12 , 21 , 13 , 14 , 16 , 17 , 20 , 21 , 5 , 6 , 20 , 32 , 19 , 20 , 23 , 24 ,
5 , 6 , 23 , 33 , 22 , 23 , 25 , 26 , 29 , 30 , 5 , 6 , 29 , 34 , 28 , 29 , 3
, 31 } ; static int32_T _cg_const_1 [ 37 ] = { 0 , 9 , 17 , 21 , 21 , 26 , 31
, 36 , 46 , 55 , 65 , 74 , 84 , 93 , 102 , 104 , 112 , 114 , 116 , 124 , 126
, 128 , 136 , 138 , 140 , 142 , 144 , 148 , 150 , 152 , 156 , 158 , 160 , 162
, 166 , 168 , 170 } ; int32_T i1 ; ( void ) t1 ; out -> mTDXF_P . mNumCol =
36UL ; out -> mTDXF_P . mNumRow = 36UL ; out -> mTDXF_P . mJc [ 0 ] =
_cg_const_1 [ 0 ] ; out -> mTDXF_P . mJc [ 1 ] = _cg_const_1 [ 1 ] ; out ->
mTDXF_P . mJc [ 2 ] = _cg_const_1 [ 2 ] ; out -> mTDXF_P . mJc [ 3 ] =
_cg_const_1 [ 3 ] ; out -> mTDXF_P . mJc [ 4 ] = _cg_const_1 [ 4 ] ; out ->
mTDXF_P . mJc [ 5 ] = _cg_const_1 [ 5 ] ; out -> mTDXF_P . mJc [ 6 ] =
_cg_const_1 [ 6 ] ; out -> mTDXF_P . mJc [ 7 ] = _cg_const_1 [ 7 ] ; out ->
mTDXF_P . mJc [ 8 ] = _cg_const_1 [ 8 ] ; out -> mTDXF_P . mJc [ 9 ] =
_cg_const_1 [ 9 ] ; out -> mTDXF_P . mJc [ 10 ] = _cg_const_1 [ 10 ] ; out ->
mTDXF_P . mJc [ 11 ] = _cg_const_1 [ 11 ] ; out -> mTDXF_P . mJc [ 12 ] =
_cg_const_1 [ 12 ] ; out -> mTDXF_P . mJc [ 13 ] = _cg_const_1 [ 13 ] ; out
-> mTDXF_P . mJc [ 14 ] = _cg_const_1 [ 14 ] ; out -> mTDXF_P . mJc [ 15 ] =
_cg_const_1 [ 15 ] ; out -> mTDXF_P . mJc [ 16 ] = _cg_const_1 [ 16 ] ; out
-> mTDXF_P . mJc [ 17 ] = _cg_const_1 [ 17 ] ; out -> mTDXF_P . mJc [ 18 ] =
_cg_const_1 [ 18 ] ; out -> mTDXF_P . mJc [ 19 ] = _cg_const_1 [ 19 ] ; out
-> mTDXF_P . mJc [ 20 ] = _cg_const_1 [ 20 ] ; out -> mTDXF_P . mJc [ 21 ] =
_cg_const_1 [ 21 ] ; out -> mTDXF_P . mJc [ 22 ] = _cg_const_1 [ 22 ] ; out
-> mTDXF_P . mJc [ 23 ] = _cg_const_1 [ 23 ] ; out -> mTDXF_P . mJc [ 24 ] =
_cg_const_1 [ 24 ] ; out -> mTDXF_P . mJc [ 25 ] = _cg_const_1 [ 25 ] ; out
-> mTDXF_P . mJc [ 26 ] = _cg_const_1 [ 26 ] ; out -> mTDXF_P . mJc [ 27 ] =
_cg_const_1 [ 27 ] ; out -> mTDXF_P . mJc [ 28 ] = _cg_const_1 [ 28 ] ; out
-> mTDXF_P . mJc [ 29 ] = _cg_const_1 [ 29 ] ; out -> mTDXF_P . mJc [ 30 ] =
_cg_const_1 [ 30 ] ; out -> mTDXF_P . mJc [ 31 ] = _cg_const_1 [ 31 ] ; out
-> mTDXF_P . mJc [ 32 ] = _cg_const_1 [ 32 ] ; out -> mTDXF_P . mJc [ 33 ] =
_cg_const_1 [ 33 ] ; out -> mTDXF_P . mJc [ 34 ] = _cg_const_1 [ 34 ] ; out
-> mTDXF_P . mJc [ 35 ] = _cg_const_1 [ 35 ] ; out -> mTDXF_P . mJc [ 36 ] =
_cg_const_1 [ 36 ] ; for ( i1 = 0 ; i1 < 170 ; i1 ++ ) { out -> mTDXF_P . mIr
[ i1 ] = _cg_const_2 [ i1 ] ; } ( void ) sys ; ( void ) out ; return 0 ; }
