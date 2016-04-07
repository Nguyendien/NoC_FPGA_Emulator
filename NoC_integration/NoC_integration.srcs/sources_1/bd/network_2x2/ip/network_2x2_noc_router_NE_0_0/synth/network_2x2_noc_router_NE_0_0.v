// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: ttu.ee:user:noc_router_NE:1.0
// IP Revision: 1

(* X_CORE_INFO = "noc_router_NE,Vivado 2015.1" *)
(* CHECK_LICENSE_TYPE = "network_2x2_noc_router_NE_0_0,noc_router_NE,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module network_2x2_noc_router_NE_0_0 (
  clk,
  rst,
  Rxy,
  Cx,
  cur_addr,
  L_RX,
  L_DRTS,
  L_CTS,
  L_TX,
  L_RTS,
  L_DCTS,
  W_RX,
  W_DRTS,
  W_CTS,
  W_TX,
  W_RTS,
  W_DCTS,
  S_RX,
  S_DRTS,
  S_CTS,
  S_TX,
  S_RTS,
  S_DCTS
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [7 : 0] Rxy;
input wire [3 : 0] Cx;
input wire [1 : 0] cur_addr;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 L_in Data" *)
input wire [31 : 0] L_RX;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 L_in RTS" *)
input wire L_DRTS;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 L_in CTS" *)
output wire L_CTS;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 L_out Data" *)
output wire [31 : 0] L_TX;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 L_out RTS" *)
output wire L_RTS;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 L_out CTS" *)
input wire L_DCTS;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 W_in Data" *)
input wire [31 : 0] W_RX;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 W_in RTS" *)
input wire W_DRTS;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 W_in CTS" *)
output wire W_CTS;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 W_out Data" *)
output wire [31 : 0] W_TX;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 W_out RTS" *)
output wire W_RTS;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 W_out CTS" *)
input wire W_DCTS;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 S_in Data" *)
input wire [31 : 0] S_RX;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 S_in RTS" *)
input wire S_DRTS;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 S_in CTS" *)
output wire S_CTS;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 S_out Data" *)
output wire [31 : 0] S_TX;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 S_out RTS" *)
output wire S_RTS;
(* X_INTERFACE_INFO = "ttu.ee:user:NoC_connection:1.0 S_out CTS" *)
input wire S_DCTS;

  noc_router_NE inst (
    .clk(clk),
    .rst(rst),
    .Rxy(Rxy),
    .Cx(Cx),
    .cur_addr(cur_addr),
    .L_RX(L_RX),
    .L_DRTS(L_DRTS),
    .L_CTS(L_CTS),
    .L_TX(L_TX),
    .L_RTS(L_RTS),
    .L_DCTS(L_DCTS),
    .W_RX(W_RX),
    .W_DRTS(W_DRTS),
    .W_CTS(W_CTS),
    .W_TX(W_TX),
    .W_RTS(W_RTS),
    .W_DCTS(W_DCTS),
    .S_RX(S_RX),
    .S_DRTS(S_DRTS),
    .S_CTS(S_CTS),
    .S_TX(S_TX),
    .S_RTS(S_RTS),
    .S_DCTS(S_DCTS)
  );
endmodule
