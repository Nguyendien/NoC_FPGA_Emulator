/*
 * main.c
 *
 *  Created on: Mar 3, 2016
 *      Author: Karl Janson
 */

#include <stdio.h>
#include <stdlib.h>
#include "defines.h"
#include "packetizer.h"

int main()
{

    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");
    print("Router test\n\r");
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");

    int errorCode = 0;
    int flitType;
    u32 payload;

    /* Build a header flit */
    u32 flitContent = build_header(1, 0, 3, 3);
    u32 flit = build_flit(FLIT_TYPE_HEADER, flitContent);

    /* Send a flit from router 0 */
	printf("Sending data from Router 0: %lu\n\r", flit);
	send_flit(NI_R0_BASEADDR, flit);

	print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");

	/* Trying to receive a flit from router 1 */
	printf("Receiving packet from Router 1...\n\r");
	errorCode = recv_flit(NI_R1_BASEADDR, &flitType, &payload);
	printf("Data received from Router 1: %lu\n\r", errorCode);

	print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");

	/* Trying to receive a flit from router 2 */
	printf("Receiving packet from Router 2...\n\r");
	errorCode = recv_flit(NI_R2_BASEADDR, &flitType, &payload);
	printf("Data received from Router 2: %lu\n\r", errorCode);

	print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");

	/* Trying to receive a flit from router 3 */
	printf("Receiving packet from Router 3...\n\r");
	errorCode = recv_flit(NI_R3_BASEADDR, &flitType, &payload);
	printf("Data received from Router 3: %lu\n\r", errorCode);

	printf("================\r\n");

    return 0;
}
