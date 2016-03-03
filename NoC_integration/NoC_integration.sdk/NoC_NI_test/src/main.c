/*
 * main.c
 *
 *  Created on: Mar 3, 2016
 *      Author: Karl Janson
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xil_io.h"
#include "network_interface.h"

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
