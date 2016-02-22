/********************
* Filename:    parameters.v
* Description: Parameters for Packet FLITS
* $Revision: 34 $
* $Id: parameters.v 34 2016-02-15 21:43:28Z ranga $
* $Date: 2016-02-15 23:43:28 +0200 (Mon, 15 Feb 2016) $
* $Author: ranga $
*********************/

  // defining the flit ID -- One hot encoding
  `define HEADER  3'b001
  `define PAYLOAD 3'b010
  `define TAIL    3'b100

  // Specifying the FIFO parameters
  `define FIFO_DEPTH 'd4               // 4 flits capacity
  `define PTR_SIZE   `FIFO_DEPTH       // Controls reading and writing (for full and empty) >> Depends on the FIFO_DEPTH
  `define DATA_WIDTH 'd32              // # of data bits with parity
  
  // Network parameters
  `define XAXIS 'd2         // Change it to 2 for noc_network & 4 for noc_router
  `define YAXIS 'd2         // Change it to 2 for noc_network & 4 for noc_router
  `define NODES `XAXIS * `YAXIS