#ifndef ideal_source_Motor_DVS_cap_host_h__
#define ideal_source_Motor_DVS_cap_host_h__
#ifdef HOST_CAPI_BUILD
#include "rtw_capi.h"
#include "rtw_modelmap_simtarget.h"
typedef struct { rtwCAPI_ModelMappingInfo mmi ; }
ideal_source_Motor_DVS_host_DataMapInfo_T ;
#ifdef __cplusplus
extern "C" {
#endif
void ideal_source_Motor_DVS_host_InitializeDataMapInfo ( ideal_source_Motor_DVS_host_DataMapInfo_T * dataMap , const char * path ) ;
#ifdef __cplusplus
}
#endif
#endif
#endif
