#include "ne_ds.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds_sys_struct.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds_obs_il.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds_externals.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_third_part_cf48dd25_49_ds_obs_il ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static boolean_T _cg_const_1 [ 119 ] = { true , true , false , false
, false , true , true , false , false , false , true , true , false , false ,
false , true , true , true , true , true , true , true , true , true , true ,
true , true , true , true , true , true , false , false , true , true , true
, false , true , true , true , true , true , true , true , true , true , true
, true , true , true , true , true , true , true , true , true , true , false
, true , true , true , true , false , true , true , false , true , true ,
true , true , true , true , true , true , true , true , true , true , true ,
false , false , false , false , false , false , false , false , false , false
, false , false , true , true , false , false , true , true , true , false ,
false , true , true , true , false , false , true , false , false , false ,
false , false , false , false , false , false , false , false , false , false
} ; int32_T i ; ( void ) t1 ; for ( i = 0 ; i < 119 ; i ++ ) { out -> mOBS_IL
. mX [ i ] = _cg_const_1 [ i ] ; } ( void ) sys ; ( void ) out ; return 0 ; }
