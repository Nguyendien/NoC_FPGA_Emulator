#include "packetizer.h"

/*
 * Calculates parity of a flit.
 *
 * flit: flit without parity bit
 * return: If there is an even number of '1'-s in the flit, returns '0', else '1'
 */

unsigned int parity_check(u32 flit){

	unsigned int parity = 0;

	while (flit)
    {
        parity = !parity;
        flit = flit & (flit - 1);
    }

	return parity;
}

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

u32 build_header(int packetID, int srcAddr, int dstAddr, int packetLength){

	return packetID | \
			(srcAddr << SRC_ADDR_OFFSET) | \
			(dstAddr << DST_ADDR_OFFSET) | \
			(packetLength << PACKET_LENGTH_OFFSET);

}

/*
 * Builds the flit by adding flit type and parity bit to the payload
 *
 * flitType:	Type of the flit (header || body || tail - 3-bit, one-hot)
 * payLoad:		Flit's payload (28)
 *
 * Return:		Flit contents
 */

u32 build_flit (int flitType, u32 payload) {

	u32 flit = 0 | \
			(payload << PAYLOAD_OFFSET) | \
			(flitType << FLIT_TYPE_OFFSET);

	u32 parity = parity_check(flit);

	return flit | parity;

}

/*
 * Send out a flit by writing it over the AXI bus into a NI.
 *
 * NIBaseAddr:	Base address for the NI we use for writing
 * flit:		Flit to send
 */

void send_flit(int NIBaseAddr, u32 flit){
	//Write flit to NI
	NETWORK_INTERFACE_mWriteReg(NIBaseAddr, NI_INPUT_REG_OFFSET, flit);

	//Pulse RTS in the NI
	NETWORK_INTERFACE_mWriteReg(NIBaseAddr, NI_RTS_REG_OFFSET, NI_RTS_SET);
	NETWORK_INTERFACE_mWriteReg(NIBaseAddr, NI_RTS_REG_OFFSET, NI_RTS_RESET);

}

/*
 * Read a flit from an NI-s output.
 *
 * NIBaseAddr:	Base address of the NI to read from.
 * flitType:	Type of the flit (3-bit, one-hot)
 * payload:		The flit read from the NI.
 *
 * return:		Error value
 */

int recv_flit(int NIBaseAddr, int *flitType, u32 *payload){

	u32 flit = NETWORK_INTERFACE_mReadReg(NIBaseAddr, NI_OUTPUT_REG_OFFSET);
	u32 flitContent = (flit & FLIT_CONTENT_MASK) >> PAYLOAD_OFFSET;
	int flitParityBit = flit & FLIT_PARITY_BIT_MASK;

	*flitType = (flit & FLIT_TYPE_MASK) >> FLIT_TYPE_OFFSET;
	*payload = (flit & FLIT_PAYLOAD_MASK) >> PAYLOAD_OFFSET;

	if (parity_check(flitContent) == flitParityBit){
		if (*flitType != (FLIT_TYPE_HEADER || FLIT_TYPE_BODY || FLIT_TYPE_TAIL)){
			return FLIT_INVALID_TYPE;
		} else {
			return FLIT_OK;
		}
	} else {
		return FLIT_INVALID_PARITY;
	}
}

int header_decode(u32 header, int *packetID, int *srcAddr, int *dstAddr, int *packetLength){

	int i;
	int oneCounter = 0;

	*packetID = (header & FLIT_ID_MASK);
	*srcAddr = (header & FLIT_SCR_ADDR_MASK) >> SRC_ADDR_OFFSET;
	*dstAddr = (header & FLIT_DST_ADDR_MASK) >> DST_ADDR_OFFSET;
	*packetLength = (header & FLIT_LENGHT_MASK) >> PACKET_LENGTH_OFFSET;


	for (i = 0; i < SIZEOF_PACKET_ID; i++)
    {
		//Count 1-s in packageID
		oneCounter += (*packetID & (1 << i)) != 0 ? 1 : 0;
    }

	if (oneCounter != 1){ //Not one-hot
		return HEADER_INVALID_ID;

	} else if (*srcAddr > XPAR_NETWORK_INTERFACE_NUM_INSTANCES){
		return HEADER_INVALID_SRC_ADDR;

	} else if (*dstAddr > XPAR_NETWORK_INTERFACE_NUM_INSTANCES){
		return HEADER_INVALID_DST_ADDR;

	} else if (dstAddr == srcAddr){
		return HEADER_SRC_ADDR_IS_DST_ADDR;

	} else if (*packetLength < 2){ //Minimal packet = header + tail
		return HEADER_INVALID_LENGTH;

	} else {
		return HEADER_OK;
	}

}
