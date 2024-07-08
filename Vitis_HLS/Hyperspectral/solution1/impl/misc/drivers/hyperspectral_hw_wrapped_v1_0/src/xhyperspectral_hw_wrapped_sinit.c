// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhyperspectral_hw_wrapped.h"

extern XHyperspectral_hw_wrapped_Config XHyperspectral_hw_wrapped_ConfigTable[];

XHyperspectral_hw_wrapped_Config *XHyperspectral_hw_wrapped_LookupConfig(u16 DeviceId) {
	XHyperspectral_hw_wrapped_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHYPERSPECTRAL_HW_WRAPPED_NUM_INSTANCES; Index++) {
		if (XHyperspectral_hw_wrapped_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHyperspectral_hw_wrapped_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHyperspectral_hw_wrapped_Initialize(XHyperspectral_hw_wrapped *InstancePtr, u16 DeviceId) {
	XHyperspectral_hw_wrapped_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHyperspectral_hw_wrapped_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHyperspectral_hw_wrapped_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

