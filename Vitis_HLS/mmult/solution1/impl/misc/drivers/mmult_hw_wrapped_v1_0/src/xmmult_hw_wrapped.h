// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMMULT_HW_WRAPPED_H
#define XMMULT_HW_WRAPPED_H

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
#include "xmmult_hw_wrapped_hw.h"

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
} XMmult_hw_wrapped_Config;
#endif

typedef struct {
    u64 Control_bus_BaseAddress;
    u32 IsReady;
} XMmult_hw_wrapped;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMmult_hw_wrapped_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMmult_hw_wrapped_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMmult_hw_wrapped_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMmult_hw_wrapped_ReadReg(BaseAddress, RegOffset) \
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
int XMmult_hw_wrapped_Initialize(XMmult_hw_wrapped *InstancePtr, u16 DeviceId);
XMmult_hw_wrapped_Config* XMmult_hw_wrapped_LookupConfig(u16 DeviceId);
int XMmult_hw_wrapped_CfgInitialize(XMmult_hw_wrapped *InstancePtr, XMmult_hw_wrapped_Config *ConfigPtr);
#else
int XMmult_hw_wrapped_Initialize(XMmult_hw_wrapped *InstancePtr, const char* InstanceName);
int XMmult_hw_wrapped_Release(XMmult_hw_wrapped *InstancePtr);
#endif

void XMmult_hw_wrapped_Start(XMmult_hw_wrapped *InstancePtr);
u32 XMmult_hw_wrapped_IsDone(XMmult_hw_wrapped *InstancePtr);
u32 XMmult_hw_wrapped_IsIdle(XMmult_hw_wrapped *InstancePtr);
u32 XMmult_hw_wrapped_IsReady(XMmult_hw_wrapped *InstancePtr);
void XMmult_hw_wrapped_EnableAutoRestart(XMmult_hw_wrapped *InstancePtr);
void XMmult_hw_wrapped_DisableAutoRestart(XMmult_hw_wrapped *InstancePtr);


void XMmult_hw_wrapped_InterruptGlobalEnable(XMmult_hw_wrapped *InstancePtr);
void XMmult_hw_wrapped_InterruptGlobalDisable(XMmult_hw_wrapped *InstancePtr);
void XMmult_hw_wrapped_InterruptEnable(XMmult_hw_wrapped *InstancePtr, u32 Mask);
void XMmult_hw_wrapped_InterruptDisable(XMmult_hw_wrapped *InstancePtr, u32 Mask);
void XMmult_hw_wrapped_InterruptClear(XMmult_hw_wrapped *InstancePtr, u32 Mask);
u32 XMmult_hw_wrapped_InterruptGetEnabled(XMmult_hw_wrapped *InstancePtr);
u32 XMmult_hw_wrapped_InterruptGetStatus(XMmult_hw_wrapped *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
