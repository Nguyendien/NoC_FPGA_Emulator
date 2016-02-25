-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: noc.ttu.ee:noc:NI:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY NoC_integration_NI_0_0 IS
  PORT (
    s00_axi_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s00_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_awlock : IN STD_LOGIC;
    s00_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wlast : IN STD_LOGIC;
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s00_axi_araddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s00_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_arlock : IN STD_LOGIC;
    s00_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rlast : OUT STD_LOGIC;
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC;
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC;
    irq : OUT STD_LOGIC;
    s_axi_intr_awaddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_intr_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_intr_awvalid : IN STD_LOGIC;
    s_axi_intr_awready : OUT STD_LOGIC;
    s_axi_intr_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_intr_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_intr_wvalid : IN STD_LOGIC;
    s_axi_intr_wready : OUT STD_LOGIC;
    s_axi_intr_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_intr_bvalid : OUT STD_LOGIC;
    s_axi_intr_bready : IN STD_LOGIC;
    s_axi_intr_araddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_intr_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_intr_arvalid : IN STD_LOGIC;
    s_axi_intr_arready : OUT STD_LOGIC;
    s_axi_intr_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_intr_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_intr_rvalid : OUT STD_LOGIC;
    s_axi_intr_rready : IN STD_LOGIC;
    s_axi_intr_aclk : IN STD_LOGIC;
    s_axi_intr_aresetn : IN STD_LOGIC
  );
END NoC_integration_NI_0_0;

ARCHITECTURE NoC_integration_NI_0_0_arch OF NoC_integration_NI_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF NoC_integration_NI_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT NI_v1_0 IS
    GENERIC (
      C_S00_AXI_ID_WIDTH : INTEGER; -- Width of ID for for write address, write data, read address and read data
      C_S00_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S00_AXI_ADDR_WIDTH : INTEGER; -- Width of S_AXI address bus
      C_S00_AXI_AWUSER_WIDTH : INTEGER; -- Width of optional user defined signal in write address channel
      C_S00_AXI_ARUSER_WIDTH : INTEGER; -- Width of optional user defined signal in read address channel
      C_S00_AXI_WUSER_WIDTH : INTEGER; -- Width of optional user defined signal in write data channel
      C_S00_AXI_RUSER_WIDTH : INTEGER; -- Width of optional user defined signal in read data channel
      C_S00_AXI_BUSER_WIDTH : INTEGER; -- Width of optional user defined signal in write response channel
      C_S_AXI_INTR_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S_AXI_INTR_ADDR_WIDTH : INTEGER; -- Width of S_AXI address bus
      C_NUM_OF_INTR : INTEGER; -- Number of Interrupts
      C_INTR_SENSITIVITY : STD_LOGIC_VECTOR; -- Each bit corresponds to Sensitivity of interrupt :  0 - EDGE, 1 - LEVEL
      C_INTR_ACTIVE_STATE : STD_LOGIC_VECTOR; -- Each bit corresponds to Sub-type of INTR: [0 - FALLING_EDGE, 1 - RISING_EDGE : if C_INTR_SENSITIVITY is EDGE(0)] and [ 0 - LEVEL_LOW, 1 - LEVEL_LOW : if C_INTR_SENSITIVITY is LEVEL(1) ]
      C_IRQ_SENSITIVITY : INTEGER; -- Sensitivity of IRQ: 0 - EDGE, 1 - LEVEL
      C_IRQ_ACTIVE_STATE : INTEGER -- Sub-type of IRQ: [0 - FALLING_EDGE, 1 - RISING_EDGE : if C_IRQ_SENSITIVITY is EDGE(0)] and [ 0 - LEVEL_LOW, 1 - LEVEL_LOW : if C_IRQ_SENSITIVITY is LEVEL(1) ]
    );
    PORT (
      s00_axi_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s00_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s00_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_awlock : IN STD_LOGIC;
      s00_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_awuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_awvalid : IN STD_LOGIC;
      s00_axi_awready : OUT STD_LOGIC;
      s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_wlast : IN STD_LOGIC;
      s00_axi_wuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_wvalid : IN STD_LOGIC;
      s00_axi_wready : OUT STD_LOGIC;
      s00_axi_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_buser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_bvalid : OUT STD_LOGIC;
      s00_axi_bready : IN STD_LOGIC;
      s00_axi_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s00_axi_araddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s00_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s00_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_arlock : IN STD_LOGIC;
      s00_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_aruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_arvalid : IN STD_LOGIC;
      s00_axi_arready : OUT STD_LOGIC;
      s00_axi_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_rlast : OUT STD_LOGIC;
      s00_axi_ruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_rvalid : OUT STD_LOGIC;
      s00_axi_rready : IN STD_LOGIC;
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_aresetn : IN STD_LOGIC;
      irq : OUT STD_LOGIC;
      s_axi_intr_awaddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_intr_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_intr_awvalid : IN STD_LOGIC;
      s_axi_intr_awready : OUT STD_LOGIC;
      s_axi_intr_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_intr_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_intr_wvalid : IN STD_LOGIC;
      s_axi_intr_wready : OUT STD_LOGIC;
      s_axi_intr_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_intr_bvalid : OUT STD_LOGIC;
      s_axi_intr_bready : IN STD_LOGIC;
      s_axi_intr_araddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_intr_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_intr_arvalid : IN STD_LOGIC;
      s_axi_intr_arready : OUT STD_LOGIC;
      s_axi_intr_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_intr_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_intr_rvalid : OUT STD_LOGIC;
      s_axi_intr_rready : IN STD_LOGIC;
      s_axi_intr_aclk : IN STD_LOGIC;
      s_axi_intr_aresetn : IN STD_LOGIC
    );
  END COMPONENT NI_v1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF NoC_integration_NI_0_0_arch: ARCHITECTURE IS "NI_v1_0,Vivado 2015.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF NoC_integration_NI_0_0_arch : ARCHITECTURE IS "NoC_integration_NI_0_0,NI_v1_0,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_INFO OF irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXI_INTR_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S_AXI_INTR_RST RST";
