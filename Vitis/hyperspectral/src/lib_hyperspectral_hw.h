#ifndef H_LIB_EXAMPLE_HW_H
#define H_LIB_EXAMPLE_HW_H

#define FILAS 2
#define COLUMNAS 1024
#define BANDAS 180

#include <stdint.h>

// TIMER Instance
XTmrCtr timer_dev;

// AXI DMA Instance
XAxiDma AxiDma;

static FATFS fat_fs;

u32 mount_filesystem() {
    TCHAR *Path = "0:/";
    FRESULT res;
    res = f_mount(&fat_fs, Path, 1);

    if (res != FR_OK) {
        xil_printf("mount failed %d\n\r",res);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

u32 umount_filesystem() {
    TCHAR *Path = "0:/";
    FRESULT res;
    res = f_mount(NULL, Path, 0);

    if (res != FR_OK) {
        xil_printf("umount failed %d\n\r",res);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

u32 LoadFile(uint16_t image [FILAS][COLUMNAS][BANDAS]){
    FIL fp;
    u32 bytes_read = 0;

    if (mount_filesystem() == XST_FAILURE)
        return XST_FAILURE;

    FRESULT res = f_open(&fp, "cuboH.bin", FA_READ);
    if (res != FR_OK) {
        xil_printf("could not open the file %d\n\r",res);
        return XST_FAILURE;
    }

    u32 bytes_size = FILAS * COLUMNAS * BANDAS * sizeof(uint16_t);


    f_read(&fp, image, bytes_size, &bytes_read);
    if (res != FR_OK || bytes_size != bytes_read) {
    	xil_printf("could not open the file %d\n\r",res);
    	f_close(&fp);
    	return XST_FAILURE;

    }
    f_close(&fp);

    return XST_SUCCESS;
}
