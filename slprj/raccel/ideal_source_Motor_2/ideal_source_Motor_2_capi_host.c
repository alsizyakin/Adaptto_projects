#include "ideal_source_Motor_2_capi_host.h"
static ideal_source_Motor_2_host_DataMapInfo_T root;
static int initialized = 0;
rtwCAPI_ModelMappingInfo *getRootMappingInfo()
{
    if (initialized == 0) {
        initialized = 1;
        ideal_source_Motor_2_host_InitializeDataMapInfo(&(root), "ideal_source_Motor_2");
    }
    return &root.mmi;
}

rtwCAPI_ModelMappingInfo *mexFunction(){return(getRootMappingInfo());}
