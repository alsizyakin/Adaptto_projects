#include "ne_ds.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_sys_struct.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_duf.h"
#include "ideal_source_Motor_DVS_18188449_49_ds.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_externals.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_DVS_18188449_49_ds_duf ( const NeDynamicSystem *
sys , const NeDynamicSystemInput * t33 , NeDsMethodOutput * out ) { real_T
intermediate_der28 ; real_T intermediate_der30 ; real_T t21 ; real_T t22 ;
real_T t25 ; real_T t32 ; t25 = t33 -> mX . mX [ 1UL ] * 24.0 ;
intermediate_der28 = cos ( t25 ) * 0.66666666666666663 ; intermediate_der30 =
cos ( t25 - 2.0943951023931953 ) * 0.66666666666666663 ; t32 = cos ( t25 +
2.0943951023931953 ) * 0.66666666666666663 ; t21 = - sin ( t25 ) *
0.66666666666666663 ; t22 = - sin ( t25 - 2.0943951023931953 ) *
0.66666666666666663 ; t25 = - sin ( t25 + 2.0943951023931953 ) *
0.66666666666666663 ; out -> mDUF . mX [ 0UL ] = - ( t33 -> mX . mX [ 3UL ] *
4.9E-5 * 24.0 / 0.66666666666666663 ) ; out -> mDUF . mX [ 1UL ] = - ( - ( ( t33
-> mX . mX [ 2UL ] * 4.9E-5 + 0.037685 ) * 24.0 ) / 0.90444000000000013 ) ;
out -> mDUF . mX [ 2UL ] = - ( intermediate_der28 / 0.66666666666666663 ) ;
out -> mDUF . mX [ 3UL ] = - ( t21 / 0.90444000000000013 ) ; out -> mDUF . mX
[ 4UL ] = - ( intermediate_der30 / 0.66666666666666663 ) ; out -> mDUF . mX [
5UL ] = - ( t22 / 0.90444000000000013 ) ; out -> mDUF . mX [ 6UL ] = - ( t32
/ 0.66666666666666663 ) ; out -> mDUF . mX [ 7UL ] = - ( t25 /
0.90444000000000013 ) ; ( void ) sys ; ( void ) out ; return 0 ; }
