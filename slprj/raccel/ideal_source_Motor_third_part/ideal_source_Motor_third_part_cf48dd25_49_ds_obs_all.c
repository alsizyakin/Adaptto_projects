#include "ne_ds.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds_sys_struct.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds_obs_all.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds_externals.h"
#include "ideal_source_Motor_third_part_cf48dd25_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_third_part_cf48dd25_49_ds_obs_all ( const
NeDynamicSystem * sys , const NeDynamicSystemInput * t20 , NeDsMethodOutput *
out ) { real_T Subsystem4_Voltage_Sensor1_V ; real_T t17 ; real_T t18 ; out
-> mOBS_ALL . mX [ 31UL ] = t20 -> mU . mX [ 0UL ] ; out -> mOBS_ALL . mX [
32UL ] = - t20 -> mU . mX [ 0UL ] ; out -> mOBS_ALL . mX [ 33UL ] = - t20 ->
mX . mX [ 0UL ] ; out -> mOBS_ALL . mX [ 36UL ] = - t20 -> mX . mX [ 8UL ] +
t20 -> mU . mX [ 0UL ] ; out -> mOBS_ALL . mX [ 68UL ] = - t20 -> mX . mX [
8UL ] ; Subsystem4_Voltage_Sensor1_V = t20 -> mU . mX [ 1UL ] - t20 -> mU .
mX [ 2UL ] ; t17 = t20 -> mU . mX [ 2UL ] - t20 -> mU . mX [ 3UL ] ; t18 =
t20 -> mU . mX [ 3UL ] - t20 -> mU . mX [ 1UL ] ; out -> mOBS_ALL . mX [ 0UL
] = t20 -> mX . mX [ 5UL ] ; out -> mOBS_ALL . mX [ 1UL ] = 0.0 ; out ->
mOBS_ALL . mX [ 2UL ] = t20 -> mU . mX [ 1UL ] ; out -> mOBS_ALL . mX [ 3UL ]
= t20 -> mU . mX [ 1UL ] ; out -> mOBS_ALL . mX [ 4UL ] = t20 -> mU . mX [
1UL ] ; out -> mOBS_ALL . mX [ 5UL ] = t20 -> mX . mX [ 6UL ] ; out ->
mOBS_ALL . mX [ 6UL ] = 0.0 ; out -> mOBS_ALL . mX [ 7UL ] = t20 -> mU . mX [
2UL ] ; out -> mOBS_ALL . mX [ 8UL ] = t20 -> mU . mX [ 2UL ] ; out ->
mOBS_ALL . mX [ 9UL ] = t20 -> mU . mX [ 2UL ] ; out -> mOBS_ALL . mX [ 10UL
] = t20 -> mX . mX [ 7UL ] ; out -> mOBS_ALL . mX [ 11UL ] = 0.0 ; out ->
mOBS_ALL . mX [ 12UL ] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ALL . mX [ 13UL
] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ALL . mX [ 14UL ] = t20 -> mU . mX [
3UL ] ; out -> mOBS_ALL . mX [ 15UL ] = 0.0 ; out -> mOBS_ALL . mX [ 16UL ] =
t20 -> mX . mX [ 1UL ] ; out -> mOBS_ALL . mX [ 17UL ] = 0.0 ; out ->
mOBS_ALL . mX [ 18UL ] = t20 -> mX . mX [ 0UL ] ; out -> mOBS_ALL . mX [ 19UL
] = t20 -> mX . mX [ 0UL ] ; out -> mOBS_ALL . mX [ 20UL ] = 0.0 ; out ->
mOBS_ALL . mX [ 21UL ] = t20 -> mX . mX [ 1UL ] ; out -> mOBS_ALL . mX [ 22UL
] = t20 -> mX . mX [ 1UL ] ; out -> mOBS_ALL . mX [ 23UL ] = t20 -> mX . mX [
0UL ] ; out -> mOBS_ALL . mX [ 24UL ] = t20 -> mX . mX [ 0UL ] ; out ->
mOBS_ALL . mX [ 25UL ] = t20 -> mX . mX [ 0UL ] ; out -> mOBS_ALL . mX [ 26UL
] = - t20 -> mX . mX [ 8UL ] ; out -> mOBS_ALL . mX [ 27UL ] = - t20 -> mX .
mX [ 8UL ] ; out -> mOBS_ALL . mX [ 28UL ] = - t20 -> mX . mX [ 8UL ] ; out
-> mOBS_ALL . mX [ 29UL ] = 0.0 ; out -> mOBS_ALL . mX [ 30UL ] = t20 -> mX .
mX [ 0UL ] ; out -> mOBS_ALL . mX [ 34UL ] = t20 -> mX . mX [ 0UL ] ; out ->
mOBS_ALL . mX [ 35UL ] = t20 -> mX . mX [ 0UL ] ; out -> mOBS_ALL . mX [ 37UL
] = t20 -> mX . mX [ 0UL ] ; out -> mOBS_ALL . mX [ 38UL ] = 0.0 ; out ->
mOBS_ALL . mX [ 39UL ] = 0.0 ; out -> mOBS_ALL . mX [ 40UL ] = 0.0 ; out ->
mOBS_ALL . mX [ 41UL ] = 0.0 ; out -> mOBS_ALL . mX [ 42UL ] = 0.0 ; out ->
mOBS_ALL . mX [ 43UL ] = 0.0 ; out -> mOBS_ALL . mX [ 44UL ] = 0.0 ; out ->
mOBS_ALL . mX [ 45UL ] = 0.0 ; out -> mOBS_ALL . mX [ 46UL ] = 0.0 ; out ->
mOBS_ALL . mX [ 47UL ] = 0.0 ; out -> mOBS_ALL . mX [ 48UL ] = 0.0 ; out ->
mOBS_ALL . mX [ 49UL ] = 0.0 ; out -> mOBS_ALL . mX [ 50UL ] = 0.0 ; out ->
mOBS_ALL . mX [ 51UL ] = t20 -> mX . mX [ 0UL ] ; out -> mOBS_ALL . mX [ 52UL
] = 1.3000000000000003 ; out -> mOBS_ALL . mX [ 53UL ] = 1.3000000000000003 ;
out -> mOBS_ALL . mX [ 54UL ] = 1.3000000000000003 ; out -> mOBS_ALL . mX [
55UL ] = 0.0 ; out -> mOBS_ALL . mX [ 56UL ] = 0.0 ; out -> mOBS_ALL . mX [
57UL ] = t20 -> mU . mX [ 1UL ] ; out -> mOBS_ALL . mX [ 58UL ] = 0.0 ; out
-> mOBS_ALL . mX [ 59UL ] = 0.0 ; out -> mOBS_ALL . mX [ 60UL ] = t20 -> mX .
mX [ 2UL ] * 57.295779513082323 ; out -> mOBS_ALL . mX [ 61UL ] = t20 -> mX .
mX [ 0UL ] * 9.5492965855137211 ; out -> mOBS_ALL . mX [ 62UL ] = t20 -> mU .
mX [ 2UL ] ; out -> mOBS_ALL . mX [ 63UL ] = 0.0 ; out -> mOBS_ALL . mX [
64UL ] = 0.0 ; out -> mOBS_ALL . mX [ 65UL ] = t20 -> mU . mX [ 3UL ] ; out
-> mOBS_ALL . mX [ 66UL ] = 0.0 ; out -> mOBS_ALL . mX [ 67UL ] = 0.0 ; out
-> mOBS_ALL . mX [ 69UL ] = 1.0 ; out -> mOBS_ALL . mX [ 70UL ] = - t20 -> mX
. mX [ 5UL ] ; out -> mOBS_ALL . mX [ 71UL ] = - t20 -> mX . mX [ 6UL ] ; out
-> mOBS_ALL . mX [ 72UL ] = - t20 -> mX . mX [ 7UL ] ; out -> mOBS_ALL . mX [
73UL ] = t20 -> mX . mX [ 3UL ] ; out -> mOBS_ALL . mX [ 74UL ] = 0.0 ; out
-> mOBS_ALL . mX [ 75UL ] = t20 -> mX . mX [ 4UL ] ; out -> mOBS_ALL . mX [
76UL ] = 0.0 ; out -> mOBS_ALL . mX [ 77UL ] = t20 -> mX . mX [ 8UL ] ; out
-> mOBS_ALL . mX [ 78UL ] = 0.0 ; out -> mOBS_ALL . mX [ 79UL ] = t20 -> mU .
mX [ 1UL ] ; out -> mOBS_ALL . mX [ 80UL ] = t20 -> mU . mX [ 2UL ] ; out ->
mOBS_ALL . mX [ 81UL ] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ALL . mX [ 82UL
] = t20 -> mU . mX [ 0UL ] ; out -> mOBS_ALL . mX [ 83UL ] = t20 -> mU . mX [
1UL ] ; out -> mOBS_ALL . mX [ 84UL ] = t20 -> mU . mX [ 2UL ] ; out ->
mOBS_ALL . mX [ 85UL ] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ALL . mX [ 86UL
] = t20 -> mU . mX [ 1UL ] ; out -> mOBS_ALL . mX [ 87UL ] = t20 -> mU . mX [
1UL ] ; out -> mOBS_ALL . mX [ 88UL ] = t20 -> mU . mX [ 2UL ] ; out ->
mOBS_ALL . mX [ 89UL ] = t20 -> mU . mX [ 2UL ] ; out -> mOBS_ALL . mX [ 90UL
] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ALL . mX [ 91UL ] = - t20 -> mX . mX
[ 5UL ] ; out -> mOBS_ALL . mX [ 92UL ] = - t20 -> mX . mX [ 5UL ] ; out ->
mOBS_ALL . mX [ 93UL ] = t20 -> mU . mX [ 1UL ] ; out -> mOBS_ALL . mX [ 94UL
] = t20 -> mU . mX [ 1UL ] ; out -> mOBS_ALL . mX [ 95UL ] = - t20 -> mX . mX
[ 5UL ] ; out -> mOBS_ALL . mX [ 96UL ] = - t20 -> mX . mX [ 6UL ] ; out ->
mOBS_ALL . mX [ 97UL ] = - t20 -> mX . mX [ 6UL ] ; out -> mOBS_ALL . mX [
98UL ] = t20 -> mU . mX [ 2UL ] ; out -> mOBS_ALL . mX [ 99UL ] = t20 -> mU .
mX [ 2UL ] ; out -> mOBS_ALL . mX [ 100UL ] = - t20 -> mX . mX [ 6UL ] ; out
-> mOBS_ALL . mX [ 101UL ] = - t20 -> mX . mX [ 7UL ] ; out -> mOBS_ALL . mX
[ 102UL ] = - t20 -> mX . mX [ 7UL ] ; out -> mOBS_ALL . mX [ 103UL ] = t20
-> mU . mX [ 3UL ] ; out -> mOBS_ALL . mX [ 104UL ] = t20 -> mU . mX [ 3UL ]
; out -> mOBS_ALL . mX [ 105UL ] = - t20 -> mX . mX [ 7UL ] ; out -> mOBS_ALL
. mX [ 106UL ] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ALL . mX [ 107UL ] =
Subsystem4_Voltage_Sensor1_V ; out -> mOBS_ALL . mX [ 108UL ] = t20 -> mU .
mX [ 2UL ] ; out -> mOBS_ALL . mX [ 109UL ] = t20 -> mU . mX [ 1UL ] ; out ->
mOBS_ALL . mX [ 110UL ] = t17 ; out -> mOBS_ALL . mX [ 111UL ] = t20 -> mU .
mX [ 3UL ] ; out -> mOBS_ALL . mX [ 112UL ] = t20 -> mU . mX [ 2UL ] ; out ->
mOBS_ALL . mX [ 113UL ] = t17 ; out -> mOBS_ALL . mX [ 114UL ] =
Subsystem4_Voltage_Sensor1_V ; out -> mOBS_ALL . mX [ 115UL ] = t18 ; out ->
mOBS_ALL . mX [ 116UL ] = t20 -> mU . mX [ 1UL ] ; out -> mOBS_ALL . mX [
117UL ] = t20 -> mU . mX [ 3UL ] ; out -> mOBS_ALL . mX [ 118UL ] = t18 ; ( void
) sys ; ( void ) out ; return 0 ; }
