/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* XILINX CONSORTIUM BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xil_io.h"
#include "network_interface.h"

//void print(char *str);

int main()
{
    init_platform();
    print("+++++++++++++++++++++++++++++++++++++++++++++\n\r");
    print("Hello World\n\r");
    //u32 dataIn = 2;
    u32 dataOut = 0;

    int i;

    for (i=0; i<32; i++){
		/*printf("Sending data back from IP...\n");
		//dataOut = Xil_In32(XPAR_NI_0_S00_AXI_BASEADDR);
		dataOut = NI_mReadMemory(XPAR_NI_0_S00_AXI_BASEADDR);
		printf("Data received from IP: %lu\n", dataOut);*/

		printf("Sending data to IP: %d\n\r", i);
		//xil_Out32(XPAR_NI_0_S00_AXI_BASEADDR, (u32)dataIn);
		//NI_mWriteMemory(XPAR_NI_0_S00_AXI_BASEADDR, dataIn);
		NETWORK_INTERFACE_mWriteReg(XPAR_NETWORK_INTERFACE_0_S00_AXI_BASEADDR, NETWORK_INTERFACE_S00_AXI_SLV_REG1_OFFSET, i);
		printf("Sending data back from IP...\n\r");
		//dataOut = Xil_In32(XPAR_NI_0_S00_AXI_BASEADDR);
		//dataOut = NI_mReadMemory(XPAR_NI_0_S00_AXI_BASEADDR);
		dataOut = NETWORK_INTERFACE_mReadReg(XPAR_NETWORK_INTERFACE_0_S00_AXI_BASEADDR, NETWORK_INTERFACE_S00_AXI_SLV_REG0_OFFSET);
		printf("Data received from IP: %lu\n\r", dataOut);

		print("================");
		}
    cleanup_platform();
    return 0;
}
