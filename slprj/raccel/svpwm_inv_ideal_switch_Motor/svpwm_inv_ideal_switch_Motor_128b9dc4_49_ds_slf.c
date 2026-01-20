#include "ne_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_sys_struct.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_slf.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_externals.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T svpwm_inv_ideal_switch_Motor_128b9dc4_49_ds_slf ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static boolean_T _cg_const_1 [ 36 ] = { false , false , false , false
, false , false , false , true , true , true , true , true , true , false ,
false , false , false , false , false , false , false , false , false , false
, false , false , false , false , false , false , false , false , false ,
false , false , false } ; ( void ) t1 ; out -> mSLF . mX [ 0 ] = _cg_const_1
[ 0 ] ; out -> mSLF . mX [ 1 ] = _cg_const_1 [ 1 ] ; out -> mSLF . mX [ 2 ] =
_cg_const_1 [ 2 ] ; out -> mSLF . mX [ 3 ] = _cg_const_1 [ 3 ] ; out -> mSLF
. mX [ 4 ] = _cg_const_1 [ 4 ] ; out -> mSLF . mX [ 5 ] = _cg_const_1 [ 5 ] ;
out -> mSLF . mX [ 6 ] = _cg_const_1 [ 6 ] ; out -> mSLF . mX [ 7 ] =
_cg_const_1 [ 7 ] ; out -> mSLF . mX [ 8 ] = _cg_const_1 [ 8 ] ; out -> mSLF
. mX [ 9 ] = _cg_const_1 [ 9 ] ; out -> mSLF . mX [ 10 ] = _cg_const_1 [ 10 ]
; out -> mSLF . mX [ 11 ] = _cg_const_1 [ 11 ] ; out -> mSLF . mX [ 12 ] =
_cg_const_1 [ 12 ] ; out -> mSLF . mX [ 13 ] = _cg_const_1 [ 13 ] ; out ->
mSLF . mX [ 14 ] = _cg_const_1 [ 14 ] ; out -> mSLF . mX [ 15 ] = _cg_const_1
[ 15 ] ; out -> mSLF . mX [ 16 ] = _cg_const_1 [ 16 ] ; out -> mSLF . mX [ 17
] = _cg_const_1 [ 17 ] ; out -> mSLF . mX [ 18 ] = _cg_const_1 [ 18 ] ; out
-> mSLF . mX [ 19 ] = _cg_const_1 [ 19 ] ; out -> mSLF . mX [ 20 ] =
_cg_const_1 [ 20 ] ; out -> mSLF . mX [ 21 ] = _cg_const_1 [ 21 ] ; out ->
mSLF . mX [ 22 ] = _cg_const_1 [ 22 ] ; out -> mSLF . mX [ 23 ] = _cg_const_1
[ 23 ] ; out -> mSLF . mX [ 24 ] = _cg_const_1 [ 24 ] ; out -> mSLF . mX [ 25
] = _cg_const_1 [ 25 ] ; out -> mSLF . mX [ 26 ] = _cg_const_1 [ 26 ] ; out
-> mSLF . mX [ 27 ] = _cg_const_1 [ 27 ] ; out -> mSLF . mX [ 28 ] =
_cg_const_1 [ 28 ] ; out -> mSLF . mX [ 29 ] = _cg_const_1 [ 29 ] ; out ->
mSLF . mX [ 30 ] = _cg_const_1 [ 30 ] ; out -> mSLF . mX [ 31 ] = _cg_const_1
[ 31 ] ; out -> mSLF . mX [ 32 ] = _cg_const_1 [ 32 ] ; out -> mSLF . mX [ 33
] = _cg_const_1 [ 33 ] ; out -> mSLF . mX [ 34 ] = _cg_const_1 [ 34 ] ; out
-> mSLF . mX [ 35 ] = _cg_const_1 [ 35 ] ; ( void ) sys ; ( void ) out ;
return 0 ; }
