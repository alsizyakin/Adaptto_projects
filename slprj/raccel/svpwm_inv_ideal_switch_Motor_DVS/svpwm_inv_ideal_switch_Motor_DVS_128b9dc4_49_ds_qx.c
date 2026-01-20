#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_qx.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_DVS_128b9dc4_49_ds_qx ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static real_T _cg_const_1 [ 155 ] = { 12.0 , - 7.0 ,
1.2000000000000003E-8 , - 3.0 , 6.0 , - 6.0 , 6.0 , - 6.0 , - 7.0 , - 7.0 , -
3.0 , - 4.0 , - 7.0 , 9.0 , - 7.0E-9 , 3.0 , - 6.0 , 6.0 , - 6.0 , 6.0 , 6.0
, 6.0 , 3.0 , 3.0 , 1.2000000000000003E-8 , - 7.0E-9 , 1.2000000000000004E-17
, - 3.0000000000000004E-9 , 6.0E-9 , - 6.0E-9 , 6.0E-9 , - 6.0E-9 , - 7.0E-9
, - 7.0E-9 , - 3.0000000000000004E-9 , - 4.0E-9 , - 3.0 , 3.0 , -
3.0000000000000004E-9 , 4.0 , - 3.0 , 3.0 , - 3.0 , 3.0 , 3.0 , 3.0 , 6.0 , -
6.0 , 6.0E-9 , - 3.0 , 12.0 , - 9.0 , 6.0 , - 6.0 , - 9.0 , - 6.0 , 3.0 , -
3.0 , - 3.0 , - 6.0 , 6.0 , - 6.0E-9 , 3.0 , - 9.0 , 10.0 , - 6.0 , 6.0 , 9.0
, 6.0 , - 3.0 , 3.0 , 3.0 , 6.0 , - 6.0 , 6.0E-9 , - 3.0 , 6.0 , - 6.0 , 12.0
, - 9.0 , - 6.0 , - 9.0 , - 3.0 , - 3.0 , 3.0 , - 6.0 , 6.0 , - 6.0E-9 , 3.0
, - 6.0 , 6.0 , - 9.0 , 10.0 , 6.0 , 9.0 , 3.0 , 3.0 , - 3.0 , - 7.0 , 6.0 ,
- 7.0E-9 , 3.0 , - 9.0 , 9.0 , - 6.0 , 6.0 , 12.0 , 7.0 , - 3.0 , 3.0 , 4.0 ,
- 7.0 , 6.0 , - 7.0E-9 , 3.0 , - 6.0 , 6.0 , - 9.0 , 9.0 , 7.0 , 12.0 , 3.0 ,
4.0 , - 3.0 , 3.0 , - 3.0 , - 3.0 , 4.0 , - 3.0 , 3.0 , -
3.0000000000000004E-9 , - 3.0 , 3.0 , - 3.0 , 3.0 , 3.0 , 3.0 , 4.0 , 3.0 , -
4.0 , 3.0 , - 4.0E-9 , - 3.0 , 3.0 , - 3.0 , 3.0 , 4.0 , 4.0 , 3.0 , 6.0 ,
3.0 , - 3.0 , - 3.0 , 4.0 , 3.0 } ; int32_T i ; ( void ) t1 ; for ( i = 0 ; i
< 155 ; i ++ ) { out -> mQX . mX [ i ] = _cg_const_1 [ i ] ; } ( void ) sys ;
( void ) out ; return 0 ; }
