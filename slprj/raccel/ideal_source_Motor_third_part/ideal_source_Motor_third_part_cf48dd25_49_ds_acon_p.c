#include "ne_ds.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds_sys_struct.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds_acon_p.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds_externals.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_third_part_cf48dd25_49_ds_acon_p ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput *
out ) { static int32_T _cg_const_1 [ 10 ] = { 0 , 2 , 2 , 2 , 2 , 2 , 3 , 4 ,
5 , 7 } ; static int32_T _cg_const_2 [ 7 ] = { 0 , 2 , 6 , 7 , 8 , 1 , 5 } ;
( void ) t1 ; out -> mACON_P . mNumCol = 9UL ; out -> mACON_P . mNumRow = 9UL
; out -> mACON_P . mJc [ 0 ] = _cg_const_1 [ 0 ] ; out -> mACON_P . mJc [ 1 ]
= _cg_const_1 [ 1 ] ; out -> mACON_P . mJc [ 2 ] = _cg_const_1 [ 2 ] ; out ->
mACON_P . mJc [ 3 ] = _cg_const_1 [ 3 ] ; out -> mACON_P . mJc [ 4 ] =
_cg_const_1 [ 4 ] ; out -> mACON_P . mJc [ 5 ] = _cg_const_1 [ 5 ] ; out ->
mACON_P . mJc [ 6 ] = _cg_const_1 [ 6 ] ; out -> mACON_P . mJc [ 7 ] =
_cg_const_1 [ 7 ] ; out -> mACON_P . mJc [ 8 ] = _cg_const_1 [ 8 ] ; out ->
mACON_P . mJc [ 9 ] = _cg_const_1 [ 9 ] ; out -> mACON_P . mIr [ 0 ] =
_cg_const_2 [ 0 ] ; out -> mACON_P . mIr [ 1 ] = _cg_const_2 [ 1 ] ; out ->
mACON_P . mIr [ 2 ] = _cg_const_2 [ 2 ] ; out -> mACON_P . mIr [ 3 ] =
_cg_const_2 [ 3 ] ; out -> mACON_P . mIr [ 4 ] = _cg_const_2 [ 4 ] ; out ->
mACON_P . mIr [ 5 ] = _cg_const_2 [ 5 ] ; out -> mACON_P . mIr [ 6 ] =
_cg_const_2 [ 6 ] ; ( void ) sys ; ( void ) out ; return 0 ; }
