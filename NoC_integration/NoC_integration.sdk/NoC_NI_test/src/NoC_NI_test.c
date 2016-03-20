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

int main()
{
    //init_platform();
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");
    print("Hello World\n\r");
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");

    u32 dataOut = 0;

    int i;

    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");
    print("Testing RNI:\n\r");
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r\n\r");

    print(" -----             ----             ----             ----- \n\r");
    print("| ARM | -> AXI -> | NI | -> --- -> | NI | -> AXI -> | ARM |\n\r");
    print(" -----             ----             ----             ----- \n\r\n\r");



    for (i=0; i<16; i++){

		printf("Sending data to IP: %d\n\r", i);

		NETWORK_INTERFACE_mWriteReg(XPAR_NETWORK_INTERFACE_0_S00_AXI_BASEADDR, NETWORK_INTERFACE_S00_AXI_SLV_REG1_OFFSET, i);
		printf("Sending data back from IP...\n\r");

		dataOut = NETWORK_INTERFACE_mReadReg(XPAR_NETWORK_INTERFACE_0_S00_AXI_BASEADDR, NETWORK_INTERFACE_S00_AXI_SLV_REG0_OFFSET);
		printf("Data received from IP: %lu\n\r", dataOut);

		print("================");
	}

//    print("+++++++++++++++++++++++++++++++++++++++++++++\n\r");
//    print("Testing RNI: Router-to-PE\n\r");
//    print("+++++++++++++++++++++++++++++++++++++++++++++\n\r");
//
//    for (i=0; i<16; i++){
//
//		printf("Sending data to IP: %d\n\r", i);
//
//		NETWORK_INTERFACE_mWriteReg(XPAR_NETWORK_INTERFACE_0_S00_AXI_BASEADDR, NETWORK_INTERFACE_S00_AXI_SLV_REG3_OFFSET, i);
//		printf("Sending data back from IP...\n\r");
//
//		dataOut = NETWORK_INTERFACE_mReadReg(XPAR_NETWORK_INTERFACE_0_S00_AXI_BASEADDR, NETWORK_INTERFACE_S00_AXI_SLV_REG2_OFFSET);
//		printf("Data received from IP: %lu\n\r", dataOut);
//
//		print("================");
//	}
    //cleanup_platform();
    return 0;
}
