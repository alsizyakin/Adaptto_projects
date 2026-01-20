#include "ne_ds.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_sys_struct.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_obs_exp.h"
#include "ideal_source_Motor_DVS_18188449_49_ds.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_externals.h"
#include "ideal_source_Motor_DVS_18188449_49_ds_external_struct.h"
#include "ssc_ml_fun.h"
int32_T ideal_source_Motor_DVS_18188449_49_ds_obs_exp ( const NeDynamicSystem
* sys , const NeDynamicSystemInput * t5 , NeDsMethodOutput * out ) { out ->
mOBS_EXP . mX [ 0UL ] = 0.0 ; out -> mOBS_EXP . mX [ 1UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 2UL ] = 0.0 ; out -> mOBS_EXP . mX [ 3UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 4UL ] = 0.0 ; out -> mOBS_EXP . mX [ 5UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 6UL ] = 0.0 ; out -> mOBS_EXP . mX [ 7UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 8UL ] = 0.0 ; out -> mOBS_EXP . mX [ 9UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 10UL ] = 0.0 ; out -> mOBS_EXP . mX [ 11UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 12UL ] = 0.0 ; out -> mOBS_EXP . mX [ 13UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 14UL ] = 0.0 ; out -> mOBS_EXP . mX [ 15UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 16UL ] = 0.0 ; out -> mOBS_EXP . mX [ 17UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 18UL ] = 0.0 ; out -> mOBS_EXP . mX [ 19UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 20UL ] = 0.0 ; out -> mOBS_EXP . mX [ 21UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 22UL ] = 0.0 ; out -> mOBS_EXP . mX [ 23UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 24UL ] = 0.0 ; out -> mOBS_EXP . mX [ 25UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 26UL ] = 0.0 ; out -> mOBS_EXP . mX [ 27UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 28UL ] = 0.0 ; out -> mOBS_EXP . mX [ 29UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 30UL ] = 0.0 ; out -> mOBS_EXP . mX [ 31UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 32UL ] = 0.0 ; out -> mOBS_EXP . mX [ 33UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 34UL ] = 0.0 ; out -> mOBS_EXP . mX [ 35UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 36UL ] = 0.0 ; out -> mOBS_EXP . mX [ 37UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 38UL ] = 0.0 ; out -> mOBS_EXP . mX [ 39UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 40UL ] = 0.0 ; out -> mOBS_EXP . mX [ 41UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 42UL ] = 0.0 ; out -> mOBS_EXP . mX [ 43UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 44UL ] = 0.0 ; out -> mOBS_EXP . mX [ 45UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 46UL ] = 0.0 ; out -> mOBS_EXP . mX [ 47UL ] = 0.0 ; out ->
mOBS_EXP . mX [ 48UL ] = 0.0013 ; out -> mOBS_EXP . mX [ 49UL ] = 0.0013 ;
out -> mOBS_EXP . mX [ 50UL ] = 0.0013 ; out -> mOBS_EXP . mX [ 51UL ] = 0.0
; out -> mOBS_EXP . mX [ 52UL ] = 0.0 ; out -> mOBS_EXP . mX [ 53UL ] = 0.0 ;
out -> mOBS_EXP . mX [ 54UL ] = 0.0 ; out -> mOBS_EXP . mX [ 55UL ] = 0.0 ;
out -> mOBS_EXP . mX [ 56UL ] = t5 -> mP_R . mX [ 0UL ] ; out -> mOBS_EXP .
mX [ 57UL ] = t5 -> mP_R . mX [ 3UL ] ; out -> mOBS_EXP . mX [ 58UL ] = 0.0 ;
out -> mOBS_EXP . mX [ 59UL ] = 0.0 ; out -> mOBS_EXP . mX [ 60UL ] = 0.0 ;
out -> mOBS_EXP . mX [ 61UL ] = 0.0 ; out -> mOBS_EXP . mX [ 62UL ] = 0.0 ;
out -> mOBS_EXP . mX [ 63UL ] = 0.0 ; out -> mOBS_EXP . mX [ 64UL ] = 0.0 ;
out -> mOBS_EXP . mX [ 65UL ] = 1.0 ; out -> mOBS_EXP . mX [ 66UL ] = 0.0 ;
out -> mOBS_EXP . mX [ 67UL ] = 0.0 ; out -> mOBS_EXP . mX [ 68UL ] = 0.0 ;
out -> mOBS_EXP . mX [ 69UL ] = t5 -> mP_R . mX [ 1UL ] ; out -> mOBS_EXP .
mX [ 70UL ] = 0.0 ; out -> mOBS_EXP . mX [ 71UL ] = t5 -> mP_R . mX [ 2UL ] ;
out -> mOBS_EXP . mX [ 72UL ] = 0.0 ; out -> mOBS_EXP . mX [ 73UL ] = t5 ->
mP_R . mX [ 4UL ] ; out -> mOBS_EXP . mX [ 74UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 75UL ] = 0.0 ; out -> mOBS_EXP . mX [ 76UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 77UL ] = 0.0 ; out -> mOBS_EXP . mX [ 78UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 79UL ] = 0.0 ; out -> mOBS_EXP . mX [ 80UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 81UL ] = 0.0 ; out -> mOBS_EXP . mX [ 82UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 83UL ] = 0.0 ; out -> mOBS_EXP . mX [ 84UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 85UL ] = 0.0 ; out -> mOBS_EXP . mX [ 86UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 87UL ] = 0.0 ; out -> mOBS_EXP . mX [ 88UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 89UL ] = 0.0 ; out -> mOBS_EXP . mX [ 90UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 91UL ] = 0.0 ; out -> mOBS_EXP . mX [ 92UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 93UL ] = 0.0 ; out -> mOBS_EXP . mX [ 94UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 95UL ] = 0.0 ; out -> mOBS_EXP . mX [ 96UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 97UL ] = 0.0 ; out -> mOBS_EXP . mX [ 98UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 99UL ] = 0.0 ; out -> mOBS_EXP . mX [ 100UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 101UL ] = 0.0 ; out -> mOBS_EXP . mX [ 102UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 103UL ] = 0.0 ; out -> mOBS_EXP . mX [ 104UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 105UL ] = 0.0 ; out -> mOBS_EXP . mX [ 106UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 107UL ] = 0.0 ; out -> mOBS_EXP . mX [ 108UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 109UL ] = 0.0 ; out -> mOBS_EXP . mX [ 110UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 111UL ] = 0.0 ; out -> mOBS_EXP . mX [ 112UL ] = 0.0 ; out -> mOBS_EXP .
mX [ 113UL ] = 0.0 ; out -> mOBS_EXP . mX [ 114UL ] = 0.0 ; ( void ) sys ; ( void ) out ; return 0 ; }
