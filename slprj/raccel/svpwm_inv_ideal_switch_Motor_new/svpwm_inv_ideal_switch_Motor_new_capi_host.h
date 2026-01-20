#ifndef svpwm_inv_ideal_switch_Motor_new_cap_host_h__
#define svpwm_inv_ideal_switch_Motor_new_cap_host_h__
#ifdef HOST_CAPI_BUILD
#include "rtw_capi.h"
#include "rtw_modelmap_simtarget.h"
typedef struct { rtwCAPI_ModelMappingInfo mmi ; }
svpwm_inv_ideal_switch_Motor_new_host_DataMapInfo_T ;
#ifdef __cplusplus
extern "C" {
#endif
void svpwm_inv_ideal_switch_Motor_new_host_InitializeDataMapInfo ( svpwm_inv_ideal_switch_Motor_new_host_DataMapInfo_T * dataMap , const char * path ) ;
#ifdef __cplusplus
}
#endif
#endif
#endif
