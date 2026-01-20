#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_dxicr_p.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_dxicr_p ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static int32_T _cg_const_1 [ 37 ] = { 0 , 1 , 2 , 2 , 2 , 2 , 2 , 2 ,
3 , 4 , 5 , 6 , 7 , 8 , 9 , 9 , 9 , 9 , 9 , 9 , 9 , 9 , 9 , 9 , 9 , 9 , 9 , 9
, 9 , 9 , 9 , 9 , 9 , 9 , 9 , 9 , 9 } ; ( void ) t1 ; out -> mDXICR_P .
mNumCol = 36UL ; out -> mDXICR_P . mNumRow = 7UL ; out -> mDXICR_P . mJc [ 0
] = _cg_const_1 [ 0 ] ; out -> mDXICR_P . mJc [ 1 ] = _cg_const_1 [ 1 ] ; out
-> mDXICR_P . mJc [ 2 ] = _cg_const_1 [ 2 ] ; out -> mDXICR_P . mJc [ 3 ] =
_cg_const_1 [ 3 ] ; out -> mDXICR_P . mJc [ 4 ] = _cg_const_1 [ 4 ] ; out ->
mDXICR_P . mJc [ 5 ] = _cg_const_1 [ 5 ] ; out -> mDXICR_P . mJc [ 6 ] =
_cg_const_1 [ 6 ] ; out -> mDXICR_P . mJc [ 7 ] = _cg_const_1 [ 7 ] ; out ->
mDXICR_P . mJc [ 8 ] = _cg_const_1 [ 8 ] ; out -> mDXICR_P . mJc [ 9 ] =
_cg_const_1 [ 9 ] ; out -> mDXICR_P . mJc [ 10 ] = _cg_const_1 [ 10 ] ; out
-> mDXICR_P . mJc [ 11 ] = _cg_const_1 [ 11 ] ; out -> mDXICR_P . mJc [ 12 ]
= _cg_const_1 [ 12 ] ; out -> mDXICR_P . mJc [ 13 ] = _cg_const_1 [ 13 ] ;
out -> mDXICR_P . mJc [ 14 ] = _cg_const_1 [ 14 ] ; out -> mDXICR_P . mJc [
15 ] = _cg_const_1 [ 15 ] ; out -> mDXICR_P . mJc [ 16 ] = _cg_const_1 [ 16 ]
; out -> mDXICR_P . mJc [ 17 ] = _cg_const_1 [ 17 ] ; out -> mDXICR_P . mJc [
18 ] = _cg_const_1 [ 18 ] ; out -> mDXICR_P . mJc [ 19 ] = _cg_const_1 [ 19 ]
; out -> mDXICR_P . mJc [ 20 ] = _cg_const_1 [ 20 ] ; out -> mDXICR_P . mJc [
21 ] = _cg_const_1 [ 21 ] ; out -> mDXICR_P . mJc [ 22 ] = _cg_const_1 [ 22 ]
; out -> mDXICR_P . mJc [ 23 ] = _cg_const_1 [ 23 ] ; out -> mDXICR_P . mJc [
24 ] = _cg_const_1 [ 24 ] ; out -> mDXICR_P . mJc [ 25 ] = _cg_const_1 [ 25 ]
; out -> mDXICR_P . mJc [ 26 ] = _cg_const_1 [ 26 ] ; out -> mDXICR_P . mJc [
27 ] = _cg_const_1 [ 27 ] ; out -> mDXICR_P . mJc [ 28 ] = _cg_const_1 [ 28 ]
; out -> mDXICR_P . mJc [ 29 ] = _cg_const_1 [ 29 ] ; out -> mDXICR_P . mJc [
30 ] = _cg_const_1 [ 30 ] ; out -> mDXICR_P . mJc [ 31 ] = _cg_const_1 [ 31 ]
; out -> mDXICR_P . mJc [ 32 ] = _cg_const_1 [ 32 ] ; out -> mDXICR_P . mJc [
33 ] = _cg_const_1 [ 33 ] ; out -> mDXICR_P . mJc [ 34 ] = _cg_const_1 [ 34 ]
; out -> mDXICR_P . mJc [ 35 ] = _cg_const_1 [ 35 ] ; out -> mDXICR_P . mJc [
36 ] = _cg_const_1 [ 36 ] ; out -> mDXICR_P . mIr [ 0 ] = 6 ; out -> mDXICR_P
. mIr [ 1 ] = 6 ; out -> mDXICR_P . mIr [ 2 ] = 6 ; out -> mDXICR_P . mIr [ 3
] = 6 ; out -> mDXICR_P . mIr [ 4 ] = 6 ; out -> mDXICR_P . mIr [ 5 ] = 6 ;
out -> mDXICR_P . mIr [ 6 ] = 6 ; out -> mDXICR_P . mIr [ 7 ] = 6 ; out ->
mDXICR_P . mIr [ 8 ] = 6 ; ( void ) sys ; ( void ) out ; return 0 ; }
