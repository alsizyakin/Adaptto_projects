#include "ne_ds.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_sys_struct.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_log.h"
#include "ideal_source_Motor_DVS_18188449_49_ds.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_externals.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_DVS_18188449_49_ds_log ( const NeDynamicSystem *
sys , const NeDynamicSystemInput * t4 , NeDsMethodOutput * out ) { real_T
Subsystem4_Voltage_Sensor1_V ; real_T t1 ; real_T t2 ; out -> mLOG . mX [
39UL ] = ( t4 -> mX . mX [ 4UL ] * t4 -> mX . mX [ 4UL ] * 1.3E-6 + t4 -> mX
. mX [ 5UL ] * t4 -> mX . mX [ 5UL ] * 1.3E-6 ) + t4 -> mX . mX [ 6UL ] * t4
-> mX . mX [ 6UL ] * 1.3E-6 ; Subsystem4_Voltage_Sensor1_V = t4 -> mU . mX [
1UL ] - t4 -> mU . mX [ 2UL ] ; t1 = t4 -> mU . mX [ 2UL ] - t4 -> mU . mX [
3UL ] ; t2 = t4 -> mU . mX [ 3UL ] - t4 -> mU . mX [ 1UL ] ; out -> mLOG . mX
[ 0UL ] = t4 -> mX . mX [ 4UL ] ; out -> mLOG . mX [ 1UL ] = t4 -> mU . mX [
1UL ] ; out -> mLOG . mX [ 2UL ] = t4 -> mU . mX [ 1UL ] ; out -> mLOG . mX [
3UL ] = t4 -> mU . mX [ 1UL ] ; out -> mLOG . mX [ 4UL ] = t4 -> mX . mX [
5UL ] ; out -> mLOG . mX [ 5UL ] = t4 -> mU . mX [ 2UL ] ; out -> mLOG . mX [
6UL ] = t4 -> mU . mX [ 2UL ] ; out -> mLOG . mX [ 7UL ] = t4 -> mU . mX [
2UL ] ; out -> mLOG . mX [ 8UL ] = t4 -> mX . mX [ 6UL ] ; out -> mLOG . mX [
9UL ] = t4 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 10UL ] = t4 -> mU . mX [
3UL ] ; out -> mLOG . mX [ 11UL ] = t4 -> mU . mX [ 3UL ] ; out -> mLOG . mX
[ 12UL ] = t4 -> mU . mX [ 0UL ] ; out -> mLOG . mX [ 13UL ] = t4 -> mU . mX
[ 0UL ] ; out -> mLOG . mX [ 14UL ] = t4 -> mX . mX [ 7UL ] ; out -> mLOG .
mX [ 15UL ] = t4 -> mU . mX [ 0UL ] ; out -> mLOG . mX [ 16UL ] = t4 -> mX .
mX [ 0UL ] ; out -> mLOG . mX [ 17UL ] = t4 -> mU . mX [ 0UL ] ; out -> mLOG
. mX [ 18UL ] = t4 -> mU . mX [ 0UL ] ; out -> mLOG . mX [ 19UL ] = t4 -> mX
. mX [ 0UL ] ; out -> mLOG . mX [ 20UL ] = t4 -> mX . mX [ 0UL ] ; out ->
mLOG . mX [ 21UL ] = t4 -> mU . mX [ 0UL ] ; out -> mLOG . mX [ 22UL ] = t4
-> mU . mX [ 0UL ] ; out -> mLOG . mX [ 23UL ] = t4 -> mU . mX [ 0UL ] ; out
-> mLOG . mX [ 24UL ] = t4 -> mX . mX [ 7UL ] ; out -> mLOG . mX [ 25UL ] =
t4 -> mX . mX [ 7UL ] ; out -> mLOG . mX [ 26UL ] = t4 -> mX . mX [ 7UL ] ;
out -> mLOG . mX [ 27UL ] = t4 -> mU . mX [ 0UL ] ; out -> mLOG . mX [ 28UL ]
= t4 -> mU . mX [ 1UL ] ; out -> mLOG . mX [ 29UL ] = t4 -> mX . mX [ 1UL ] *
57.295779513082323 ; out -> mLOG . mX [ 30UL ] = t4 -> mU . mX [ 0UL ] *
9.5492965855137211 ; out -> mLOG . mX [ 31UL ] = t4 -> mU . mX [ 2UL ] ; out
-> mLOG . mX [ 32UL ] = t4 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 33UL ] =
t4 -> mX . mX [ 7UL ] ; out -> mLOG . mX [ 34UL ] = - t4 -> mX . mX [ 4UL ] ;
out -> mLOG . mX [ 35UL ] = - t4 -> mX . mX [ 5UL ] ; out -> mLOG . mX [ 36UL
] = - t4 -> mX . mX [ 6UL ] ; out -> mLOG . mX [ 37UL ] = t4 -> mX . mX [ 2UL
] ; out -> mLOG . mX [ 38UL ] = t4 -> mX . mX [ 3UL ] ; out -> mLOG . mX [
40UL ] = - t4 -> mX . mX [ 7UL ] ; out -> mLOG . mX [ 41UL ] = t4 -> mU . mX
[ 1UL ] ; out -> mLOG . mX [ 42UL ] = t4 -> mU . mX [ 2UL ] ; out -> mLOG .
mX [ 43UL ] = t4 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 44UL ] = t4 -> mU .
mX [ 0UL ] ; out -> mLOG . mX [ 45UL ] = t4 -> mU . mX [ 1UL ] ; out -> mLOG
. mX [ 46UL ] = t4 -> mU . mX [ 2UL ] ; out -> mLOG . mX [ 47UL ] = t4 -> mU
. mX [ 3UL ] ; out -> mLOG . mX [ 48UL ] = t4 -> mU . mX [ 1UL ] ; out ->
mLOG . mX [ 49UL ] = t4 -> mU . mX [ 1UL ] ; out -> mLOG . mX [ 50UL ] = t4
-> mU . mX [ 2UL ] ; out -> mLOG . mX [ 51UL ] = t4 -> mU . mX [ 2UL ] ; out
-> mLOG . mX [ 52UL ] = t4 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 53UL ] = -
t4 -> mX . mX [ 4UL ] ; out -> mLOG . mX [ 54UL ] = - t4 -> mX . mX [ 4UL ] ;
out -> mLOG . mX [ 55UL ] = t4 -> mU . mX [ 1UL ] ; out -> mLOG . mX [ 56UL ]
= t4 -> mU . mX [ 1UL ] ; out -> mLOG . mX [ 57UL ] = - t4 -> mX . mX [ 4UL ]
; out -> mLOG . mX [ 58UL ] = - t4 -> mX . mX [ 5UL ] ; out -> mLOG . mX [
59UL ] = - t4 -> mX . mX [ 5UL ] ; out -> mLOG . mX [ 60UL ] = t4 -> mU . mX
[ 2UL ] ; out -> mLOG . mX [ 61UL ] = t4 -> mU . mX [ 2UL ] ; out -> mLOG .
mX [ 62UL ] = - t4 -> mX . mX [ 5UL ] ; out -> mLOG . mX [ 63UL ] = - t4 ->
mX . mX [ 6UL ] ; out -> mLOG . mX [ 64UL ] = - t4 -> mX . mX [ 6UL ] ; out
-> mLOG . mX [ 65UL ] = t4 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 66UL ] =
t4 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 67UL ] = - t4 -> mX . mX [ 6UL ] ;
out -> mLOG . mX [ 68UL ] = t4 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 69UL ]
= Subsystem4_Voltage_Sensor1_V ; out -> mLOG . mX [ 70UL ] = t4 -> mU . mX [
2UL ] ; out -> mLOG . mX [ 71UL ] = t4 -> mU . mX [ 1UL ] ; out -> mLOG . mX
[ 72UL ] = t1 ; out -> mLOG . mX [ 73UL ] = t4 -> mU . mX [ 3UL ] ; out ->
mLOG . mX [ 74UL ] = t4 -> mU . mX [ 2UL ] ; out -> mLOG . mX [ 75UL ] = t1 ;
out -> mLOG . mX [ 76UL ] = Subsystem4_Voltage_Sensor1_V ; out -> mLOG . mX [
77UL ] = t2 ; out -> mLOG . mX [ 78UL ] = t4 -> mU . mX [ 1UL ] ; out -> mLOG
. mX [ 79UL ] = t4 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 80UL ] = t2 ; ( void
) sys ; ( void ) out ; return 0 ; }
