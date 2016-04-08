#include <stdio.h>
#include <stdlib.h>
#include "xparameters.h"
#include "xil_io.h"
#include "defines.h"
#include "network_interface.h"

/*
 * Calculates parity of a flit.
 *
 * flit: flit without parity bit
 * return: If there is an even number of '1'-s in the flit, returns '0', else '1'
 */

unsigned int parity_check(u32 flit);

/*
 * Builds payload part of header flit.
 *
 * packetID:	 Counter specifying the packet ID (one-hot, 8-bit)
 * srcAddr:		 Address of the source node (4-bit)
 * dstAddr:		 Address of the destination node (4-bit)
 * packetLength: Length of the packet in flits (including the header and tail, 12 bits)
 *
 * Return:		 Payload part of the header (28 bits)
 */

u32 build_header(int packetID, int srcAddr, int dstAddr, int packetLength);

/*
 * Builds the flit by adding flit type and parity bit to the payload
 *
 * flitType:	Type of the flit (header || body || tail - 3-bit, one-hot)
 * payLoad:		Flit's payload (28)
 *
 * Return:		Flit contents
 */

u32 build_flit (int flitType, u32 payload);

/*
 * Send out a flit by writing it over the AXI bus into a NI.
 *
 * NIBaseAddr:	Base address for the NI we use for writing
 * flit:		Flit to send
 */

void send_flit(int NIBaseAddr, u32 flit);

/*
 * Read a flit from an NI-s output.
 *
 * NIBaseAddr:	Base address of the NI to read from.
 * flitType:	Type of the flit (3-bit, one-hot)
 * payload:		The flit read from the NI.
 *
 * return:		Error value
 */
int recv_flit(int NIBaseAddr, int *flitType, u32 *payload);

/*
 * Decode the flit header.
 *
 * header:  incoming header
 * packetID:	 Counter specifying the packet ID (one-hot, 8-bit)
 * srcAddr:		 Address of the source node (4-bit)
 * dstAddr:		 Address of the destination node (4-bit)
 * packetLength: Length of the packet in flits (including the header and tail, 12 bits)
 *
 * return:		 Error value
 */

int header_decode(u32 header, int *packetID, int *srcAddr, int *dstAddr, int *packetLength);
