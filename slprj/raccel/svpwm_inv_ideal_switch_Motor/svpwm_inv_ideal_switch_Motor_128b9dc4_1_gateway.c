#ifdef MATLAB_MEX_FILE
#include "tmwtypes.h"
#else
#include "rtwtypes.h"
#endif
#include "nesl_rtw.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_49.h"
#include "svpwm_inv_ideal_switch_Motor_128b9dc4_1_gateway.h"
void svpwm_inv_ideal_switch_Motor_128b9dc4_1_gateway ( void ) {
NeModelParameters modelparams = { ( enum NeSolverTypeTag ) 0 , 0.001 , 0.001
, 0.001 , TRUE , FALSE , ( enum NeModifyAbsTolTag ) 1 , 0.001 , 0.0 , FALSE ,
FALSE , FALSE , ( enum SscLoggingSettingTag ) 0 , 685045521.0 , FALSE , FALSE
, FALSE } ; NeSolverParameters solverparams = { TRUE , TRUE , FALSE , FALSE ,
FALSE , FALSE , TRUE , FALSE , FALSE , 0.001 , 0.001 , 1e-09 , FALSE , FALSE
, 100U , FALSE , 1U , ( enum NeConsistencySolverTag ) 2 , ( enum
NeIndexReductionMethodTag ) 1 , FALSE , 1e-09 , ( enum NeToleranceSourceTag )
1 , 0.001 , 0.001 , 0.001 , FALSE , ( enum NeLocalSolverChoiceTag ) 0 , TRUE
, 1U , 0.001 , FALSE , 3U , 2U , FALSE , 2U , ( enum NeLinearAlgebraChoiceTag
) 0 , 0U , ( enum NeEquationFormulationChoiceTag ) 0 , 1024U , TRUE , 0.001 ,
( enum NePartitionStorageMethodTag ) 0 , 1024U , ( enum NePartitionMethodTag
) 0 , FALSE , ( enum NeMultibodyLocalSolverChoiceTag ) 0 , 0.001 } ; const
NeOutputParameters * outputparameters = NULL ; NeDae * dae ; size_t
numOutputs = 0 ; int rtpDaes [ 1 ] = { 0 } ; int * rtwLogDaes = NULL ; int *
solverHitDaes = NULL ; { static const NeOutputParameters
outputparameters_init [ ] = { { 0U , 0U } , } ; outputparameters =
outputparameters_init ; numOutputs = sizeof ( outputparameters_init ) /
sizeof ( outputparameters_init [ 0 ] ) ; }
svpwm_inv_ideal_switch_Motor_128b9dc4_49_dae ( & dae , & modelparams , &
solverparams ) ; nesl_register_simulator_group ( "svpwm_inv_ideal_switch_Motor/Solver Configuration1_1" , 1 , & dae , & solverparams , & modelparams , numOutputs , outputparameters , 1 , rtpDaes , 0 , rtwLogDaes , 0 , solverHitDaes ) ; }
