/********************
* Filename:     state_defines.v
* Description:  definitions of the possibile values for the arbiter state variable
                one-hot encoding considered
* $Revision: 21 $
* $Id: state_defines.v 21 2015-11-21 10:54:06Z ranga $
* $Date: 2015-11-21 12:54:06 +0200 (Sat, 21 Nov 2015) $
* $Author: ranga $
*********************/

`define IDLE    4'b0001
`define GRANT_L 4'b0010
`define GRANT_N 4'b0100
`define GRANT_W 4'b1000

`define L_PORT 3'b001
`define N_PORT 3'b010
`define W_PORT 3'b100
