#include "svpwm_inv_ideal_switch_Motor_DVS_capi_host.h"
static svpwm_inv_ideal_switch_Motor_DVS_host_DataMapInfo_T root;
static int initialized = 0;
rtwCAPI_ModelMappingInfo *getRootMappingInfo()
{
    if (initialized == 0) {
        initialized = 1;
        svpwm_inv_ideal_switch_Motor_DVS_host_InitializeDataMapInfo(&(root), "svpwm_inv_ideal_switch_Motor_DVS");
    }
    return &root.mmi;
}

rtwCAPI_ModelMappingInfo *mexFunction(){return(getRootMappingInfo());}
