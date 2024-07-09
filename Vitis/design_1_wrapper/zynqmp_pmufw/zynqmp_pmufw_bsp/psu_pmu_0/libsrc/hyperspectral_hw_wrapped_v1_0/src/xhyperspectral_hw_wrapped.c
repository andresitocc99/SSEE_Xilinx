// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhyperspectral_hw_wrapped.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHyperspectral_hw_wrapped_CfgInitialize(XHyperspectral_hw_wrapped *InstancePtr, XHyperspectral_hw_wrapped_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHyperspectral_hw_wrapped_Start(XHyperspectral_hw_wrapped *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHyperspectral_hw_wrapped_ReadReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XHyperspectral_hw_wrapped_WriteReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHyperspectral_hw_wrapped_IsDone(XHyperspectral_hw_wrapped *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHyperspectral_hw_wrapped_ReadReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHyperspectral_hw_wrapped_IsIdle(XHyperspectral_hw_wrapped *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHyperspectral_hw_wrapped_ReadReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHyperspectral_hw_wrapped_IsReady(XHyperspectral_hw_wrapped *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHyperspectral_hw_wrapped_ReadReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHyperspectral_hw_wrapped_EnableAutoRestart(XHyperspectral_hw_wrapped *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHyperspectral_hw_wrapped_WriteReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XHyperspectral_hw_wrapped_DisableAutoRestart(XHyperspectral_hw_wrapped *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHyperspectral_hw_wrapped_WriteReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XHyperspectral_hw_wrapped_InterruptGlobalEnable(XHyperspectral_hw_wrapped *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHyperspectral_hw_wrapped_WriteReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_GIE, 1);
}

void XHyperspectral_hw_wrapped_InterruptGlobalDisable(XHyperspectral_hw_wrapped *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHyperspectral_hw_wrapped_WriteReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_GIE, 0);
}

void XHyperspectral_hw_wrapped_InterruptEnable(XHyperspectral_hw_wrapped *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHyperspectral_hw_wrapped_ReadReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_IER);
    XHyperspectral_hw_wrapped_WriteReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XHyperspectral_hw_wrapped_InterruptDisable(XHyperspectral_hw_wrapped *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHyperspectral_hw_wrapped_ReadReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_IER);
    XHyperspectral_hw_wrapped_WriteReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XHyperspectral_hw_wrapped_InterruptClear(XHyperspectral_hw_wrapped *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XHyperspectral_hw_wrapped_WriteReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XHyperspectral_hw_wrapped_InterruptGetEnabled(XHyperspectral_hw_wrapped *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHyperspectral_hw_wrapped_ReadReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_IER);
}

u32 XHyperspectral_hw_wrapped_InterruptGetStatus(XHyperspectral_hw_wrapped *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XHyperspectral_hw_wrapped_ReadReg(InstancePtr->Control_bus_BaseAddress, XHYPERSPECTRAL_HW_WRAPPED_CONTROL_BUS_ADDR_ISR);
}

