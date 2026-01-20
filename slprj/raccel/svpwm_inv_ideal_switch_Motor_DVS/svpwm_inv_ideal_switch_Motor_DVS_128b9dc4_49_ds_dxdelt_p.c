#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_dxdelt_p.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_dxdelt_p ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { ( void ) t1 ; out -> mDXDELT_P . mNumCol = 35UL ; out -> mDXDELT_P .
mNumRow = 0UL ; out -> mDXDELT_P . mJc [ 0 ] = 0 ; out -> mDXDELT_P . mJc [ 1
] = 0 ; out -> mDXDELT_P . mJc [ 2 ] = 0 ; out -> mDXDELT_P . mJc [ 3 ] = 0 ;
out -> mDXDELT_P . mJc [ 4 ] = 0 ; out -> mDXDELT_P . mJc [ 5 ] = 0 ; out ->
mDXDELT_P . mJc [ 6 ] = 0 ; out -> mDXDELT_P . mJc [ 7 ] = 0 ; out ->
mDXDELT_P . mJc [ 8 ] = 0 ; out -> mDXDELT_P . mJc [ 9 ] = 0 ; out ->
mDXDELT_P . mJc [ 10 ] = 0 ; out -> mDXDELT_P . mJc [ 11 ] = 0 ; out ->
mDXDELT_P . mJc [ 12 ] = 0 ; out -> mDXDELT_P . mJc [ 13 ] = 0 ; out ->
mDXDELT_P . mJc [ 14 ] = 0 ; out -> mDXDELT_P . mJc [ 15 ] = 0 ; out ->
mDXDELT_P . mJc [ 16 ] = 0 ; out -> mDXDELT_P . mJc [ 17 ] = 0 ; out ->
mDXDELT_P . mJc [ 18 ] = 0 ; out -> mDXDELT_P . mJc [ 19 ] = 0 ; out ->
mDXDELT_P . mJc [ 20 ] = 0 ; out -> mDXDELT_P . mJc [ 21 ] = 0 ; out ->
mDXDELT_P . mJc [ 22 ] = 0 ; out -> mDXDELT_P . mJc [ 23 ] = 0 ; out ->
mDXDELT_P . mJc [ 24 ] = 0 ; out -> mDXDELT_P . mJc [ 25 ] = 0 ; out ->
mDXDELT_P . mJc [ 26 ] = 0 ; out -> mDXDELT_P . mJc [ 27 ] = 0 ; out ->
mDXDELT_P . mJc [ 28 ] = 0 ; out -> mDXDELT_P . mJc [ 29 ] = 0 ; out ->
mDXDELT_P . mJc [ 30 ] = 0 ; out -> mDXDELT_P . mJc [ 31 ] = 0 ; out ->
mDXDELT_P . mJc [ 32 ] = 0 ; out -> mDXDELT_P . mJc [ 33 ] = 0 ; out ->
mDXDELT_P . mJc [ 34 ] = 0 ; out -> mDXDELT_P . mJc [ 35 ] = 0 ; ( void ) sys
; ( void ) out ; return 0 ; }
