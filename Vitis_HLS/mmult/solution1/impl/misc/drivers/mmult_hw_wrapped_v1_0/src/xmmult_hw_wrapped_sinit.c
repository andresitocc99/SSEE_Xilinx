// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmmult_hw_wrapped.h"

extern XMmult_hw_wrapped_Config XMmult_hw_wrapped_ConfigTable[];

XMmult_hw_wrapped_Config *XMmult_hw_wrapped_LookupConfig(u16 DeviceId) {
	XMmult_hw_wrapped_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMMULT_HW_WRAPPED_NUM_INSTANCES; Index++) {
		if (XMmult_hw_wrapped_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMmult_hw_wrapped_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMmult_hw_wrapped_Initialize(XMmult_hw_wrapped *InstancePtr, u16 DeviceId) {
	XMmult_hw_wrapped_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMmult_hw_wrapped_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMmult_hw_wrapped_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

