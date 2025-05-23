// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHYPERSPECTRAL_HW_WRAPPED_H
#define XHYPERSPECTRAL_HW_WRAPPED_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xhyperspectral_hw_wrapped_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_bus_BaseAddress;
} XHyperspectral_hw_wrapped_Config;
#endif

typedef struct {
    u64 Control_bus_BaseAddress;
    u32 IsReady;
} XHyperspectral_hw_wrapped;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHyperspectral_hw_wrapped_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHyperspectral_hw_wrapped_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHyperspectral_hw_wrapped_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHyperspectral_hw_wrapped_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XHyperspectral_hw_wrapped_Initialize(XHyperspectral_hw_wrapped *InstancePtr, u16 DeviceId);
XHyperspectral_hw_wrapped_Config* XHyperspectral_hw_wrapped_LookupConfig(u16 DeviceId);
int XHyperspectral_hw_wrapped_CfgInitialize(XHyperspectral_hw_wrapped *InstancePtr, XHyperspectral_hw_wrapped_Config *ConfigPtr);
#else
int XHyperspectral_hw_wrapped_Initialize(XHyperspectral_hw_wrapped *InstancePtr, const char* InstanceName);
int XHyperspectral_hw_wrapped_Release(XHyperspectral_hw_wrapped *InstancePtr);
#endif

void XHyperspectral_hw_wrapped_Start(XHyperspectral_hw_wrapped *InstancePtr);
u32 XHyperspectral_hw_wrapped_IsDone(XHyperspectral_hw_wrapped *InstancePtr);
u32 XHyperspectral_hw_wrapped_IsIdle(XHyperspectral_hw_wrapped *InstancePtr);
u32 XHyperspectral_hw_wrapped_IsReady(XHyperspectral_hw_wrapped *InstancePtr);
void XHyperspectral_hw_wrapped_EnableAutoRestart(XHyperspectral_hw_wrapped *InstancePtr);
void XHyperspectral_hw_wrapped_DisableAutoRestart(XHyperspectral_hw_wrapped *InstancePtr);


void XHyperspectral_hw_wrapped_InterruptGlobalEnable(XHyperspectral_hw_wrapped *InstancePtr);
void XHyperspectral_hw_wrapped_InterruptGlobalDisable(XHyperspectral_hw_wrapped *InstancePtr);
void XHyperspectral_hw_wrapped_InterruptEnable(XHyperspectral_hw_wrapped *InstancePtr, u32 Mask);
void XHyperspectral_hw_wrapped_InterruptDisable(XHyperspectral_hw_wrapped *InstancePtr, u32 Mask);
void XHyperspectral_hw_wrapped_InterruptClear(XHyperspectral_hw_wrapped *InstancePtr, u32 Mask);
u32 XHyperspectral_hw_wrapped_InterruptGetEnabled(XHyperspectral_hw_wrapped *InstancePtr);
u32 XHyperspectral_hw_wrapped_InterruptGetStatus(XHyperspectral_hw_wrapped *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
