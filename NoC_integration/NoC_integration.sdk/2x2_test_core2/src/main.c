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

    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");
    print("Router test - Connected to 3, running on ARM core 1 - loaded\n\r");
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\r");

    int errorCode = 0;

    int flitType;
    u32 payload;
    int packetID;
    int srcAddr;
    int dstAddr;
    int packetLength;


	while (1){
		while (flitType != FLIT_TYPE_HEADER){
			errorCode = recv_flit(NI_R1_BASEADDR, &flitType, &payload);
		}

		if (errorCode == FLIT_OK){

			errorCode = header_decode(payload, &packetID, &srcAddr, &dstAddr, &packetLength);

			if (errorCode == HEADER_OK){
				printf("Core 1 - Received header from %d\n\r", srcAddr);
			}

			/*while (flitType != FLIT_TYPE_HEADER){
				errorCode = recv_flit(NI_R1_BASEADDR, &flitType, &payload);
			}*/

		} else {
			printf("Core 1 - Received header, error reading flit, error %d\n\r", errorCode);
		}
	}

    return 0;
}
