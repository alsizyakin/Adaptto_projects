#include "ne_ds.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_sys_struct.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_obs_act.h"
#include "ideal_source_Motor_DVS_18188449_49_ds.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_externals.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_DVS_18188449_49_ds_obs_act ( const NeDynamicSystem
* sys , const NeDynamicSystemInput * t19 , NeDsMethodOutput * out ) { real_T
Subsystem4_Voltage_Sensor1_V ; real_T Subsystem4_Voltage_Sensor9_V ; real_T
t16 ; Subsystem4_Voltage_Sensor1_V = t19 -> mU . mX [ 1UL ] - t19 -> mU . mX
[ 2UL ] ; t16 = t19 -> mU . mX [ 2UL ] - t19 -> mU . mX [ 3UL ] ;
Subsystem4_Voltage_Sensor9_V = t19 -> mU . mX [ 3UL ] - t19 -> mU . mX [ 1UL
] ; out -> mOBS_ACT . mX [ 0UL ] = t19 -> mX . mX [ 4UL ] ; out -> mOBS_ACT .
mX [ 1UL ] = 0.0 ; out -> mOBS_ACT . mX [ 2UL ] = t19 -> mU . mX [ 1UL ] ;
out -> mOBS_ACT . mX [ 3UL ] = t19 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX
[ 4UL ] = t19 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 5UL ] = t19 -> mX .
mX [ 5UL ] ; out -> mOBS_ACT . mX [ 6UL ] = 0.0 ; out -> mOBS_ACT . mX [ 7UL
] = t19 -> mU . mX [ 2UL ] ; out -> mOBS_ACT . mX [ 8UL ] = t19 -> mU . mX [
2UL ] ; out -> mOBS_ACT . mX [ 9UL ] = t19 -> mU . mX [ 2UL ] ; out ->
mOBS_ACT . mX [ 10UL ] = t19 -> mX . mX [ 6UL ] ; out -> mOBS_ACT . mX [ 11UL
] = 0.0 ; out -> mOBS_ACT . mX [ 12UL ] = t19 -> mU . mX [ 3UL ] ; out ->
mOBS_ACT . mX [ 13UL ] = t19 -> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 14UL
] = t19 -> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 15UL ] = 0.0 ; out ->
mOBS_ACT . mX [ 16UL ] = 0.0 ; out -> mOBS_ACT . mX [ 17UL ] = t19 -> mU . mX
[ 0UL ] ; out -> mOBS_ACT . mX [ 18UL ] = t19 -> mU . mX [ 0UL ] ; out ->
mOBS_ACT . mX [ 19UL ] = t19 -> mX . mX [ 7UL ] ; out -> mOBS_ACT . mX [ 20UL
] = t19 -> mU . mX [ 0UL ] ; out -> mOBS_ACT . mX [ 21UL ] = t19 -> mX . mX [
0UL ] ; out -> mOBS_ACT . mX [ 22UL ] = 0.0 ; out -> mOBS_ACT . mX [ 23UL ] =
t19 -> mU . mX [ 0UL ] ; out -> mOBS_ACT . mX [ 24UL ] = t19 -> mU . mX [ 0UL
] ; out -> mOBS_ACT . mX [ 25UL ] = 0.0 ; out -> mOBS_ACT . mX [ 26UL ] = t19
-> mX . mX [ 0UL ] ; out -> mOBS_ACT . mX [ 27UL ] = t19 -> mX . mX [ 0UL ] ;
out -> mOBS_ACT . mX [ 28UL ] = t19 -> mU . mX [ 0UL ] ; out -> mOBS_ACT . mX
[ 29UL ] = t19 -> mU . mX [ 0UL ] ; out -> mOBS_ACT . mX [ 30UL ] = t19 -> mU
. mX [ 0UL ] ; out -> mOBS_ACT . mX [ 31UL ] = t19 -> mX . mX [ 7UL ] ; out
-> mOBS_ACT . mX [ 32UL ] = t19 -> mX . mX [ 7UL ] ; out -> mOBS_ACT . mX [
33UL ] = t19 -> mX . mX [ 7UL ] ; out -> mOBS_ACT . mX [ 34UL ] = 0.0 ; out
-> mOBS_ACT . mX [ 35UL ] = 0.0 ; out -> mOBS_ACT . mX [ 36UL ] = 0.0 ; out
-> mOBS_ACT . mX [ 37UL ] = 0.0 ; out -> mOBS_ACT . mX [ 38UL ] = 0.0 ; out
-> mOBS_ACT . mX [ 39UL ] = 0.0 ; out -> mOBS_ACT . mX [ 40UL ] = 0.0 ; out
-> mOBS_ACT . mX [ 41UL ] = 0.0 ; out -> mOBS_ACT . mX [ 42UL ] = 0.0 ; out
-> mOBS_ACT . mX [ 43UL ] = 0.0 ; out -> mOBS_ACT . mX [ 44UL ] = 0.0 ; out
-> mOBS_ACT . mX [ 45UL ] = 0.0 ; out -> mOBS_ACT . mX [ 46UL ] = 0.0 ; out
-> mOBS_ACT . mX [ 47UL ] = t19 -> mU . mX [ 0UL ] ; out -> mOBS_ACT . mX [
48UL ] = 0.0013 ; out -> mOBS_ACT . mX [ 49UL ] = 0.0013 ; out -> mOBS_ACT .
mX [ 50UL ] = 0.0013 ; out -> mOBS_ACT . mX [ 51UL ] = 0.0 ; out -> mOBS_ACT
. mX [ 52UL ] = 0.0 ; out -> mOBS_ACT . mX [ 53UL ] = t19 -> mU . mX [ 1UL ]
; out -> mOBS_ACT . mX [ 54UL ] = 0.0 ; out -> mOBS_ACT . mX [ 55UL ] = 0.0 ;
out -> mOBS_ACT . mX [ 56UL ] = t19 -> mX . mX [ 1UL ] * 57.295779513082323 ;
out -> mOBS_ACT . mX [ 57UL ] = t19 -> mU . mX [ 0UL ] * 9.5492965855137211 ;
out -> mOBS_ACT . mX [ 58UL ] = t19 -> mU . mX [ 2UL ] ; out -> mOBS_ACT . mX
[ 59UL ] = 0.0 ; out -> mOBS_ACT . mX [ 60UL ] = 0.0 ; out -> mOBS_ACT . mX [
61UL ] = t19 -> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 62UL ] = 0.0 ; out
-> mOBS_ACT . mX [ 63UL ] = 0.0 ; out -> mOBS_ACT . mX [ 64UL ] = t19 -> mX .
mX [ 7UL ] ; out -> mOBS_ACT . mX [ 65UL ] = 1.0 ; out -> mOBS_ACT . mX [
66UL ] = - t19 -> mX . mX [ 4UL ] ; out -> mOBS_ACT . mX [ 67UL ] = - t19 ->
mX . mX [ 5UL ] ; out -> mOBS_ACT . mX [ 68UL ] = - t19 -> mX . mX [ 6UL ] ;
out -> mOBS_ACT . mX [ 69UL ] = t19 -> mX . mX [ 2UL ] ; out -> mOBS_ACT . mX
[ 70UL ] = 0.0 ; out -> mOBS_ACT . mX [ 71UL ] = t19 -> mX . mX [ 3UL ] ; out
-> mOBS_ACT . mX [ 72UL ] = 0.0 ; out -> mOBS_ACT . mX [ 73UL ] = - t19 -> mX
. mX [ 7UL ] ; out -> mOBS_ACT . mX [ 74UL ] = 0.0 ; out -> mOBS_ACT . mX [
75UL ] = t19 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 76UL ] = t19 -> mU .
mX [ 2UL ] ; out -> mOBS_ACT . mX [ 77UL ] = t19 -> mU . mX [ 3UL ] ; out ->
mOBS_ACT . mX [ 78UL ] = t19 -> mU . mX [ 0UL ] ; out -> mOBS_ACT . mX [ 79UL
] = t19 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 80UL ] = t19 -> mU . mX [
2UL ] ; out -> mOBS_ACT . mX [ 81UL ] = t19 -> mU . mX [ 3UL ] ; out ->
mOBS_ACT . mX [ 82UL ] = t19 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 83UL
] = t19 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 84UL ] = t19 -> mU . mX [
2UL ] ; out -> mOBS_ACT . mX [ 85UL ] = t19 -> mU . mX [ 2UL ] ; out ->
mOBS_ACT . mX [ 86UL ] = t19 -> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 87UL
] = - t19 -> mX . mX [ 4UL ] ; out -> mOBS_ACT . mX [ 88UL ] = - t19 -> mX .
mX [ 4UL ] ; out -> mOBS_ACT . mX [ 89UL ] = t19 -> mU . mX [ 1UL ] ; out ->
mOBS_ACT . mX [ 90UL ] = t19 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 91UL
] = - t19 -> mX . mX [ 4UL ] ; out -> mOBS_ACT . mX [ 92UL ] = - t19 -> mX .
mX [ 5UL ] ; out -> mOBS_ACT . mX [ 93UL ] = - t19 -> mX . mX [ 5UL ] ; out
-> mOBS_ACT . mX [ 94UL ] = t19 -> mU . mX [ 2UL ] ; out -> mOBS_ACT . mX [
95UL ] = t19 -> mU . mX [ 2UL ] ; out -> mOBS_ACT . mX [ 96UL ] = - t19 -> mX
. mX [ 5UL ] ; out -> mOBS_ACT . mX [ 97UL ] = - t19 -> mX . mX [ 6UL ] ; out
-> mOBS_ACT . mX [ 98UL ] = - t19 -> mX . mX [ 6UL ] ; out -> mOBS_ACT . mX [
99UL ] = t19 -> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 100UL ] = t19 -> mU
. mX [ 3UL ] ; out -> mOBS_ACT . mX [ 101UL ] = - t19 -> mX . mX [ 6UL ] ;
out -> mOBS_ACT . mX [ 102UL ] = t19 -> mU . mX [ 3UL ] ; out -> mOBS_ACT .
mX [ 103UL ] = Subsystem4_Voltage_Sensor1_V ; out -> mOBS_ACT . mX [ 104UL ]
= t19 -> mU . mX [ 2UL ] ; out -> mOBS_ACT . mX [ 105UL ] = t19 -> mU . mX [
1UL ] ; out -> mOBS_ACT . mX [ 106UL ] = t16 ; out -> mOBS_ACT . mX [ 107UL ]
= t19 -> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 108UL ] = t19 -> mU . mX [
2UL ] ; out -> mOBS_ACT . mX [ 109UL ] = t16 ; out -> mOBS_ACT . mX [ 110UL ]
= Subsystem4_Voltage_Sensor1_V ; out -> mOBS_ACT . mX [ 111UL ] =
Subsystem4_Voltage_Sensor9_V ; out -> mOBS_ACT . mX [ 112UL ] = t19 -> mU .
mX [ 1UL ] ; out -> mOBS_ACT . mX [ 113UL ] = t19 -> mU . mX [ 3UL ] ; out ->
mOBS_ACT . mX [ 114UL ] = Subsystem4_Voltage_Sensor9_V ; ( void ) sys ; ( void
) out ; return 0 ; }
