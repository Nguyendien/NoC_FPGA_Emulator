/********************
* Filename:    parameters.v
* Description: Parameters for Packet FLITS
* $Revision: 35 $
* $Id: parameters.v 35 2016-02-20 16:36:01Z ranga $
* $Date: 2016-02-20 18:36:01 +0200 (Sat, 20 Feb 2016) $
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
  `define AXIS 'd4         // Change it to 2 for noc_network & 4 for noc_router
  `define NODES `AXIS * `AXIS