#include "ne_ds.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds_sys_struct.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds_obs_act.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds_externals.h"
#include "ideal_source_Motor_2_149a6a2f_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_2_149a6a2f_49_ds_obs_act ( const NeDynamicSystem *
sys , const NeDynamicSystemInput * t20 , NeDsMethodOutput * out ) { real_T
Subsystem2_Voltage_Sensor1_V ; real_T t17 ; real_T t18 ; out -> mOBS_ACT . mX
[ 31UL ] = t20 -> mU . mX [ 0UL ] ; out -> mOBS_ACT . mX [ 32UL ] = - t20 ->
mU . mX [ 0UL ] ; out -> mOBS_ACT . mX [ 33UL ] = - t20 -> mX . mX [ 0UL ] ;
out -> mOBS_ACT . mX [ 36UL ] = - t20 -> mX . mX [ 8UL ] + t20 -> mU . mX [
0UL ] ; out -> mOBS_ACT . mX [ 68UL ] = - t20 -> mX . mX [ 8UL ] ;
Subsystem2_Voltage_Sensor1_V = t20 -> mU . mX [ 1UL ] - t20 -> mU . mX [ 2UL
] ; t17 = t20 -> mU . mX [ 2UL ] - t20 -> mU . mX [ 3UL ] ; t18 = t20 -> mU .
mX [ 3UL ] - t20 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 0UL ] = t20 ->
mX . mX [ 5UL ] ; out -> mOBS_ACT . mX [ 1UL ] = 0.0 ; out -> mOBS_ACT . mX [
2UL ] = t20 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 3UL ] = t20 -> mU .
mX [ 1UL ] ; out -> mOBS_ACT . mX [ 4UL ] = t20 -> mU . mX [ 1UL ] ; out ->
mOBS_ACT . mX [ 5UL ] = t20 -> mX . mX [ 6UL ] ; out -> mOBS_ACT . mX [ 6UL ]
= 0.0 ; out -> mOBS_ACT . mX [ 7UL ] = t20 -> mU . mX [ 2UL ] ; out ->
mOBS_ACT . mX [ 8UL ] = t20 -> mU . mX [ 2UL ] ; out -> mOBS_ACT . mX [ 9UL ]
= t20 -> mU . mX [ 2UL ] ; out -> mOBS_ACT . mX [ 10UL ] = t20 -> mX . mX [
7UL ] ; out -> mOBS_ACT . mX [ 11UL ] = 0.0 ; out -> mOBS_ACT . mX [ 12UL ] =
t20 -> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 13UL ] = t20 -> mU . mX [ 3UL
] ; out -> mOBS_ACT . mX [ 14UL ] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ACT
. mX [ 15UL ] = 0.0 ; out -> mOBS_ACT . mX [ 16UL ] = t20 -> mX . mX [ 1UL ]
; out -> mOBS_ACT . mX [ 17UL ] = 0.0 ; out -> mOBS_ACT . mX [ 18UL ] = t20
-> mX . mX [ 0UL ] ; out -> mOBS_ACT . mX [ 19UL ] = t20 -> mX . mX [ 0UL ] ;
out -> mOBS_ACT . mX [ 20UL ] = 0.0 ; out -> mOBS_ACT . mX [ 21UL ] = t20 ->
mX . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 22UL ] = t20 -> mX . mX [ 1UL ] ;
out -> mOBS_ACT . mX [ 23UL ] = t20 -> mX . mX [ 0UL ] ; out -> mOBS_ACT . mX
[ 24UL ] = t20 -> mX . mX [ 0UL ] ; out -> mOBS_ACT . mX [ 25UL ] = t20 -> mX
. mX [ 0UL ] ; out -> mOBS_ACT . mX [ 26UL ] = - t20 -> mX . mX [ 8UL ] ; out
-> mOBS_ACT . mX [ 27UL ] = - t20 -> mX . mX [ 8UL ] ; out -> mOBS_ACT . mX [
28UL ] = - t20 -> mX . mX [ 8UL ] ; out -> mOBS_ACT . mX [ 29UL ] = 0.0 ; out
-> mOBS_ACT . mX [ 30UL ] = t20 -> mX . mX [ 0UL ] ; out -> mOBS_ACT . mX [
34UL ] = t20 -> mX . mX [ 0UL ] ; out -> mOBS_ACT . mX [ 35UL ] = t20 -> mX .
mX [ 0UL ] ; out -> mOBS_ACT . mX [ 37UL ] = t20 -> mX . mX [ 0UL ] ; out ->
mOBS_ACT . mX [ 38UL ] = 0.0 ; out -> mOBS_ACT . mX [ 39UL ] = 0.0 ; out ->
mOBS_ACT . mX [ 40UL ] = 0.0 ; out -> mOBS_ACT . mX [ 41UL ] = 0.0 ; out ->
mOBS_ACT . mX [ 42UL ] = 0.0 ; out -> mOBS_ACT . mX [ 43UL ] = 0.0 ; out ->
mOBS_ACT . mX [ 44UL ] = 0.0 ; out -> mOBS_ACT . mX [ 45UL ] = 0.0 ; out ->
mOBS_ACT . mX [ 46UL ] = 0.0 ; out -> mOBS_ACT . mX [ 47UL ] = 0.0 ; out ->
mOBS_ACT . mX [ 48UL ] = 0.0 ; out -> mOBS_ACT . mX [ 49UL ] = 0.0 ; out ->
mOBS_ACT . mX [ 50UL ] = 0.0 ; out -> mOBS_ACT . mX [ 51UL ] = t20 -> mX . mX
[ 0UL ] ; out -> mOBS_ACT . mX [ 52UL ] = 0.187 ; out -> mOBS_ACT . mX [ 53UL
] = 0.187 ; out -> mOBS_ACT . mX [ 54UL ] = 0.187 ; out -> mOBS_ACT . mX [
55UL ] = 0.0 ; out -> mOBS_ACT . mX [ 56UL ] = 0.0 ; out -> mOBS_ACT . mX [
57UL ] = t20 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 58UL ] = 0.0 ; out
-> mOBS_ACT . mX [ 59UL ] = 0.0 ; out -> mOBS_ACT . mX [ 60UL ] = t20 -> mX .
mX [ 2UL ] * 57.295779513082323 ; out -> mOBS_ACT . mX [ 61UL ] = t20 -> mX .
mX [ 0UL ] * 9.5492965855137211 ; out -> mOBS_ACT . mX [ 62UL ] = t20 -> mU .
mX [ 2UL ] ; out -> mOBS_ACT . mX [ 63UL ] = 0.0 ; out -> mOBS_ACT . mX [
64UL ] = 0.0 ; out -> mOBS_ACT . mX [ 65UL ] = t20 -> mU . mX [ 3UL ] ; out
-> mOBS_ACT . mX [ 66UL ] = 0.0 ; out -> mOBS_ACT . mX [ 67UL ] = 0.0 ; out
-> mOBS_ACT . mX [ 69UL ] = 1.0 ; out -> mOBS_ACT . mX [ 70UL ] = - t20 -> mX
. mX [ 5UL ] ; out -> mOBS_ACT . mX [ 71UL ] = - t20 -> mX . mX [ 6UL ] ; out
-> mOBS_ACT . mX [ 72UL ] = - t20 -> mX . mX [ 7UL ] ; out -> mOBS_ACT . mX [
73UL ] = t20 -> mX . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 74UL ] = 0.0 ; out
-> mOBS_ACT . mX [ 75UL ] = t20 -> mX . mX [ 4UL ] ; out -> mOBS_ACT . mX [
76UL ] = 0.0 ; out -> mOBS_ACT . mX [ 77UL ] = t20 -> mX . mX [ 8UL ] ; out
-> mOBS_ACT . mX [ 78UL ] = 0.0 ; out -> mOBS_ACT . mX [ 79UL ] = t20 -> mU .
mX [ 1UL ] ; out -> mOBS_ACT . mX [ 80UL ] = t20 -> mU . mX [ 2UL ] ; out ->
mOBS_ACT . mX [ 81UL ] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 82UL
] = t20 -> mU . mX [ 0UL ] ; out -> mOBS_ACT . mX [ 83UL ] = t20 -> mU . mX [
1UL ] ; out -> mOBS_ACT . mX [ 84UL ] = t20 -> mU . mX [ 2UL ] ; out ->
mOBS_ACT . mX [ 85UL ] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 86UL
] = t20 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 87UL ] = t20 -> mU . mX [
1UL ] ; out -> mOBS_ACT . mX [ 88UL ] = t20 -> mU . mX [ 2UL ] ; out ->
mOBS_ACT . mX [ 89UL ] = t20 -> mU . mX [ 2UL ] ; out -> mOBS_ACT . mX [ 90UL
] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 91UL ] = - t20 -> mX . mX
[ 5UL ] ; out -> mOBS_ACT . mX [ 92UL ] = - t20 -> mX . mX [ 5UL ] ; out ->
mOBS_ACT . mX [ 93UL ] = t20 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 94UL
] = t20 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [ 95UL ] = - t20 -> mX . mX
[ 5UL ] ; out -> mOBS_ACT . mX [ 96UL ] = - t20 -> mX . mX [ 6UL ] ; out ->
mOBS_ACT . mX [ 97UL ] = - t20 -> mX . mX [ 6UL ] ; out -> mOBS_ACT . mX [
98UL ] = t20 -> mU . mX [ 2UL ] ; out -> mOBS_ACT . mX [ 99UL ] = t20 -> mU .
mX [ 2UL ] ; out -> mOBS_ACT . mX [ 100UL ] = - t20 -> mX . mX [ 6UL ] ; out
-> mOBS_ACT . mX [ 101UL ] = - t20 -> mX . mX [ 7UL ] ; out -> mOBS_ACT . mX
[ 102UL ] = - t20 -> mX . mX [ 7UL ] ; out -> mOBS_ACT . mX [ 103UL ] = t20
-> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 104UL ] = t20 -> mU . mX [ 3UL ]
; out -> mOBS_ACT . mX [ 105UL ] = - t20 -> mX . mX [ 7UL ] ; out -> mOBS_ACT
. mX [ 106UL ] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 107UL ] =
Subsystem2_Voltage_Sensor1_V ; out -> mOBS_ACT . mX [ 108UL ] = t20 -> mU .
mX [ 2UL ] ; out -> mOBS_ACT . mX [ 109UL ] = t20 -> mU . mX [ 1UL ] ; out ->
mOBS_ACT . mX [ 110UL ] = t17 ; out -> mOBS_ACT . mX [ 111UL ] = t20 -> mU .
mX [ 3UL ] ; out -> mOBS_ACT . mX [ 112UL ] = t20 -> mU . mX [ 2UL ] ; out ->
mOBS_ACT . mX [ 113UL ] = t17 ; out -> mOBS_ACT . mX [ 114UL ] =
Subsystem2_Voltage_Sensor1_V ; out -> mOBS_ACT . mX [ 115UL ] = t18 ; out ->
mOBS_ACT . mX [ 116UL ] = t20 -> mU . mX [ 1UL ] ; out -> mOBS_ACT . mX [
117UL ] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ACT . mX [ 118UL ] = t18 ; ( void
) sys ; ( void ) out ; return 0 ; }
