#include "ne_ds.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_sys_struct.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_tduf_p.h"
#include "ideal_source_Motor_DVS_18188449_49_ds.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_externals.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_DVS_18188449_49_ds_tduf_p ( const NeDynamicSystem
* sys , const NeDynamicSystemInput * t1 , NeDsMethodOutput * out ) { static
int32_T _cg_const_2 [ 13 ] = { 0 , 1 , 2 , 3 , 2 , 3 , 5 , 2 , 3 , 6 , 2 , 3
, 7 } ; static int32_T _cg_const_1 [ 5 ] = { 0 , 4 , 7 , 10 , 13 } ; ( void )
t1 ; out -> mTDUF_P . mNumCol = 4UL ; out -> mTDUF_P . mNumRow = 8UL ; out ->
mTDUF_P . mJc [ 0 ] = _cg_const_1 [ 0 ] ; out -> mTDUF_P . mJc [ 1 ] =
_cg_const_1 [ 1 ] ; out -> mTDUF_P . mJc [ 2 ] = _cg_const_1 [ 2 ] ; out ->
mTDUF_P . mJc [ 3 ] = _cg_const_1 [ 3 ] ; out -> mTDUF_P . mJc [ 4 ] =
_cg_const_1 [ 4 ] ; out -> mTDUF_P . mIr [ 0 ] = _cg_const_2 [ 0 ] ; out ->
mTDUF_P . mIr [ 1 ] = _cg_const_2 [ 1 ] ; out -> mTDUF_P . mIr [ 2 ] =
_cg_const_2 [ 2 ] ; out -> mTDUF_P . mIr [ 3 ] = _cg_const_2 [ 3 ] ; out ->
mTDUF_P . mIr [ 4 ] = _cg_const_2 [ 4 ] ; out -> mTDUF_P . mIr [ 5 ] =
_cg_const_2 [ 5 ] ; out -> mTDUF_P . mIr [ 6 ] = _cg_const_2 [ 6 ] ; out ->
mTDUF_P . mIr [ 7 ] = _cg_const_2 [ 7 ] ; out -> mTDUF_P . mIr [ 8 ] =
_cg_const_2 [ 8 ] ; out -> mTDUF_P . mIr [ 9 ] = _cg_const_2 [ 9 ] ; out ->
mTDUF_P . mIr [ 10 ] = _cg_const_2 [ 10 ] ; out -> mTDUF_P . mIr [ 11 ] =
_cg_const_2 [ 11 ] ; out -> mTDUF_P . mIr [ 12 ] = _cg_const_2 [ 12 ] ; ( void
) sys ; ( void ) out ; return 0 ; }
