#include "ne_ds.h"
#include "ideal_source_Motor_new2_cf48dd25_49_ds_sys_struct.h"
#include "ideal_source_Motor_new2_cf48dd25_49_ds_log.h"
#include "ideal_source_Motor_new2_cf48dd25_49_ds.h"
#include "ideal_source_Motor_new2_cf48dd25_49_ds_externals.h"
#include "ideal_source_Motor_new2_cf48dd25_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_new2_cf48dd25_49_ds_log ( const NeDynamicSystem *
sys , const NeDynamicSystemInput * t5 , NeDsMethodOutput * out ) { real_T
Subsystem4_Voltage_Sensor1_V ; real_T Subsystem4_Voltage_Sensor9_V ; real_T
t2 ; out -> mLOG . mX [ 24UL ] = t5 -> mU . mX [ 0UL ] ; out -> mLOG . mX [
25UL ] = - t5 -> mU . mX [ 0UL ] ; out -> mLOG . mX [ 26UL ] = - t5 -> mX .
mX [ 0UL ] ; out -> mLOG . mX [ 29UL ] = - t5 -> mX . mX [ 8UL ] + t5 -> mU .
mX [ 0UL ] ; out -> mLOG . mX [ 37UL ] = - t5 -> mX . mX [ 8UL ] ; out ->
mLOG . mX [ 43UL ] = ( t5 -> mX . mX [ 5UL ] * t5 -> mX . mX [ 5UL ] * 5.0E-6
+ t5 -> mX . mX [ 6UL ] * t5 -> mX . mX [ 6UL ] * 5.0E-6 ) + t5 -> mX . mX [
7UL ] * t5 -> mX . mX [ 7UL ] * 5.0E-6 ; Subsystem4_Voltage_Sensor1_V = t5 ->
mU . mX [ 1UL ] - t5 -> mU . mX [ 2UL ] ; t2 = t5 -> mU . mX [ 2UL ] - t5 ->
mU . mX [ 3UL ] ; Subsystem4_Voltage_Sensor9_V = t5 -> mU . mX [ 3UL ] - t5
-> mU . mX [ 1UL ] ; out -> mLOG . mX [ 0UL ] = t5 -> mX . mX [ 5UL ] ; out
-> mLOG . mX [ 1UL ] = t5 -> mU . mX [ 1UL ] ; out -> mLOG . mX [ 2UL ] = t5
-> mU . mX [ 1UL ] ; out -> mLOG . mX [ 3UL ] = t5 -> mU . mX [ 1UL ] ; out
-> mLOG . mX [ 4UL ] = t5 -> mX . mX [ 6UL ] ; out -> mLOG . mX [ 5UL ] = t5
-> mU . mX [ 2UL ] ; out -> mLOG . mX [ 6UL ] = t5 -> mU . mX [ 2UL ] ; out
-> mLOG . mX [ 7UL ] = t5 -> mU . mX [ 2UL ] ; out -> mLOG . mX [ 8UL ] = t5
-> mX . mX [ 7UL ] ; out -> mLOG . mX [ 9UL ] = t5 -> mU . mX [ 3UL ] ; out
-> mLOG . mX [ 10UL ] = t5 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 11UL ] =
t5 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 12UL ] = t5 -> mX . mX [ 1UL ] ;
out -> mLOG . mX [ 13UL ] = t5 -> mX . mX [ 0UL ] ; out -> mLOG . mX [ 14UL ]
= t5 -> mX . mX [ 0UL ] ; out -> mLOG . mX [ 15UL ] = t5 -> mX . mX [ 1UL ] ;
out -> mLOG . mX [ 16UL ] = t5 -> mX . mX [ 1UL ] ; out -> mLOG . mX [ 17UL ]
= t5 -> mX . mX [ 0UL ] ; out -> mLOG . mX [ 18UL ] = t5 -> mX . mX [ 0UL ] ;
out -> mLOG . mX [ 19UL ] = t5 -> mX . mX [ 0UL ] ; out -> mLOG . mX [ 20UL ]
= - t5 -> mX . mX [ 8UL ] ; out -> mLOG . mX [ 21UL ] = - t5 -> mX . mX [ 8UL
] ; out -> mLOG . mX [ 22UL ] = - t5 -> mX . mX [ 8UL ] ; out -> mLOG . mX [
23UL ] = t5 -> mX . mX [ 0UL ] ; out -> mLOG . mX [ 27UL ] = t5 -> mX . mX [
0UL ] ; out -> mLOG . mX [ 28UL ] = t5 -> mX . mX [ 0UL ] ; out -> mLOG . mX
[ 30UL ] = t5 -> mX . mX [ 0UL ] ; out -> mLOG . mX [ 31UL ] = t5 -> mX . mX
[ 0UL ] ; out -> mLOG . mX [ 32UL ] = t5 -> mU . mX [ 1UL ] ; out -> mLOG .
mX [ 33UL ] = t5 -> mX . mX [ 2UL ] * 57.295779513082323 ; out -> mLOG . mX [
34UL ] = t5 -> mX . mX [ 0UL ] * 9.5492965855137211 ; out -> mLOG . mX [ 35UL
] = t5 -> mU . mX [ 2UL ] ; out -> mLOG . mX [ 36UL ] = t5 -> mU . mX [ 3UL ]
; out -> mLOG . mX [ 38UL ] = - t5 -> mX . mX [ 5UL ] ; out -> mLOG . mX [
39UL ] = - t5 -> mX . mX [ 6UL ] ; out -> mLOG . mX [ 40UL ] = - t5 -> mX .
mX [ 7UL ] ; out -> mLOG . mX [ 41UL ] = t5 -> mX . mX [ 3UL ] ; out -> mLOG
. mX [ 42UL ] = t5 -> mX . mX [ 4UL ] ; out -> mLOG . mX [ 44UL ] = t5 -> mX
. mX [ 8UL ] ; out -> mLOG . mX [ 45UL ] = t5 -> mU . mX [ 1UL ] ; out ->
mLOG . mX [ 46UL ] = t5 -> mU . mX [ 2UL ] ; out -> mLOG . mX [ 47UL ] = t5
-> mU . mX [ 3UL ] ; out -> mLOG . mX [ 48UL ] = t5 -> mU . mX [ 0UL ] ; out
-> mLOG . mX [ 49UL ] = t5 -> mU . mX [ 1UL ] ; out -> mLOG . mX [ 50UL ] =
t5 -> mU . mX [ 2UL ] ; out -> mLOG . mX [ 51UL ] = t5 -> mU . mX [ 3UL ] ;
out -> mLOG . mX [ 52UL ] = t5 -> mU . mX [ 1UL ] ; out -> mLOG . mX [ 53UL ]
= t5 -> mU . mX [ 1UL ] ; out -> mLOG . mX [ 54UL ] = t5 -> mU . mX [ 2UL ] ;
out -> mLOG . mX [ 55UL ] = t5 -> mU . mX [ 2UL ] ; out -> mLOG . mX [ 56UL ]
= t5 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 57UL ] = - t5 -> mX . mX [ 5UL ]
; out -> mLOG . mX [ 58UL ] = - t5 -> mX . mX [ 5UL ] ; out -> mLOG . mX [
59UL ] = t5 -> mU . mX [ 1UL ] ; out -> mLOG . mX [ 60UL ] = t5 -> mU . mX [
1UL ] ; out -> mLOG . mX [ 61UL ] = - t5 -> mX . mX [ 5UL ] ; out -> mLOG .
mX [ 62UL ] = - t5 -> mX . mX [ 6UL ] ; out -> mLOG . mX [ 63UL ] = - t5 ->
mX . mX [ 6UL ] ; out -> mLOG . mX [ 64UL ] = t5 -> mU . mX [ 2UL ] ; out ->
mLOG . mX [ 65UL ] = t5 -> mU . mX [ 2UL ] ; out -> mLOG . mX [ 66UL ] = - t5
-> mX . mX [ 6UL ] ; out -> mLOG . mX [ 67UL ] = - t5 -> mX . mX [ 7UL ] ;
out -> mLOG . mX [ 68UL ] = - t5 -> mX . mX [ 7UL ] ; out -> mLOG . mX [ 69UL
] = t5 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 70UL ] = t5 -> mU . mX [ 3UL ]
; out -> mLOG . mX [ 71UL ] = - t5 -> mX . mX [ 7UL ] ; out -> mLOG . mX [
72UL ] = t5 -> mU . mX [ 3UL ] ; out -> mLOG . mX [ 73UL ] =
Subsystem4_Voltage_Sensor1_V ; out -> mLOG . mX [ 74UL ] = t5 -> mU . mX [
2UL ] ; out -> mLOG . mX [ 75UL ] = t5 -> mU . mX [ 1UL ] ; out -> mLOG . mX
[ 76UL ] = t2 ; out -> mLOG . mX [ 77UL ] = t5 -> mU . mX [ 3UL ] ; out ->
mLOG . mX [ 78UL ] = t5 -> mU . mX [ 2UL ] ; out -> mLOG . mX [ 79UL ] = t2 ;
out -> mLOG . mX [ 80UL ] = Subsystem4_Voltage_Sensor1_V ; out -> mLOG . mX [
81UL ] = Subsystem4_Voltage_Sensor9_V ; out -> mLOG . mX [ 82UL ] = t5 -> mU
. mX [ 1UL ] ; out -> mLOG . mX [ 83UL ] = t5 -> mU . mX [ 3UL ] ; out ->
mLOG . mX [ 84UL ] = Subsystem4_Voltage_Sensor9_V ; ( void ) sys ; ( void )
out ; return 0 ; }
