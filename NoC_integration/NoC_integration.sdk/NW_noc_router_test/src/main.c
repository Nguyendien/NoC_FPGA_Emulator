/*
 * main.c
 *
 *  Created on: Mar 3, 2016
 *      Author: Karl Janson
 */

#include <stdio.h>
//#include "platform.h"
#include "xparameters.h"
#include "xil_io.h"
#include "network_interface.h"

#define NI_L_BASEADDR	XPAR_NETWORK_INTERFACE_0_S00_AXI_BASEADDR
#define NI_S_BASEADDR	XPAR_NETWORK_INTERFACE_1_S00_AXI_BASEADDR
#define NI_E_BASEADDR	XPAR_NETWORK_INTERFACE_2_S00_AXI_BASEADDR

int buildHeader(){
	return 0b00100000000001100010000000000011;

}

int main()
{
    //init_platform();
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");
    print("Hello World\n\r");
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");

    u32 dataOut = 45;
    int i;

    for (i=0;i<10000;i++);
	printf("Sending data from Local: %d\n\r", buildHeader());

	NETWORK_INTERFACE_mWriteReg(NI_L_BASEADDR, NETWORK_INTERFACE_S00_AXI_SLV_REG1_OFFSET, buildHeader());

	NETWORK_INTERFACE_mWriteReg(NI_L_BASEADDR, NETWORK_INTERFACE_S00_AXI_SLV_REG2_OFFSET, 1);
	NETWORK_INTERFACE_mWriteReg(NI_L_BASEADDR, NETWORK_INTERFACE_S00_AXI_SLV_REG2_OFFSET, 0);

	for (i=0;i<10000;i++);
	printf("Receiving packet from East...\n\r");
	dataOut = NETWORK_INTERFACE_mReadReg(NI_E_BASEADDR, NETWORK_INTERFACE_S00_AXI_SLV_REG0_OFFSET);
	printf("Data received from East: %lu\n\r", dataOut);

	printf("Receiving packet from South...\n\r");
	dataOut = NETWORK_INTERFACE_mReadReg(NI_S_BASEADDR, NETWORK_INTERFACE_S00_AXI_SLV_REG0_OFFSET);
	printf("Data received from South: %lu\n\r", dataOut);

	printf("Receiving packet from Local...\n\r");
	dataOut = NETWORK_INTERFACE_mReadReg(NI_L_BASEADDR, NETWORK_INTERFACE_S00_AXI_SLV_REG0_OFFSET);
	printf("Data received from Local: %lu\n\r", dataOut);

	print("================");

    return 0;
}
