/*
 * main.c
 *
 *  Created on: Mar 3, 2016
 *      Author: Karl Janson
 */

#include <stdio.h>
#include <stdlib.h>
//#include "platform.h"
#include "xparameters.h"
#include "xil_io.h"
#include "network_interface.h"

#define NI_R0_BASEADDR	XPAR_NETWORK_INTERFACE_0_S00_AXI_BASEADDR
#define NI_R1_BASEADDR	XPAR_NETWORK_INTERFACE_1_S00_AXI_BASEADDR
#define NI_R2_BASEADDR	XPAR_NETWORK_INTERFACE_2_S00_AXI_BASEADDR
#define NI_R3_BASEADDR	XPAR_NETWORK_INTERFACE_3_S00_AXI_BASEADDR

#define SRC_ADDR_OFFSET 		256
#define DST_ADDR_OFFSET			4096
#define PACKET_LENGTH_OFFSET	65536

#define PAYLOAD_OFFSET			2
#define FLIT_TYPE_OFFSET		536870912

#define FLIT_TYPE_HEADER	0b001
#define FLIT_TYPE_BODY		0b010
#define FLIT_TYPE_TAIL		0b100

int parity_check(u32 flit){
    //Even number 1-s = 0

	int parity = 0;

	while (flit)
    {
        parity = !parity;
        flit = flit & (flit - 1);
    }

	return parity;
}

u32 build_header(u32 packetID, u32 srcAddr, u32 dstAddr, u32 packetLength){

		return packetID + \
			SRC_ADDR_OFFSET * srcAddr + \
			DST_ADDR_OFFSET * dstAddr + \
			PACKET_LENGTH_OFFSET * packetLength;

}

u32 build_flit (u32 flitType, u32 payload) {

	int parity;

	u32 flit = PAYLOAD_OFFSET * payload + \
			FLIT_TYPE_OFFSET * flitType;

	parity = parity_check(flit);
	return parity + flit;

}

void send_flit(int NIBaseAddr, u32 flit){
	NETWORK_INTERFACE_mWriteReg(NIBaseAddr, NETWORK_INTERFACE_S00_AXI_SLV_REG1_OFFSET, flit);

	NETWORK_INTERFACE_mWriteReg(NIBaseAddr, NETWORK_INTERFACE_S00_AXI_SLV_REG2_OFFSET, 1);
	NETWORK_INTERFACE_mWriteReg(NIBaseAddr, NETWORK_INTERFACE_S00_AXI_SLV_REG2_OFFSET, 0);

}

u32 recv_flit(int NIBaseAddr){

	return NETWORK_INTERFACE_mReadReg(NIBaseAddr, NETWORK_INTERFACE_S00_AXI_SLV_REG0_OFFSET);
}

int main()
{
    //init_platform();
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");
    print("Router test\n\r");
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");

    u32 dataOut = 0;

    /* Build a header flit */
    u32 flitContent = build_header(1, 0, 3, 3);
    u32 flit = build_flit(FLIT_TYPE_HEADER, flitContent);

    /* Send a flit to Local  (should come out from East) */
	printf("Sending data from Router 0: %lu\n\r", flit);
	send_flit(NI_R0_BASEADDR, flit);

	/* Receive packet from East */
	printf("Receiving packet from Router 1...\n\r");
	dataOut = recv_flit(NI_R1_BASEADDR);
	printf("Data received from Router 1: %lu\n\r", dataOut);

	/* Receive packet from South */
	printf("Receiving packet from Router 2...\n\r");
	dataOut = recv_flit(NI_R2_BASEADDR);
	printf("Data received from Router 2: %lu\n\r", dataOut);

	/* Receive packet from Local */
	printf("Receiving packet from Rotuer 3...\n\r");
	dataOut = recv_flit(NI_R3_BASEADDR);
	printf("Data received from Router 3: %lu\n\r", dataOut);

	print("================");

    return 0;
}