BEGIN
  U0 : NI_v1_0
    GENERIC MAP (
      C_S00_AXI_ID_WIDTH => 12,
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 6,
      C_S00_AXI_AWUSER_WIDTH => 1,
      C_S00_AXI_ARUSER_WIDTH => 1,
      C_S00_AXI_WUSER_WIDTH => 1,
      C_S00_AXI_RUSER_WIDTH => 1,
      C_S00_AXI_BUSER_WIDTH => 1,
      C_S_AXI_INTR_DATA_WIDTH => 32,
      C_S_AXI_INTR_ADDR_WIDTH => 5,
      C_NUM_OF_INTR => 1,
      C_INTR_SENSITIVITY => X"FFFFFFFF",
      C_INTR_ACTIVE_STATE => X"FFFFFFFF",
      C_IRQ_SENSITIVITY => 1,
      C_IRQ_ACTIVE_STATE => 1
    )
    PORT MAP (
      s00_axi_awid => s00_axi_awid,
      s00_axi_awaddr => s00_axi_awaddr,
      s00_axi_awlen => s00_axi_awlen,
      s00_axi_awsize => s00_axi_awsize,
      s00_axi_awburst => s00_axi_awburst,
      s00_axi_awlock => s00_axi_awlock,
      s00_axi_awcache => s00_axi_awcache,
      s00_axi_awprot => s00_axi_awprot,
      s00_axi_awregion => s00_axi_awregion,
      s00_axi_awqos => s00_axi_awqos,
      s00_axi_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_wdata => s00_axi_wdata,
      s00_axi_wstrb => s00_axi_wstrb,
      s00_axi_wlast => s00_axi_wlast,
      s00_axi_wuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_bid => s00_axi_bid,
      s00_axi_bresp => s00_axi_bresp,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_arid => s00_axi_arid,
      s00_axi_araddr => s00_axi_araddr,
      s00_axi_arlen => s00_axi_arlen,
      s00_axi_arsize => s00_axi_arsize,
      s00_axi_arburst => s00_axi_arburst,
      s00_axi_arlock => s00_axi_arlock,
      s00_axi_arcache => s00_axi_arcache,
      s00_axi_arprot => s00_axi_arprot,
      s00_axi_arregion => s00_axi_arregion,
      s00_axi_arqos => s00_axi_arqos,
      s00_axi_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arready => s00_axi_arready,
      s00_axi_rid => s00_axi_rid,
      s00_axi_rdata => s00_axi_rdata,
      s00_axi_rresp => s00_axi_rresp,
      s00_axi_rlast => s00_axi_rlast,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_rready => s00_axi_rready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      irq => irq,
      s_axi_intr_awaddr => s_axi_intr_awaddr,
      s_axi_intr_awprot => s_axi_intr_awprot,
      s_axi_intr_awvalid => s_axi_intr_awvalid,
      s_axi_intr_awready => s_axi_intr_awready,
      s_axi_intr_wdata => s_axi_intr_wdata,
      s_axi_intr_wstrb => s_axi_intr_wstrb,
      s_axi_intr_wvalid => s_axi_intr_wvalid,
      s_axi_intr_wready => s_axi_intr_wready,
      s_axi_intr_bresp => s_axi_intr_bresp,
      s_axi_intr_bvalid => s_axi_intr_bvalid,
      s_axi_intr_bready => s_axi_intr_bready,
      s_axi_intr_araddr => s_axi_intr_araddr,
      s_axi_intr_arprot => s_axi_intr_arprot,
      s_axi_intr_arvalid => s_axi_intr_arvalid,
      s_axi_intr_arready => s_axi_intr_arready,
      s_axi_intr_rdata => s_axi_intr_rdata,
      s_axi_intr_rresp => s_axi_intr_rresp,
      s_axi_intr_rvalid => s_axi_intr_rvalid,
      s_axi_intr_rready => s_axi_intr_rready,
      s_axi_intr_aclk => s_axi_intr_aclk,
      s_axi_intr_aresetn => s_axi_intr_aresetn
    );
END NoC_integration_NI_0_0_arch;
