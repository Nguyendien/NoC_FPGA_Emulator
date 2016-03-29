--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
--Date        : Tue Mar 29 15:13:23 2016
--Host        : peekon running 64-bit unknown
--Command     : generate_target microblaze.bd
--Design      : microblaze
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_2SZHJX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_2SZHJX;

architecture STRUCTURE of m00_couplers_imp_2SZHJX is
  component microblaze_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component microblaze_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(8 downto 0) <= auto_pc_to_m00_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= auto_pc_to_m00_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(3 downto 0) <= m00_couplers_to_auto_pc_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= m00_couplers_to_auto_pc_RID(3 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(3 downto 0) <= S_AXI_arid(3 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(3 downto 0) <= S_AXI_awid(3 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component microblaze_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => m00_couplers_to_auto_pc_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => m00_couplers_to_auto_pc_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(3 downto 0) => m00_couplers_to_auto_pc_BID(3 downto 0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(3 downto 0) => m00_couplers_to_auto_pc_RID(3 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_UXJV17 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_UXJV17;

architecture STRUCTURE of m01_couplers_imp_UXJV17 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal m01_couplers_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal m01_couplers_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(29 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(29 downto 0);
  M_AXI_arburst(1 downto 0) <= m01_couplers_to_m01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m01_couplers_to_m01_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(3 downto 0) <= m01_couplers_to_m01_couplers_ARID(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m01_couplers_to_m01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m01_couplers_to_m01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= m01_couplers_to_m01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m01_couplers_to_m01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(29 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(29 downto 0);
  M_AXI_awburst(1 downto 0) <= m01_couplers_to_m01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m01_couplers_to_m01_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(3 downto 0) <= m01_couplers_to_m01_couplers_AWID(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m01_couplers_to_m01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m01_couplers_to_m01_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= m01_couplers_to_m01_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m01_couplers_to_m01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= m01_couplers_to_m01_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bid(3 downto 0) <= m01_couplers_to_m01_couplers_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= m01_couplers_to_m01_couplers_RID(3 downto 0);
  S_AXI_rlast(0) <= m01_couplers_to_m01_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(29 downto 0) <= S_AXI_araddr(29 downto 0);
  m01_couplers_to_m01_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_m01_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_m01_couplers_ARID(3 downto 0) <= S_AXI_arid(3 downto 0);
  m01_couplers_to_m01_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_m01_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(29 downto 0) <= S_AXI_awaddr(29 downto 0);
  m01_couplers_to_m01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_m01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_m01_couplers_AWID(3 downto 0) <= S_AXI_awid(3 downto 0);
  m01_couplers_to_m01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_m01_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BID(3 downto 0) <= M_AXI_bid(3 downto 0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RID(3 downto 0) <= M_AXI_rid(3 downto 0);
  m01_couplers_to_m01_couplers_RLAST(0) <= M_AXI_rlast(0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WLAST(0) <= S_AXI_wlast(0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1HI1GR5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_1HI1GR5;

architecture STRUCTURE of m02_couplers_imp_1HI1GR5 is
  component microblaze_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component microblaze_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m02_couplers_WVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(4 downto 0) <= auto_pc_to_m02_couplers_ARADDR(4 downto 0);
  M_AXI_arvalid <= auto_pc_to_m02_couplers_ARVALID;
  M_AXI_awaddr(4 downto 0) <= auto_pc_to_m02_couplers_AWADDR(4 downto 0);
  M_AXI_awvalid <= auto_pc_to_m02_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m02_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m02_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m02_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(3 downto 0) <= m02_couplers_to_auto_pc_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= m02_couplers_to_auto_pc_RID(3 downto 0);
  S_AXI_rlast <= m02_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m02_couplers_to_auto_pc_WREADY;
  auto_pc_to_m02_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m02_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m02_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m02_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m02_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m02_couplers_to_auto_pc_ARID(3 downto 0) <= S_AXI_arid(3 downto 0);
  m02_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m02_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m02_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m02_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m02_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m02_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m02_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m02_couplers_to_auto_pc_AWID(3 downto 0) <= S_AXI_awid(3 downto 0);
  m02_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m02_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m02_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m02_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m02_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m02_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m02_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m02_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m02_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component microblaze_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m02_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m02_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m02_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m02_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m02_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m02_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m02_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m02_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m02_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m02_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m02_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m02_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m02_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m02_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m02_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => m02_couplers_to_auto_pc_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => m02_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m02_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m02_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m02_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m02_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m02_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m02_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m02_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m02_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m02_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m02_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => m02_couplers_to_auto_pc_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => m02_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m02_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m02_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m02_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m02_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m02_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m02_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m02_couplers_to_auto_pc_AWVALID,
      s_axi_bid(3 downto 0) => m02_couplers_to_auto_pc_BID(3 downto 0),
      s_axi_bready => m02_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m02_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m02_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m02_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(3 downto 0) => m02_couplers_to_auto_pc_RID(3 downto 0),
      s_axi_rlast => m02_couplers_to_auto_pc_RLAST,
      s_axi_rready => m02_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m02_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m02_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m02_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m02_couplers_to_auto_pc_WLAST,
      s_axi_wready => m02_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m02_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m02_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_19Z7TXZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_19Z7TXZ;

architecture STRUCTURE of m03_couplers_imp_19Z7TXZ is
  component microblaze_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component microblaze_auto_pc_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m03_couplers_WVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(3 downto 0) <= auto_pc_to_m03_couplers_ARADDR(3 downto 0);
  M_AXI_arvalid <= auto_pc_to_m03_couplers_ARVALID;
  M_AXI_awaddr(3 downto 0) <= auto_pc_to_m03_couplers_AWADDR(3 downto 0);
  M_AXI_awvalid <= auto_pc_to_m03_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m03_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m03_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m03_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m03_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(3 downto 0) <= m03_couplers_to_auto_pc_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= m03_couplers_to_auto_pc_RID(3 downto 0);
  S_AXI_rlast <= m03_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m03_couplers_to_auto_pc_WREADY;
  auto_pc_to_m03_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m03_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m03_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m03_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m03_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m03_couplers_to_auto_pc_ARID(3 downto 0) <= S_AXI_arid(3 downto 0);
  m03_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m03_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m03_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m03_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m03_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m03_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m03_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m03_couplers_to_auto_pc_AWID(3 downto 0) <= S_AXI_awid(3 downto 0);
  m03_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m03_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m03_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m03_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m03_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m03_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m03_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m03_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m03_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component microblaze_auto_pc_2
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m03_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m03_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m03_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m03_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m03_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m03_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m03_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m03_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m03_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m03_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m03_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m03_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m03_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m03_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => m03_couplers_to_auto_pc_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => m03_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m03_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m03_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m03_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m03_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m03_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m03_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m03_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m03_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m03_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m03_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => m03_couplers_to_auto_pc_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => m03_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m03_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m03_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m03_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m03_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m03_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m03_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m03_couplers_to_auto_pc_AWVALID,
      s_axi_bid(3 downto 0) => m03_couplers_to_auto_pc_BID(3 downto 0),
      s_axi_bready => m03_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m03_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m03_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m03_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(3 downto 0) => m03_couplers_to_auto_pc_RID(3 downto 0),
      s_axi_rlast => m03_couplers_to_auto_pc_RLAST,
      s_axi_rready => m03_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m03_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m03_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m03_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m03_couplers_to_auto_pc_WLAST,
      s_axi_wready => m03_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m03_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m03_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_J4O1C4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_J4O1C4;

architecture STRUCTURE of m04_couplers_imp_J4O1C4 is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal m04_couplers_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_m04_couplers_ARLOCK : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal m04_couplers_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_m04_couplers_AWLOCK : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_RLAST : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WLAST : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(12 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(12 downto 0);
  M_AXI_arburst(1 downto 0) <= m04_couplers_to_m04_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m04_couplers_to_m04_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(3 downto 0) <= m04_couplers_to_m04_couplers_ARID(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m04_couplers_to_m04_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= m04_couplers_to_m04_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= m04_couplers_to_m04_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m04_couplers_to_m04_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr(12 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(12 downto 0);
  M_AXI_awburst(1 downto 0) <= m04_couplers_to_m04_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m04_couplers_to_m04_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(3 downto 0) <= m04_couplers_to_m04_couplers_AWID(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m04_couplers_to_m04_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= m04_couplers_to_m04_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= m04_couplers_to_m04_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m04_couplers_to_m04_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= m04_couplers_to_m04_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bid(3 downto 0) <= m04_couplers_to_m04_couplers_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= m04_couplers_to_m04_couplers_RID(3 downto 0);
  S_AXI_rlast <= m04_couplers_to_m04_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR(12 downto 0) <= S_AXI_araddr(12 downto 0);
  m04_couplers_to_m04_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m04_couplers_to_m04_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m04_couplers_to_m04_couplers_ARID(3 downto 0) <= S_AXI_arid(3 downto 0);
  m04_couplers_to_m04_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m04_couplers_to_m04_couplers_ARLOCK <= S_AXI_arlock;
  m04_couplers_to_m04_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR(12 downto 0) <= S_AXI_awaddr(12 downto 0);
  m04_couplers_to_m04_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m04_couplers_to_m04_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m04_couplers_to_m04_couplers_AWID(3 downto 0) <= S_AXI_awid(3 downto 0);
  m04_couplers_to_m04_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m04_couplers_to_m04_couplers_AWLOCK <= S_AXI_awlock;
  m04_couplers_to_m04_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BID(3 downto 0) <= M_AXI_bid(3 downto 0);
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RID(3 downto 0) <= M_AXI_rid(3 downto 0);
  m04_couplers_to_m04_couplers_RLAST <= M_AXI_rlast;
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WLAST <= S_AXI_wlast;
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_9BINPE is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_9BINPE;

architecture STRUCTURE of m05_couplers_imp_9BINPE is
  component microblaze_auto_pc_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component microblaze_auto_pc_3;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m05_couplers_WVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m05_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m05_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(8 downto 0) <= auto_pc_to_m05_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= auto_pc_to_m05_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= auto_pc_to_m05_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= auto_pc_to_m05_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m05_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m05_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m05_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m05_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(3 downto 0) <= m05_couplers_to_auto_pc_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= m05_couplers_to_auto_pc_RID(3 downto 0);
  S_AXI_rlast <= m05_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m05_couplers_to_auto_pc_WREADY;
  auto_pc_to_m05_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m05_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m05_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m05_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m05_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m05_couplers_to_auto_pc_ARID(3 downto 0) <= S_AXI_arid(3 downto 0);
  m05_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m05_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m05_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m05_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m05_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m05_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m05_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m05_couplers_to_auto_pc_AWID(3 downto 0) <= S_AXI_awid(3 downto 0);
  m05_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m05_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m05_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m05_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m05_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m05_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m05_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m05_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m05_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component microblaze_auto_pc_3
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m05_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m05_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m05_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m05_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m05_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m05_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m05_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m05_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m05_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m05_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m05_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m05_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m05_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m05_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m05_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m05_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m05_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => m05_couplers_to_auto_pc_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => m05_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m05_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m05_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m05_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m05_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m05_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m05_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m05_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m05_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m05_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m05_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => m05_couplers_to_auto_pc_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => m05_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m05_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m05_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m05_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m05_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m05_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m05_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m05_couplers_to_auto_pc_AWVALID,
      s_axi_bid(3 downto 0) => m05_couplers_to_auto_pc_BID(3 downto 0),
      s_axi_bready => m05_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m05_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m05_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m05_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(3 downto 0) => m05_couplers_to_auto_pc_RID(3 downto 0),
      s_axi_rlast => m05_couplers_to_auto_pc_RLAST,
      s_axi_rready => m05_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m05_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m05_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m05_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m05_couplers_to_auto_pc_WLAST,
      s_axi_wready => m05_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m05_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m05_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_13GVUX4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_13GVUX4;

architecture STRUCTURE of m06_couplers_imp_13GVUX4 is
  component microblaze_auto_pc_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component microblaze_auto_pc_4;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m06_couplers_WVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(8 downto 0) <= auto_pc_to_m06_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= auto_pc_to_m06_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= auto_pc_to_m06_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= auto_pc_to_m06_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m06_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m06_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m06_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m06_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(3 downto 0) <= m06_couplers_to_auto_pc_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= m06_couplers_to_auto_pc_RID(3 downto 0);
  S_AXI_rlast <= m06_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m06_couplers_to_auto_pc_WREADY;
  auto_pc_to_m06_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m06_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m06_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m06_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m06_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m06_couplers_to_auto_pc_ARID(3 downto 0) <= S_AXI_arid(3 downto 0);
  m06_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m06_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m06_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m06_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m06_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m06_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m06_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m06_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m06_couplers_to_auto_pc_AWID(3 downto 0) <= S_AXI_awid(3 downto 0);
  m06_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m06_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m06_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m06_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m06_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m06_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m06_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m06_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m06_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m06_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component microblaze_auto_pc_4
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m06_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m06_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m06_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m06_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m06_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m06_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m06_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m06_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m06_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m06_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m06_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m06_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m06_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m06_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m06_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m06_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m06_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => m06_couplers_to_auto_pc_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => m06_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m06_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m06_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m06_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m06_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m06_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m06_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m06_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m06_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m06_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m06_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => m06_couplers_to_auto_pc_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => m06_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m06_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m06_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m06_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m06_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m06_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m06_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m06_couplers_to_auto_pc_AWVALID,
      s_axi_bid(3 downto 0) => m06_couplers_to_auto_pc_BID(3 downto 0),
      s_axi_bready => m06_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m06_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m06_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m06_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(3 downto 0) => m06_couplers_to_auto_pc_RID(3 downto 0),
      s_axi_rlast => m06_couplers_to_auto_pc_RLAST,
      s_axi_rready => m06_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m06_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m06_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m06_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m06_couplers_to_auto_pc_WLAST,
      s_axi_wready => m06_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m06_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m06_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_1TASWEM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m07_couplers_imp_1TASWEM;

architecture STRUCTURE of m07_couplers_imp_1TASWEM is
  component microblaze_auto_pc_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component microblaze_auto_pc_5;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m07_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m07_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m07_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m07_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m07_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m07_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m07_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m07_couplers_WVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m07_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m07_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m07_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m07_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(8 downto 0) <= auto_pc_to_m07_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= auto_pc_to_m07_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= auto_pc_to_m07_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= auto_pc_to_m07_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m07_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m07_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m07_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m07_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m07_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(3 downto 0) <= m07_couplers_to_auto_pc_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m07_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= m07_couplers_to_auto_pc_RID(3 downto 0);
  S_AXI_rlast <= m07_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m07_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m07_couplers_to_auto_pc_WREADY;
  auto_pc_to_m07_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m07_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m07_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m07_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m07_couplers_WREADY <= M_AXI_wready;
  m07_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m07_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m07_couplers_to_auto_pc_ARID(3 downto 0) <= S_AXI_arid(3 downto 0);
  m07_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m07_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m07_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m07_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m07_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m07_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m07_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m07_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m07_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m07_couplers_to_auto_pc_AWID(3 downto 0) <= S_AXI_awid(3 downto 0);
  m07_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m07_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m07_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m07_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m07_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m07_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m07_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m07_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m07_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m07_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m07_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component microblaze_auto_pc_5
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m07_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m07_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m07_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m07_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m07_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m07_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m07_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m07_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m07_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m07_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m07_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m07_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m07_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m07_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m07_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m07_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m07_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => m07_couplers_to_auto_pc_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => m07_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m07_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m07_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m07_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m07_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m07_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m07_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m07_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m07_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m07_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m07_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => m07_couplers_to_auto_pc_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => m07_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m07_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m07_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m07_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m07_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m07_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m07_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m07_couplers_to_auto_pc_AWVALID,
      s_axi_bid(3 downto 0) => m07_couplers_to_auto_pc_BID(3 downto 0),
      s_axi_bready => m07_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m07_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m07_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m07_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(3 downto 0) => m07_couplers_to_auto_pc_RID(3 downto 0),
      s_axi_rlast => m07_couplers_to_auto_pc_RLAST,
      s_axi_rready => m07_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m07_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m07_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m07_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m07_couplers_to_auto_pc_WLAST,
      s_axi_wready => m07_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m07_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m07_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_0_local_memory_1_imp_1CUIU1Q is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end microblaze_0_local_memory_1_imp_1CUIU1Q;

architecture STRUCTURE of microblaze_0_local_memory_1_imp_1CUIU1Q is
  component microblaze_dlmb_v10_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component microblaze_dlmb_v10_1;
  component microblaze_ilmb_v10_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component microblaze_ilmb_v10_1;
  component microblaze_dlmb_bram_if_cntlr_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component microblaze_dlmb_bram_if_cntlr_1;
  component microblaze_ilmb_bram_if_cntlr_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component microblaze_ilmb_bram_if_cntlr_1;
  component microblaze_lmb_bram_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component microblaze_lmb_bram_1;
  signal GND_1 : STD_LOGIC;
  signal SYS_Rst_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_CE : STD_LOGIC;
  signal microblaze_0_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_READY : STD_LOGIC;
  signal microblaze_0_dlmb_UE : STD_LOGIC;
  signal microblaze_0_dlmb_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_bus_CE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READY : STD_LOGIC;
  signal microblaze_0_dlmb_bus_UE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_dlmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_CE : STD_LOGIC;
  signal microblaze_0_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_READY : STD_LOGIC;
  signal microblaze_0_ilmb_UE : STD_LOGIC;
  signal microblaze_0_ilmb_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_bus_CE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READY : STD_LOGIC;
  signal microblaze_0_ilmb_bus_UE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_ilmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x0 32 >  microblaze microblaze_0_local_memory_1/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= microblaze_0_dlmb_CE;
  DLMB_readdbus(0 to 31) <= microblaze_0_dlmb_READDBUS(0 to 31);
  DLMB_ready <= microblaze_0_dlmb_READY;
  DLMB_ue <= microblaze_0_dlmb_UE;
  DLMB_wait <= microblaze_0_dlmb_WAIT;
  ILMB_ce <= microblaze_0_ilmb_CE;
  ILMB_readdbus(0 to 31) <= microblaze_0_ilmb_READDBUS(0 to 31);
  ILMB_ready <= microblaze_0_ilmb_READY;
  ILMB_ue <= microblaze_0_ilmb_UE;
  ILMB_wait <= microblaze_0_ilmb_WAIT;
  SYS_Rst_1(0) <= SYS_Rst(0);
  microblaze_0_Clk <= LMB_Clk;
  microblaze_0_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  microblaze_0_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  microblaze_0_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  microblaze_0_dlmb_READSTROBE <= DLMB_readstrobe;
  microblaze_0_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  microblaze_0_dlmb_WRITESTROBE <= DLMB_writestrobe;
  microblaze_0_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  microblaze_0_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  microblaze_0_ilmb_READSTROBE <= ILMB_readstrobe;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
dlmb_bram_if_cntlr: component microblaze_dlmb_bram_if_cntlr_1
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_dlmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1(0),
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_dlmb_bus_READY,
      Sl_UE => microblaze_0_dlmb_bus_UE,
      Sl_Wait => microblaze_0_dlmb_bus_WAIT
    );
dlmb_v10: component microblaze_dlmb_v10_1
     port map (
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_dlmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_dlmb_UE,
      LMB_Wait => microblaze_0_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_dlmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => microblaze_0_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => microblaze_0_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => microblaze_0_dlmb_READSTROBE,
      M_WriteStrobe => microblaze_0_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1(0),
      Sl_CE(0) => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_dlmb_bus_READY,
      Sl_UE(0) => microblaze_0_dlmb_bus_UE,
      Sl_Wait(0) => microblaze_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component microblaze_ilmb_bram_if_cntlr_1
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_ilmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1(0),
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_ilmb_bus_READY,
      Sl_UE => microblaze_0_ilmb_bus_UE,
      Sl_Wait => microblaze_0_ilmb_bus_WAIT
    );
ilmb_v10: component microblaze_ilmb_v10_1
     port map (
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_ilmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_ilmb_UE,
      LMB_Wait => microblaze_0_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_ilmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_ilmb_ADDRSTROBE,
      M_BE(0) => GND_1,
      M_BE(1) => GND_1,
      M_BE(2) => GND_1,
      M_BE(3) => GND_1,
      M_DBus(0) => GND_1,
      M_DBus(1) => GND_1,
      M_DBus(2) => GND_1,
      M_DBus(3) => GND_1,
      M_DBus(4) => GND_1,
      M_DBus(5) => GND_1,
      M_DBus(6) => GND_1,
      M_DBus(7) => GND_1,
      M_DBus(8) => GND_1,
      M_DBus(9) => GND_1,
      M_DBus(10) => GND_1,
      M_DBus(11) => GND_1,
      M_DBus(12) => GND_1,
      M_DBus(13) => GND_1,
      M_DBus(14) => GND_1,
      M_DBus(15) => GND_1,
      M_DBus(16) => GND_1,
      M_DBus(17) => GND_1,
      M_DBus(18) => GND_1,
      M_DBus(19) => GND_1,
      M_DBus(20) => GND_1,
      M_DBus(21) => GND_1,
      M_DBus(22) => GND_1,
      M_DBus(23) => GND_1,
      M_DBus(24) => GND_1,
      M_DBus(25) => GND_1,
      M_DBus(26) => GND_1,
      M_DBus(27) => GND_1,
      M_DBus(28) => GND_1,
      M_DBus(29) => GND_1,
      M_DBus(30) => GND_1,
      M_DBus(31) => GND_1,
      M_ReadStrobe => microblaze_0_ilmb_READSTROBE,
      M_WriteStrobe => GND_1,
      SYS_Rst => SYS_Rst_1(0),
      Sl_CE(0) => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_ilmb_bus_READY,
      Sl_UE(0) => microblaze_0_ilmb_bus_UE,
      Sl_Wait(0) => microblaze_0_ilmb_bus_WAIT
    );
lmb_bram: component microblaze_lmb_bram_1
     port map (
      addra(31) => microblaze_0_dlmb_cntlr_ADDR(0),
      addra(30) => microblaze_0_dlmb_cntlr_ADDR(1),
      addra(29) => microblaze_0_dlmb_cntlr_ADDR(2),
      addra(28) => microblaze_0_dlmb_cntlr_ADDR(3),
      addra(27) => microblaze_0_dlmb_cntlr_ADDR(4),
      addra(26) => microblaze_0_dlmb_cntlr_ADDR(5),
      addra(25) => microblaze_0_dlmb_cntlr_ADDR(6),
      addra(24) => microblaze_0_dlmb_cntlr_ADDR(7),
      addra(23) => microblaze_0_dlmb_cntlr_ADDR(8),
      addra(22) => microblaze_0_dlmb_cntlr_ADDR(9),
      addra(21) => microblaze_0_dlmb_cntlr_ADDR(10),
      addra(20) => microblaze_0_dlmb_cntlr_ADDR(11),
      addra(19) => microblaze_0_dlmb_cntlr_ADDR(12),
      addra(18) => microblaze_0_dlmb_cntlr_ADDR(13),
      addra(17) => microblaze_0_dlmb_cntlr_ADDR(14),
      addra(16) => microblaze_0_dlmb_cntlr_ADDR(15),
      addra(15) => microblaze_0_dlmb_cntlr_ADDR(16),
      addra(14) => microblaze_0_dlmb_cntlr_ADDR(17),
      addra(13) => microblaze_0_dlmb_cntlr_ADDR(18),
      addra(12) => microblaze_0_dlmb_cntlr_ADDR(19),
      addra(11) => microblaze_0_dlmb_cntlr_ADDR(20),
      addra(10) => microblaze_0_dlmb_cntlr_ADDR(21),
      addra(9) => microblaze_0_dlmb_cntlr_ADDR(22),
      addra(8) => microblaze_0_dlmb_cntlr_ADDR(23),
      addra(7) => microblaze_0_dlmb_cntlr_ADDR(24),
      addra(6) => microblaze_0_dlmb_cntlr_ADDR(25),
      addra(5) => microblaze_0_dlmb_cntlr_ADDR(26),
      addra(4) => microblaze_0_dlmb_cntlr_ADDR(27),
      addra(3) => microblaze_0_dlmb_cntlr_ADDR(28),
      addra(2) => microblaze_0_dlmb_cntlr_ADDR(29),
      addra(1) => microblaze_0_dlmb_cntlr_ADDR(30),
      addra(0) => microblaze_0_dlmb_cntlr_ADDR(31),
      addrb(31) => microblaze_0_ilmb_cntlr_ADDR(0),
      addrb(30) => microblaze_0_ilmb_cntlr_ADDR(1),
      addrb(29) => microblaze_0_ilmb_cntlr_ADDR(2),
      addrb(28) => microblaze_0_ilmb_cntlr_ADDR(3),
      addrb(27) => microblaze_0_ilmb_cntlr_ADDR(4),
      addrb(26) => microblaze_0_ilmb_cntlr_ADDR(5),
      addrb(25) => microblaze_0_ilmb_cntlr_ADDR(6),
      addrb(24) => microblaze_0_ilmb_cntlr_ADDR(7),
      addrb(23) => microblaze_0_ilmb_cntlr_ADDR(8),
      addrb(22) => microblaze_0_ilmb_cntlr_ADDR(9),
      addrb(21) => microblaze_0_ilmb_cntlr_ADDR(10),
      addrb(20) => microblaze_0_ilmb_cntlr_ADDR(11),
      addrb(19) => microblaze_0_ilmb_cntlr_ADDR(12),
      addrb(18) => microblaze_0_ilmb_cntlr_ADDR(13),
      addrb(17) => microblaze_0_ilmb_cntlr_ADDR(14),
      addrb(16) => microblaze_0_ilmb_cntlr_ADDR(15),
      addrb(15) => microblaze_0_ilmb_cntlr_ADDR(16),
      addrb(14) => microblaze_0_ilmb_cntlr_ADDR(17),
      addrb(13) => microblaze_0_ilmb_cntlr_ADDR(18),
      addrb(12) => microblaze_0_ilmb_cntlr_ADDR(19),
      addrb(11) => microblaze_0_ilmb_cntlr_ADDR(20),
      addrb(10) => microblaze_0_ilmb_cntlr_ADDR(21),
      addrb(9) => microblaze_0_ilmb_cntlr_ADDR(22),
      addrb(8) => microblaze_0_ilmb_cntlr_ADDR(23),
      addrb(7) => microblaze_0_ilmb_cntlr_ADDR(24),
      addrb(6) => microblaze_0_ilmb_cntlr_ADDR(25),
      addrb(5) => microblaze_0_ilmb_cntlr_ADDR(26),
      addrb(4) => microblaze_0_ilmb_cntlr_ADDR(27),
      addrb(3) => microblaze_0_ilmb_cntlr_ADDR(28),
      addrb(2) => microblaze_0_ilmb_cntlr_ADDR(29),
      addrb(1) => microblaze_0_ilmb_cntlr_ADDR(30),
      addrb(0) => microblaze_0_ilmb_cntlr_ADDR(31),
      clka => microblaze_0_dlmb_cntlr_CLK,
      clkb => microblaze_0_ilmb_cntlr_CLK,
      dina(31) => microblaze_0_dlmb_cntlr_DIN(0),
      dina(30) => microblaze_0_dlmb_cntlr_DIN(1),
      dina(29) => microblaze_0_dlmb_cntlr_DIN(2),
      dina(28) => microblaze_0_dlmb_cntlr_DIN(3),
      dina(27) => microblaze_0_dlmb_cntlr_DIN(4),
      dina(26) => microblaze_0_dlmb_cntlr_DIN(5),
      dina(25) => microblaze_0_dlmb_cntlr_DIN(6),
      dina(24) => microblaze_0_dlmb_cntlr_DIN(7),
      dina(23) => microblaze_0_dlmb_cntlr_DIN(8),
      dina(22) => microblaze_0_dlmb_cntlr_DIN(9),
      dina(21) => microblaze_0_dlmb_cntlr_DIN(10),
      dina(20) => microblaze_0_dlmb_cntlr_DIN(11),
      dina(19) => microblaze_0_dlmb_cntlr_DIN(12),
      dina(18) => microblaze_0_dlmb_cntlr_DIN(13),
      dina(17) => microblaze_0_dlmb_cntlr_DIN(14),
      dina(16) => microblaze_0_dlmb_cntlr_DIN(15),
      dina(15) => microblaze_0_dlmb_cntlr_DIN(16),
      dina(14) => microblaze_0_dlmb_cntlr_DIN(17),
      dina(13) => microblaze_0_dlmb_cntlr_DIN(18),
      dina(12) => microblaze_0_dlmb_cntlr_DIN(19),
      dina(11) => microblaze_0_dlmb_cntlr_DIN(20),
      dina(10) => microblaze_0_dlmb_cntlr_DIN(21),
      dina(9) => microblaze_0_dlmb_cntlr_DIN(22),
      dina(8) => microblaze_0_dlmb_cntlr_DIN(23),
      dina(7) => microblaze_0_dlmb_cntlr_DIN(24),
      dina(6) => microblaze_0_dlmb_cntlr_DIN(25),
      dina(5) => microblaze_0_dlmb_cntlr_DIN(26),
      dina(4) => microblaze_0_dlmb_cntlr_DIN(27),
      dina(3) => microblaze_0_dlmb_cntlr_DIN(28),
      dina(2) => microblaze_0_dlmb_cntlr_DIN(29),
      dina(1) => microblaze_0_dlmb_cntlr_DIN(30),
      dina(0) => microblaze_0_dlmb_cntlr_DIN(31),
      dinb(31) => microblaze_0_ilmb_cntlr_DIN(0),
      dinb(30) => microblaze_0_ilmb_cntlr_DIN(1),
      dinb(29) => microblaze_0_ilmb_cntlr_DIN(2),
      dinb(28) => microblaze_0_ilmb_cntlr_DIN(3),
      dinb(27) => microblaze_0_ilmb_cntlr_DIN(4),
      dinb(26) => microblaze_0_ilmb_cntlr_DIN(5),
      dinb(25) => microblaze_0_ilmb_cntlr_DIN(6),
      dinb(24) => microblaze_0_ilmb_cntlr_DIN(7),
      dinb(23) => microblaze_0_ilmb_cntlr_DIN(8),
      dinb(22) => microblaze_0_ilmb_cntlr_DIN(9),
      dinb(21) => microblaze_0_ilmb_cntlr_DIN(10),
      dinb(20) => microblaze_0_ilmb_cntlr_DIN(11),
      dinb(19) => microblaze_0_ilmb_cntlr_DIN(12),
      dinb(18) => microblaze_0_ilmb_cntlr_DIN(13),
      dinb(17) => microblaze_0_ilmb_cntlr_DIN(14),
      dinb(16) => microblaze_0_ilmb_cntlr_DIN(15),
      dinb(15) => microblaze_0_ilmb_cntlr_DIN(16),
      dinb(14) => microblaze_0_ilmb_cntlr_DIN(17),
      dinb(13) => microblaze_0_ilmb_cntlr_DIN(18),
      dinb(12) => microblaze_0_ilmb_cntlr_DIN(19),
      dinb(11) => microblaze_0_ilmb_cntlr_DIN(20),
      dinb(10) => microblaze_0_ilmb_cntlr_DIN(21),
      dinb(9) => microblaze_0_ilmb_cntlr_DIN(22),
      dinb(8) => microblaze_0_ilmb_cntlr_DIN(23),
      dinb(7) => microblaze_0_ilmb_cntlr_DIN(24),
      dinb(6) => microblaze_0_ilmb_cntlr_DIN(25),
      dinb(5) => microblaze_0_ilmb_cntlr_DIN(26),
      dinb(4) => microblaze_0_ilmb_cntlr_DIN(27),
      dinb(3) => microblaze_0_ilmb_cntlr_DIN(28),
      dinb(2) => microblaze_0_ilmb_cntlr_DIN(29),
      dinb(1) => microblaze_0_ilmb_cntlr_DIN(30),
      dinb(0) => microblaze_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => microblaze_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => microblaze_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => microblaze_0_dlmb_cntlr_EN,
      enb => microblaze_0_ilmb_cntlr_EN,
      rsta => microblaze_0_dlmb_cntlr_RST,
      rstb => microblaze_0_ilmb_cntlr_RST,
      wea(3) => microblaze_0_dlmb_cntlr_WE(0),
      wea(2) => microblaze_0_dlmb_cntlr_WE(1),
      wea(1) => microblaze_0_dlmb_cntlr_WE(2),
      wea(0) => microblaze_0_dlmb_cntlr_WE(3),
      web(3) => microblaze_0_ilmb_cntlr_WE(0),
      web(2) => microblaze_0_ilmb_cntlr_WE(1),
      web(1) => microblaze_0_ilmb_cntlr_WE(2),
      web(0) => microblaze_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_0_local_memory_2_imp_BMVLI7 is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end microblaze_0_local_memory_2_imp_BMVLI7;

architecture STRUCTURE of microblaze_0_local_memory_2_imp_BMVLI7 is
  component microblaze_dlmb_v10_2 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component microblaze_dlmb_v10_2;
  component microblaze_ilmb_v10_2 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component microblaze_ilmb_v10_2;
  component microblaze_dlmb_bram_if_cntlr_2 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component microblaze_dlmb_bram_if_cntlr_2;
  component microblaze_ilmb_bram_if_cntlr_2 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component microblaze_ilmb_bram_if_cntlr_2;
  component microblaze_lmb_bram_2 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component microblaze_lmb_bram_2;
  signal GND_1 : STD_LOGIC;
  signal SYS_Rst_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_CE : STD_LOGIC;
  signal microblaze_0_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_READY : STD_LOGIC;
  signal microblaze_0_dlmb_UE : STD_LOGIC;
  signal microblaze_0_dlmb_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_bus_CE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READY : STD_LOGIC;
  signal microblaze_0_dlmb_bus_UE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_dlmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_CE : STD_LOGIC;
  signal microblaze_0_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_READY : STD_LOGIC;
  signal microblaze_0_ilmb_UE : STD_LOGIC;
  signal microblaze_0_ilmb_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_bus_CE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READY : STD_LOGIC;
  signal microblaze_0_ilmb_bus_UE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_ilmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x0 32 >  microblaze microblaze_0_local_memory_2/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= microblaze_0_dlmb_CE;
  DLMB_readdbus(0 to 31) <= microblaze_0_dlmb_READDBUS(0 to 31);
  DLMB_ready <= microblaze_0_dlmb_READY;
  DLMB_ue <= microblaze_0_dlmb_UE;
  DLMB_wait <= microblaze_0_dlmb_WAIT;
  ILMB_ce <= microblaze_0_ilmb_CE;
  ILMB_readdbus(0 to 31) <= microblaze_0_ilmb_READDBUS(0 to 31);
  ILMB_ready <= microblaze_0_ilmb_READY;
  ILMB_ue <= microblaze_0_ilmb_UE;
  ILMB_wait <= microblaze_0_ilmb_WAIT;
  SYS_Rst_1(0) <= SYS_Rst(0);
  microblaze_0_Clk <= LMB_Clk;
  microblaze_0_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  microblaze_0_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  microblaze_0_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  microblaze_0_dlmb_READSTROBE <= DLMB_readstrobe;
  microblaze_0_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  microblaze_0_dlmb_WRITESTROBE <= DLMB_writestrobe;
  microblaze_0_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  microblaze_0_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  microblaze_0_ilmb_READSTROBE <= ILMB_readstrobe;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
dlmb_bram_if_cntlr: component microblaze_dlmb_bram_if_cntlr_2
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_dlmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1(0),
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_dlmb_bus_READY,
      Sl_UE => microblaze_0_dlmb_bus_UE,
      Sl_Wait => microblaze_0_dlmb_bus_WAIT
    );
dlmb_v10: component microblaze_dlmb_v10_2
     port map (
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_dlmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_dlmb_UE,
      LMB_Wait => microblaze_0_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_dlmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => microblaze_0_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => microblaze_0_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => microblaze_0_dlmb_READSTROBE,
      M_WriteStrobe => microblaze_0_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1(0),
      Sl_CE(0) => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_dlmb_bus_READY,
      Sl_UE(0) => microblaze_0_dlmb_bus_UE,
      Sl_Wait(0) => microblaze_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component microblaze_ilmb_bram_if_cntlr_2
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_ilmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1(0),
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_ilmb_bus_READY,
      Sl_UE => microblaze_0_ilmb_bus_UE,
      Sl_Wait => microblaze_0_ilmb_bus_WAIT
    );
ilmb_v10: component microblaze_ilmb_v10_2
     port map (
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_ilmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_ilmb_UE,
      LMB_Wait => microblaze_0_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_ilmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_ilmb_ADDRSTROBE,
      M_BE(0) => GND_1,
      M_BE(1) => GND_1,
      M_BE(2) => GND_1,
      M_BE(3) => GND_1,
      M_DBus(0) => GND_1,
      M_DBus(1) => GND_1,
      M_DBus(2) => GND_1,
      M_DBus(3) => GND_1,
      M_DBus(4) => GND_1,
      M_DBus(5) => GND_1,
      M_DBus(6) => GND_1,
      M_DBus(7) => GND_1,
      M_DBus(8) => GND_1,
      M_DBus(9) => GND_1,
      M_DBus(10) => GND_1,
      M_DBus(11) => GND_1,
      M_DBus(12) => GND_1,
      M_DBus(13) => GND_1,
      M_DBus(14) => GND_1,
      M_DBus(15) => GND_1,
      M_DBus(16) => GND_1,
      M_DBus(17) => GND_1,
      M_DBus(18) => GND_1,
      M_DBus(19) => GND_1,
      M_DBus(20) => GND_1,
      M_DBus(21) => GND_1,
      M_DBus(22) => GND_1,
      M_DBus(23) => GND_1,
      M_DBus(24) => GND_1,
      M_DBus(25) => GND_1,
      M_DBus(26) => GND_1,
      M_DBus(27) => GND_1,
      M_DBus(28) => GND_1,
      M_DBus(29) => GND_1,
      M_DBus(30) => GND_1,
      M_DBus(31) => GND_1,
      M_ReadStrobe => microblaze_0_ilmb_READSTROBE,
      M_WriteStrobe => GND_1,
      SYS_Rst => SYS_Rst_1(0),
      Sl_CE(0) => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_ilmb_bus_READY,
      Sl_UE(0) => microblaze_0_ilmb_bus_UE,
      Sl_Wait(0) => microblaze_0_ilmb_bus_WAIT
    );
lmb_bram: component microblaze_lmb_bram_2
     port map (
      addra(31) => microblaze_0_dlmb_cntlr_ADDR(0),
      addra(30) => microblaze_0_dlmb_cntlr_ADDR(1),
      addra(29) => microblaze_0_dlmb_cntlr_ADDR(2),
      addra(28) => microblaze_0_dlmb_cntlr_ADDR(3),
      addra(27) => microblaze_0_dlmb_cntlr_ADDR(4),
      addra(26) => microblaze_0_dlmb_cntlr_ADDR(5),
      addra(25) => microblaze_0_dlmb_cntlr_ADDR(6),
      addra(24) => microblaze_0_dlmb_cntlr_ADDR(7),
      addra(23) => microblaze_0_dlmb_cntlr_ADDR(8),
      addra(22) => microblaze_0_dlmb_cntlr_ADDR(9),
      addra(21) => microblaze_0_dlmb_cntlr_ADDR(10),
      addra(20) => microblaze_0_dlmb_cntlr_ADDR(11),
      addra(19) => microblaze_0_dlmb_cntlr_ADDR(12),
      addra(18) => microblaze_0_dlmb_cntlr_ADDR(13),
      addra(17) => microblaze_0_dlmb_cntlr_ADDR(14),
      addra(16) => microblaze_0_dlmb_cntlr_ADDR(15),
      addra(15) => microblaze_0_dlmb_cntlr_ADDR(16),
      addra(14) => microblaze_0_dlmb_cntlr_ADDR(17),
      addra(13) => microblaze_0_dlmb_cntlr_ADDR(18),
      addra(12) => microblaze_0_dlmb_cntlr_ADDR(19),
      addra(11) => microblaze_0_dlmb_cntlr_ADDR(20),
      addra(10) => microblaze_0_dlmb_cntlr_ADDR(21),
      addra(9) => microblaze_0_dlmb_cntlr_ADDR(22),
      addra(8) => microblaze_0_dlmb_cntlr_ADDR(23),
      addra(7) => microblaze_0_dlmb_cntlr_ADDR(24),
      addra(6) => microblaze_0_dlmb_cntlr_ADDR(25),
      addra(5) => microblaze_0_dlmb_cntlr_ADDR(26),
      addra(4) => microblaze_0_dlmb_cntlr_ADDR(27),
      addra(3) => microblaze_0_dlmb_cntlr_ADDR(28),
      addra(2) => microblaze_0_dlmb_cntlr_ADDR(29),
      addra(1) => microblaze_0_dlmb_cntlr_ADDR(30),
      addra(0) => microblaze_0_dlmb_cntlr_ADDR(31),
      addrb(31) => microblaze_0_ilmb_cntlr_ADDR(0),
      addrb(30) => microblaze_0_ilmb_cntlr_ADDR(1),
      addrb(29) => microblaze_0_ilmb_cntlr_ADDR(2),
      addrb(28) => microblaze_0_ilmb_cntlr_ADDR(3),
      addrb(27) => microblaze_0_ilmb_cntlr_ADDR(4),
      addrb(26) => microblaze_0_ilmb_cntlr_ADDR(5),
      addrb(25) => microblaze_0_ilmb_cntlr_ADDR(6),
      addrb(24) => microblaze_0_ilmb_cntlr_ADDR(7),
      addrb(23) => microblaze_0_ilmb_cntlr_ADDR(8),
      addrb(22) => microblaze_0_ilmb_cntlr_ADDR(9),
      addrb(21) => microblaze_0_ilmb_cntlr_ADDR(10),
      addrb(20) => microblaze_0_ilmb_cntlr_ADDR(11),
      addrb(19) => microblaze_0_ilmb_cntlr_ADDR(12),
      addrb(18) => microblaze_0_ilmb_cntlr_ADDR(13),
      addrb(17) => microblaze_0_ilmb_cntlr_ADDR(14),
      addrb(16) => microblaze_0_ilmb_cntlr_ADDR(15),
      addrb(15) => microblaze_0_ilmb_cntlr_ADDR(16),
      addrb(14) => microblaze_0_ilmb_cntlr_ADDR(17),
      addrb(13) => microblaze_0_ilmb_cntlr_ADDR(18),
      addrb(12) => microblaze_0_ilmb_cntlr_ADDR(19),
      addrb(11) => microblaze_0_ilmb_cntlr_ADDR(20),
      addrb(10) => microblaze_0_ilmb_cntlr_ADDR(21),
      addrb(9) => microblaze_0_ilmb_cntlr_ADDR(22),
      addrb(8) => microblaze_0_ilmb_cntlr_ADDR(23),
      addrb(7) => microblaze_0_ilmb_cntlr_ADDR(24),
      addrb(6) => microblaze_0_ilmb_cntlr_ADDR(25),
      addrb(5) => microblaze_0_ilmb_cntlr_ADDR(26),
      addrb(4) => microblaze_0_ilmb_cntlr_ADDR(27),
      addrb(3) => microblaze_0_ilmb_cntlr_ADDR(28),
      addrb(2) => microblaze_0_ilmb_cntlr_ADDR(29),
      addrb(1) => microblaze_0_ilmb_cntlr_ADDR(30),
      addrb(0) => microblaze_0_ilmb_cntlr_ADDR(31),
      clka => microblaze_0_dlmb_cntlr_CLK,
      clkb => microblaze_0_ilmb_cntlr_CLK,
      dina(31) => microblaze_0_dlmb_cntlr_DIN(0),
      dina(30) => microblaze_0_dlmb_cntlr_DIN(1),
      dina(29) => microblaze_0_dlmb_cntlr_DIN(2),
      dina(28) => microblaze_0_dlmb_cntlr_DIN(3),
      dina(27) => microblaze_0_dlmb_cntlr_DIN(4),
      dina(26) => microblaze_0_dlmb_cntlr_DIN(5),
      dina(25) => microblaze_0_dlmb_cntlr_DIN(6),
      dina(24) => microblaze_0_dlmb_cntlr_DIN(7),
      dina(23) => microblaze_0_dlmb_cntlr_DIN(8),
      dina(22) => microblaze_0_dlmb_cntlr_DIN(9),
      dina(21) => microblaze_0_dlmb_cntlr_DIN(10),
      dina(20) => microblaze_0_dlmb_cntlr_DIN(11),
      dina(19) => microblaze_0_dlmb_cntlr_DIN(12),
      dina(18) => microblaze_0_dlmb_cntlr_DIN(13),
      dina(17) => microblaze_0_dlmb_cntlr_DIN(14),
      dina(16) => microblaze_0_dlmb_cntlr_DIN(15),
      dina(15) => microblaze_0_dlmb_cntlr_DIN(16),
      dina(14) => microblaze_0_dlmb_cntlr_DIN(17),
      dina(13) => microblaze_0_dlmb_cntlr_DIN(18),
      dina(12) => microblaze_0_dlmb_cntlr_DIN(19),
      dina(11) => microblaze_0_dlmb_cntlr_DIN(20),
      dina(10) => microblaze_0_dlmb_cntlr_DIN(21),
      dina(9) => microblaze_0_dlmb_cntlr_DIN(22),
      dina(8) => microblaze_0_dlmb_cntlr_DIN(23),
      dina(7) => microblaze_0_dlmb_cntlr_DIN(24),
      dina(6) => microblaze_0_dlmb_cntlr_DIN(25),
      dina(5) => microblaze_0_dlmb_cntlr_DIN(26),
      dina(4) => microblaze_0_dlmb_cntlr_DIN(27),
      dina(3) => microblaze_0_dlmb_cntlr_DIN(28),
      dina(2) => microblaze_0_dlmb_cntlr_DIN(29),
      dina(1) => microblaze_0_dlmb_cntlr_DIN(30),
      dina(0) => microblaze_0_dlmb_cntlr_DIN(31),
      dinb(31) => microblaze_0_ilmb_cntlr_DIN(0),
      dinb(30) => microblaze_0_ilmb_cntlr_DIN(1),
      dinb(29) => microblaze_0_ilmb_cntlr_DIN(2),
      dinb(28) => microblaze_0_ilmb_cntlr_DIN(3),
      dinb(27) => microblaze_0_ilmb_cntlr_DIN(4),
      dinb(26) => microblaze_0_ilmb_cntlr_DIN(5),
      dinb(25) => microblaze_0_ilmb_cntlr_DIN(6),
      dinb(24) => microblaze_0_ilmb_cntlr_DIN(7),
      dinb(23) => microblaze_0_ilmb_cntlr_DIN(8),
      dinb(22) => microblaze_0_ilmb_cntlr_DIN(9),
      dinb(21) => microblaze_0_ilmb_cntlr_DIN(10),
      dinb(20) => microblaze_0_ilmb_cntlr_DIN(11),
      dinb(19) => microblaze_0_ilmb_cntlr_DIN(12),
      dinb(18) => microblaze_0_ilmb_cntlr_DIN(13),
      dinb(17) => microblaze_0_ilmb_cntlr_DIN(14),
      dinb(16) => microblaze_0_ilmb_cntlr_DIN(15),
      dinb(15) => microblaze_0_ilmb_cntlr_DIN(16),
      dinb(14) => microblaze_0_ilmb_cntlr_DIN(17),
      dinb(13) => microblaze_0_ilmb_cntlr_DIN(18),
      dinb(12) => microblaze_0_ilmb_cntlr_DIN(19),
      dinb(11) => microblaze_0_ilmb_cntlr_DIN(20),
      dinb(10) => microblaze_0_ilmb_cntlr_DIN(21),
      dinb(9) => microblaze_0_ilmb_cntlr_DIN(22),
      dinb(8) => microblaze_0_ilmb_cntlr_DIN(23),
      dinb(7) => microblaze_0_ilmb_cntlr_DIN(24),
      dinb(6) => microblaze_0_ilmb_cntlr_DIN(25),
      dinb(5) => microblaze_0_ilmb_cntlr_DIN(26),
      dinb(4) => microblaze_0_ilmb_cntlr_DIN(27),
      dinb(3) => microblaze_0_ilmb_cntlr_DIN(28),
      dinb(2) => microblaze_0_ilmb_cntlr_DIN(29),
      dinb(1) => microblaze_0_ilmb_cntlr_DIN(30),
      dinb(0) => microblaze_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => microblaze_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => microblaze_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => microblaze_0_dlmb_cntlr_EN,
      enb => microblaze_0_ilmb_cntlr_EN,
      rsta => microblaze_0_dlmb_cntlr_RST,
      rstb => microblaze_0_ilmb_cntlr_RST,
      wea(3) => microblaze_0_dlmb_cntlr_WE(0),
      wea(2) => microblaze_0_dlmb_cntlr_WE(1),
      wea(1) => microblaze_0_dlmb_cntlr_WE(2),
      wea(0) => microblaze_0_dlmb_cntlr_WE(3),
      web(3) => microblaze_0_ilmb_cntlr_WE(0),
      web(2) => microblaze_0_ilmb_cntlr_WE(1),
      web(1) => microblaze_0_ilmb_cntlr_WE(2),
      web(0) => microblaze_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_0_local_memory_3_imp_1SH73OF is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end microblaze_0_local_memory_3_imp_1SH73OF;

architecture STRUCTURE of microblaze_0_local_memory_3_imp_1SH73OF is
  component microblaze_dlmb_v10_3 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component microblaze_dlmb_v10_3;
  component microblaze_ilmb_v10_3 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component microblaze_ilmb_v10_3;
  component microblaze_dlmb_bram_if_cntlr_3 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component microblaze_dlmb_bram_if_cntlr_3;
  component microblaze_ilmb_bram_if_cntlr_3 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component microblaze_ilmb_bram_if_cntlr_3;
  component microblaze_lmb_bram_3 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component microblaze_lmb_bram_3;
  signal GND_1 : STD_LOGIC;
  signal SYS_Rst_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_CE : STD_LOGIC;
  signal microblaze_0_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_READY : STD_LOGIC;
  signal microblaze_0_dlmb_UE : STD_LOGIC;
  signal microblaze_0_dlmb_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_bus_CE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READY : STD_LOGIC;
  signal microblaze_0_dlmb_bus_UE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_dlmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_CE : STD_LOGIC;
  signal microblaze_0_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_READY : STD_LOGIC;
  signal microblaze_0_ilmb_UE : STD_LOGIC;
  signal microblaze_0_ilmb_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_bus_CE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READY : STD_LOGIC;
  signal microblaze_0_ilmb_bus_UE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_ilmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x0 32 >  microblaze microblaze_0_local_memory_3/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= microblaze_0_dlmb_CE;
  DLMB_readdbus(0 to 31) <= microblaze_0_dlmb_READDBUS(0 to 31);
  DLMB_ready <= microblaze_0_dlmb_READY;
  DLMB_ue <= microblaze_0_dlmb_UE;
  DLMB_wait <= microblaze_0_dlmb_WAIT;
  ILMB_ce <= microblaze_0_ilmb_CE;
  ILMB_readdbus(0 to 31) <= microblaze_0_ilmb_READDBUS(0 to 31);
  ILMB_ready <= microblaze_0_ilmb_READY;
  ILMB_ue <= microblaze_0_ilmb_UE;
  ILMB_wait <= microblaze_0_ilmb_WAIT;
  SYS_Rst_1(0) <= SYS_Rst(0);
  microblaze_0_Clk <= LMB_Clk;
  microblaze_0_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  microblaze_0_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  microblaze_0_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  microblaze_0_dlmb_READSTROBE <= DLMB_readstrobe;
  microblaze_0_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  microblaze_0_dlmb_WRITESTROBE <= DLMB_writestrobe;
  microblaze_0_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  microblaze_0_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  microblaze_0_ilmb_READSTROBE <= ILMB_readstrobe;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
dlmb_bram_if_cntlr: component microblaze_dlmb_bram_if_cntlr_3
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_dlmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1(0),
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_dlmb_bus_READY,
      Sl_UE => microblaze_0_dlmb_bus_UE,
      Sl_Wait => microblaze_0_dlmb_bus_WAIT
    );
dlmb_v10: component microblaze_dlmb_v10_3
     port map (
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_dlmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_dlmb_UE,
      LMB_Wait => microblaze_0_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_dlmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => microblaze_0_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => microblaze_0_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => microblaze_0_dlmb_READSTROBE,
      M_WriteStrobe => microblaze_0_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1(0),
      Sl_CE(0) => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_dlmb_bus_READY,
      Sl_UE(0) => microblaze_0_dlmb_bus_UE,
      Sl_Wait(0) => microblaze_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component microblaze_ilmb_bram_if_cntlr_3
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_ilmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1(0),
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_ilmb_bus_READY,
      Sl_UE => microblaze_0_ilmb_bus_UE,
      Sl_Wait => microblaze_0_ilmb_bus_WAIT
    );
ilmb_v10: component microblaze_ilmb_v10_3
     port map (
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_ilmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_ilmb_UE,
      LMB_Wait => microblaze_0_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_ilmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_ilmb_ADDRSTROBE,
      M_BE(0) => GND_1,
      M_BE(1) => GND_1,
      M_BE(2) => GND_1,
      M_BE(3) => GND_1,
      M_DBus(0) => GND_1,
      M_DBus(1) => GND_1,
      M_DBus(2) => GND_1,
      M_DBus(3) => GND_1,
      M_DBus(4) => GND_1,
      M_DBus(5) => GND_1,
      M_DBus(6) => GND_1,
      M_DBus(7) => GND_1,
      M_DBus(8) => GND_1,
      M_DBus(9) => GND_1,
      M_DBus(10) => GND_1,
      M_DBus(11) => GND_1,
      M_DBus(12) => GND_1,
      M_DBus(13) => GND_1,
      M_DBus(14) => GND_1,
      M_DBus(15) => GND_1,
      M_DBus(16) => GND_1,
      M_DBus(17) => GND_1,
      M_DBus(18) => GND_1,
      M_DBus(19) => GND_1,
      M_DBus(20) => GND_1,
      M_DBus(21) => GND_1,
      M_DBus(22) => GND_1,
      M_DBus(23) => GND_1,
      M_DBus(24) => GND_1,
      M_DBus(25) => GND_1,
      M_DBus(26) => GND_1,
      M_DBus(27) => GND_1,
      M_DBus(28) => GND_1,
      M_DBus(29) => GND_1,
      M_DBus(30) => GND_1,
      M_DBus(31) => GND_1,
      M_ReadStrobe => microblaze_0_ilmb_READSTROBE,
      M_WriteStrobe => GND_1,
      SYS_Rst => SYS_Rst_1(0),
      Sl_CE(0) => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_ilmb_bus_READY,
      Sl_UE(0) => microblaze_0_ilmb_bus_UE,
      Sl_Wait(0) => microblaze_0_ilmb_bus_WAIT
    );
lmb_bram: component microblaze_lmb_bram_3
     port map (
      addra(31) => microblaze_0_dlmb_cntlr_ADDR(0),
      addra(30) => microblaze_0_dlmb_cntlr_ADDR(1),
      addra(29) => microblaze_0_dlmb_cntlr_ADDR(2),
      addra(28) => microblaze_0_dlmb_cntlr_ADDR(3),
      addra(27) => microblaze_0_dlmb_cntlr_ADDR(4),
      addra(26) => microblaze_0_dlmb_cntlr_ADDR(5),
      addra(25) => microblaze_0_dlmb_cntlr_ADDR(6),
      addra(24) => microblaze_0_dlmb_cntlr_ADDR(7),
      addra(23) => microblaze_0_dlmb_cntlr_ADDR(8),
      addra(22) => microblaze_0_dlmb_cntlr_ADDR(9),
      addra(21) => microblaze_0_dlmb_cntlr_ADDR(10),
      addra(20) => microblaze_0_dlmb_cntlr_ADDR(11),
      addra(19) => microblaze_0_dlmb_cntlr_ADDR(12),
      addra(18) => microblaze_0_dlmb_cntlr_ADDR(13),
      addra(17) => microblaze_0_dlmb_cntlr_ADDR(14),
      addra(16) => microblaze_0_dlmb_cntlr_ADDR(15),
      addra(15) => microblaze_0_dlmb_cntlr_ADDR(16),
      addra(14) => microblaze_0_dlmb_cntlr_ADDR(17),
      addra(13) => microblaze_0_dlmb_cntlr_ADDR(18),
      addra(12) => microblaze_0_dlmb_cntlr_ADDR(19),
      addra(11) => microblaze_0_dlmb_cntlr_ADDR(20),
      addra(10) => microblaze_0_dlmb_cntlr_ADDR(21),
      addra(9) => microblaze_0_dlmb_cntlr_ADDR(22),
      addra(8) => microblaze_0_dlmb_cntlr_ADDR(23),
      addra(7) => microblaze_0_dlmb_cntlr_ADDR(24),
      addra(6) => microblaze_0_dlmb_cntlr_ADDR(25),
      addra(5) => microblaze_0_dlmb_cntlr_ADDR(26),
      addra(4) => microblaze_0_dlmb_cntlr_ADDR(27),
      addra(3) => microblaze_0_dlmb_cntlr_ADDR(28),
      addra(2) => microblaze_0_dlmb_cntlr_ADDR(29),
      addra(1) => microblaze_0_dlmb_cntlr_ADDR(30),
      addra(0) => microblaze_0_dlmb_cntlr_ADDR(31),
      addrb(31) => microblaze_0_ilmb_cntlr_ADDR(0),
      addrb(30) => microblaze_0_ilmb_cntlr_ADDR(1),
      addrb(29) => microblaze_0_ilmb_cntlr_ADDR(2),
      addrb(28) => microblaze_0_ilmb_cntlr_ADDR(3),
      addrb(27) => microblaze_0_ilmb_cntlr_ADDR(4),
      addrb(26) => microblaze_0_ilmb_cntlr_ADDR(5),
      addrb(25) => microblaze_0_ilmb_cntlr_ADDR(6),
      addrb(24) => microblaze_0_ilmb_cntlr_ADDR(7),
      addrb(23) => microblaze_0_ilmb_cntlr_ADDR(8),
      addrb(22) => microblaze_0_ilmb_cntlr_ADDR(9),
      addrb(21) => microblaze_0_ilmb_cntlr_ADDR(10),
      addrb(20) => microblaze_0_ilmb_cntlr_ADDR(11),
      addrb(19) => microblaze_0_ilmb_cntlr_ADDR(12),
      addrb(18) => microblaze_0_ilmb_cntlr_ADDR(13),
      addrb(17) => microblaze_0_ilmb_cntlr_ADDR(14),
      addrb(16) => microblaze_0_ilmb_cntlr_ADDR(15),
      addrb(15) => microblaze_0_ilmb_cntlr_ADDR(16),
      addrb(14) => microblaze_0_ilmb_cntlr_ADDR(17),
      addrb(13) => microblaze_0_ilmb_cntlr_ADDR(18),
      addrb(12) => microblaze_0_ilmb_cntlr_ADDR(19),
      addrb(11) => microblaze_0_ilmb_cntlr_ADDR(20),
      addrb(10) => microblaze_0_ilmb_cntlr_ADDR(21),
      addrb(9) => microblaze_0_ilmb_cntlr_ADDR(22),
      addrb(8) => microblaze_0_ilmb_cntlr_ADDR(23),
      addrb(7) => microblaze_0_ilmb_cntlr_ADDR(24),
      addrb(6) => microblaze_0_ilmb_cntlr_ADDR(25),
      addrb(5) => microblaze_0_ilmb_cntlr_ADDR(26),
      addrb(4) => microblaze_0_ilmb_cntlr_ADDR(27),
      addrb(3) => microblaze_0_ilmb_cntlr_ADDR(28),
      addrb(2) => microblaze_0_ilmb_cntlr_ADDR(29),
      addrb(1) => microblaze_0_ilmb_cntlr_ADDR(30),
      addrb(0) => microblaze_0_ilmb_cntlr_ADDR(31),
      clka => microblaze_0_dlmb_cntlr_CLK,
      clkb => microblaze_0_ilmb_cntlr_CLK,
      dina(31) => microblaze_0_dlmb_cntlr_DIN(0),
      dina(30) => microblaze_0_dlmb_cntlr_DIN(1),
      dina(29) => microblaze_0_dlmb_cntlr_DIN(2),
      dina(28) => microblaze_0_dlmb_cntlr_DIN(3),
      dina(27) => microblaze_0_dlmb_cntlr_DIN(4),
      dina(26) => microblaze_0_dlmb_cntlr_DIN(5),
      dina(25) => microblaze_0_dlmb_cntlr_DIN(6),
      dina(24) => microblaze_0_dlmb_cntlr_DIN(7),
      dina(23) => microblaze_0_dlmb_cntlr_DIN(8),
      dina(22) => microblaze_0_dlmb_cntlr_DIN(9),
      dina(21) => microblaze_0_dlmb_cntlr_DIN(10),
      dina(20) => microblaze_0_dlmb_cntlr_DIN(11),
      dina(19) => microblaze_0_dlmb_cntlr_DIN(12),
      dina(18) => microblaze_0_dlmb_cntlr_DIN(13),
      dina(17) => microblaze_0_dlmb_cntlr_DIN(14),
      dina(16) => microblaze_0_dlmb_cntlr_DIN(15),
      dina(15) => microblaze_0_dlmb_cntlr_DIN(16),
      dina(14) => microblaze_0_dlmb_cntlr_DIN(17),
      dina(13) => microblaze_0_dlmb_cntlr_DIN(18),
      dina(12) => microblaze_0_dlmb_cntlr_DIN(19),
      dina(11) => microblaze_0_dlmb_cntlr_DIN(20),
      dina(10) => microblaze_0_dlmb_cntlr_DIN(21),
      dina(9) => microblaze_0_dlmb_cntlr_DIN(22),
      dina(8) => microblaze_0_dlmb_cntlr_DIN(23),
      dina(7) => microblaze_0_dlmb_cntlr_DIN(24),
      dina(6) => microblaze_0_dlmb_cntlr_DIN(25),
      dina(5) => microblaze_0_dlmb_cntlr_DIN(26),
      dina(4) => microblaze_0_dlmb_cntlr_DIN(27),
      dina(3) => microblaze_0_dlmb_cntlr_DIN(28),
      dina(2) => microblaze_0_dlmb_cntlr_DIN(29),
      dina(1) => microblaze_0_dlmb_cntlr_DIN(30),
      dina(0) => microblaze_0_dlmb_cntlr_DIN(31),
      dinb(31) => microblaze_0_ilmb_cntlr_DIN(0),
      dinb(30) => microblaze_0_ilmb_cntlr_DIN(1),
      dinb(29) => microblaze_0_ilmb_cntlr_DIN(2),
      dinb(28) => microblaze_0_ilmb_cntlr_DIN(3),
      dinb(27) => microblaze_0_ilmb_cntlr_DIN(4),
      dinb(26) => microblaze_0_ilmb_cntlr_DIN(5),
      dinb(25) => microblaze_0_ilmb_cntlr_DIN(6),
      dinb(24) => microblaze_0_ilmb_cntlr_DIN(7),
      dinb(23) => microblaze_0_ilmb_cntlr_DIN(8),
      dinb(22) => microblaze_0_ilmb_cntlr_DIN(9),
      dinb(21) => microblaze_0_ilmb_cntlr_DIN(10),
      dinb(20) => microblaze_0_ilmb_cntlr_DIN(11),
      dinb(19) => microblaze_0_ilmb_cntlr_DIN(12),
      dinb(18) => microblaze_0_ilmb_cntlr_DIN(13),
      dinb(17) => microblaze_0_ilmb_cntlr_DIN(14),
      dinb(16) => microblaze_0_ilmb_cntlr_DIN(15),
      dinb(15) => microblaze_0_ilmb_cntlr_DIN(16),
      dinb(14) => microblaze_0_ilmb_cntlr_DIN(17),
      dinb(13) => microblaze_0_ilmb_cntlr_DIN(18),
      dinb(12) => microblaze_0_ilmb_cntlr_DIN(19),
      dinb(11) => microblaze_0_ilmb_cntlr_DIN(20),
      dinb(10) => microblaze_0_ilmb_cntlr_DIN(21),
      dinb(9) => microblaze_0_ilmb_cntlr_DIN(22),
      dinb(8) => microblaze_0_ilmb_cntlr_DIN(23),
      dinb(7) => microblaze_0_ilmb_cntlr_DIN(24),
      dinb(6) => microblaze_0_ilmb_cntlr_DIN(25),
      dinb(5) => microblaze_0_ilmb_cntlr_DIN(26),
      dinb(4) => microblaze_0_ilmb_cntlr_DIN(27),
      dinb(3) => microblaze_0_ilmb_cntlr_DIN(28),
      dinb(2) => microblaze_0_ilmb_cntlr_DIN(29),
      dinb(1) => microblaze_0_ilmb_cntlr_DIN(30),
      dinb(0) => microblaze_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => microblaze_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => microblaze_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => microblaze_0_dlmb_cntlr_EN,
      enb => microblaze_0_ilmb_cntlr_EN,
      rsta => microblaze_0_dlmb_cntlr_RST,
      rstb => microblaze_0_ilmb_cntlr_RST,
      wea(3) => microblaze_0_dlmb_cntlr_WE(0),
      wea(2) => microblaze_0_dlmb_cntlr_WE(1),
      wea(1) => microblaze_0_dlmb_cntlr_WE(2),
      wea(0) => microblaze_0_dlmb_cntlr_WE(3),
      web(3) => microblaze_0_ilmb_cntlr_WE(0),
      web(2) => microblaze_0_ilmb_cntlr_WE(1),
      web(1) => microblaze_0_ilmb_cntlr_WE(2),
      web(0) => microblaze_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_0_local_memory_imp_HPR3PZ is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end microblaze_0_local_memory_imp_HPR3PZ;

architecture STRUCTURE of microblaze_0_local_memory_imp_HPR3PZ is
  component microblaze_dlmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component microblaze_dlmb_v10_0;
  component microblaze_ilmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component microblaze_ilmb_v10_0;
  component microblaze_dlmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component microblaze_dlmb_bram_if_cntlr_0;
  component microblaze_ilmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component microblaze_ilmb_bram_if_cntlr_0;
  component microblaze_lmb_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component microblaze_lmb_bram_0;
  signal GND_1 : STD_LOGIC;
  signal SYS_Rst_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_CE : STD_LOGIC;
  signal microblaze_0_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_READY : STD_LOGIC;
  signal microblaze_0_dlmb_UE : STD_LOGIC;
  signal microblaze_0_dlmb_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_bus_CE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READY : STD_LOGIC;
  signal microblaze_0_dlmb_bus_UE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_dlmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_CE : STD_LOGIC;
  signal microblaze_0_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_READY : STD_LOGIC;
  signal microblaze_0_ilmb_UE : STD_LOGIC;
  signal microblaze_0_ilmb_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_bus_CE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READY : STD_LOGIC;
  signal microblaze_0_ilmb_bus_UE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_ilmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x0 32 >  microblaze microblaze_0_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= microblaze_0_dlmb_CE;
  DLMB_readdbus(0 to 31) <= microblaze_0_dlmb_READDBUS(0 to 31);
  DLMB_ready <= microblaze_0_dlmb_READY;
  DLMB_ue <= microblaze_0_dlmb_UE;
  DLMB_wait <= microblaze_0_dlmb_WAIT;
  ILMB_ce <= microblaze_0_ilmb_CE;
  ILMB_readdbus(0 to 31) <= microblaze_0_ilmb_READDBUS(0 to 31);
  ILMB_ready <= microblaze_0_ilmb_READY;
  ILMB_ue <= microblaze_0_ilmb_UE;
  ILMB_wait <= microblaze_0_ilmb_WAIT;
  SYS_Rst_1(0) <= SYS_Rst(0);
  microblaze_0_Clk <= LMB_Clk;
  microblaze_0_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  microblaze_0_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  microblaze_0_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  microblaze_0_dlmb_READSTROBE <= DLMB_readstrobe;
  microblaze_0_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  microblaze_0_dlmb_WRITESTROBE <= DLMB_writestrobe;
  microblaze_0_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  microblaze_0_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  microblaze_0_ilmb_READSTROBE <= ILMB_readstrobe;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
dlmb_bram_if_cntlr: component microblaze_dlmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_dlmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1(0),
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_dlmb_bus_READY,
      Sl_UE => microblaze_0_dlmb_bus_UE,
      Sl_Wait => microblaze_0_dlmb_bus_WAIT
    );
dlmb_v10: component microblaze_dlmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_dlmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_dlmb_UE,
      LMB_Wait => microblaze_0_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_dlmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => microblaze_0_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => microblaze_0_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => microblaze_0_dlmb_READSTROBE,
      M_WriteStrobe => microblaze_0_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1(0),
      Sl_CE(0) => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_dlmb_bus_READY,
      Sl_UE(0) => microblaze_0_dlmb_bus_UE,
      Sl_Wait(0) => microblaze_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component microblaze_ilmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_ilmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1(0),
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_ilmb_bus_READY,
      Sl_UE => microblaze_0_ilmb_bus_UE,
      Sl_Wait => microblaze_0_ilmb_bus_WAIT
    );
ilmb_v10: component microblaze_ilmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_ilmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_ilmb_UE,
      LMB_Wait => microblaze_0_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_ilmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_ilmb_ADDRSTROBE,
      M_BE(0) => GND_1,
      M_BE(1) => GND_1,
      M_BE(2) => GND_1,
      M_BE(3) => GND_1,
      M_DBus(0) => GND_1,
      M_DBus(1) => GND_1,
      M_DBus(2) => GND_1,
      M_DBus(3) => GND_1,
      M_DBus(4) => GND_1,
      M_DBus(5) => GND_1,
      M_DBus(6) => GND_1,
      M_DBus(7) => GND_1,
      M_DBus(8) => GND_1,
      M_DBus(9) => GND_1,
      M_DBus(10) => GND_1,
      M_DBus(11) => GND_1,
      M_DBus(12) => GND_1,
      M_DBus(13) => GND_1,
      M_DBus(14) => GND_1,
      M_DBus(15) => GND_1,
      M_DBus(16) => GND_1,
      M_DBus(17) => GND_1,
      M_DBus(18) => GND_1,
      M_DBus(19) => GND_1,
      M_DBus(20) => GND_1,
      M_DBus(21) => GND_1,
      M_DBus(22) => GND_1,
      M_DBus(23) => GND_1,
      M_DBus(24) => GND_1,
      M_DBus(25) => GND_1,
      M_DBus(26) => GND_1,
      M_DBus(27) => GND_1,
      M_DBus(28) => GND_1,
      M_DBus(29) => GND_1,
      M_DBus(30) => GND_1,
      M_DBus(31) => GND_1,
      M_ReadStrobe => microblaze_0_ilmb_READSTROBE,
      M_WriteStrobe => GND_1,
      SYS_Rst => SYS_Rst_1(0),
      Sl_CE(0) => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_ilmb_bus_READY,
      Sl_UE(0) => microblaze_0_ilmb_bus_UE,
      Sl_Wait(0) => microblaze_0_ilmb_bus_WAIT
    );
lmb_bram: component microblaze_lmb_bram_0
     port map (
      addra(31) => microblaze_0_dlmb_cntlr_ADDR(0),
      addra(30) => microblaze_0_dlmb_cntlr_ADDR(1),
      addra(29) => microblaze_0_dlmb_cntlr_ADDR(2),
      addra(28) => microblaze_0_dlmb_cntlr_ADDR(3),
      addra(27) => microblaze_0_dlmb_cntlr_ADDR(4),
      addra(26) => microblaze_0_dlmb_cntlr_ADDR(5),
      addra(25) => microblaze_0_dlmb_cntlr_ADDR(6),
      addra(24) => microblaze_0_dlmb_cntlr_ADDR(7),
      addra(23) => microblaze_0_dlmb_cntlr_ADDR(8),
      addra(22) => microblaze_0_dlmb_cntlr_ADDR(9),
      addra(21) => microblaze_0_dlmb_cntlr_ADDR(10),
      addra(20) => microblaze_0_dlmb_cntlr_ADDR(11),
      addra(19) => microblaze_0_dlmb_cntlr_ADDR(12),
      addra(18) => microblaze_0_dlmb_cntlr_ADDR(13),
      addra(17) => microblaze_0_dlmb_cntlr_ADDR(14),
      addra(16) => microblaze_0_dlmb_cntlr_ADDR(15),
      addra(15) => microblaze_0_dlmb_cntlr_ADDR(16),
      addra(14) => microblaze_0_dlmb_cntlr_ADDR(17),
      addra(13) => microblaze_0_dlmb_cntlr_ADDR(18),
      addra(12) => microblaze_0_dlmb_cntlr_ADDR(19),
      addra(11) => microblaze_0_dlmb_cntlr_ADDR(20),
      addra(10) => microblaze_0_dlmb_cntlr_ADDR(21),
      addra(9) => microblaze_0_dlmb_cntlr_ADDR(22),
      addra(8) => microblaze_0_dlmb_cntlr_ADDR(23),
      addra(7) => microblaze_0_dlmb_cntlr_ADDR(24),
      addra(6) => microblaze_0_dlmb_cntlr_ADDR(25),
      addra(5) => microblaze_0_dlmb_cntlr_ADDR(26),
      addra(4) => microblaze_0_dlmb_cntlr_ADDR(27),
      addra(3) => microblaze_0_dlmb_cntlr_ADDR(28),
      addra(2) => microblaze_0_dlmb_cntlr_ADDR(29),
      addra(1) => microblaze_0_dlmb_cntlr_ADDR(30),
      addra(0) => microblaze_0_dlmb_cntlr_ADDR(31),
      addrb(31) => microblaze_0_ilmb_cntlr_ADDR(0),
      addrb(30) => microblaze_0_ilmb_cntlr_ADDR(1),
      addrb(29) => microblaze_0_ilmb_cntlr_ADDR(2),
      addrb(28) => microblaze_0_ilmb_cntlr_ADDR(3),
      addrb(27) => microblaze_0_ilmb_cntlr_ADDR(4),
      addrb(26) => microblaze_0_ilmb_cntlr_ADDR(5),
      addrb(25) => microblaze_0_ilmb_cntlr_ADDR(6),
      addrb(24) => microblaze_0_ilmb_cntlr_ADDR(7),
      addrb(23) => microblaze_0_ilmb_cntlr_ADDR(8),
      addrb(22) => microblaze_0_ilmb_cntlr_ADDR(9),
      addrb(21) => microblaze_0_ilmb_cntlr_ADDR(10),
      addrb(20) => microblaze_0_ilmb_cntlr_ADDR(11),
      addrb(19) => microblaze_0_ilmb_cntlr_ADDR(12),
      addrb(18) => microblaze_0_ilmb_cntlr_ADDR(13),
      addrb(17) => microblaze_0_ilmb_cntlr_ADDR(14),
      addrb(16) => microblaze_0_ilmb_cntlr_ADDR(15),
      addrb(15) => microblaze_0_ilmb_cntlr_ADDR(16),
      addrb(14) => microblaze_0_ilmb_cntlr_ADDR(17),
      addrb(13) => microblaze_0_ilmb_cntlr_ADDR(18),
      addrb(12) => microblaze_0_ilmb_cntlr_ADDR(19),
      addrb(11) => microblaze_0_ilmb_cntlr_ADDR(20),
      addrb(10) => microblaze_0_ilmb_cntlr_ADDR(21),
      addrb(9) => microblaze_0_ilmb_cntlr_ADDR(22),
      addrb(8) => microblaze_0_ilmb_cntlr_ADDR(23),
      addrb(7) => microblaze_0_ilmb_cntlr_ADDR(24),
      addrb(6) => microblaze_0_ilmb_cntlr_ADDR(25),
      addrb(5) => microblaze_0_ilmb_cntlr_ADDR(26),
      addrb(4) => microblaze_0_ilmb_cntlr_ADDR(27),
      addrb(3) => microblaze_0_ilmb_cntlr_ADDR(28),
      addrb(2) => microblaze_0_ilmb_cntlr_ADDR(29),
      addrb(1) => microblaze_0_ilmb_cntlr_ADDR(30),
      addrb(0) => microblaze_0_ilmb_cntlr_ADDR(31),
      clka => microblaze_0_dlmb_cntlr_CLK,
      clkb => microblaze_0_ilmb_cntlr_CLK,
      dina(31) => microblaze_0_dlmb_cntlr_DIN(0),
      dina(30) => microblaze_0_dlmb_cntlr_DIN(1),
      dina(29) => microblaze_0_dlmb_cntlr_DIN(2),
      dina(28) => microblaze_0_dlmb_cntlr_DIN(3),
      dina(27) => microblaze_0_dlmb_cntlr_DIN(4),
      dina(26) => microblaze_0_dlmb_cntlr_DIN(5),
      dina(25) => microblaze_0_dlmb_cntlr_DIN(6),
      dina(24) => microblaze_0_dlmb_cntlr_DIN(7),
      dina(23) => microblaze_0_dlmb_cntlr_DIN(8),
      dina(22) => microblaze_0_dlmb_cntlr_DIN(9),
      dina(21) => microblaze_0_dlmb_cntlr_DIN(10),
      dina(20) => microblaze_0_dlmb_cntlr_DIN(11),
      dina(19) => microblaze_0_dlmb_cntlr_DIN(12),
      dina(18) => microblaze_0_dlmb_cntlr_DIN(13),
      dina(17) => microblaze_0_dlmb_cntlr_DIN(14),
      dina(16) => microblaze_0_dlmb_cntlr_DIN(15),
      dina(15) => microblaze_0_dlmb_cntlr_DIN(16),
      dina(14) => microblaze_0_dlmb_cntlr_DIN(17),
      dina(13) => microblaze_0_dlmb_cntlr_DIN(18),
      dina(12) => microblaze_0_dlmb_cntlr_DIN(19),
      dina(11) => microblaze_0_dlmb_cntlr_DIN(20),
      dina(10) => microblaze_0_dlmb_cntlr_DIN(21),
      dina(9) => microblaze_0_dlmb_cntlr_DIN(22),
      dina(8) => microblaze_0_dlmb_cntlr_DIN(23),
      dina(7) => microblaze_0_dlmb_cntlr_DIN(24),
      dina(6) => microblaze_0_dlmb_cntlr_DIN(25),
      dina(5) => microblaze_0_dlmb_cntlr_DIN(26),
      dina(4) => microblaze_0_dlmb_cntlr_DIN(27),
      dina(3) => microblaze_0_dlmb_cntlr_DIN(28),
      dina(2) => microblaze_0_dlmb_cntlr_DIN(29),
      dina(1) => microblaze_0_dlmb_cntlr_DIN(30),
      dina(0) => microblaze_0_dlmb_cntlr_DIN(31),
      dinb(31) => microblaze_0_ilmb_cntlr_DIN(0),
      dinb(30) => microblaze_0_ilmb_cntlr_DIN(1),
      dinb(29) => microblaze_0_ilmb_cntlr_DIN(2),
      dinb(28) => microblaze_0_ilmb_cntlr_DIN(3),
      dinb(27) => microblaze_0_ilmb_cntlr_DIN(4),
      dinb(26) => microblaze_0_ilmb_cntlr_DIN(5),
      dinb(25) => microblaze_0_ilmb_cntlr_DIN(6),
      dinb(24) => microblaze_0_ilmb_cntlr_DIN(7),
      dinb(23) => microblaze_0_ilmb_cntlr_DIN(8),
      dinb(22) => microblaze_0_ilmb_cntlr_DIN(9),
      dinb(21) => microblaze_0_ilmb_cntlr_DIN(10),
      dinb(20) => microblaze_0_ilmb_cntlr_DIN(11),
      dinb(19) => microblaze_0_ilmb_cntlr_DIN(12),
      dinb(18) => microblaze_0_ilmb_cntlr_DIN(13),
      dinb(17) => microblaze_0_ilmb_cntlr_DIN(14),
      dinb(16) => microblaze_0_ilmb_cntlr_DIN(15),
      dinb(15) => microblaze_0_ilmb_cntlr_DIN(16),
      dinb(14) => microblaze_0_ilmb_cntlr_DIN(17),
      dinb(13) => microblaze_0_ilmb_cntlr_DIN(18),
      dinb(12) => microblaze_0_ilmb_cntlr_DIN(19),
      dinb(11) => microblaze_0_ilmb_cntlr_DIN(20),
      dinb(10) => microblaze_0_ilmb_cntlr_DIN(21),
      dinb(9) => microblaze_0_ilmb_cntlr_DIN(22),
      dinb(8) => microblaze_0_ilmb_cntlr_DIN(23),
      dinb(7) => microblaze_0_ilmb_cntlr_DIN(24),
      dinb(6) => microblaze_0_ilmb_cntlr_DIN(25),
      dinb(5) => microblaze_0_ilmb_cntlr_DIN(26),
      dinb(4) => microblaze_0_ilmb_cntlr_DIN(27),
      dinb(3) => microblaze_0_ilmb_cntlr_DIN(28),
      dinb(2) => microblaze_0_ilmb_cntlr_DIN(29),
      dinb(1) => microblaze_0_ilmb_cntlr_DIN(30),
      dinb(0) => microblaze_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => microblaze_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => microblaze_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => microblaze_0_dlmb_cntlr_EN,
      enb => microblaze_0_ilmb_cntlr_EN,
      rsta => microblaze_0_dlmb_cntlr_RST,
      rstb => microblaze_0_ilmb_cntlr_RST,
      wea(3) => microblaze_0_dlmb_cntlr_WE(0),
      wea(2) => microblaze_0_dlmb_cntlr_WE(1),
      wea(1) => microblaze_0_dlmb_cntlr_WE(2),
      wea(0) => microblaze_0_dlmb_cntlr_WE(3),
      web(3) => microblaze_0_ilmb_cntlr_WE(0),
      web(2) => microblaze_0_ilmb_cntlr_WE(1),
      web(1) => microblaze_0_ilmb_cntlr_WE(2),
      web(0) => microblaze_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_SYAVRW is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_SYAVRW;

architecture STRUCTURE of s00_couplers_imp_SYAVRW is
  component microblaze_auto_pc_6 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component microblaze_auto_pc_6;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component microblaze_auto_pc_6
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_3OA1I2 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_3OA1I2;

architecture STRUCTURE of s01_couplers_imp_3OA1I2 is
  signal s01_couplers_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_ARREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RLAST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_RVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s01_couplers_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s01_couplers_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s01_couplers_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s01_couplers_to_s01_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s01_couplers_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s01_couplers_to_s01_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s01_couplers_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s01_couplers_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s01_couplers_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s01_couplers_to_s01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s01_couplers_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s01_couplers_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s01_couplers_to_s01_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s01_couplers_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s01_couplers_to_s01_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s01_couplers_to_s01_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s01_couplers_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s01_couplers_to_s01_couplers_AWVALID;
  M_AXI_bready <= s01_couplers_to_s01_couplers_BREADY;
  M_AXI_rready <= s01_couplers_to_s01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s01_couplers_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s01_couplers_to_s01_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s01_couplers_to_s01_couplers_WVALID;
  S_AXI_arready <= s01_couplers_to_s01_couplers_ARREADY;
  S_AXI_awready <= s01_couplers_to_s01_couplers_AWREADY;
  S_AXI_bid(0) <= s01_couplers_to_s01_couplers_BID(0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s01_couplers_to_s01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_couplers_RDATA(31 downto 0);
  S_AXI_rid(0) <= s01_couplers_to_s01_couplers_RID(0);
  S_AXI_rlast <= s01_couplers_to_s01_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_s01_couplers_RVALID;
  S_AXI_wready <= s01_couplers_to_s01_couplers_WREADY;
  s01_couplers_to_s01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_s01_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_s01_couplers_ARID(0) <= S_AXI_arid(0);
  s01_couplers_to_s01_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_s01_couplers_ARLOCK <= S_AXI_arlock;
  s01_couplers_to_s01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s01_couplers_to_s01_couplers_ARREADY <= M_AXI_arready;
  s01_couplers_to_s01_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_s01_couplers_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_couplers_AWID(0) <= S_AXI_awid(0);
  s01_couplers_to_s01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_couplers_AWLOCK <= S_AXI_awlock;
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s01_couplers_to_s01_couplers_AWREADY <= M_AXI_awready;
  s01_couplers_to_s01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_couplers_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_s01_couplers_BID(0) <= M_AXI_bid(0);
  s01_couplers_to_s01_couplers_BREADY <= S_AXI_bready;
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID <= M_AXI_bvalid;
  s01_couplers_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s01_couplers_to_s01_couplers_RID(0) <= M_AXI_rid(0);
  s01_couplers_to_s01_couplers_RLAST <= M_AXI_rlast;
  s01_couplers_to_s01_couplers_RREADY <= S_AXI_rready;
  s01_couplers_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s01_couplers_to_s01_couplers_RVALID <= M_AXI_rvalid;
  s01_couplers_to_s01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_couplers_WLAST <= S_AXI_wlast;
  s01_couplers_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_s01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_1942W9C is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s02_couplers_imp_1942W9C;

architecture STRUCTURE of s02_couplers_imp_1942W9C is
  signal s02_couplers_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_s02_couplers_ARLOCK : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_ARREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_ARVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_s02_couplers_AWLOCK : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_AWREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_AWVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_BREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_BVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_RLAST : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_RVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_WLAST : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_WREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s02_couplers_to_s02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s02_couplers_to_s02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s02_couplers_to_s02_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s02_couplers_to_s02_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s02_couplers_to_s02_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s02_couplers_to_s02_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s02_couplers_to_s02_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s02_couplers_to_s02_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s02_couplers_to_s02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s02_couplers_to_s02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s02_couplers_to_s02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s02_couplers_to_s02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s02_couplers_to_s02_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s02_couplers_to_s02_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s02_couplers_to_s02_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s02_couplers_to_s02_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s02_couplers_to_s02_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s02_couplers_to_s02_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s02_couplers_to_s02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s02_couplers_to_s02_couplers_AWVALID;
  M_AXI_bready <= s02_couplers_to_s02_couplers_BREADY;
  M_AXI_rready <= s02_couplers_to_s02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s02_couplers_to_s02_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s02_couplers_to_s02_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s02_couplers_to_s02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s02_couplers_to_s02_couplers_WVALID;
  S_AXI_arready <= s02_couplers_to_s02_couplers_ARREADY;
  S_AXI_awready <= s02_couplers_to_s02_couplers_AWREADY;
  S_AXI_bid(0) <= s02_couplers_to_s02_couplers_BID(0);
  S_AXI_bresp(1 downto 0) <= s02_couplers_to_s02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s02_couplers_to_s02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s02_couplers_to_s02_couplers_RDATA(31 downto 0);
  S_AXI_rid(0) <= s02_couplers_to_s02_couplers_RID(0);
  S_AXI_rlast <= s02_couplers_to_s02_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s02_couplers_to_s02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s02_couplers_to_s02_couplers_RVALID;
  S_AXI_wready <= s02_couplers_to_s02_couplers_WREADY;
  s02_couplers_to_s02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s02_couplers_to_s02_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s02_couplers_to_s02_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s02_couplers_to_s02_couplers_ARID(0) <= S_AXI_arid(0);
  s02_couplers_to_s02_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s02_couplers_to_s02_couplers_ARLOCK <= S_AXI_arlock;
  s02_couplers_to_s02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s02_couplers_to_s02_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s02_couplers_to_s02_couplers_ARREADY <= M_AXI_arready;
  s02_couplers_to_s02_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s02_couplers_to_s02_couplers_ARVALID <= S_AXI_arvalid;
  s02_couplers_to_s02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s02_couplers_to_s02_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s02_couplers_to_s02_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s02_couplers_to_s02_couplers_AWID(0) <= S_AXI_awid(0);
  s02_couplers_to_s02_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s02_couplers_to_s02_couplers_AWLOCK <= S_AXI_awlock;
  s02_couplers_to_s02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s02_couplers_to_s02_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s02_couplers_to_s02_couplers_AWREADY <= M_AXI_awready;
  s02_couplers_to_s02_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s02_couplers_to_s02_couplers_AWVALID <= S_AXI_awvalid;
  s02_couplers_to_s02_couplers_BID(0) <= M_AXI_bid(0);
  s02_couplers_to_s02_couplers_BREADY <= S_AXI_bready;
  s02_couplers_to_s02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s02_couplers_to_s02_couplers_BVALID <= M_AXI_bvalid;
  s02_couplers_to_s02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s02_couplers_to_s02_couplers_RID(0) <= M_AXI_rid(0);
  s02_couplers_to_s02_couplers_RLAST <= M_AXI_rlast;
  s02_couplers_to_s02_couplers_RREADY <= S_AXI_rready;
  s02_couplers_to_s02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s02_couplers_to_s02_couplers_RVALID <= M_AXI_rvalid;
  s02_couplers_to_s02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s02_couplers_to_s02_couplers_WLAST <= S_AXI_wlast;
  s02_couplers_to_s02_couplers_WREADY <= M_AXI_wready;
  s02_couplers_to_s02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s02_couplers_to_s02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s03_couplers_imp_1JH4TQU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s03_couplers_imp_1JH4TQU;

architecture STRUCTURE of s03_couplers_imp_1JH4TQU is
  component microblaze_auto_pc_7 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component microblaze_auto_pc_7;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s03_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s03_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s03_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s03_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s03_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s03_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s03_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s03_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s03_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s03_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s03_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s03_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s03_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s03_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s03_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s03_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s03_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s03_couplers_WVALID : STD_LOGIC;
  signal s03_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s03_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s03_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s03_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s03_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s03_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s03_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s03_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s03_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s03_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s03_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s03_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s03_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s03_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s03_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s03_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s03_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s03_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s03_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s03_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s03_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s03_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s03_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s03_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s03_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s03_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s03_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s03_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s03_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s03_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s03_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= s03_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s03_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= s03_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s03_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s03_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s03_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s03_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s03_couplers_to_auto_pc_WREADY;
  auto_pc_to_s03_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s03_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s03_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s03_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s03_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s03_couplers_WREADY <= M_AXI_wready;
  s03_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s03_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s03_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s03_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s03_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s03_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s03_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s03_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s03_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s03_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s03_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component microblaze_auto_pc_7
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_s03_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s03_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s03_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s03_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s03_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s03_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s03_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s03_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s03_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s03_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s03_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s03_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s03_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s03_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s03_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s03_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s03_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s03_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s03_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s03_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s03_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s03_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_s03_couplers_RLAST,
      m_axi_rready => auto_pc_to_s03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s03_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s03_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s03_couplers_WLAST,
      m_axi_wready => auto_pc_to_s03_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s03_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s03_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s03_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arready => s03_couplers_to_auto_pc_ARREADY,
      s_axi_arvalid => s03_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s03_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s03_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awready => s03_couplers_to_auto_pc_AWREADY,
      s_axi_awvalid => s03_couplers_to_auto_pc_AWVALID,
      s_axi_bready => s03_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s03_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s03_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s03_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rready => s03_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s03_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s03_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s03_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wready => s03_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s03_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s03_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s04_couplers_imp_AQMS5H is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s04_couplers_imp_AQMS5H;

architecture STRUCTURE of s04_couplers_imp_AQMS5H is
  signal s04_couplers_to_s04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_s04_couplers_ARLOCK : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_ARREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_ARVALID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_s04_couplers_AWLOCK : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_AWREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_AWVALID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_BREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_BVALID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_RLAST : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_RREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_RVALID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_WLAST : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_WREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s04_couplers_to_s04_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s04_couplers_to_s04_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s04_couplers_to_s04_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s04_couplers_to_s04_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s04_couplers_to_s04_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s04_couplers_to_s04_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s04_couplers_to_s04_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s04_couplers_to_s04_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s04_couplers_to_s04_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s04_couplers_to_s04_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s04_couplers_to_s04_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s04_couplers_to_s04_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s04_couplers_to_s04_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s04_couplers_to_s04_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s04_couplers_to_s04_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s04_couplers_to_s04_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s04_couplers_to_s04_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s04_couplers_to_s04_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s04_couplers_to_s04_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s04_couplers_to_s04_couplers_AWVALID;
  M_AXI_bready <= s04_couplers_to_s04_couplers_BREADY;
  M_AXI_rready <= s04_couplers_to_s04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s04_couplers_to_s04_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s04_couplers_to_s04_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s04_couplers_to_s04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s04_couplers_to_s04_couplers_WVALID;
  S_AXI_arready <= s04_couplers_to_s04_couplers_ARREADY;
  S_AXI_awready <= s04_couplers_to_s04_couplers_AWREADY;
  S_AXI_bid(0) <= s04_couplers_to_s04_couplers_BID(0);
  S_AXI_bresp(1 downto 0) <= s04_couplers_to_s04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s04_couplers_to_s04_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s04_couplers_to_s04_couplers_RDATA(31 downto 0);
  S_AXI_rid(0) <= s04_couplers_to_s04_couplers_RID(0);
  S_AXI_rlast <= s04_couplers_to_s04_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s04_couplers_to_s04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s04_couplers_to_s04_couplers_RVALID;
  S_AXI_wready <= s04_couplers_to_s04_couplers_WREADY;
  s04_couplers_to_s04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s04_couplers_to_s04_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s04_couplers_to_s04_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s04_couplers_to_s04_couplers_ARID(0) <= S_AXI_arid(0);
  s04_couplers_to_s04_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s04_couplers_to_s04_couplers_ARLOCK <= S_AXI_arlock;
  s04_couplers_to_s04_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s04_couplers_to_s04_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s04_couplers_to_s04_couplers_ARREADY <= M_AXI_arready;
  s04_couplers_to_s04_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s04_couplers_to_s04_couplers_ARVALID <= S_AXI_arvalid;
  s04_couplers_to_s04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s04_couplers_to_s04_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s04_couplers_to_s04_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s04_couplers_to_s04_couplers_AWID(0) <= S_AXI_awid(0);
  s04_couplers_to_s04_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s04_couplers_to_s04_couplers_AWLOCK <= S_AXI_awlock;
  s04_couplers_to_s04_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s04_couplers_to_s04_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s04_couplers_to_s04_couplers_AWREADY <= M_AXI_awready;
  s04_couplers_to_s04_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s04_couplers_to_s04_couplers_AWVALID <= S_AXI_awvalid;
  s04_couplers_to_s04_couplers_BID(0) <= M_AXI_bid(0);
  s04_couplers_to_s04_couplers_BREADY <= S_AXI_bready;
  s04_couplers_to_s04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s04_couplers_to_s04_couplers_BVALID <= M_AXI_bvalid;
  s04_couplers_to_s04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s04_couplers_to_s04_couplers_RID(0) <= M_AXI_rid(0);
  s04_couplers_to_s04_couplers_RLAST <= M_AXI_rlast;
  s04_couplers_to_s04_couplers_RREADY <= S_AXI_rready;
  s04_couplers_to_s04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s04_couplers_to_s04_couplers_RVALID <= M_AXI_rvalid;
  s04_couplers_to_s04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s04_couplers_to_s04_couplers_WLAST <= S_AXI_wlast;
  s04_couplers_to_s04_couplers_WREADY <= M_AXI_wready;
  s04_couplers_to_s04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s04_couplers_to_s04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s05_couplers_imp_ITI8N7 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s05_couplers_imp_ITI8N7;

architecture STRUCTURE of s05_couplers_imp_ITI8N7 is
  signal s05_couplers_to_s05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_s05_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s05_couplers_to_s05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_s05_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s05_couplers_to_s05_couplers_ARLOCK : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_s05_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_s05_couplers_ARREADY : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_s05_couplers_ARVALID : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_s05_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s05_couplers_to_s05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_s05_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s05_couplers_to_s05_couplers_AWLOCK : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_s05_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_s05_couplers_AWREADY : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_s05_couplers_AWVALID : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_BREADY : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s05_couplers_to_s05_couplers_BVALID : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_s05_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_RLAST : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_RREADY : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s05_couplers_to_s05_couplers_RVALID : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_s05_couplers_WLAST : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_WREADY : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_s05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s05_couplers_to_s05_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s05_couplers_to_s05_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s05_couplers_to_s05_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s05_couplers_to_s05_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s05_couplers_to_s05_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s05_couplers_to_s05_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s05_couplers_to_s05_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s05_couplers_to_s05_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s05_couplers_to_s05_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s05_couplers_to_s05_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s05_couplers_to_s05_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s05_couplers_to_s05_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s05_couplers_to_s05_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s05_couplers_to_s05_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s05_couplers_to_s05_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s05_couplers_to_s05_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s05_couplers_to_s05_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s05_couplers_to_s05_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s05_couplers_to_s05_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s05_couplers_to_s05_couplers_AWVALID;
  M_AXI_bready <= s05_couplers_to_s05_couplers_BREADY;
  M_AXI_rready <= s05_couplers_to_s05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s05_couplers_to_s05_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s05_couplers_to_s05_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s05_couplers_to_s05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s05_couplers_to_s05_couplers_WVALID;
  S_AXI_arready <= s05_couplers_to_s05_couplers_ARREADY;
  S_AXI_awready <= s05_couplers_to_s05_couplers_AWREADY;
  S_AXI_bid(0) <= s05_couplers_to_s05_couplers_BID(0);
  S_AXI_bresp(1 downto 0) <= s05_couplers_to_s05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s05_couplers_to_s05_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s05_couplers_to_s05_couplers_RDATA(31 downto 0);
  S_AXI_rid(0) <= s05_couplers_to_s05_couplers_RID(0);
  S_AXI_rlast <= s05_couplers_to_s05_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s05_couplers_to_s05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s05_couplers_to_s05_couplers_RVALID;
  S_AXI_wready <= s05_couplers_to_s05_couplers_WREADY;
  s05_couplers_to_s05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s05_couplers_to_s05_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s05_couplers_to_s05_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s05_couplers_to_s05_couplers_ARID(0) <= S_AXI_arid(0);
  s05_couplers_to_s05_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s05_couplers_to_s05_couplers_ARLOCK <= S_AXI_arlock;
  s05_couplers_to_s05_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s05_couplers_to_s05_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s05_couplers_to_s05_couplers_ARREADY <= M_AXI_arready;
  s05_couplers_to_s05_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s05_couplers_to_s05_couplers_ARVALID <= S_AXI_arvalid;
  s05_couplers_to_s05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s05_couplers_to_s05_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s05_couplers_to_s05_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s05_couplers_to_s05_couplers_AWID(0) <= S_AXI_awid(0);
  s05_couplers_to_s05_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s05_couplers_to_s05_couplers_AWLOCK <= S_AXI_awlock;
  s05_couplers_to_s05_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s05_couplers_to_s05_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s05_couplers_to_s05_couplers_AWREADY <= M_AXI_awready;
  s05_couplers_to_s05_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s05_couplers_to_s05_couplers_AWVALID <= S_AXI_awvalid;
  s05_couplers_to_s05_couplers_BID(0) <= M_AXI_bid(0);
  s05_couplers_to_s05_couplers_BREADY <= S_AXI_bready;
  s05_couplers_to_s05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s05_couplers_to_s05_couplers_BVALID <= M_AXI_bvalid;
  s05_couplers_to_s05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s05_couplers_to_s05_couplers_RID(0) <= M_AXI_rid(0);
  s05_couplers_to_s05_couplers_RLAST <= M_AXI_rlast;
  s05_couplers_to_s05_couplers_RREADY <= S_AXI_rready;
  s05_couplers_to_s05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s05_couplers_to_s05_couplers_RVALID <= M_AXI_rvalid;
  s05_couplers_to_s05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s05_couplers_to_s05_couplers_WLAST <= S_AXI_wlast;
  s05_couplers_to_s05_couplers_WREADY <= M_AXI_wready;
  s05_couplers_to_s05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s05_couplers_to_s05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s06_couplers_imp_1TM4BD5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s06_couplers_imp_1TM4BD5;

architecture STRUCTURE of s06_couplers_imp_1TM4BD5 is
  component microblaze_auto_pc_8 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component microblaze_auto_pc_8;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s06_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s06_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s06_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s06_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s06_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s06_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s06_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s06_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s06_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s06_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s06_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s06_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s06_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s06_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s06_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s06_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s06_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s06_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s06_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s06_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s06_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s06_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s06_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s06_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s06_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s06_couplers_WVALID : STD_LOGIC;
  signal s06_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s06_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s06_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s06_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s06_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s06_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s06_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s06_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s06_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s06_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s06_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s06_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s06_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s06_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s06_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s06_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s06_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s06_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s06_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s06_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s06_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s06_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s06_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s06_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s06_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s06_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s06_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s06_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s06_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s06_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s06_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s06_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s06_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s06_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s06_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s06_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s06_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s06_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s06_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s06_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s06_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= s06_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s06_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= s06_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s06_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s06_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s06_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s06_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s06_couplers_to_auto_pc_WREADY;
  auto_pc_to_s06_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s06_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s06_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s06_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s06_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s06_couplers_WREADY <= M_AXI_wready;
  s06_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s06_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s06_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s06_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s06_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s06_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s06_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s06_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s06_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s06_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s06_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component microblaze_auto_pc_8
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_s06_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s06_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s06_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s06_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s06_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s06_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s06_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s06_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s06_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s06_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s06_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s06_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s06_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s06_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s06_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s06_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s06_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s06_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s06_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s06_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s06_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s06_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s06_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s06_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_s06_couplers_RLAST,
      m_axi_rready => auto_pc_to_s06_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s06_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s06_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s06_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s06_couplers_WLAST,
      m_axi_wready => auto_pc_to_s06_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s06_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s06_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s06_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s06_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arready => s06_couplers_to_auto_pc_ARREADY,
      s_axi_arvalid => s06_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s06_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s06_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awready => s06_couplers_to_auto_pc_AWREADY,
      s_axi_awvalid => s06_couplers_to_auto_pc_AWVALID,
      s_axi_bready => s06_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s06_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s06_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s06_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rready => s06_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s06_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s06_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s06_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wready => s06_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s06_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s06_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s07_couplers_imp_121M47J is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s07_couplers_imp_121M47J;

architecture STRUCTURE of s07_couplers_imp_121M47J is
  signal s07_couplers_to_s07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s07_couplers_to_s07_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s07_couplers_to_s07_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s07_couplers_to_s07_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s07_couplers_to_s07_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s07_couplers_to_s07_couplers_ARLOCK : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s07_couplers_to_s07_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s07_couplers_to_s07_couplers_ARREADY : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s07_couplers_to_s07_couplers_ARVALID : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s07_couplers_to_s07_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s07_couplers_to_s07_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s07_couplers_to_s07_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s07_couplers_to_s07_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s07_couplers_to_s07_couplers_AWLOCK : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s07_couplers_to_s07_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s07_couplers_to_s07_couplers_AWREADY : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s07_couplers_to_s07_couplers_AWVALID : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s07_couplers_to_s07_couplers_BREADY : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s07_couplers_to_s07_couplers_BVALID : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s07_couplers_to_s07_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s07_couplers_to_s07_couplers_RLAST : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_RREADY : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s07_couplers_to_s07_couplers_RVALID : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s07_couplers_to_s07_couplers_WLAST : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_WREADY : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s07_couplers_to_s07_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s07_couplers_to_s07_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s07_couplers_to_s07_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s07_couplers_to_s07_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s07_couplers_to_s07_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s07_couplers_to_s07_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s07_couplers_to_s07_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s07_couplers_to_s07_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s07_couplers_to_s07_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s07_couplers_to_s07_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s07_couplers_to_s07_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s07_couplers_to_s07_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s07_couplers_to_s07_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s07_couplers_to_s07_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s07_couplers_to_s07_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s07_couplers_to_s07_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s07_couplers_to_s07_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s07_couplers_to_s07_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s07_couplers_to_s07_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s07_couplers_to_s07_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s07_couplers_to_s07_couplers_AWVALID;
  M_AXI_bready <= s07_couplers_to_s07_couplers_BREADY;
  M_AXI_rready <= s07_couplers_to_s07_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s07_couplers_to_s07_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s07_couplers_to_s07_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s07_couplers_to_s07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s07_couplers_to_s07_couplers_WVALID;
  S_AXI_arready <= s07_couplers_to_s07_couplers_ARREADY;
  S_AXI_awready <= s07_couplers_to_s07_couplers_AWREADY;
  S_AXI_bid(0) <= s07_couplers_to_s07_couplers_BID(0);
  S_AXI_bresp(1 downto 0) <= s07_couplers_to_s07_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s07_couplers_to_s07_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s07_couplers_to_s07_couplers_RDATA(31 downto 0);
  S_AXI_rid(0) <= s07_couplers_to_s07_couplers_RID(0);
  S_AXI_rlast <= s07_couplers_to_s07_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s07_couplers_to_s07_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s07_couplers_to_s07_couplers_RVALID;
  S_AXI_wready <= s07_couplers_to_s07_couplers_WREADY;
  s07_couplers_to_s07_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s07_couplers_to_s07_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s07_couplers_to_s07_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s07_couplers_to_s07_couplers_ARID(0) <= S_AXI_arid(0);
  s07_couplers_to_s07_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s07_couplers_to_s07_couplers_ARLOCK <= S_AXI_arlock;
  s07_couplers_to_s07_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s07_couplers_to_s07_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s07_couplers_to_s07_couplers_ARREADY <= M_AXI_arready;
  s07_couplers_to_s07_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s07_couplers_to_s07_couplers_ARVALID <= S_AXI_arvalid;
  s07_couplers_to_s07_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s07_couplers_to_s07_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s07_couplers_to_s07_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s07_couplers_to_s07_couplers_AWID(0) <= S_AXI_awid(0);
  s07_couplers_to_s07_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s07_couplers_to_s07_couplers_AWLOCK <= S_AXI_awlock;
  s07_couplers_to_s07_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s07_couplers_to_s07_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s07_couplers_to_s07_couplers_AWREADY <= M_AXI_awready;
  s07_couplers_to_s07_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s07_couplers_to_s07_couplers_AWVALID <= S_AXI_awvalid;
  s07_couplers_to_s07_couplers_BID(0) <= M_AXI_bid(0);
  s07_couplers_to_s07_couplers_BREADY <= S_AXI_bready;
  s07_couplers_to_s07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s07_couplers_to_s07_couplers_BVALID <= M_AXI_bvalid;
  s07_couplers_to_s07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s07_couplers_to_s07_couplers_RID(0) <= M_AXI_rid(0);
  s07_couplers_to_s07_couplers_RLAST <= M_AXI_rlast;
  s07_couplers_to_s07_couplers_RREADY <= S_AXI_rready;
  s07_couplers_to_s07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s07_couplers_to_s07_couplers_RVALID <= M_AXI_rvalid;
  s07_couplers_to_s07_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s07_couplers_to_s07_couplers_WLAST <= S_AXI_wlast;
  s07_couplers_to_s07_couplers_WREADY <= M_AXI_wready;
  s07_couplers_to_s07_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s07_couplers_to_s07_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s08_couplers_imp_1W4C832 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s08_couplers_imp_1W4C832;

architecture STRUCTURE of s08_couplers_imp_1W4C832 is
  signal s08_couplers_to_s08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s08_couplers_to_s08_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s08_couplers_to_s08_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s08_couplers_to_s08_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_s08_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s08_couplers_to_s08_couplers_ARLOCK : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_s08_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s08_couplers_to_s08_couplers_ARREADY : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_s08_couplers_ARVALID : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s08_couplers_to_s08_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s08_couplers_to_s08_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s08_couplers_to_s08_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_s08_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s08_couplers_to_s08_couplers_AWLOCK : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_s08_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s08_couplers_to_s08_couplers_AWREADY : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_s08_couplers_AWVALID : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_s08_couplers_BREADY : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s08_couplers_to_s08_couplers_BVALID : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s08_couplers_to_s08_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_s08_couplers_RLAST : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_RREADY : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s08_couplers_to_s08_couplers_RVALID : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s08_couplers_to_s08_couplers_WLAST : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_WREADY : STD_LOGIC;
  signal s08_couplers_to_s08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s08_couplers_to_s08_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s08_couplers_to_s08_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s08_couplers_to_s08_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s08_couplers_to_s08_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s08_couplers_to_s08_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s08_couplers_to_s08_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s08_couplers_to_s08_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s08_couplers_to_s08_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s08_couplers_to_s08_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s08_couplers_to_s08_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s08_couplers_to_s08_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s08_couplers_to_s08_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s08_couplers_to_s08_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s08_couplers_to_s08_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s08_couplers_to_s08_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s08_couplers_to_s08_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s08_couplers_to_s08_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s08_couplers_to_s08_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s08_couplers_to_s08_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s08_couplers_to_s08_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s08_couplers_to_s08_couplers_AWVALID;
  M_AXI_bready <= s08_couplers_to_s08_couplers_BREADY;
  M_AXI_rready <= s08_couplers_to_s08_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s08_couplers_to_s08_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s08_couplers_to_s08_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s08_couplers_to_s08_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s08_couplers_to_s08_couplers_WVALID;
  S_AXI_arready <= s08_couplers_to_s08_couplers_ARREADY;
  S_AXI_awready <= s08_couplers_to_s08_couplers_AWREADY;
  S_AXI_bid(0) <= s08_couplers_to_s08_couplers_BID(0);
  S_AXI_bresp(1 downto 0) <= s08_couplers_to_s08_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s08_couplers_to_s08_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s08_couplers_to_s08_couplers_RDATA(31 downto 0);
  S_AXI_rid(0) <= s08_couplers_to_s08_couplers_RID(0);
  S_AXI_rlast <= s08_couplers_to_s08_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s08_couplers_to_s08_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s08_couplers_to_s08_couplers_RVALID;
  S_AXI_wready <= s08_couplers_to_s08_couplers_WREADY;
  s08_couplers_to_s08_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s08_couplers_to_s08_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s08_couplers_to_s08_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s08_couplers_to_s08_couplers_ARID(0) <= S_AXI_arid(0);
  s08_couplers_to_s08_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s08_couplers_to_s08_couplers_ARLOCK <= S_AXI_arlock;
  s08_couplers_to_s08_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s08_couplers_to_s08_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s08_couplers_to_s08_couplers_ARREADY <= M_AXI_arready;
  s08_couplers_to_s08_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s08_couplers_to_s08_couplers_ARVALID <= S_AXI_arvalid;
  s08_couplers_to_s08_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s08_couplers_to_s08_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s08_couplers_to_s08_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s08_couplers_to_s08_couplers_AWID(0) <= S_AXI_awid(0);
  s08_couplers_to_s08_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s08_couplers_to_s08_couplers_AWLOCK <= S_AXI_awlock;
  s08_couplers_to_s08_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s08_couplers_to_s08_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s08_couplers_to_s08_couplers_AWREADY <= M_AXI_awready;
  s08_couplers_to_s08_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s08_couplers_to_s08_couplers_AWVALID <= S_AXI_awvalid;
  s08_couplers_to_s08_couplers_BID(0) <= M_AXI_bid(0);
  s08_couplers_to_s08_couplers_BREADY <= S_AXI_bready;
  s08_couplers_to_s08_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s08_couplers_to_s08_couplers_BVALID <= M_AXI_bvalid;
  s08_couplers_to_s08_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s08_couplers_to_s08_couplers_RID(0) <= M_AXI_rid(0);
  s08_couplers_to_s08_couplers_RLAST <= M_AXI_rlast;
  s08_couplers_to_s08_couplers_RREADY <= S_AXI_rready;
  s08_couplers_to_s08_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s08_couplers_to_s08_couplers_RVALID <= M_AXI_rvalid;
  s08_couplers_to_s08_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s08_couplers_to_s08_couplers_WLAST <= S_AXI_wlast;
  s08_couplers_to_s08_couplers_WREADY <= M_AXI_wready;
  s08_couplers_to_s08_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s08_couplers_to_s08_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s09_couplers_imp_147CL2G is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s09_couplers_imp_147CL2G;

architecture STRUCTURE of s09_couplers_imp_147CL2G is
  component microblaze_auto_pc_9 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component microblaze_auto_pc_9;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s09_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s09_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s09_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s09_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s09_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s09_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s09_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s09_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s09_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s09_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s09_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s09_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s09_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s09_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s09_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s09_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s09_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s09_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s09_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s09_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s09_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s09_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s09_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s09_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s09_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s09_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s09_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s09_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s09_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s09_couplers_WVALID : STD_LOGIC;
  signal s09_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s09_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s09_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s09_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s09_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s09_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s09_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s09_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s09_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s09_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s09_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s09_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s09_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s09_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s09_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s09_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s09_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s09_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s09_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s09_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s09_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s09_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s09_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s09_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s09_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s09_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s09_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s09_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s09_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s09_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s09_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s09_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s09_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s09_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s09_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s09_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s09_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s09_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s09_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s09_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s09_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s09_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s09_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= s09_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s09_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= s09_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s09_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s09_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s09_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s09_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s09_couplers_to_auto_pc_WREADY;
  auto_pc_to_s09_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s09_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s09_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s09_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s09_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s09_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s09_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s09_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s09_couplers_WREADY <= M_AXI_wready;
  s09_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s09_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s09_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s09_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s09_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s09_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s09_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s09_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s09_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s09_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s09_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component microblaze_auto_pc_9
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_s09_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s09_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s09_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s09_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s09_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s09_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s09_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s09_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s09_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s09_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s09_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s09_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s09_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s09_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s09_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s09_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s09_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s09_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s09_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s09_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s09_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s09_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s09_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s09_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_s09_couplers_RLAST,
      m_axi_rready => auto_pc_to_s09_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s09_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s09_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s09_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s09_couplers_WLAST,
      m_axi_wready => auto_pc_to_s09_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s09_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s09_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s09_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s09_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arready => s09_couplers_to_auto_pc_ARREADY,
      s_axi_arvalid => s09_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s09_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s09_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awready => s09_couplers_to_auto_pc_AWREADY,
      s_axi_awvalid => s09_couplers_to_auto_pc_AWVALID,
      s_axi_bready => s09_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s09_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s09_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s09_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rready => s09_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s09_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s09_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s09_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wready => s09_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s09_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s09_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s10_couplers_imp_1WOCIWY is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s10_couplers_imp_1WOCIWY;

architecture STRUCTURE of s10_couplers_imp_1WOCIWY is
  signal s10_couplers_to_s10_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s10_couplers_to_s10_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s10_couplers_to_s10_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s10_couplers_to_s10_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s10_couplers_to_s10_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s10_couplers_to_s10_couplers_ARLOCK : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s10_couplers_to_s10_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s10_couplers_to_s10_couplers_ARREADY : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s10_couplers_to_s10_couplers_ARVALID : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s10_couplers_to_s10_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s10_couplers_to_s10_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s10_couplers_to_s10_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s10_couplers_to_s10_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s10_couplers_to_s10_couplers_AWLOCK : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s10_couplers_to_s10_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s10_couplers_to_s10_couplers_AWREADY : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s10_couplers_to_s10_couplers_AWVALID : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s10_couplers_to_s10_couplers_BREADY : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s10_couplers_to_s10_couplers_BVALID : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s10_couplers_to_s10_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s10_couplers_to_s10_couplers_RLAST : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_RREADY : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s10_couplers_to_s10_couplers_RVALID : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s10_couplers_to_s10_couplers_WLAST : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_WREADY : STD_LOGIC;
  signal s10_couplers_to_s10_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s10_couplers_to_s10_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s10_couplers_to_s10_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s10_couplers_to_s10_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s10_couplers_to_s10_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s10_couplers_to_s10_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s10_couplers_to_s10_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s10_couplers_to_s10_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s10_couplers_to_s10_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s10_couplers_to_s10_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s10_couplers_to_s10_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s10_couplers_to_s10_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s10_couplers_to_s10_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s10_couplers_to_s10_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s10_couplers_to_s10_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s10_couplers_to_s10_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s10_couplers_to_s10_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s10_couplers_to_s10_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s10_couplers_to_s10_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s10_couplers_to_s10_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s10_couplers_to_s10_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s10_couplers_to_s10_couplers_AWVALID;
  M_AXI_bready <= s10_couplers_to_s10_couplers_BREADY;
  M_AXI_rready <= s10_couplers_to_s10_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s10_couplers_to_s10_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s10_couplers_to_s10_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s10_couplers_to_s10_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s10_couplers_to_s10_couplers_WVALID;
  S_AXI_arready <= s10_couplers_to_s10_couplers_ARREADY;
  S_AXI_awready <= s10_couplers_to_s10_couplers_AWREADY;
  S_AXI_bid(0) <= s10_couplers_to_s10_couplers_BID(0);
  S_AXI_bresp(1 downto 0) <= s10_couplers_to_s10_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s10_couplers_to_s10_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s10_couplers_to_s10_couplers_RDATA(31 downto 0);
  S_AXI_rid(0) <= s10_couplers_to_s10_couplers_RID(0);
  S_AXI_rlast <= s10_couplers_to_s10_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s10_couplers_to_s10_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s10_couplers_to_s10_couplers_RVALID;
  S_AXI_wready <= s10_couplers_to_s10_couplers_WREADY;
  s10_couplers_to_s10_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s10_couplers_to_s10_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s10_couplers_to_s10_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s10_couplers_to_s10_couplers_ARID(0) <= S_AXI_arid(0);
  s10_couplers_to_s10_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s10_couplers_to_s10_couplers_ARLOCK <= S_AXI_arlock;
  s10_couplers_to_s10_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s10_couplers_to_s10_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s10_couplers_to_s10_couplers_ARREADY <= M_AXI_arready;
  s10_couplers_to_s10_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s10_couplers_to_s10_couplers_ARVALID <= S_AXI_arvalid;
  s10_couplers_to_s10_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s10_couplers_to_s10_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s10_couplers_to_s10_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s10_couplers_to_s10_couplers_AWID(0) <= S_AXI_awid(0);
  s10_couplers_to_s10_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s10_couplers_to_s10_couplers_AWLOCK <= S_AXI_awlock;
  s10_couplers_to_s10_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s10_couplers_to_s10_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s10_couplers_to_s10_couplers_AWREADY <= M_AXI_awready;
  s10_couplers_to_s10_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s10_couplers_to_s10_couplers_AWVALID <= S_AXI_awvalid;
  s10_couplers_to_s10_couplers_BID(0) <= M_AXI_bid(0);
  s10_couplers_to_s10_couplers_BREADY <= S_AXI_bready;
  s10_couplers_to_s10_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s10_couplers_to_s10_couplers_BVALID <= M_AXI_bvalid;
  s10_couplers_to_s10_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s10_couplers_to_s10_couplers_RID(0) <= M_AXI_rid(0);
  s10_couplers_to_s10_couplers_RLAST <= M_AXI_rlast;
  s10_couplers_to_s10_couplers_RREADY <= S_AXI_rready;
  s10_couplers_to_s10_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s10_couplers_to_s10_couplers_RVALID <= M_AXI_rvalid;
  s10_couplers_to_s10_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s10_couplers_to_s10_couplers_WLAST <= S_AXI_wlast;
  s10_couplers_to_s10_couplers_WREADY <= M_AXI_wready;
  s10_couplers_to_s10_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s10_couplers_to_s10_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s11_couplers_imp_14R9WUC is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s11_couplers_imp_14R9WUC;

architecture STRUCTURE of s11_couplers_imp_14R9WUC is
  signal s11_couplers_to_s11_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s11_couplers_to_s11_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s11_couplers_to_s11_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s11_couplers_to_s11_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s11_couplers_to_s11_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s11_couplers_to_s11_couplers_ARLOCK : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s11_couplers_to_s11_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s11_couplers_to_s11_couplers_ARREADY : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s11_couplers_to_s11_couplers_ARVALID : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s11_couplers_to_s11_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s11_couplers_to_s11_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s11_couplers_to_s11_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s11_couplers_to_s11_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s11_couplers_to_s11_couplers_AWLOCK : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s11_couplers_to_s11_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s11_couplers_to_s11_couplers_AWREADY : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s11_couplers_to_s11_couplers_AWVALID : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s11_couplers_to_s11_couplers_BREADY : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s11_couplers_to_s11_couplers_BVALID : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s11_couplers_to_s11_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s11_couplers_to_s11_couplers_RLAST : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_RREADY : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s11_couplers_to_s11_couplers_RVALID : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s11_couplers_to_s11_couplers_WLAST : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_WREADY : STD_LOGIC;
  signal s11_couplers_to_s11_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s11_couplers_to_s11_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s11_couplers_to_s11_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s11_couplers_to_s11_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s11_couplers_to_s11_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s11_couplers_to_s11_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s11_couplers_to_s11_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s11_couplers_to_s11_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s11_couplers_to_s11_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s11_couplers_to_s11_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s11_couplers_to_s11_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s11_couplers_to_s11_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s11_couplers_to_s11_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s11_couplers_to_s11_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s11_couplers_to_s11_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s11_couplers_to_s11_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s11_couplers_to_s11_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s11_couplers_to_s11_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s11_couplers_to_s11_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s11_couplers_to_s11_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s11_couplers_to_s11_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s11_couplers_to_s11_couplers_AWVALID;
  M_AXI_bready <= s11_couplers_to_s11_couplers_BREADY;
  M_AXI_rready <= s11_couplers_to_s11_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s11_couplers_to_s11_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s11_couplers_to_s11_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s11_couplers_to_s11_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s11_couplers_to_s11_couplers_WVALID;
  S_AXI_arready <= s11_couplers_to_s11_couplers_ARREADY;
  S_AXI_awready <= s11_couplers_to_s11_couplers_AWREADY;
  S_AXI_bid(0) <= s11_couplers_to_s11_couplers_BID(0);
  S_AXI_bresp(1 downto 0) <= s11_couplers_to_s11_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s11_couplers_to_s11_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s11_couplers_to_s11_couplers_RDATA(31 downto 0);
  S_AXI_rid(0) <= s11_couplers_to_s11_couplers_RID(0);
  S_AXI_rlast <= s11_couplers_to_s11_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s11_couplers_to_s11_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s11_couplers_to_s11_couplers_RVALID;
  S_AXI_wready <= s11_couplers_to_s11_couplers_WREADY;
  s11_couplers_to_s11_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s11_couplers_to_s11_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s11_couplers_to_s11_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s11_couplers_to_s11_couplers_ARID(0) <= S_AXI_arid(0);
  s11_couplers_to_s11_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s11_couplers_to_s11_couplers_ARLOCK <= S_AXI_arlock;
  s11_couplers_to_s11_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s11_couplers_to_s11_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s11_couplers_to_s11_couplers_ARREADY <= M_AXI_arready;
  s11_couplers_to_s11_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s11_couplers_to_s11_couplers_ARVALID <= S_AXI_arvalid;
  s11_couplers_to_s11_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s11_couplers_to_s11_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s11_couplers_to_s11_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s11_couplers_to_s11_couplers_AWID(0) <= S_AXI_awid(0);
  s11_couplers_to_s11_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s11_couplers_to_s11_couplers_AWLOCK <= S_AXI_awlock;
  s11_couplers_to_s11_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s11_couplers_to_s11_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s11_couplers_to_s11_couplers_AWREADY <= M_AXI_awready;
  s11_couplers_to_s11_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s11_couplers_to_s11_couplers_AWVALID <= S_AXI_awvalid;
  s11_couplers_to_s11_couplers_BID(0) <= M_AXI_bid(0);
  s11_couplers_to_s11_couplers_BREADY <= S_AXI_bready;
  s11_couplers_to_s11_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s11_couplers_to_s11_couplers_BVALID <= M_AXI_bvalid;
  s11_couplers_to_s11_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s11_couplers_to_s11_couplers_RID(0) <= M_AXI_rid(0);
  s11_couplers_to_s11_couplers_RLAST <= M_AXI_rlast;
  s11_couplers_to_s11_couplers_RREADY <= S_AXI_rready;
  s11_couplers_to_s11_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s11_couplers_to_s11_couplers_RVALID <= M_AXI_rvalid;
  s11_couplers_to_s11_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s11_couplers_to_s11_couplers_WLAST <= S_AXI_wlast;
  s11_couplers_to_s11_couplers_WREADY <= M_AXI_wready;
  s11_couplers_to_s11_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s11_couplers_to_s11_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_microblaze_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    M01_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    M01_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M04_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_arlock : out STD_LOGIC;
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M04_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_awlock : out STD_LOGIC;
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_rlast : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wlast : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC;
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC;
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arlock : in STD_LOGIC;
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awlock : in STD_LOGIC;
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC;
    S03_ACLK : in STD_LOGIC;
    S03_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arready : out STD_LOGIC;
    S03_AXI_arvalid : in STD_LOGIC;
    S03_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awready : out STD_LOGIC;
    S03_AXI_awvalid : in STD_LOGIC;
    S03_AXI_bready : in STD_LOGIC;
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC;
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rready : in STD_LOGIC;
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rvalid : out STD_LOGIC;
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_wready : out STD_LOGIC;
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_wvalid : in STD_LOGIC;
    S04_ACLK : in STD_LOGIC;
    S04_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arlock : in STD_LOGIC;
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arready : out STD_LOGIC;
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arvalid : in STD_LOGIC;
    S04_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_awlock : in STD_LOGIC;
    S04_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awready : out STD_LOGIC;
    S04_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awvalid : in STD_LOGIC;
    S04_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bready : in STD_LOGIC;
    S04_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_bvalid : out STD_LOGIC;
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rlast : out STD_LOGIC;
    S04_AXI_rready : in STD_LOGIC;
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_rvalid : out STD_LOGIC;
    S04_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_wlast : in STD_LOGIC;
    S04_AXI_wready : out STD_LOGIC;
    S04_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_wvalid : in STD_LOGIC;
    S05_ACLK : in STD_LOGIC;
    S05_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_arlock : in STD_LOGIC;
    S05_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arready : out STD_LOGIC;
    S05_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arvalid : in STD_LOGIC;
    S05_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_awlock : in STD_LOGIC;
    S05_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awready : out STD_LOGIC;
    S05_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awvalid : in STD_LOGIC;
    S05_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bready : in STD_LOGIC;
    S05_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_bvalid : out STD_LOGIC;
    S05_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rlast : out STD_LOGIC;
    S05_AXI_rready : in STD_LOGIC;
    S05_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_rvalid : out STD_LOGIC;
    S05_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_wlast : in STD_LOGIC;
    S05_AXI_wready : out STD_LOGIC;
    S05_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_wvalid : in STD_LOGIC;
    S06_ACLK : in STD_LOGIC;
    S06_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S06_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_arready : out STD_LOGIC;
    S06_AXI_arvalid : in STD_LOGIC;
    S06_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S06_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_awready : out STD_LOGIC;
    S06_AXI_awvalid : in STD_LOGIC;
    S06_AXI_bready : in STD_LOGIC;
    S06_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_bvalid : out STD_LOGIC;
    S06_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S06_AXI_rready : in STD_LOGIC;
    S06_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_rvalid : out STD_LOGIC;
    S06_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S06_AXI_wready : out STD_LOGIC;
    S06_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_wvalid : in STD_LOGIC;
    S07_ACLK : in STD_LOGIC;
    S07_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S07_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S07_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S07_AXI_arlock : in STD_LOGIC;
    S07_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S07_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_arready : out STD_LOGIC;
    S07_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S07_AXI_arvalid : in STD_LOGIC;
    S07_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S07_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S07_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S07_AXI_awlock : in STD_LOGIC;
    S07_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S07_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_awready : out STD_LOGIC;
    S07_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S07_AXI_awvalid : in STD_LOGIC;
    S07_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_bready : in STD_LOGIC;
    S07_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S07_AXI_bvalid : out STD_LOGIC;
    S07_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S07_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_rlast : out STD_LOGIC;
    S07_AXI_rready : in STD_LOGIC;
    S07_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S07_AXI_rvalid : out STD_LOGIC;
    S07_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S07_AXI_wlast : in STD_LOGIC;
    S07_AXI_wready : out STD_LOGIC;
    S07_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_wvalid : in STD_LOGIC;
    S08_ACLK : in STD_LOGIC;
    S08_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S08_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S08_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S08_AXI_arlock : in STD_LOGIC;
    S08_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_arready : out STD_LOGIC;
    S08_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXI_arvalid : in STD_LOGIC;
    S08_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S08_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S08_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S08_AXI_awlock : in STD_LOGIC;
    S08_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_awready : out STD_LOGIC;
    S08_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXI_awvalid : in STD_LOGIC;
    S08_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_bready : in STD_LOGIC;
    S08_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S08_AXI_bvalid : out STD_LOGIC;
    S08_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S08_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_rlast : out STD_LOGIC;
    S08_AXI_rready : in STD_LOGIC;
    S08_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S08_AXI_rvalid : out STD_LOGIC;
    S08_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S08_AXI_wlast : in STD_LOGIC;
    S08_AXI_wready : out STD_LOGIC;
    S08_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_wvalid : in STD_LOGIC;
    S09_ACLK : in STD_LOGIC;
    S09_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S09_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S09_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S09_AXI_arready : out STD_LOGIC;
    S09_AXI_arvalid : in STD_LOGIC;
    S09_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S09_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S09_AXI_awready : out STD_LOGIC;
    S09_AXI_awvalid : in STD_LOGIC;
    S09_AXI_bready : in STD_LOGIC;
    S09_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S09_AXI_bvalid : out STD_LOGIC;
    S09_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S09_AXI_rready : in STD_LOGIC;
    S09_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S09_AXI_rvalid : out STD_LOGIC;
    S09_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S09_AXI_wready : out STD_LOGIC;
    S09_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S09_AXI_wvalid : in STD_LOGIC;
    S10_ACLK : in STD_LOGIC;
    S10_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S10_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S10_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S10_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S10_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S10_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S10_AXI_arlock : in STD_LOGIC;
    S10_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S10_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S10_AXI_arready : out STD_LOGIC;
    S10_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S10_AXI_arvalid : in STD_LOGIC;
    S10_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S10_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S10_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S10_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S10_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S10_AXI_awlock : in STD_LOGIC;
    S10_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S10_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S10_AXI_awready : out STD_LOGIC;
    S10_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S10_AXI_awvalid : in STD_LOGIC;
    S10_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S10_AXI_bready : in STD_LOGIC;
    S10_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S10_AXI_bvalid : out STD_LOGIC;
    S10_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S10_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S10_AXI_rlast : out STD_LOGIC;
    S10_AXI_rready : in STD_LOGIC;
    S10_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S10_AXI_rvalid : out STD_LOGIC;
    S10_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S10_AXI_wlast : in STD_LOGIC;
    S10_AXI_wready : out STD_LOGIC;
    S10_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S10_AXI_wvalid : in STD_LOGIC;
    S11_ACLK : in STD_LOGIC;
    S11_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S11_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S11_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S11_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S11_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S11_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S11_AXI_arlock : in STD_LOGIC;
    S11_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S11_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S11_AXI_arready : out STD_LOGIC;
    S11_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S11_AXI_arvalid : in STD_LOGIC;
    S11_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S11_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S11_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S11_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S11_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S11_AXI_awlock : in STD_LOGIC;
    S11_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S11_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S11_AXI_awready : out STD_LOGIC;
    S11_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S11_AXI_awvalid : in STD_LOGIC;
    S11_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S11_AXI_bready : in STD_LOGIC;
    S11_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S11_AXI_bvalid : out STD_LOGIC;
    S11_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S11_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S11_AXI_rlast : out STD_LOGIC;
    S11_AXI_rready : in STD_LOGIC;
    S11_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S11_AXI_rvalid : out STD_LOGIC;
    S11_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S11_AXI_wlast : in STD_LOGIC;
    S11_AXI_wready : out STD_LOGIC;
    S11_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S11_AXI_wvalid : in STD_LOGIC
  );
end microblaze_microblaze_0_axi_periph_0;

architecture STRUCTURE of microblaze_microblaze_0_axi_periph_0 is
  component microblaze_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 383 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 383 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 383 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 383 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component microblaze_xbar_0;
  signal GND_1 : STD_LOGIC;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M07_ACLK_1 : STD_LOGIC;
  signal M07_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S02_ACLK_1 : STD_LOGIC;
  signal S02_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S03_ACLK_1 : STD_LOGIC;
  signal S03_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S04_ACLK_1 : STD_LOGIC;
  signal S04_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S05_ACLK_1 : STD_LOGIC;
  signal S05_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S06_ACLK_1 : STD_LOGIC;
  signal S06_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S07_ACLK_1 : STD_LOGIC;
  signal S07_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S08_ACLK_1 : STD_LOGIC;
  signal S08_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S09_ACLK_1 : STD_LOGIC;
  signal S09_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S10_ACLK_1 : STD_LOGIC;
  signal S10_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S11_ACLK_1 : STD_LOGIC;
  signal S11_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m01_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m02_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m02_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m02_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m02_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m02_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m02_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m02_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m02_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m02_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RLAST : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WLAST : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_ACLK_net : STD_LOGIC;
  signal microblaze_0_axi_periph_ARESETN_net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_ARLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_AWLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_RLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_WLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s01_couplers_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_ARLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_AWLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_RLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_WLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s02_couplers_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s03_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s03_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s03_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s03_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s03_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s03_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s03_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s03_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s03_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s03_couplers_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_ARLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_AWLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_RLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_WLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s04_couplers_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_ARLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_AWLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_RLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_WLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s05_couplers_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s06_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s06_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s06_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s06_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s06_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s06_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s06_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s06_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s06_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s06_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s06_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s06_couplers_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_ARLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_AWLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_RLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_WLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s07_couplers_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_ARLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_AWLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_RLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_WLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s08_couplers_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s09_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s09_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s09_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s09_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s09_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s09_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s09_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s09_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s09_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s09_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s09_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s09_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s09_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s09_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s09_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s09_couplers_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_ARLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_AWLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_RLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_WLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s10_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s10_couplers_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_ARLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_AWLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_RLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_WLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s11_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s11_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s02_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal s02_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal s02_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal s03_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s03_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s04_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s04_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal s04_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s04_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal s04_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal s04_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s04_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s04_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s05_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s05_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s05_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s05_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s05_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s05_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s05_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s05_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s05_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal s05_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s05_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal s05_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal s05_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal s05_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s05_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal s05_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s05_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s06_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s06_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s06_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s06_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s06_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s06_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s06_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s06_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s06_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s06_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s06_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s06_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s06_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s06_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s06_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s06_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s06_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s06_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s06_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s06_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal s06_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal s06_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s06_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal s06_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s06_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s06_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s06_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s07_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s07_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s07_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s07_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s07_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s07_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s07_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s07_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s07_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal s07_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s07_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s07_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s07_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s07_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s07_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s07_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s07_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s07_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s07_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s07_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal s07_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s07_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s07_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal s07_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s07_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal s07_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal s07_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal s07_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal s07_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 7 to 7 );
  signal s07_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s07_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal s07_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal s07_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s07_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s07_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal s07_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s07_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s08_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s08_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s08_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s08_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s08_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s08_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s08_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal s08_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s08_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s08_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s08_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s08_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s08_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s08_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s08_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal s08_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s08_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal s08_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s08_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal s08_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal s08_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal s08_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal s08_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 8 to 8 );
  signal s08_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s08_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal s08_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal s08_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s08_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s08_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal s08_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s08_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s09_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s09_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s09_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s09_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s09_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s09_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s09_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s09_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal s09_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s09_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s09_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s09_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s09_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s09_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s09_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s09_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s09_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s09_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal s09_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s09_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s09_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s09_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 19 downto 18 );
  signal s09_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal s09_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal s09_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 9 to 9 );
  signal s09_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s09_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 19 downto 18 );
  signal s09_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal s09_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s09_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s09_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal s09_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s09_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s10_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s10_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s10_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s10_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s10_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s10_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s10_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s10_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s10_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal s10_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s10_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s10_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s10_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s10_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s10_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s10_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s10_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s10_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s10_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s10_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal s10_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s10_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s10_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal s10_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s10_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 21 downto 20 );
  signal s10_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal s10_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal s10_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal s10_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 10 to 10 );
  signal s10_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s10_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 21 downto 20 );
  signal s10_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal s10_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s10_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s10_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal s10_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s10_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s11_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s11_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s11_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s11_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s11_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s11_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s11_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s11_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s11_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal s11_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s11_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s11_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s11_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s11_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s11_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s11_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s11_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s11_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s11_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s11_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal s11_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s11_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s11_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal s11_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s11_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 23 downto 22 );
  signal s11_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal s11_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal s11_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal s11_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 11 to 11 );
  signal s11_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s11_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 23 downto 22 );
  signal s11_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal s11_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s11_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s11_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal s11_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s11_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARID : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m02_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARID : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWID : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m03_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARID : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWID : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m04_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARID : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWID : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m05_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_ARCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARID : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_ARLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_AWCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWID : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_AWLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m06_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARBURST : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal xbar_to_m07_couplers_ARCACHE : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARID : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARLEN : STD_LOGIC_VECTOR ( 63 downto 56 );
  signal xbar_to_m07_couplers_ARLOCK : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARQOS : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_ARREGION : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARSIZE : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWBURST : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal xbar_to_m07_couplers_AWCACHE : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWID : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWLEN : STD_LOGIC_VECTOR ( 63 downto 56 );
  signal xbar_to_m07_couplers_AWLOCK : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWQOS : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_AWREGION : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWSIZE : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m07_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WLAST : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_xbar_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 4 );
  signal NLW_xbar_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 4 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1(0) <= M00_ARESETN(0);
  M00_AXI_araddr(8 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_ARADDR(8 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_microblaze_0_axi_periph_ARVALID;
  M00_AXI_awaddr(8 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_AWADDR(8 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_microblaze_0_axi_periph_AWVALID;
  M00_AXI_bready <= m00_couplers_to_microblaze_0_axi_periph_BREADY;
  M00_AXI_rready <= m00_couplers_to_microblaze_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_microblaze_0_axi_periph_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1(0) <= M01_ARESETN(0);
  M01_AXI_araddr(29 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARADDR(29 downto 0);
  M01_AXI_arburst(1 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARBURST(1 downto 0);
  M01_AXI_arcache(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARCACHE(3 downto 0);
  M01_AXI_arid(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARID(3 downto 0);
  M01_AXI_arlen(7 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARLEN(7 downto 0);
  M01_AXI_arlock(0) <= m01_couplers_to_microblaze_0_axi_periph_ARLOCK(0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M01_AXI_arqos(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARQOS(3 downto 0);
  M01_AXI_arsize(2 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARSIZE(2 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(29 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWADDR(29 downto 0);
  M01_AXI_awburst(1 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWBURST(1 downto 0);
  M01_AXI_awcache(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWCACHE(3 downto 0);
  M01_AXI_awid(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWID(3 downto 0);
  M01_AXI_awlen(7 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWLEN(7 downto 0);
  M01_AXI_awlock(0) <= m01_couplers_to_microblaze_0_axi_periph_AWLOCK(0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M01_AXI_awqos(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWQOS(3 downto 0);
  M01_AXI_awsize(2 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWSIZE(2 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wlast(0) <= m01_couplers_to_microblaze_0_axi_periph_WLAST(0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1(0) <= M02_ARESETN(0);
  M02_AXI_araddr(4 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_ARADDR(4 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_microblaze_0_axi_periph_ARVALID;
  M02_AXI_awaddr(4 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_AWADDR(4 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_microblaze_0_axi_periph_AWVALID;
  M02_AXI_bready <= m02_couplers_to_microblaze_0_axi_periph_BREADY;
  M02_AXI_rready <= m02_couplers_to_microblaze_0_axi_periph_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_microblaze_0_axi_periph_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1(0) <= M03_ARESETN(0);
  M03_AXI_araddr(3 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_ARADDR(3 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_microblaze_0_axi_periph_ARVALID;
  M03_AXI_awaddr(3 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_AWADDR(3 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_microblaze_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_microblaze_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_microblaze_0_axi_periph_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_microblaze_0_axi_periph_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1(0) <= M04_ARESETN(0);
  M04_AXI_araddr(12 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARADDR(12 downto 0);
  M04_AXI_arburst(1 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARBURST(1 downto 0);
  M04_AXI_arcache(3 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARCACHE(3 downto 0);
  M04_AXI_arid(3 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARID(3 downto 0);
  M04_AXI_arlen(7 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARLEN(7 downto 0);
  M04_AXI_arlock <= m04_couplers_to_microblaze_0_axi_periph_ARLOCK;
  M04_AXI_arprot(2 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M04_AXI_arsize(2 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARSIZE(2 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_microblaze_0_axi_periph_ARVALID;
  M04_AXI_awaddr(12 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWADDR(12 downto 0);
  M04_AXI_awburst(1 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWBURST(1 downto 0);
  M04_AXI_awcache(3 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWCACHE(3 downto 0);
  M04_AXI_awid(3 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWID(3 downto 0);
  M04_AXI_awlen(7 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWLEN(7 downto 0);
  M04_AXI_awlock <= m04_couplers_to_microblaze_0_axi_periph_AWLOCK;
  M04_AXI_awprot(2 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M04_AXI_awsize(2 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWSIZE(2 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_microblaze_0_axi_periph_AWVALID;
  M04_AXI_bready <= m04_couplers_to_microblaze_0_axi_periph_BREADY;
  M04_AXI_rready <= m04_couplers_to_microblaze_0_axi_periph_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wlast <= m04_couplers_to_microblaze_0_axi_periph_WLAST;
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_microblaze_0_axi_periph_WVALID;
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1(0) <= M05_ARESETN(0);
  M05_AXI_araddr(8 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_ARADDR(8 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_microblaze_0_axi_periph_ARVALID;
  M05_AXI_awaddr(8 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_AWADDR(8 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_microblaze_0_axi_periph_AWVALID;
  M05_AXI_bready <= m05_couplers_to_microblaze_0_axi_periph_BREADY;
  M05_AXI_rready <= m05_couplers_to_microblaze_0_axi_periph_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_microblaze_0_axi_periph_WVALID;
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1(0) <= M06_ARESETN(0);
  M06_AXI_araddr(8 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_ARADDR(8 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_microblaze_0_axi_periph_ARVALID;
  M06_AXI_awaddr(8 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_AWADDR(8 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_microblaze_0_axi_periph_AWVALID;
  M06_AXI_bready <= m06_couplers_to_microblaze_0_axi_periph_BREADY;
  M06_AXI_rready <= m06_couplers_to_microblaze_0_axi_periph_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_microblaze_0_axi_periph_WVALID;
  M07_ACLK_1 <= M07_ACLK;
  M07_ARESETN_1(0) <= M07_ARESETN(0);
  M07_AXI_araddr(8 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_ARADDR(8 downto 0);
  M07_AXI_arvalid <= m07_couplers_to_microblaze_0_axi_periph_ARVALID;
  M07_AXI_awaddr(8 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_AWADDR(8 downto 0);
  M07_AXI_awvalid <= m07_couplers_to_microblaze_0_axi_periph_AWVALID;
  M07_AXI_bready <= m07_couplers_to_microblaze_0_axi_periph_BREADY;
  M07_AXI_rready <= m07_couplers_to_microblaze_0_axi_periph_RREADY;
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M07_AXI_wvalid <= m07_couplers_to_microblaze_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1(0) <= S00_ARESETN(0);
  S00_AXI_arready <= microblaze_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= microblaze_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= microblaze_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= microblaze_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= microblaze_0_axi_periph_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1(0) <= S01_ARESETN(0);
  S01_AXI_arready <= microblaze_0_axi_periph_to_s01_couplers_ARREADY;
  S01_AXI_awready <= microblaze_0_axi_periph_to_s01_couplers_AWREADY;
  S01_AXI_bid(0) <= microblaze_0_axi_periph_to_s01_couplers_BID(0);
  S01_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid <= microblaze_0_axi_periph_to_s01_couplers_BVALID;
  S01_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rid(0) <= microblaze_0_axi_periph_to_s01_couplers_RID(0);
  S01_AXI_rlast <= microblaze_0_axi_periph_to_s01_couplers_RLAST;
  S01_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= microblaze_0_axi_periph_to_s01_couplers_RVALID;
  S01_AXI_wready <= microblaze_0_axi_periph_to_s01_couplers_WREADY;
  S02_ACLK_1 <= S02_ACLK;
  S02_ARESETN_1(0) <= S02_ARESETN(0);
  S02_AXI_arready <= microblaze_0_axi_periph_to_s02_couplers_ARREADY;
  S02_AXI_awready <= microblaze_0_axi_periph_to_s02_couplers_AWREADY;
  S02_AXI_bid(0) <= microblaze_0_axi_periph_to_s02_couplers_BID(0);
  S02_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s02_couplers_BRESP(1 downto 0);
  S02_AXI_bvalid <= microblaze_0_axi_periph_to_s02_couplers_BVALID;
  S02_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s02_couplers_RDATA(31 downto 0);
  S02_AXI_rid(0) <= microblaze_0_axi_periph_to_s02_couplers_RID(0);
  S02_AXI_rlast <= microblaze_0_axi_periph_to_s02_couplers_RLAST;
  S02_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s02_couplers_RRESP(1 downto 0);
  S02_AXI_rvalid <= microblaze_0_axi_periph_to_s02_couplers_RVALID;
  S02_AXI_wready <= microblaze_0_axi_periph_to_s02_couplers_WREADY;
  S03_ACLK_1 <= S03_ACLK;
  S03_ARESETN_1(0) <= S03_ARESETN(0);
  S03_AXI_arready <= microblaze_0_axi_periph_to_s03_couplers_ARREADY;
  S03_AXI_awready <= microblaze_0_axi_periph_to_s03_couplers_AWREADY;
  S03_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s03_couplers_BRESP(1 downto 0);
  S03_AXI_bvalid <= microblaze_0_axi_periph_to_s03_couplers_BVALID;
  S03_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s03_couplers_RDATA(31 downto 0);
  S03_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s03_couplers_RRESP(1 downto 0);
  S03_AXI_rvalid <= microblaze_0_axi_periph_to_s03_couplers_RVALID;
  S03_AXI_wready <= microblaze_0_axi_periph_to_s03_couplers_WREADY;
  S04_ACLK_1 <= S04_ACLK;
  S04_ARESETN_1(0) <= S04_ARESETN(0);
  S04_AXI_arready <= microblaze_0_axi_periph_to_s04_couplers_ARREADY;
  S04_AXI_awready <= microblaze_0_axi_periph_to_s04_couplers_AWREADY;
  S04_AXI_bid(0) <= microblaze_0_axi_periph_to_s04_couplers_BID(0);
  S04_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s04_couplers_BRESP(1 downto 0);
  S04_AXI_bvalid <= microblaze_0_axi_periph_to_s04_couplers_BVALID;
  S04_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s04_couplers_RDATA(31 downto 0);
  S04_AXI_rid(0) <= microblaze_0_axi_periph_to_s04_couplers_RID(0);
  S04_AXI_rlast <= microblaze_0_axi_periph_to_s04_couplers_RLAST;
  S04_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s04_couplers_RRESP(1 downto 0);
  S04_AXI_rvalid <= microblaze_0_axi_periph_to_s04_couplers_RVALID;
  S04_AXI_wready <= microblaze_0_axi_periph_to_s04_couplers_WREADY;
  S05_ACLK_1 <= S05_ACLK;
  S05_ARESETN_1(0) <= S05_ARESETN(0);
  S05_AXI_arready <= microblaze_0_axi_periph_to_s05_couplers_ARREADY;
  S05_AXI_awready <= microblaze_0_axi_periph_to_s05_couplers_AWREADY;
  S05_AXI_bid(0) <= microblaze_0_axi_periph_to_s05_couplers_BID(0);
  S05_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s05_couplers_BRESP(1 downto 0);
  S05_AXI_bvalid <= microblaze_0_axi_periph_to_s05_couplers_BVALID;
  S05_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s05_couplers_RDATA(31 downto 0);
  S05_AXI_rid(0) <= microblaze_0_axi_periph_to_s05_couplers_RID(0);
  S05_AXI_rlast <= microblaze_0_axi_periph_to_s05_couplers_RLAST;
  S05_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s05_couplers_RRESP(1 downto 0);
  S05_AXI_rvalid <= microblaze_0_axi_periph_to_s05_couplers_RVALID;
  S05_AXI_wready <= microblaze_0_axi_periph_to_s05_couplers_WREADY;
  S06_ACLK_1 <= S06_ACLK;
  S06_ARESETN_1(0) <= S06_ARESETN(0);
  S06_AXI_arready <= microblaze_0_axi_periph_to_s06_couplers_ARREADY;
  S06_AXI_awready <= microblaze_0_axi_periph_to_s06_couplers_AWREADY;
  S06_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s06_couplers_BRESP(1 downto 0);
  S06_AXI_bvalid <= microblaze_0_axi_periph_to_s06_couplers_BVALID;
  S06_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s06_couplers_RDATA(31 downto 0);
  S06_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s06_couplers_RRESP(1 downto 0);
  S06_AXI_rvalid <= microblaze_0_axi_periph_to_s06_couplers_RVALID;
  S06_AXI_wready <= microblaze_0_axi_periph_to_s06_couplers_WREADY;
  S07_ACLK_1 <= S07_ACLK;
  S07_ARESETN_1(0) <= S07_ARESETN(0);
  S07_AXI_arready <= microblaze_0_axi_periph_to_s07_couplers_ARREADY;
  S07_AXI_awready <= microblaze_0_axi_periph_to_s07_couplers_AWREADY;
  S07_AXI_bid(0) <= microblaze_0_axi_periph_to_s07_couplers_BID(0);
  S07_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s07_couplers_BRESP(1 downto 0);
  S07_AXI_bvalid <= microblaze_0_axi_periph_to_s07_couplers_BVALID;
  S07_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s07_couplers_RDATA(31 downto 0);
  S07_AXI_rid(0) <= microblaze_0_axi_periph_to_s07_couplers_RID(0);
  S07_AXI_rlast <= microblaze_0_axi_periph_to_s07_couplers_RLAST;
  S07_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s07_couplers_RRESP(1 downto 0);
  S07_AXI_rvalid <= microblaze_0_axi_periph_to_s07_couplers_RVALID;
  S07_AXI_wready <= microblaze_0_axi_periph_to_s07_couplers_WREADY;
  S08_ACLK_1 <= S08_ACLK;
  S08_ARESETN_1(0) <= S08_ARESETN(0);
  S08_AXI_arready <= microblaze_0_axi_periph_to_s08_couplers_ARREADY;
  S08_AXI_awready <= microblaze_0_axi_periph_to_s08_couplers_AWREADY;
  S08_AXI_bid(0) <= microblaze_0_axi_periph_to_s08_couplers_BID(0);
  S08_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s08_couplers_BRESP(1 downto 0);
  S08_AXI_bvalid <= microblaze_0_axi_periph_to_s08_couplers_BVALID;
  S08_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s08_couplers_RDATA(31 downto 0);
  S08_AXI_rid(0) <= microblaze_0_axi_periph_to_s08_couplers_RID(0);
  S08_AXI_rlast <= microblaze_0_axi_periph_to_s08_couplers_RLAST;
  S08_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s08_couplers_RRESP(1 downto 0);
  S08_AXI_rvalid <= microblaze_0_axi_periph_to_s08_couplers_RVALID;
  S08_AXI_wready <= microblaze_0_axi_periph_to_s08_couplers_WREADY;
  S09_ACLK_1 <= S09_ACLK;
  S09_ARESETN_1(0) <= S09_ARESETN(0);
  S09_AXI_arready <= microblaze_0_axi_periph_to_s09_couplers_ARREADY;
  S09_AXI_awready <= microblaze_0_axi_periph_to_s09_couplers_AWREADY;
  S09_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s09_couplers_BRESP(1 downto 0);
  S09_AXI_bvalid <= microblaze_0_axi_periph_to_s09_couplers_BVALID;
  S09_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s09_couplers_RDATA(31 downto 0);
  S09_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s09_couplers_RRESP(1 downto 0);
  S09_AXI_rvalid <= microblaze_0_axi_periph_to_s09_couplers_RVALID;
  S09_AXI_wready <= microblaze_0_axi_periph_to_s09_couplers_WREADY;
  S10_ACLK_1 <= S10_ACLK;
  S10_ARESETN_1(0) <= S10_ARESETN(0);
  S10_AXI_arready <= microblaze_0_axi_periph_to_s10_couplers_ARREADY;
  S10_AXI_awready <= microblaze_0_axi_periph_to_s10_couplers_AWREADY;
  S10_AXI_bid(0) <= microblaze_0_axi_periph_to_s10_couplers_BID(0);
  S10_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s10_couplers_BRESP(1 downto 0);
  S10_AXI_bvalid <= microblaze_0_axi_periph_to_s10_couplers_BVALID;
  S10_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s10_couplers_RDATA(31 downto 0);
  S10_AXI_rid(0) <= microblaze_0_axi_periph_to_s10_couplers_RID(0);
  S10_AXI_rlast <= microblaze_0_axi_periph_to_s10_couplers_RLAST;
  S10_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s10_couplers_RRESP(1 downto 0);
  S10_AXI_rvalid <= microblaze_0_axi_periph_to_s10_couplers_RVALID;
  S10_AXI_wready <= microblaze_0_axi_periph_to_s10_couplers_WREADY;
  S11_ACLK_1 <= S11_ACLK;
  S11_ARESETN_1(0) <= S11_ARESETN(0);
  S11_AXI_arready <= microblaze_0_axi_periph_to_s11_couplers_ARREADY;
  S11_AXI_awready <= microblaze_0_axi_periph_to_s11_couplers_AWREADY;
  S11_AXI_bid(0) <= microblaze_0_axi_periph_to_s11_couplers_BID(0);
  S11_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s11_couplers_BRESP(1 downto 0);
  S11_AXI_bvalid <= microblaze_0_axi_periph_to_s11_couplers_BVALID;
  S11_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s11_couplers_RDATA(31 downto 0);
  S11_AXI_rid(0) <= microblaze_0_axi_periph_to_s11_couplers_RID(0);
  S11_AXI_rlast <= microblaze_0_axi_periph_to_s11_couplers_RLAST;
  S11_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s11_couplers_RRESP(1 downto 0);
  S11_AXI_rvalid <= microblaze_0_axi_periph_to_s11_couplers_RVALID;
  S11_AXI_wready <= microblaze_0_axi_periph_to_s11_couplers_WREADY;
  m00_couplers_to_microblaze_0_axi_periph_ARREADY <= M00_AXI_arready;
  m00_couplers_to_microblaze_0_axi_periph_AWREADY <= M00_AXI_awready;
  m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_microblaze_0_axi_periph_WREADY <= M00_AXI_wready;
  m01_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_microblaze_0_axi_periph_BID(3 downto 0) <= M01_AXI_bid(3 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RID(3 downto 0) <= M01_AXI_rid(3 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RLAST(0) <= M01_AXI_rlast(0);
  m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_microblaze_0_axi_periph_ARREADY <= M02_AXI_arready;
  m02_couplers_to_microblaze_0_axi_periph_AWREADY <= M02_AXI_awready;
  m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_microblaze_0_axi_periph_WREADY <= M02_AXI_wready;
  m03_couplers_to_microblaze_0_axi_periph_ARREADY <= M03_AXI_arready;
  m03_couplers_to_microblaze_0_axi_periph_AWREADY <= M03_AXI_awready;
  m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_microblaze_0_axi_periph_WREADY <= M03_AXI_wready;
  m04_couplers_to_microblaze_0_axi_periph_ARREADY <= M04_AXI_arready;
  m04_couplers_to_microblaze_0_axi_periph_AWREADY <= M04_AXI_awready;
  m04_couplers_to_microblaze_0_axi_periph_BID(3 downto 0) <= M04_AXI_bid(3 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RID(3 downto 0) <= M04_AXI_rid(3 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RLAST <= M04_AXI_rlast;
  m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_microblaze_0_axi_periph_WREADY <= M04_AXI_wready;
  m05_couplers_to_microblaze_0_axi_periph_ARREADY <= M05_AXI_arready;
  m05_couplers_to_microblaze_0_axi_periph_AWREADY <= M05_AXI_awready;
  m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_microblaze_0_axi_periph_WREADY <= M05_AXI_wready;
  m06_couplers_to_microblaze_0_axi_periph_ARREADY <= M06_AXI_arready;
  m06_couplers_to_microblaze_0_axi_periph_AWREADY <= M06_AXI_awready;
  m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_microblaze_0_axi_periph_WREADY <= M06_AXI_wready;
  m07_couplers_to_microblaze_0_axi_periph_ARREADY <= M07_AXI_arready;
  m07_couplers_to_microblaze_0_axi_periph_AWREADY <= M07_AXI_awready;
  m07_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_BVALID <= M07_AXI_bvalid;
  m07_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_RVALID <= M07_AXI_rvalid;
  m07_couplers_to_microblaze_0_axi_periph_WREADY <= M07_AXI_wready;
  microblaze_0_axi_periph_ACLK_net <= ACLK;
  microblaze_0_axi_periph_ARESETN_net(0) <= ARESETN(0);
  microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  microblaze_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  microblaze_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  microblaze_0_axi_periph_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_ARID(0) <= S01_AXI_arid(0);
  microblaze_0_axi_periph_to_s01_couplers_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_ARLOCK <= S01_AXI_arlock;
  microblaze_0_axi_periph_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_ARQOS(3 downto 0) <= S01_AXI_arqos(3 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  microblaze_0_axi_periph_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_AWID(0) <= S01_AXI_awid(0);
  microblaze_0_axi_periph_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_AWLOCK <= S01_AXI_awlock;
  microblaze_0_axi_periph_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_AWQOS(3 downto 0) <= S01_AXI_awqos(3 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  microblaze_0_axi_periph_to_s01_couplers_BREADY <= S01_AXI_bready;
  microblaze_0_axi_periph_to_s01_couplers_RREADY <= S01_AXI_rready;
  microblaze_0_axi_periph_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_WLAST <= S01_AXI_wlast;
  microblaze_0_axi_periph_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s01_couplers_WVALID <= S01_AXI_wvalid;
  microblaze_0_axi_periph_to_s02_couplers_ARADDR(31 downto 0) <= S02_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_ARBURST(1 downto 0) <= S02_AXI_arburst(1 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_ARCACHE(3 downto 0) <= S02_AXI_arcache(3 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_ARID(0) <= S02_AXI_arid(0);
  microblaze_0_axi_periph_to_s02_couplers_ARLEN(7 downto 0) <= S02_AXI_arlen(7 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_ARLOCK <= S02_AXI_arlock;
  microblaze_0_axi_periph_to_s02_couplers_ARPROT(2 downto 0) <= S02_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_ARQOS(3 downto 0) <= S02_AXI_arqos(3 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_ARSIZE(2 downto 0) <= S02_AXI_arsize(2 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_ARVALID <= S02_AXI_arvalid;
  microblaze_0_axi_periph_to_s02_couplers_AWADDR(31 downto 0) <= S02_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_AWBURST(1 downto 0) <= S02_AXI_awburst(1 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_AWCACHE(3 downto 0) <= S02_AXI_awcache(3 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_AWID(0) <= S02_AXI_awid(0);
  microblaze_0_axi_periph_to_s02_couplers_AWLEN(7 downto 0) <= S02_AXI_awlen(7 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_AWLOCK <= S02_AXI_awlock;
  microblaze_0_axi_periph_to_s02_couplers_AWPROT(2 downto 0) <= S02_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_AWQOS(3 downto 0) <= S02_AXI_awqos(3 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_AWSIZE(2 downto 0) <= S02_AXI_awsize(2 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_AWVALID <= S02_AXI_awvalid;
  microblaze_0_axi_periph_to_s02_couplers_BREADY <= S02_AXI_bready;
  microblaze_0_axi_periph_to_s02_couplers_RREADY <= S02_AXI_rready;
  microblaze_0_axi_periph_to_s02_couplers_WDATA(31 downto 0) <= S02_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_WLAST <= S02_AXI_wlast;
  microblaze_0_axi_periph_to_s02_couplers_WSTRB(3 downto 0) <= S02_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s02_couplers_WVALID <= S02_AXI_wvalid;
  microblaze_0_axi_periph_to_s03_couplers_ARADDR(31 downto 0) <= S03_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s03_couplers_ARPROT(2 downto 0) <= S03_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s03_couplers_ARVALID <= S03_AXI_arvalid;
  microblaze_0_axi_periph_to_s03_couplers_AWADDR(31 downto 0) <= S03_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s03_couplers_AWPROT(2 downto 0) <= S03_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s03_couplers_AWVALID <= S03_AXI_awvalid;
  microblaze_0_axi_periph_to_s03_couplers_BREADY <= S03_AXI_bready;
  microblaze_0_axi_periph_to_s03_couplers_RREADY <= S03_AXI_rready;
  microblaze_0_axi_periph_to_s03_couplers_WDATA(31 downto 0) <= S03_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s03_couplers_WSTRB(3 downto 0) <= S03_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s03_couplers_WVALID <= S03_AXI_wvalid;
  microblaze_0_axi_periph_to_s04_couplers_ARADDR(31 downto 0) <= S04_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_ARBURST(1 downto 0) <= S04_AXI_arburst(1 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_ARCACHE(3 downto 0) <= S04_AXI_arcache(3 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_ARID(0) <= S04_AXI_arid(0);
  microblaze_0_axi_periph_to_s04_couplers_ARLEN(7 downto 0) <= S04_AXI_arlen(7 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_ARLOCK <= S04_AXI_arlock;
  microblaze_0_axi_periph_to_s04_couplers_ARPROT(2 downto 0) <= S04_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_ARQOS(3 downto 0) <= S04_AXI_arqos(3 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_ARSIZE(2 downto 0) <= S04_AXI_arsize(2 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_ARVALID <= S04_AXI_arvalid;
  microblaze_0_axi_periph_to_s04_couplers_AWADDR(31 downto 0) <= S04_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_AWBURST(1 downto 0) <= S04_AXI_awburst(1 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_AWCACHE(3 downto 0) <= S04_AXI_awcache(3 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_AWID(0) <= S04_AXI_awid(0);
  microblaze_0_axi_periph_to_s04_couplers_AWLEN(7 downto 0) <= S04_AXI_awlen(7 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_AWLOCK <= S04_AXI_awlock;
  microblaze_0_axi_periph_to_s04_couplers_AWPROT(2 downto 0) <= S04_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_AWQOS(3 downto 0) <= S04_AXI_awqos(3 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_AWSIZE(2 downto 0) <= S04_AXI_awsize(2 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_AWVALID <= S04_AXI_awvalid;
  microblaze_0_axi_periph_to_s04_couplers_BREADY <= S04_AXI_bready;
  microblaze_0_axi_periph_to_s04_couplers_RREADY <= S04_AXI_rready;
  microblaze_0_axi_periph_to_s04_couplers_WDATA(31 downto 0) <= S04_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_WLAST <= S04_AXI_wlast;
  microblaze_0_axi_periph_to_s04_couplers_WSTRB(3 downto 0) <= S04_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s04_couplers_WVALID <= S04_AXI_wvalid;
  microblaze_0_axi_periph_to_s05_couplers_ARADDR(31 downto 0) <= S05_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_ARBURST(1 downto 0) <= S05_AXI_arburst(1 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_ARCACHE(3 downto 0) <= S05_AXI_arcache(3 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_ARID(0) <= S05_AXI_arid(0);
  microblaze_0_axi_periph_to_s05_couplers_ARLEN(7 downto 0) <= S05_AXI_arlen(7 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_ARLOCK <= S05_AXI_arlock;
  microblaze_0_axi_periph_to_s05_couplers_ARPROT(2 downto 0) <= S05_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_ARQOS(3 downto 0) <= S05_AXI_arqos(3 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_ARSIZE(2 downto 0) <= S05_AXI_arsize(2 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_ARVALID <= S05_AXI_arvalid;
  microblaze_0_axi_periph_to_s05_couplers_AWADDR(31 downto 0) <= S05_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_AWBURST(1 downto 0) <= S05_AXI_awburst(1 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_AWCACHE(3 downto 0) <= S05_AXI_awcache(3 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_AWID(0) <= S05_AXI_awid(0);
  microblaze_0_axi_periph_to_s05_couplers_AWLEN(7 downto 0) <= S05_AXI_awlen(7 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_AWLOCK <= S05_AXI_awlock;
  microblaze_0_axi_periph_to_s05_couplers_AWPROT(2 downto 0) <= S05_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_AWQOS(3 downto 0) <= S05_AXI_awqos(3 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_AWSIZE(2 downto 0) <= S05_AXI_awsize(2 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_AWVALID <= S05_AXI_awvalid;
  microblaze_0_axi_periph_to_s05_couplers_BREADY <= S05_AXI_bready;
  microblaze_0_axi_periph_to_s05_couplers_RREADY <= S05_AXI_rready;
  microblaze_0_axi_periph_to_s05_couplers_WDATA(31 downto 0) <= S05_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_WLAST <= S05_AXI_wlast;
  microblaze_0_axi_periph_to_s05_couplers_WSTRB(3 downto 0) <= S05_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s05_couplers_WVALID <= S05_AXI_wvalid;
  microblaze_0_axi_periph_to_s06_couplers_ARADDR(31 downto 0) <= S06_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s06_couplers_ARPROT(2 downto 0) <= S06_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s06_couplers_ARVALID <= S06_AXI_arvalid;
  microblaze_0_axi_periph_to_s06_couplers_AWADDR(31 downto 0) <= S06_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s06_couplers_AWPROT(2 downto 0) <= S06_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s06_couplers_AWVALID <= S06_AXI_awvalid;
  microblaze_0_axi_periph_to_s06_couplers_BREADY <= S06_AXI_bready;
  microblaze_0_axi_periph_to_s06_couplers_RREADY <= S06_AXI_rready;
  microblaze_0_axi_periph_to_s06_couplers_WDATA(31 downto 0) <= S06_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s06_couplers_WSTRB(3 downto 0) <= S06_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s06_couplers_WVALID <= S06_AXI_wvalid;
  microblaze_0_axi_periph_to_s07_couplers_ARADDR(31 downto 0) <= S07_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_ARBURST(1 downto 0) <= S07_AXI_arburst(1 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_ARCACHE(3 downto 0) <= S07_AXI_arcache(3 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_ARID(0) <= S07_AXI_arid(0);
  microblaze_0_axi_periph_to_s07_couplers_ARLEN(7 downto 0) <= S07_AXI_arlen(7 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_ARLOCK <= S07_AXI_arlock;
  microblaze_0_axi_periph_to_s07_couplers_ARPROT(2 downto 0) <= S07_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_ARQOS(3 downto 0) <= S07_AXI_arqos(3 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_ARSIZE(2 downto 0) <= S07_AXI_arsize(2 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_ARVALID <= S07_AXI_arvalid;
  microblaze_0_axi_periph_to_s07_couplers_AWADDR(31 downto 0) <= S07_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_AWBURST(1 downto 0) <= S07_AXI_awburst(1 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_AWCACHE(3 downto 0) <= S07_AXI_awcache(3 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_AWID(0) <= S07_AXI_awid(0);
  microblaze_0_axi_periph_to_s07_couplers_AWLEN(7 downto 0) <= S07_AXI_awlen(7 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_AWLOCK <= S07_AXI_awlock;
  microblaze_0_axi_periph_to_s07_couplers_AWPROT(2 downto 0) <= S07_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_AWQOS(3 downto 0) <= S07_AXI_awqos(3 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_AWSIZE(2 downto 0) <= S07_AXI_awsize(2 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_AWVALID <= S07_AXI_awvalid;
  microblaze_0_axi_periph_to_s07_couplers_BREADY <= S07_AXI_bready;
  microblaze_0_axi_periph_to_s07_couplers_RREADY <= S07_AXI_rready;
  microblaze_0_axi_periph_to_s07_couplers_WDATA(31 downto 0) <= S07_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_WLAST <= S07_AXI_wlast;
  microblaze_0_axi_periph_to_s07_couplers_WSTRB(3 downto 0) <= S07_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s07_couplers_WVALID <= S07_AXI_wvalid;
  microblaze_0_axi_periph_to_s08_couplers_ARADDR(31 downto 0) <= S08_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_ARBURST(1 downto 0) <= S08_AXI_arburst(1 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_ARCACHE(3 downto 0) <= S08_AXI_arcache(3 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_ARID(0) <= S08_AXI_arid(0);
  microblaze_0_axi_periph_to_s08_couplers_ARLEN(7 downto 0) <= S08_AXI_arlen(7 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_ARLOCK <= S08_AXI_arlock;
  microblaze_0_axi_periph_to_s08_couplers_ARPROT(2 downto 0) <= S08_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_ARQOS(3 downto 0) <= S08_AXI_arqos(3 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_ARSIZE(2 downto 0) <= S08_AXI_arsize(2 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_ARVALID <= S08_AXI_arvalid;
  microblaze_0_axi_periph_to_s08_couplers_AWADDR(31 downto 0) <= S08_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_AWBURST(1 downto 0) <= S08_AXI_awburst(1 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_AWCACHE(3 downto 0) <= S08_AXI_awcache(3 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_AWID(0) <= S08_AXI_awid(0);
  microblaze_0_axi_periph_to_s08_couplers_AWLEN(7 downto 0) <= S08_AXI_awlen(7 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_AWLOCK <= S08_AXI_awlock;
  microblaze_0_axi_periph_to_s08_couplers_AWPROT(2 downto 0) <= S08_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_AWQOS(3 downto 0) <= S08_AXI_awqos(3 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_AWSIZE(2 downto 0) <= S08_AXI_awsize(2 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_AWVALID <= S08_AXI_awvalid;
  microblaze_0_axi_periph_to_s08_couplers_BREADY <= S08_AXI_bready;
  microblaze_0_axi_periph_to_s08_couplers_RREADY <= S08_AXI_rready;
  microblaze_0_axi_periph_to_s08_couplers_WDATA(31 downto 0) <= S08_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_WLAST <= S08_AXI_wlast;
  microblaze_0_axi_periph_to_s08_couplers_WSTRB(3 downto 0) <= S08_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s08_couplers_WVALID <= S08_AXI_wvalid;
  microblaze_0_axi_periph_to_s09_couplers_ARADDR(31 downto 0) <= S09_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s09_couplers_ARPROT(2 downto 0) <= S09_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s09_couplers_ARVALID <= S09_AXI_arvalid;
  microblaze_0_axi_periph_to_s09_couplers_AWADDR(31 downto 0) <= S09_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s09_couplers_AWPROT(2 downto 0) <= S09_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s09_couplers_AWVALID <= S09_AXI_awvalid;
  microblaze_0_axi_periph_to_s09_couplers_BREADY <= S09_AXI_bready;
  microblaze_0_axi_periph_to_s09_couplers_RREADY <= S09_AXI_rready;
  microblaze_0_axi_periph_to_s09_couplers_WDATA(31 downto 0) <= S09_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s09_couplers_WSTRB(3 downto 0) <= S09_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s09_couplers_WVALID <= S09_AXI_wvalid;
  microblaze_0_axi_periph_to_s10_couplers_ARADDR(31 downto 0) <= S10_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_ARBURST(1 downto 0) <= S10_AXI_arburst(1 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_ARCACHE(3 downto 0) <= S10_AXI_arcache(3 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_ARID(0) <= S10_AXI_arid(0);
  microblaze_0_axi_periph_to_s10_couplers_ARLEN(7 downto 0) <= S10_AXI_arlen(7 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_ARLOCK <= S10_AXI_arlock;
  microblaze_0_axi_periph_to_s10_couplers_ARPROT(2 downto 0) <= S10_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_ARQOS(3 downto 0) <= S10_AXI_arqos(3 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_ARSIZE(2 downto 0) <= S10_AXI_arsize(2 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_ARVALID <= S10_AXI_arvalid;
  microblaze_0_axi_periph_to_s10_couplers_AWADDR(31 downto 0) <= S10_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_AWBURST(1 downto 0) <= S10_AXI_awburst(1 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_AWCACHE(3 downto 0) <= S10_AXI_awcache(3 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_AWID(0) <= S10_AXI_awid(0);
  microblaze_0_axi_periph_to_s10_couplers_AWLEN(7 downto 0) <= S10_AXI_awlen(7 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_AWLOCK <= S10_AXI_awlock;
  microblaze_0_axi_periph_to_s10_couplers_AWPROT(2 downto 0) <= S10_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_AWQOS(3 downto 0) <= S10_AXI_awqos(3 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_AWSIZE(2 downto 0) <= S10_AXI_awsize(2 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_AWVALID <= S10_AXI_awvalid;
  microblaze_0_axi_periph_to_s10_couplers_BREADY <= S10_AXI_bready;
  microblaze_0_axi_periph_to_s10_couplers_RREADY <= S10_AXI_rready;
  microblaze_0_axi_periph_to_s10_couplers_WDATA(31 downto 0) <= S10_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_WLAST <= S10_AXI_wlast;
  microblaze_0_axi_periph_to_s10_couplers_WSTRB(3 downto 0) <= S10_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s10_couplers_WVALID <= S10_AXI_wvalid;
  microblaze_0_axi_periph_to_s11_couplers_ARADDR(31 downto 0) <= S11_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_ARBURST(1 downto 0) <= S11_AXI_arburst(1 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_ARCACHE(3 downto 0) <= S11_AXI_arcache(3 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_ARID(0) <= S11_AXI_arid(0);
  microblaze_0_axi_periph_to_s11_couplers_ARLEN(7 downto 0) <= S11_AXI_arlen(7 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_ARLOCK <= S11_AXI_arlock;
  microblaze_0_axi_periph_to_s11_couplers_ARPROT(2 downto 0) <= S11_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_ARQOS(3 downto 0) <= S11_AXI_arqos(3 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_ARSIZE(2 downto 0) <= S11_AXI_arsize(2 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_ARVALID <= S11_AXI_arvalid;
  microblaze_0_axi_periph_to_s11_couplers_AWADDR(31 downto 0) <= S11_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_AWBURST(1 downto 0) <= S11_AXI_awburst(1 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_AWCACHE(3 downto 0) <= S11_AXI_awcache(3 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_AWID(0) <= S11_AXI_awid(0);
  microblaze_0_axi_periph_to_s11_couplers_AWLEN(7 downto 0) <= S11_AXI_awlen(7 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_AWLOCK <= S11_AXI_awlock;
  microblaze_0_axi_periph_to_s11_couplers_AWPROT(2 downto 0) <= S11_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_AWQOS(3 downto 0) <= S11_AXI_awqos(3 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_AWSIZE(2 downto 0) <= S11_AXI_awsize(2 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_AWVALID <= S11_AXI_awvalid;
  microblaze_0_axi_periph_to_s11_couplers_BREADY <= S11_AXI_bready;
  microblaze_0_axi_periph_to_s11_couplers_RREADY <= S11_AXI_rready;
  microblaze_0_axi_periph_to_s11_couplers_WDATA(31 downto 0) <= S11_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_WLAST <= S11_AXI_wlast;
  microblaze_0_axi_periph_to_s11_couplers_WSTRB(3 downto 0) <= S11_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s11_couplers_WVALID <= S11_AXI_wvalid;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
m00_couplers: entity work.m00_couplers_imp_2SZHJX
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN(0) => M00_ARESETN_1(0),
      M_AXI_araddr(8 downto 0) => m00_couplers_to_microblaze_0_axi_periph_ARADDR(8 downto 0),
      M_AXI_arready => m00_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m00_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(8 downto 0) => m00_couplers_to_microblaze_0_axi_periph_AWADDR(8 downto 0),
      M_AXI_awready => m00_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m00_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m00_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(3 downto 0) => xbar_to_m00_couplers_ARID(3 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(3 downto 0) => xbar_to_m00_couplers_AWID(3 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(3 downto 0) => xbar_to_m00_couplers_BID(3 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => xbar_to_m00_couplers_RID(3 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_UXJV17
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN(0) => M01_ARESETN_1(0),
      M_AXI_araddr(29 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARADDR(29 downto 0),
      M_AXI_arburst(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARCACHE(3 downto 0),
      M_AXI_arid(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARID(3 downto 0),
      M_AXI_arlen(7 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m01_couplers_to_microblaze_0_axi_periph_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARQOS(3 downto 0),
      M_AXI_arready(0) => m01_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arsize(2 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => m01_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(29 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWADDR(29 downto 0),
      M_AXI_awburst(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWCACHE(3 downto 0),
      M_AXI_awid(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWID(3 downto 0),
      M_AXI_awlen(7 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m01_couplers_to_microblaze_0_axi_periph_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWQOS(3 downto 0),
      M_AXI_awready(0) => m01_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awsize(2 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => m01_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bid(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_BID(3 downto 0),
      M_AXI_bready(0) => m01_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rid(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RID(3 downto 0),
      M_AXI_rlast(0) => m01_couplers_to_microblaze_0_axi_periph_RLAST(0),
      M_AXI_rready(0) => m01_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wlast(0) => m01_couplers_to_microblaze_0_axi_periph_WLAST(0),
      M_AXI_wready(0) => m01_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(29 downto 0) => xbar_to_m01_couplers_ARADDR(61 downto 32),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arid(3 downto 0) => xbar_to_m01_couplers_ARID(7 downto 4),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock(0) => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arqos(3 downto 0) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(29 downto 0) => xbar_to_m01_couplers_AWADDR(61 downto 32),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awid(3 downto 0) => xbar_to_m01_couplers_AWID(7 downto 4),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock(0) => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awqos(3 downto 0) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bid(3 downto 0) => xbar_to_m01_couplers_BID(3 downto 0),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => xbar_to_m01_couplers_RID(3 downto 0),
      S_AXI_rlast(0) => xbar_to_m01_couplers_RLAST(0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wlast(0) => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1HI1GR5
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN(0) => M02_ARESETN_1(0),
      M_AXI_araddr(4 downto 0) => m02_couplers_to_microblaze_0_axi_periph_ARADDR(4 downto 0),
      M_AXI_arready => m02_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m02_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(4 downto 0) => m02_couplers_to_microblaze_0_axi_periph_AWADDR(4 downto 0),
      M_AXI_awready => m02_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m02_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m02_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arburst(1 downto 0) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      S_AXI_arcache(3 downto 0) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      S_AXI_arid(3 downto 0) => xbar_to_m02_couplers_ARID(11 downto 8),
      S_AXI_arlen(7 downto 0) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      S_AXI_arlock(0) => xbar_to_m02_couplers_ARLOCK(2),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arqos(3 downto 0) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      S_AXI_arsize(2 downto 0) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awburst(1 downto 0) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      S_AXI_awcache(3 downto 0) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      S_AXI_awid(3 downto 0) => xbar_to_m02_couplers_AWID(11 downto 8),
      S_AXI_awlen(7 downto 0) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      S_AXI_awlock(0) => xbar_to_m02_couplers_AWLOCK(2),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awqos(3 downto 0) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      S_AXI_awsize(2 downto 0) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bid(3 downto 0) => xbar_to_m02_couplers_BID(3 downto 0),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => xbar_to_m02_couplers_RID(3 downto 0),
      S_AXI_rlast => xbar_to_m02_couplers_RLAST,
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wlast => xbar_to_m02_couplers_WLAST(2),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_19Z7TXZ
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN(0) => M03_ARESETN_1(0),
      M_AXI_araddr(3 downto 0) => m03_couplers_to_microblaze_0_axi_periph_ARADDR(3 downto 0),
      M_AXI_arready => m03_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m03_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(3 downto 0) => m03_couplers_to_microblaze_0_axi_periph_AWADDR(3 downto 0),
      M_AXI_awready => m03_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m03_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m03_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arburst(1 downto 0) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      S_AXI_arcache(3 downto 0) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      S_AXI_arid(3 downto 0) => xbar_to_m03_couplers_ARID(15 downto 12),
      S_AXI_arlen(7 downto 0) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      S_AXI_arlock(0) => xbar_to_m03_couplers_ARLOCK(3),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arqos(3 downto 0) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      S_AXI_arsize(2 downto 0) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awburst(1 downto 0) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      S_AXI_awcache(3 downto 0) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      S_AXI_awid(3 downto 0) => xbar_to_m03_couplers_AWID(15 downto 12),
      S_AXI_awlen(7 downto 0) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      S_AXI_awlock(0) => xbar_to_m03_couplers_AWLOCK(3),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awqos(3 downto 0) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      S_AXI_awsize(2 downto 0) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bid(3 downto 0) => xbar_to_m03_couplers_BID(3 downto 0),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => xbar_to_m03_couplers_RID(3 downto 0),
      S_AXI_rlast => xbar_to_m03_couplers_RLAST,
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wlast => xbar_to_m03_couplers_WLAST(3),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_J4O1C4
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN(0) => M04_ARESETN_1(0),
      M_AXI_araddr(12 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARADDR(12 downto 0),
      M_AXI_arburst(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARCACHE(3 downto 0),
      M_AXI_arid(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARID(3 downto 0),
      M_AXI_arlen(7 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARLEN(7 downto 0),
      M_AXI_arlock => m04_couplers_to_microblaze_0_axi_periph_ARLOCK,
      M_AXI_arprot(2 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m04_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arsize(2 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARSIZE(2 downto 0),
      M_AXI_arvalid => m04_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(12 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWADDR(12 downto 0),
      M_AXI_awburst(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWCACHE(3 downto 0),
      M_AXI_awid(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWID(3 downto 0),
      M_AXI_awlen(7 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWLEN(7 downto 0),
      M_AXI_awlock => m04_couplers_to_microblaze_0_axi_periph_AWLOCK,
      M_AXI_awprot(2 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m04_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awsize(2 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWSIZE(2 downto 0),
      M_AXI_awvalid => m04_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bid(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_BID(3 downto 0),
      M_AXI_bready => m04_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rid(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RID(3 downto 0),
      M_AXI_rlast => m04_couplers_to_microblaze_0_axi_periph_RLAST,
      M_AXI_rready => m04_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wlast => m04_couplers_to_microblaze_0_axi_periph_WLAST,
      M_AXI_wready => m04_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(12 downto 0) => xbar_to_m04_couplers_ARADDR(140 downto 128),
      S_AXI_arburst(1 downto 0) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      S_AXI_arcache(3 downto 0) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      S_AXI_arid(3 downto 0) => xbar_to_m04_couplers_ARID(19 downto 16),
      S_AXI_arlen(7 downto 0) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      S_AXI_arlock => xbar_to_m04_couplers_ARLOCK(4),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(12 downto 0) => xbar_to_m04_couplers_AWADDR(140 downto 128),
      S_AXI_awburst(1 downto 0) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      S_AXI_awcache(3 downto 0) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      S_AXI_awid(3 downto 0) => xbar_to_m04_couplers_AWID(19 downto 16),
      S_AXI_awlen(7 downto 0) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      S_AXI_awlock => xbar_to_m04_couplers_AWLOCK(4),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bid(3 downto 0) => xbar_to_m04_couplers_BID(3 downto 0),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => xbar_to_m04_couplers_RID(3 downto 0),
      S_AXI_rlast => xbar_to_m04_couplers_RLAST,
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wlast => xbar_to_m04_couplers_WLAST(4),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_9BINPE
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN(0) => M05_ARESETN_1(0),
      M_AXI_araddr(8 downto 0) => m05_couplers_to_microblaze_0_axi_periph_ARADDR(8 downto 0),
      M_AXI_arready => m05_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m05_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(8 downto 0) => m05_couplers_to_microblaze_0_axi_periph_AWADDR(8 downto 0),
      M_AXI_awready => m05_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m05_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m05_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arburst(1 downto 0) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      S_AXI_arcache(3 downto 0) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      S_AXI_arid(3 downto 0) => xbar_to_m05_couplers_ARID(23 downto 20),
      S_AXI_arlen(7 downto 0) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      S_AXI_arlock(0) => xbar_to_m05_couplers_ARLOCK(5),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arqos(3 downto 0) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      S_AXI_arsize(2 downto 0) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awburst(1 downto 0) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      S_AXI_awcache(3 downto 0) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      S_AXI_awid(3 downto 0) => xbar_to_m05_couplers_AWID(23 downto 20),
      S_AXI_awlen(7 downto 0) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      S_AXI_awlock(0) => xbar_to_m05_couplers_AWLOCK(5),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awqos(3 downto 0) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      S_AXI_awsize(2 downto 0) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bid(3 downto 0) => xbar_to_m05_couplers_BID(3 downto 0),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => xbar_to_m05_couplers_RID(3 downto 0),
      S_AXI_rlast => xbar_to_m05_couplers_RLAST,
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wlast => xbar_to_m05_couplers_WLAST(5),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_13GVUX4
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN(0) => M06_ARESETN_1(0),
      M_AXI_araddr(8 downto 0) => m06_couplers_to_microblaze_0_axi_periph_ARADDR(8 downto 0),
      M_AXI_arready => m06_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m06_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(8 downto 0) => m06_couplers_to_microblaze_0_axi_periph_AWADDR(8 downto 0),
      M_AXI_awready => m06_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m06_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m06_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arburst(1 downto 0) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      S_AXI_arcache(3 downto 0) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      S_AXI_arid(3 downto 0) => xbar_to_m06_couplers_ARID(27 downto 24),
      S_AXI_arlen(7 downto 0) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      S_AXI_arlock(0) => xbar_to_m06_couplers_ARLOCK(6),
      S_AXI_arprot(2 downto 0) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      S_AXI_arqos(3 downto 0) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      S_AXI_arsize(2 downto 0) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awburst(1 downto 0) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      S_AXI_awcache(3 downto 0) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      S_AXI_awid(3 downto 0) => xbar_to_m06_couplers_AWID(27 downto 24),
      S_AXI_awlen(7 downto 0) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      S_AXI_awlock(0) => xbar_to_m06_couplers_AWLOCK(6),
      S_AXI_awprot(2 downto 0) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      S_AXI_awqos(3 downto 0) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      S_AXI_awsize(2 downto 0) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bid(3 downto 0) => xbar_to_m06_couplers_BID(3 downto 0),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => xbar_to_m06_couplers_RID(3 downto 0),
      S_AXI_rlast => xbar_to_m06_couplers_RLAST,
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wlast => xbar_to_m06_couplers_WLAST(6),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_1TASWEM
     port map (
      M_ACLK => M07_ACLK_1,
      M_ARESETN(0) => M07_ARESETN_1(0),
      M_AXI_araddr(8 downto 0) => m07_couplers_to_microblaze_0_axi_periph_ARADDR(8 downto 0),
      M_AXI_arready => m07_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m07_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(8 downto 0) => m07_couplers_to_microblaze_0_axi_periph_AWADDR(8 downto 0),
      M_AXI_awready => m07_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m07_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m07_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m07_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m07_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m07_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m07_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m07_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m07_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m07_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arburst(1 downto 0) => xbar_to_m07_couplers_ARBURST(15 downto 14),
      S_AXI_arcache(3 downto 0) => xbar_to_m07_couplers_ARCACHE(31 downto 28),
      S_AXI_arid(3 downto 0) => xbar_to_m07_couplers_ARID(31 downto 28),
      S_AXI_arlen(7 downto 0) => xbar_to_m07_couplers_ARLEN(63 downto 56),
      S_AXI_arlock(0) => xbar_to_m07_couplers_ARLOCK(7),
      S_AXI_arprot(2 downto 0) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      S_AXI_arqos(3 downto 0) => xbar_to_m07_couplers_ARQOS(31 downto 28),
      S_AXI_arready => xbar_to_m07_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m07_couplers_ARREGION(31 downto 28),
      S_AXI_arsize(2 downto 0) => xbar_to_m07_couplers_ARSIZE(23 downto 21),
      S_AXI_arvalid => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awburst(1 downto 0) => xbar_to_m07_couplers_AWBURST(15 downto 14),
      S_AXI_awcache(3 downto 0) => xbar_to_m07_couplers_AWCACHE(31 downto 28),
      S_AXI_awid(3 downto 0) => xbar_to_m07_couplers_AWID(31 downto 28),
      S_AXI_awlen(7 downto 0) => xbar_to_m07_couplers_AWLEN(63 downto 56),
      S_AXI_awlock(0) => xbar_to_m07_couplers_AWLOCK(7),
      S_AXI_awprot(2 downto 0) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      S_AXI_awqos(3 downto 0) => xbar_to_m07_couplers_AWQOS(31 downto 28),
      S_AXI_awready => xbar_to_m07_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m07_couplers_AWREGION(31 downto 28),
      S_AXI_awsize(2 downto 0) => xbar_to_m07_couplers_AWSIZE(23 downto 21),
      S_AXI_awvalid => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bid(3 downto 0) => xbar_to_m07_couplers_BID(3 downto 0),
      S_AXI_bready => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m07_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => xbar_to_m07_couplers_RID(3 downto 0),
      S_AXI_rlast => xbar_to_m07_couplers_RLAST,
      S_AXI_rready => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m07_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wlast => xbar_to_m07_couplers_WLAST(7),
      S_AXI_wready => xbar_to_m07_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid => xbar_to_m07_couplers_WVALID(7)
    );
s00_couplers: entity work.s00_couplers_imp_SYAVRW
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN(0) => S00_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arvalid => microblaze_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awvalid => microblaze_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bready => microblaze_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready => microblaze_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready => microblaze_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_3OA1I2
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s01_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s01_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s01_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s01_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bid(0) => s01_couplers_to_xbar_BID(4),
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rid(0) => s01_couplers_to_xbar_RID(4),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s01_couplers_to_xbar_WLAST,
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => S01_ACLK_1,
      S_ARESETN(0) => S01_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => microblaze_0_axi_periph_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => microblaze_0_axi_periph_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => microblaze_0_axi_periph_to_s01_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => microblaze_0_axi_periph_to_s01_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => microblaze_0_axi_periph_to_s01_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => microblaze_0_axi_periph_to_s01_couplers_ARQOS(3 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s01_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => microblaze_0_axi_periph_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => microblaze_0_axi_periph_to_s01_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => microblaze_0_axi_periph_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => microblaze_0_axi_periph_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => microblaze_0_axi_periph_to_s01_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => microblaze_0_axi_periph_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => microblaze_0_axi_periph_to_s01_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => microblaze_0_axi_periph_to_s01_couplers_AWQOS(3 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s01_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => microblaze_0_axi_periph_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => microblaze_0_axi_periph_to_s01_couplers_AWVALID,
      S_AXI_bid(0) => microblaze_0_axi_periph_to_s01_couplers_BID(0),
      S_AXI_bready => microblaze_0_axi_periph_to_s01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => microblaze_0_axi_periph_to_s01_couplers_RID(0),
      S_AXI_rlast => microblaze_0_axi_periph_to_s01_couplers_RLAST,
      S_AXI_rready => microblaze_0_axi_periph_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wlast => microblaze_0_axi_periph_to_s01_couplers_WLAST,
      S_AXI_wready => microblaze_0_axi_periph_to_s01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s01_couplers_WVALID
    );
s02_couplers: entity work.s02_couplers_imp_1942W9C
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s02_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s02_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s02_couplers_to_xbar_ARREADY(2),
      M_AXI_arsize(2 downto 0) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s02_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s02_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s02_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s02_couplers_to_xbar_AWREADY(2),
      M_AXI_awsize(2 downto 0) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s02_couplers_to_xbar_AWVALID,
      M_AXI_bid(0) => s02_couplers_to_xbar_BID(8),
      M_AXI_bready => s02_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      M_AXI_bvalid => s02_couplers_to_xbar_BVALID(2),
      M_AXI_rdata(31 downto 0) => s02_couplers_to_xbar_RDATA(95 downto 64),
      M_AXI_rid(0) => s02_couplers_to_xbar_RID(8),
      M_AXI_rlast => s02_couplers_to_xbar_RLAST(2),
      M_AXI_rready => s02_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      M_AXI_rvalid => s02_couplers_to_xbar_RVALID(2),
      M_AXI_wdata(31 downto 0) => s02_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s02_couplers_to_xbar_WLAST,
      M_AXI_wready => s02_couplers_to_xbar_WREADY(2),
      M_AXI_wstrb(3 downto 0) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s02_couplers_to_xbar_WVALID,
      S_ACLK => S02_ACLK_1,
      S_ARESETN(0) => S02_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s02_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => microblaze_0_axi_periph_to_s02_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => microblaze_0_axi_periph_to_s02_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => microblaze_0_axi_periph_to_s02_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => microblaze_0_axi_periph_to_s02_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => microblaze_0_axi_periph_to_s02_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s02_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => microblaze_0_axi_periph_to_s02_couplers_ARQOS(3 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s02_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => microblaze_0_axi_periph_to_s02_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => microblaze_0_axi_periph_to_s02_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s02_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => microblaze_0_axi_periph_to_s02_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => microblaze_0_axi_periph_to_s02_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => microblaze_0_axi_periph_to_s02_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => microblaze_0_axi_periph_to_s02_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => microblaze_0_axi_periph_to_s02_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s02_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => microblaze_0_axi_periph_to_s02_couplers_AWQOS(3 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s02_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => microblaze_0_axi_periph_to_s02_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => microblaze_0_axi_periph_to_s02_couplers_AWVALID,
      S_AXI_bid(0) => microblaze_0_axi_periph_to_s02_couplers_BID(0),
      S_AXI_bready => microblaze_0_axi_periph_to_s02_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s02_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => microblaze_0_axi_periph_to_s02_couplers_RID(0),
      S_AXI_rlast => microblaze_0_axi_periph_to_s02_couplers_RLAST,
      S_AXI_rready => microblaze_0_axi_periph_to_s02_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s02_couplers_WDATA(31 downto 0),
      S_AXI_wlast => microblaze_0_axi_periph_to_s02_couplers_WLAST,
      S_AXI_wready => microblaze_0_axi_periph_to_s02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s02_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s02_couplers_WVALID
    );
s03_couplers: entity work.s03_couplers_imp_1JH4TQU
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s03_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s03_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s03_couplers_to_xbar_ARREADY(3),
      M_AXI_arsize(2 downto 0) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s03_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s03_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s03_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s03_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s03_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s03_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s03_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s03_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s03_couplers_to_xbar_AWREADY(3),
      M_AXI_awsize(2 downto 0) => s03_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s03_couplers_to_xbar_AWVALID,
      M_AXI_bready => s03_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s03_couplers_to_xbar_BRESP(7 downto 6),
      M_AXI_bvalid => s03_couplers_to_xbar_BVALID(3),
      M_AXI_rdata(31 downto 0) => s03_couplers_to_xbar_RDATA(127 downto 96),
      M_AXI_rlast => s03_couplers_to_xbar_RLAST(3),
      M_AXI_rready => s03_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s03_couplers_to_xbar_RRESP(7 downto 6),
      M_AXI_rvalid => s03_couplers_to_xbar_RVALID(3),
      M_AXI_wdata(31 downto 0) => s03_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s03_couplers_to_xbar_WLAST,
      M_AXI_wready => s03_couplers_to_xbar_WREADY(3),
      M_AXI_wstrb(3 downto 0) => s03_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s03_couplers_to_xbar_WVALID,
      S_ACLK => S03_ACLK_1,
      S_ARESETN(0) => S03_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s03_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s03_couplers_ARPROT(2 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s03_couplers_ARREADY,
      S_AXI_arvalid => microblaze_0_axi_periph_to_s03_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s03_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s03_couplers_AWPROT(2 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s03_couplers_AWREADY,
      S_AXI_awvalid => microblaze_0_axi_periph_to_s03_couplers_AWVALID,
      S_AXI_bready => microblaze_0_axi_periph_to_s03_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s03_couplers_RDATA(31 downto 0),
      S_AXI_rready => microblaze_0_axi_periph_to_s03_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s03_couplers_WDATA(31 downto 0),
      S_AXI_wready => microblaze_0_axi_periph_to_s03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s03_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s03_couplers_WVALID
    );
s04_couplers: entity work.s04_couplers_imp_AQMS5H
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s04_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s04_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s04_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s04_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s04_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s04_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s04_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s04_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s04_couplers_to_xbar_ARREADY(4),
      M_AXI_arsize(2 downto 0) => s04_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s04_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s04_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s04_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s04_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s04_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s04_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s04_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s04_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s04_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s04_couplers_to_xbar_AWREADY(4),
      M_AXI_awsize(2 downto 0) => s04_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s04_couplers_to_xbar_AWVALID,
      M_AXI_bid(0) => s04_couplers_to_xbar_BID(16),
      M_AXI_bready => s04_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s04_couplers_to_xbar_BRESP(9 downto 8),
      M_AXI_bvalid => s04_couplers_to_xbar_BVALID(4),
      M_AXI_rdata(31 downto 0) => s04_couplers_to_xbar_RDATA(159 downto 128),
      M_AXI_rid(0) => s04_couplers_to_xbar_RID(16),
      M_AXI_rlast => s04_couplers_to_xbar_RLAST(4),
      M_AXI_rready => s04_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s04_couplers_to_xbar_RRESP(9 downto 8),
      M_AXI_rvalid => s04_couplers_to_xbar_RVALID(4),
      M_AXI_wdata(31 downto 0) => s04_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s04_couplers_to_xbar_WLAST,
      M_AXI_wready => s04_couplers_to_xbar_WREADY(4),
      M_AXI_wstrb(3 downto 0) => s04_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s04_couplers_to_xbar_WVALID,
      S_ACLK => S04_ACLK_1,
      S_ARESETN(0) => S04_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s04_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => microblaze_0_axi_periph_to_s04_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => microblaze_0_axi_periph_to_s04_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => microblaze_0_axi_periph_to_s04_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => microblaze_0_axi_periph_to_s04_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => microblaze_0_axi_periph_to_s04_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s04_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => microblaze_0_axi_periph_to_s04_couplers_ARQOS(3 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s04_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => microblaze_0_axi_periph_to_s04_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => microblaze_0_axi_periph_to_s04_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s04_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => microblaze_0_axi_periph_to_s04_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => microblaze_0_axi_periph_to_s04_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => microblaze_0_axi_periph_to_s04_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => microblaze_0_axi_periph_to_s04_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => microblaze_0_axi_periph_to_s04_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s04_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => microblaze_0_axi_periph_to_s04_couplers_AWQOS(3 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s04_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => microblaze_0_axi_periph_to_s04_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => microblaze_0_axi_periph_to_s04_couplers_AWVALID,
      S_AXI_bid(0) => microblaze_0_axi_periph_to_s04_couplers_BID(0),
      S_AXI_bready => microblaze_0_axi_periph_to_s04_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s04_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => microblaze_0_axi_periph_to_s04_couplers_RID(0),
      S_AXI_rlast => microblaze_0_axi_periph_to_s04_couplers_RLAST,
      S_AXI_rready => microblaze_0_axi_periph_to_s04_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s04_couplers_WDATA(31 downto 0),
      S_AXI_wlast => microblaze_0_axi_periph_to_s04_couplers_WLAST,
      S_AXI_wready => microblaze_0_axi_periph_to_s04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s04_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s04_couplers_WVALID
    );
s05_couplers: entity work.s05_couplers_imp_ITI8N7
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s05_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s05_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s05_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s05_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s05_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s05_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s05_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s05_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s05_couplers_to_xbar_ARREADY(5),
      M_AXI_arsize(2 downto 0) => s05_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s05_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s05_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s05_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s05_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s05_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s05_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s05_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s05_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s05_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s05_couplers_to_xbar_AWREADY(5),
      M_AXI_awsize(2 downto 0) => s05_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s05_couplers_to_xbar_AWVALID,
      M_AXI_bid(0) => s05_couplers_to_xbar_BID(20),
      M_AXI_bready => s05_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s05_couplers_to_xbar_BRESP(11 downto 10),
      M_AXI_bvalid => s05_couplers_to_xbar_BVALID(5),
      M_AXI_rdata(31 downto 0) => s05_couplers_to_xbar_RDATA(191 downto 160),
      M_AXI_rid(0) => s05_couplers_to_xbar_RID(20),
      M_AXI_rlast => s05_couplers_to_xbar_RLAST(5),
      M_AXI_rready => s05_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s05_couplers_to_xbar_RRESP(11 downto 10),
      M_AXI_rvalid => s05_couplers_to_xbar_RVALID(5),
      M_AXI_wdata(31 downto 0) => s05_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s05_couplers_to_xbar_WLAST,
      M_AXI_wready => s05_couplers_to_xbar_WREADY(5),
      M_AXI_wstrb(3 downto 0) => s05_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s05_couplers_to_xbar_WVALID,
      S_ACLK => S05_ACLK_1,
      S_ARESETN(0) => S05_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s05_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => microblaze_0_axi_periph_to_s05_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => microblaze_0_axi_periph_to_s05_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => microblaze_0_axi_periph_to_s05_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => microblaze_0_axi_periph_to_s05_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => microblaze_0_axi_periph_to_s05_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s05_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => microblaze_0_axi_periph_to_s05_couplers_ARQOS(3 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s05_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => microblaze_0_axi_periph_to_s05_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => microblaze_0_axi_periph_to_s05_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s05_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => microblaze_0_axi_periph_to_s05_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => microblaze_0_axi_periph_to_s05_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => microblaze_0_axi_periph_to_s05_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => microblaze_0_axi_periph_to_s05_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => microblaze_0_axi_periph_to_s05_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s05_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => microblaze_0_axi_periph_to_s05_couplers_AWQOS(3 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s05_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => microblaze_0_axi_periph_to_s05_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => microblaze_0_axi_periph_to_s05_couplers_AWVALID,
      S_AXI_bid(0) => microblaze_0_axi_periph_to_s05_couplers_BID(0),
      S_AXI_bready => microblaze_0_axi_periph_to_s05_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s05_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => microblaze_0_axi_periph_to_s05_couplers_RID(0),
      S_AXI_rlast => microblaze_0_axi_periph_to_s05_couplers_RLAST,
      S_AXI_rready => microblaze_0_axi_periph_to_s05_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s05_couplers_WDATA(31 downto 0),
      S_AXI_wlast => microblaze_0_axi_periph_to_s05_couplers_WLAST,
      S_AXI_wready => microblaze_0_axi_periph_to_s05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s05_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s05_couplers_WVALID
    );
s06_couplers: entity work.s06_couplers_imp_1TM4BD5
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s06_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s06_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s06_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s06_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s06_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s06_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s06_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s06_couplers_to_xbar_ARREADY(6),
      M_AXI_arsize(2 downto 0) => s06_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s06_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s06_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s06_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s06_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s06_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s06_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s06_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s06_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s06_couplers_to_xbar_AWREADY(6),
      M_AXI_awsize(2 downto 0) => s06_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s06_couplers_to_xbar_AWVALID,
      M_AXI_bready => s06_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s06_couplers_to_xbar_BRESP(13 downto 12),
      M_AXI_bvalid => s06_couplers_to_xbar_BVALID(6),
      M_AXI_rdata(31 downto 0) => s06_couplers_to_xbar_RDATA(223 downto 192),
      M_AXI_rlast => s06_couplers_to_xbar_RLAST(6),
      M_AXI_rready => s06_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s06_couplers_to_xbar_RRESP(13 downto 12),
      M_AXI_rvalid => s06_couplers_to_xbar_RVALID(6),
      M_AXI_wdata(31 downto 0) => s06_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s06_couplers_to_xbar_WLAST,
      M_AXI_wready => s06_couplers_to_xbar_WREADY(6),
      M_AXI_wstrb(3 downto 0) => s06_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s06_couplers_to_xbar_WVALID,
      S_ACLK => S06_ACLK_1,
      S_ARESETN(0) => S06_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s06_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s06_couplers_ARPROT(2 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s06_couplers_ARREADY,
      S_AXI_arvalid => microblaze_0_axi_periph_to_s06_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s06_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s06_couplers_AWPROT(2 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s06_couplers_AWREADY,
      S_AXI_awvalid => microblaze_0_axi_periph_to_s06_couplers_AWVALID,
      S_AXI_bready => microblaze_0_axi_periph_to_s06_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s06_couplers_RDATA(31 downto 0),
      S_AXI_rready => microblaze_0_axi_periph_to_s06_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s06_couplers_WDATA(31 downto 0),
      S_AXI_wready => microblaze_0_axi_periph_to_s06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s06_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s06_couplers_WVALID
    );
s07_couplers: entity work.s07_couplers_imp_121M47J
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s07_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s07_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s07_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s07_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s07_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s07_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s07_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s07_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s07_couplers_to_xbar_ARREADY(7),
      M_AXI_arsize(2 downto 0) => s07_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s07_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s07_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s07_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s07_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s07_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s07_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s07_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s07_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s07_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s07_couplers_to_xbar_AWREADY(7),
      M_AXI_awsize(2 downto 0) => s07_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s07_couplers_to_xbar_AWVALID,
      M_AXI_bid(0) => s07_couplers_to_xbar_BID(28),
      M_AXI_bready => s07_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s07_couplers_to_xbar_BRESP(15 downto 14),
      M_AXI_bvalid => s07_couplers_to_xbar_BVALID(7),
      M_AXI_rdata(31 downto 0) => s07_couplers_to_xbar_RDATA(255 downto 224),
      M_AXI_rid(0) => s07_couplers_to_xbar_RID(28),
      M_AXI_rlast => s07_couplers_to_xbar_RLAST(7),
      M_AXI_rready => s07_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s07_couplers_to_xbar_RRESP(15 downto 14),
      M_AXI_rvalid => s07_couplers_to_xbar_RVALID(7),
      M_AXI_wdata(31 downto 0) => s07_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s07_couplers_to_xbar_WLAST,
      M_AXI_wready => s07_couplers_to_xbar_WREADY(7),
      M_AXI_wstrb(3 downto 0) => s07_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s07_couplers_to_xbar_WVALID,
      S_ACLK => S07_ACLK_1,
      S_ARESETN(0) => S07_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s07_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => microblaze_0_axi_periph_to_s07_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => microblaze_0_axi_periph_to_s07_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => microblaze_0_axi_periph_to_s07_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => microblaze_0_axi_periph_to_s07_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => microblaze_0_axi_periph_to_s07_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s07_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => microblaze_0_axi_periph_to_s07_couplers_ARQOS(3 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s07_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => microblaze_0_axi_periph_to_s07_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => microblaze_0_axi_periph_to_s07_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s07_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => microblaze_0_axi_periph_to_s07_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => microblaze_0_axi_periph_to_s07_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => microblaze_0_axi_periph_to_s07_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => microblaze_0_axi_periph_to_s07_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => microblaze_0_axi_periph_to_s07_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s07_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => microblaze_0_axi_periph_to_s07_couplers_AWQOS(3 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s07_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => microblaze_0_axi_periph_to_s07_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => microblaze_0_axi_periph_to_s07_couplers_AWVALID,
      S_AXI_bid(0) => microblaze_0_axi_periph_to_s07_couplers_BID(0),
      S_AXI_bready => microblaze_0_axi_periph_to_s07_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s07_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s07_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => microblaze_0_axi_periph_to_s07_couplers_RID(0),
      S_AXI_rlast => microblaze_0_axi_periph_to_s07_couplers_RLAST,
      S_AXI_rready => microblaze_0_axi_periph_to_s07_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s07_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s07_couplers_WDATA(31 downto 0),
      S_AXI_wlast => microblaze_0_axi_periph_to_s07_couplers_WLAST,
      S_AXI_wready => microblaze_0_axi_periph_to_s07_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s07_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s07_couplers_WVALID
    );
s08_couplers: entity work.s08_couplers_imp_1W4C832
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s08_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s08_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s08_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s08_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s08_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s08_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s08_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s08_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s08_couplers_to_xbar_ARREADY(8),
      M_AXI_arsize(2 downto 0) => s08_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s08_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s08_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s08_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s08_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s08_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s08_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s08_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s08_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s08_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s08_couplers_to_xbar_AWREADY(8),
      M_AXI_awsize(2 downto 0) => s08_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s08_couplers_to_xbar_AWVALID,
      M_AXI_bid(0) => s08_couplers_to_xbar_BID(32),
      M_AXI_bready => s08_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s08_couplers_to_xbar_BRESP(17 downto 16),
      M_AXI_bvalid => s08_couplers_to_xbar_BVALID(8),
      M_AXI_rdata(31 downto 0) => s08_couplers_to_xbar_RDATA(287 downto 256),
      M_AXI_rid(0) => s08_couplers_to_xbar_RID(32),
      M_AXI_rlast => s08_couplers_to_xbar_RLAST(8),
      M_AXI_rready => s08_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s08_couplers_to_xbar_RRESP(17 downto 16),
      M_AXI_rvalid => s08_couplers_to_xbar_RVALID(8),
      M_AXI_wdata(31 downto 0) => s08_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s08_couplers_to_xbar_WLAST,
      M_AXI_wready => s08_couplers_to_xbar_WREADY(8),
      M_AXI_wstrb(3 downto 0) => s08_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s08_couplers_to_xbar_WVALID,
      S_ACLK => S08_ACLK_1,
      S_ARESETN(0) => S08_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s08_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => microblaze_0_axi_periph_to_s08_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => microblaze_0_axi_periph_to_s08_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => microblaze_0_axi_periph_to_s08_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => microblaze_0_axi_periph_to_s08_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => microblaze_0_axi_periph_to_s08_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s08_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => microblaze_0_axi_periph_to_s08_couplers_ARQOS(3 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s08_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => microblaze_0_axi_periph_to_s08_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => microblaze_0_axi_periph_to_s08_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s08_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => microblaze_0_axi_periph_to_s08_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => microblaze_0_axi_periph_to_s08_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => microblaze_0_axi_periph_to_s08_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => microblaze_0_axi_periph_to_s08_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => microblaze_0_axi_periph_to_s08_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s08_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => microblaze_0_axi_periph_to_s08_couplers_AWQOS(3 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s08_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => microblaze_0_axi_periph_to_s08_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => microblaze_0_axi_periph_to_s08_couplers_AWVALID,
      S_AXI_bid(0) => microblaze_0_axi_periph_to_s08_couplers_BID(0),
      S_AXI_bready => microblaze_0_axi_periph_to_s08_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s08_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s08_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => microblaze_0_axi_periph_to_s08_couplers_RID(0),
      S_AXI_rlast => microblaze_0_axi_periph_to_s08_couplers_RLAST,
      S_AXI_rready => microblaze_0_axi_periph_to_s08_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s08_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s08_couplers_WDATA(31 downto 0),
      S_AXI_wlast => microblaze_0_axi_periph_to_s08_couplers_WLAST,
      S_AXI_wready => microblaze_0_axi_periph_to_s08_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s08_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s08_couplers_WVALID
    );
s09_couplers: entity work.s09_couplers_imp_147CL2G
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s09_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s09_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s09_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s09_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s09_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s09_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s09_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s09_couplers_to_xbar_ARREADY(9),
      M_AXI_arsize(2 downto 0) => s09_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s09_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s09_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s09_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s09_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s09_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s09_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s09_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s09_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s09_couplers_to_xbar_AWREADY(9),
      M_AXI_awsize(2 downto 0) => s09_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s09_couplers_to_xbar_AWVALID,
      M_AXI_bready => s09_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s09_couplers_to_xbar_BRESP(19 downto 18),
      M_AXI_bvalid => s09_couplers_to_xbar_BVALID(9),
      M_AXI_rdata(31 downto 0) => s09_couplers_to_xbar_RDATA(319 downto 288),
      M_AXI_rlast => s09_couplers_to_xbar_RLAST(9),
      M_AXI_rready => s09_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s09_couplers_to_xbar_RRESP(19 downto 18),
      M_AXI_rvalid => s09_couplers_to_xbar_RVALID(9),
      M_AXI_wdata(31 downto 0) => s09_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s09_couplers_to_xbar_WLAST,
      M_AXI_wready => s09_couplers_to_xbar_WREADY(9),
      M_AXI_wstrb(3 downto 0) => s09_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s09_couplers_to_xbar_WVALID,
      S_ACLK => S09_ACLK_1,
      S_ARESETN(0) => S09_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s09_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s09_couplers_ARPROT(2 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s09_couplers_ARREADY,
      S_AXI_arvalid => microblaze_0_axi_periph_to_s09_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s09_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s09_couplers_AWPROT(2 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s09_couplers_AWREADY,
      S_AXI_awvalid => microblaze_0_axi_periph_to_s09_couplers_AWVALID,
      S_AXI_bready => microblaze_0_axi_periph_to_s09_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s09_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s09_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s09_couplers_RDATA(31 downto 0),
      S_AXI_rready => microblaze_0_axi_periph_to_s09_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s09_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s09_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s09_couplers_WDATA(31 downto 0),
      S_AXI_wready => microblaze_0_axi_periph_to_s09_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s09_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s09_couplers_WVALID
    );
s10_couplers: entity work.s10_couplers_imp_1WOCIWY
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s10_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s10_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s10_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s10_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s10_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s10_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s10_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s10_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s10_couplers_to_xbar_ARREADY(10),
      M_AXI_arsize(2 downto 0) => s10_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s10_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s10_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s10_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s10_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s10_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s10_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s10_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s10_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s10_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s10_couplers_to_xbar_AWREADY(10),
      M_AXI_awsize(2 downto 0) => s10_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s10_couplers_to_xbar_AWVALID,
      M_AXI_bid(0) => s10_couplers_to_xbar_BID(40),
      M_AXI_bready => s10_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s10_couplers_to_xbar_BRESP(21 downto 20),
      M_AXI_bvalid => s10_couplers_to_xbar_BVALID(10),
      M_AXI_rdata(31 downto 0) => s10_couplers_to_xbar_RDATA(351 downto 320),
      M_AXI_rid(0) => s10_couplers_to_xbar_RID(40),
      M_AXI_rlast => s10_couplers_to_xbar_RLAST(10),
      M_AXI_rready => s10_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s10_couplers_to_xbar_RRESP(21 downto 20),
      M_AXI_rvalid => s10_couplers_to_xbar_RVALID(10),
      M_AXI_wdata(31 downto 0) => s10_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s10_couplers_to_xbar_WLAST,
      M_AXI_wready => s10_couplers_to_xbar_WREADY(10),
      M_AXI_wstrb(3 downto 0) => s10_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s10_couplers_to_xbar_WVALID,
      S_ACLK => S10_ACLK_1,
      S_ARESETN(0) => S10_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s10_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => microblaze_0_axi_periph_to_s10_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => microblaze_0_axi_periph_to_s10_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => microblaze_0_axi_periph_to_s10_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => microblaze_0_axi_periph_to_s10_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => microblaze_0_axi_periph_to_s10_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s10_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => microblaze_0_axi_periph_to_s10_couplers_ARQOS(3 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s10_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => microblaze_0_axi_periph_to_s10_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => microblaze_0_axi_periph_to_s10_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s10_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => microblaze_0_axi_periph_to_s10_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => microblaze_0_axi_periph_to_s10_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => microblaze_0_axi_periph_to_s10_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => microblaze_0_axi_periph_to_s10_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => microblaze_0_axi_periph_to_s10_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s10_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => microblaze_0_axi_periph_to_s10_couplers_AWQOS(3 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s10_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => microblaze_0_axi_periph_to_s10_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => microblaze_0_axi_periph_to_s10_couplers_AWVALID,
      S_AXI_bid(0) => microblaze_0_axi_periph_to_s10_couplers_BID(0),
      S_AXI_bready => microblaze_0_axi_periph_to_s10_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s10_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s10_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s10_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => microblaze_0_axi_periph_to_s10_couplers_RID(0),
      S_AXI_rlast => microblaze_0_axi_periph_to_s10_couplers_RLAST,
      S_AXI_rready => microblaze_0_axi_periph_to_s10_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s10_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s10_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s10_couplers_WDATA(31 downto 0),
      S_AXI_wlast => microblaze_0_axi_periph_to_s10_couplers_WLAST,
      S_AXI_wready => microblaze_0_axi_periph_to_s10_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s10_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s10_couplers_WVALID
    );
s11_couplers: entity work.s11_couplers_imp_14R9WUC
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s11_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s11_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s11_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s11_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s11_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s11_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s11_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s11_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s11_couplers_to_xbar_ARREADY(11),
      M_AXI_arsize(2 downto 0) => s11_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s11_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s11_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s11_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s11_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s11_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s11_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s11_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s11_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s11_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s11_couplers_to_xbar_AWREADY(11),
      M_AXI_awsize(2 downto 0) => s11_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s11_couplers_to_xbar_AWVALID,
      M_AXI_bid(0) => s11_couplers_to_xbar_BID(44),
      M_AXI_bready => s11_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s11_couplers_to_xbar_BRESP(23 downto 22),
      M_AXI_bvalid => s11_couplers_to_xbar_BVALID(11),
      M_AXI_rdata(31 downto 0) => s11_couplers_to_xbar_RDATA(383 downto 352),
      M_AXI_rid(0) => s11_couplers_to_xbar_RID(44),
      M_AXI_rlast => s11_couplers_to_xbar_RLAST(11),
      M_AXI_rready => s11_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s11_couplers_to_xbar_RRESP(23 downto 22),
      M_AXI_rvalid => s11_couplers_to_xbar_RVALID(11),
      M_AXI_wdata(31 downto 0) => s11_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s11_couplers_to_xbar_WLAST,
      M_AXI_wready => s11_couplers_to_xbar_WREADY(11),
      M_AXI_wstrb(3 downto 0) => s11_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s11_couplers_to_xbar_WVALID,
      S_ACLK => S11_ACLK_1,
      S_ARESETN(0) => S11_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s11_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => microblaze_0_axi_periph_to_s11_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => microblaze_0_axi_periph_to_s11_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => microblaze_0_axi_periph_to_s11_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => microblaze_0_axi_periph_to_s11_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => microblaze_0_axi_periph_to_s11_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s11_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => microblaze_0_axi_periph_to_s11_couplers_ARQOS(3 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s11_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => microblaze_0_axi_periph_to_s11_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => microblaze_0_axi_periph_to_s11_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s11_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => microblaze_0_axi_periph_to_s11_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => microblaze_0_axi_periph_to_s11_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => microblaze_0_axi_periph_to_s11_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => microblaze_0_axi_periph_to_s11_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => microblaze_0_axi_periph_to_s11_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s11_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => microblaze_0_axi_periph_to_s11_couplers_AWQOS(3 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s11_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => microblaze_0_axi_periph_to_s11_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => microblaze_0_axi_periph_to_s11_couplers_AWVALID,
      S_AXI_bid(0) => microblaze_0_axi_periph_to_s11_couplers_BID(0),
      S_AXI_bready => microblaze_0_axi_periph_to_s11_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s11_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s11_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s11_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => microblaze_0_axi_periph_to_s11_couplers_RID(0),
      S_AXI_rlast => microblaze_0_axi_periph_to_s11_couplers_RLAST,
      S_AXI_rready => microblaze_0_axi_periph_to_s11_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s11_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s11_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s11_couplers_WDATA(31 downto 0),
      S_AXI_wlast => microblaze_0_axi_periph_to_s11_couplers_WLAST,
      S_AXI_wready => microblaze_0_axi_periph_to_s11_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s11_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s11_couplers_WVALID
    );
xbar: component microblaze_xbar_0
     port map (
      aclk => microblaze_0_axi_periph_ACLK_net,
      aresetn => microblaze_0_axi_periph_ARESETN_net(0),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(15 downto 14) => xbar_to_m07_couplers_ARBURST(15 downto 14),
      m_axi_arburst(13 downto 12) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      m_axi_arburst(11 downto 10) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      m_axi_arburst(9 downto 8) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      m_axi_arburst(7 downto 6) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      m_axi_arburst(5 downto 4) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(31 downto 28) => xbar_to_m07_couplers_ARCACHE(31 downto 28),
      m_axi_arcache(27 downto 24) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      m_axi_arcache(23 downto 20) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      m_axi_arcache(19 downto 16) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      m_axi_arcache(15 downto 12) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      m_axi_arcache(11 downto 8) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(31 downto 28) => xbar_to_m07_couplers_ARID(31 downto 28),
      m_axi_arid(27 downto 24) => xbar_to_m06_couplers_ARID(27 downto 24),
      m_axi_arid(23 downto 20) => xbar_to_m05_couplers_ARID(23 downto 20),
      m_axi_arid(19 downto 16) => xbar_to_m04_couplers_ARID(19 downto 16),
      m_axi_arid(15 downto 12) => xbar_to_m03_couplers_ARID(15 downto 12),
      m_axi_arid(11 downto 8) => xbar_to_m02_couplers_ARID(11 downto 8),
      m_axi_arid(7 downto 4) => xbar_to_m01_couplers_ARID(7 downto 4),
      m_axi_arid(3 downto 0) => xbar_to_m00_couplers_ARID(3 downto 0),
      m_axi_arlen(63 downto 56) => xbar_to_m07_couplers_ARLEN(63 downto 56),
      m_axi_arlen(55 downto 48) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      m_axi_arlen(47 downto 40) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      m_axi_arlen(39 downto 32) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      m_axi_arlen(31 downto 24) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      m_axi_arlen(23 downto 16) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(7) => xbar_to_m07_couplers_ARLOCK(7),
      m_axi_arlock(6) => xbar_to_m06_couplers_ARLOCK(6),
      m_axi_arlock(5) => xbar_to_m05_couplers_ARLOCK(5),
      m_axi_arlock(4) => xbar_to_m04_couplers_ARLOCK(4),
      m_axi_arlock(3) => xbar_to_m03_couplers_ARLOCK(3),
      m_axi_arlock(2) => xbar_to_m02_couplers_ARLOCK(2),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(23 downto 21) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(31 downto 28) => xbar_to_m07_couplers_ARQOS(31 downto 28),
      m_axi_arqos(27 downto 24) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      m_axi_arqos(23 downto 20) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      m_axi_arqos(19 downto 16) => NLW_xbar_m_axi_arqos_UNCONNECTED(19 downto 16),
      m_axi_arqos(15 downto 12) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      m_axi_arqos(11 downto 8) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY,
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(31 downto 28) => xbar_to_m07_couplers_ARREGION(31 downto 28),
      m_axi_arregion(27 downto 24) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      m_axi_arregion(23 downto 20) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      m_axi_arregion(19 downto 16) => NLW_xbar_m_axi_arregion_UNCONNECTED(19 downto 16),
      m_axi_arregion(15 downto 12) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      m_axi_arregion(11 downto 8) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      m_axi_arregion(7 downto 4) => NLW_xbar_m_axi_arregion_UNCONNECTED(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(23 downto 21) => xbar_to_m07_couplers_ARSIZE(23 downto 21),
      m_axi_arsize(20 downto 18) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      m_axi_arsize(17 downto 15) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      m_axi_arsize(14 downto 12) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      m_axi_arsize(11 downto 9) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      m_axi_arsize(8 downto 6) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(15 downto 14) => xbar_to_m07_couplers_AWBURST(15 downto 14),
      m_axi_awburst(13 downto 12) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      m_axi_awburst(11 downto 10) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      m_axi_awburst(9 downto 8) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      m_axi_awburst(7 downto 6) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      m_axi_awburst(5 downto 4) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(31 downto 28) => xbar_to_m07_couplers_AWCACHE(31 downto 28),
      m_axi_awcache(27 downto 24) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      m_axi_awcache(23 downto 20) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      m_axi_awcache(19 downto 16) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      m_axi_awcache(15 downto 12) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      m_axi_awcache(11 downto 8) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(31 downto 28) => xbar_to_m07_couplers_AWID(31 downto 28),
      m_axi_awid(27 downto 24) => xbar_to_m06_couplers_AWID(27 downto 24),
      m_axi_awid(23 downto 20) => xbar_to_m05_couplers_AWID(23 downto 20),
      m_axi_awid(19 downto 16) => xbar_to_m04_couplers_AWID(19 downto 16),
      m_axi_awid(15 downto 12) => xbar_to_m03_couplers_AWID(15 downto 12),
      m_axi_awid(11 downto 8) => xbar_to_m02_couplers_AWID(11 downto 8),
      m_axi_awid(7 downto 4) => xbar_to_m01_couplers_AWID(7 downto 4),
      m_axi_awid(3 downto 0) => xbar_to_m00_couplers_AWID(3 downto 0),
      m_axi_awlen(63 downto 56) => xbar_to_m07_couplers_AWLEN(63 downto 56),
      m_axi_awlen(55 downto 48) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      m_axi_awlen(47 downto 40) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      m_axi_awlen(39 downto 32) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      m_axi_awlen(31 downto 24) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      m_axi_awlen(23 downto 16) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(7) => xbar_to_m07_couplers_AWLOCK(7),
      m_axi_awlock(6) => xbar_to_m06_couplers_AWLOCK(6),
      m_axi_awlock(5) => xbar_to_m05_couplers_AWLOCK(5),
      m_axi_awlock(4) => xbar_to_m04_couplers_AWLOCK(4),
      m_axi_awlock(3) => xbar_to_m03_couplers_AWLOCK(3),
      m_axi_awlock(2) => xbar_to_m02_couplers_AWLOCK(2),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(23 downto 21) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(31 downto 28) => xbar_to_m07_couplers_AWQOS(31 downto 28),
      m_axi_awqos(27 downto 24) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      m_axi_awqos(23 downto 20) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      m_axi_awqos(19 downto 16) => NLW_xbar_m_axi_awqos_UNCONNECTED(19 downto 16),
      m_axi_awqos(15 downto 12) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      m_axi_awqos(11 downto 8) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY,
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(31 downto 28) => xbar_to_m07_couplers_AWREGION(31 downto 28),
      m_axi_awregion(27 downto 24) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      m_axi_awregion(23 downto 20) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      m_axi_awregion(19 downto 16) => NLW_xbar_m_axi_awregion_UNCONNECTED(19 downto 16),
      m_axi_awregion(15 downto 12) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      m_axi_awregion(11 downto 8) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      m_axi_awregion(7 downto 4) => NLW_xbar_m_axi_awregion_UNCONNECTED(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(23 downto 21) => xbar_to_m07_couplers_AWSIZE(23 downto 21),
      m_axi_awsize(20 downto 18) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      m_axi_awsize(17 downto 15) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      m_axi_awsize(14 downto 12) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      m_axi_awsize(11 downto 9) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      m_axi_awsize(8 downto 6) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(31 downto 28) => xbar_to_m07_couplers_BID(3 downto 0),
      m_axi_bid(27 downto 24) => xbar_to_m06_couplers_BID(3 downto 0),
      m_axi_bid(23 downto 20) => xbar_to_m05_couplers_BID(3 downto 0),
      m_axi_bid(19 downto 16) => xbar_to_m04_couplers_BID(3 downto 0),
      m_axi_bid(15 downto 12) => xbar_to_m03_couplers_BID(3 downto 0),
      m_axi_bid(11 downto 8) => xbar_to_m02_couplers_BID(3 downto 0),
      m_axi_bid(7 downto 4) => xbar_to_m01_couplers_BID(3 downto 0),
      m_axi_bid(3 downto 0) => xbar_to_m00_couplers_BID(3 downto 0),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID,
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(31 downto 28) => xbar_to_m07_couplers_RID(3 downto 0),
      m_axi_rid(27 downto 24) => xbar_to_m06_couplers_RID(3 downto 0),
      m_axi_rid(23 downto 20) => xbar_to_m05_couplers_RID(3 downto 0),
      m_axi_rid(19 downto 16) => xbar_to_m04_couplers_RID(3 downto 0),
      m_axi_rid(15 downto 12) => xbar_to_m03_couplers_RID(3 downto 0),
      m_axi_rid(11 downto 8) => xbar_to_m02_couplers_RID(3 downto 0),
      m_axi_rid(7 downto 4) => xbar_to_m01_couplers_RID(3 downto 0),
      m_axi_rid(3 downto 0) => xbar_to_m00_couplers_RID(3 downto 0),
      m_axi_rlast(7) => xbar_to_m07_couplers_RLAST,
      m_axi_rlast(6) => xbar_to_m06_couplers_RLAST,
      m_axi_rlast(5) => xbar_to_m05_couplers_RLAST,
      m_axi_rlast(4) => xbar_to_m04_couplers_RLAST,
      m_axi_rlast(3) => xbar_to_m03_couplers_RLAST,
      m_axi_rlast(2) => xbar_to_m02_couplers_RLAST,
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST(0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID,
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(7) => xbar_to_m07_couplers_WLAST(7),
      m_axi_wlast(6) => xbar_to_m06_couplers_WLAST(6),
      m_axi_wlast(5) => xbar_to_m05_couplers_WLAST(5),
      m_axi_wlast(4) => xbar_to_m04_couplers_WLAST(4),
      m_axi_wlast(3) => xbar_to_m03_couplers_WLAST(3),
      m_axi_wlast(2) => xbar_to_m02_couplers_WLAST(2),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY,
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(383 downto 352) => s11_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(351 downto 320) => s10_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(319 downto 288) => s09_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(287 downto 256) => s08_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(255 downto 224) => s07_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(223 downto 192) => s06_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(191 downto 160) => s05_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(159 downto 128) => s04_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(127 downto 96) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(95 downto 64) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(23 downto 22) => s11_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(21 downto 20) => s10_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(19 downto 18) => s09_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(17 downto 16) => s08_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(15 downto 14) => s07_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(13 downto 12) => s06_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(11 downto 10) => s05_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(9 downto 8) => s04_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(7 downto 6) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(47 downto 44) => s11_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(43 downto 40) => s10_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(39 downto 36) => s09_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(35 downto 32) => s08_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(31 downto 28) => s07_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(27 downto 24) => s06_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(23 downto 20) => s05_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(19 downto 16) => s04_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(15 downto 12) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(47) => GND_1,
      s_axi_arid(46) => GND_1,
      s_axi_arid(45) => GND_1,
      s_axi_arid(44) => s11_couplers_to_xbar_ARID(0),
      s_axi_arid(43) => GND_1,
      s_axi_arid(42) => GND_1,
      s_axi_arid(41) => GND_1,
      s_axi_arid(40) => s10_couplers_to_xbar_ARID(0),
      s_axi_arid(39) => GND_1,
      s_axi_arid(38) => GND_1,
      s_axi_arid(37) => GND_1,
      s_axi_arid(36) => GND_1,
      s_axi_arid(35) => GND_1,
      s_axi_arid(34) => GND_1,
      s_axi_arid(33) => GND_1,
      s_axi_arid(32) => s08_couplers_to_xbar_ARID(0),
      s_axi_arid(31) => GND_1,
      s_axi_arid(30) => GND_1,
      s_axi_arid(29) => GND_1,
      s_axi_arid(28) => s07_couplers_to_xbar_ARID(0),
      s_axi_arid(27) => GND_1,
      s_axi_arid(26) => GND_1,
      s_axi_arid(25) => GND_1,
      s_axi_arid(24) => GND_1,
      s_axi_arid(23) => GND_1,
      s_axi_arid(22) => GND_1,
      s_axi_arid(21) => GND_1,
      s_axi_arid(20) => s05_couplers_to_xbar_ARID(0),
      s_axi_arid(19) => GND_1,
      s_axi_arid(18) => GND_1,
      s_axi_arid(17) => GND_1,
      s_axi_arid(16) => s04_couplers_to_xbar_ARID(0),
      s_axi_arid(15) => GND_1,
      s_axi_arid(14) => GND_1,
      s_axi_arid(13) => GND_1,
      s_axi_arid(12) => GND_1,
      s_axi_arid(11) => GND_1,
      s_axi_arid(10) => GND_1,
      s_axi_arid(9) => GND_1,
      s_axi_arid(8) => s02_couplers_to_xbar_ARID(0),
      s_axi_arid(7) => GND_1,
      s_axi_arid(6) => GND_1,
      s_axi_arid(5) => GND_1,
      s_axi_arid(4) => s01_couplers_to_xbar_ARID(0),
      s_axi_arid(3) => GND_1,
      s_axi_arid(2) => GND_1,
      s_axi_arid(1) => GND_1,
      s_axi_arid(0) => GND_1,
      s_axi_arlen(95 downto 88) => s11_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(87 downto 80) => s10_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(79 downto 72) => s09_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(71 downto 64) => s08_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(63 downto 56) => s07_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(55 downto 48) => s06_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(47 downto 40) => s05_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(39 downto 32) => s04_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(31 downto 24) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(11) => s11_couplers_to_xbar_ARLOCK,
      s_axi_arlock(10) => s10_couplers_to_xbar_ARLOCK,
      s_axi_arlock(9) => s09_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(8) => s08_couplers_to_xbar_ARLOCK,
      s_axi_arlock(7) => s07_couplers_to_xbar_ARLOCK,
      s_axi_arlock(6) => s06_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(5) => s05_couplers_to_xbar_ARLOCK,
      s_axi_arlock(4) => s04_couplers_to_xbar_ARLOCK,
      s_axi_arlock(3) => s03_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(2) => s02_couplers_to_xbar_ARLOCK,
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK,
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(35 downto 33) => s11_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(32 downto 30) => s10_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(29 downto 27) => s09_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(26 downto 24) => s08_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(23 downto 21) => s07_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(20 downto 18) => s06_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(17 downto 15) => s05_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(14 downto 12) => s04_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(11 downto 9) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(47 downto 44) => s11_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(43 downto 40) => s10_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(39 downto 36) => s09_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(35 downto 32) => s08_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(31 downto 28) => s07_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(27 downto 24) => s06_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(23 downto 20) => s05_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(19 downto 16) => s04_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(15 downto 12) => s03_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(11 downto 8) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(11) => s11_couplers_to_xbar_ARREADY(11),
      s_axi_arready(10) => s10_couplers_to_xbar_ARREADY(10),
      s_axi_arready(9) => s09_couplers_to_xbar_ARREADY(9),
      s_axi_arready(8) => s08_couplers_to_xbar_ARREADY(8),
      s_axi_arready(7) => s07_couplers_to_xbar_ARREADY(7),
      s_axi_arready(6) => s06_couplers_to_xbar_ARREADY(6),
      s_axi_arready(5) => s05_couplers_to_xbar_ARREADY(5),
      s_axi_arready(4) => s04_couplers_to_xbar_ARREADY(4),
      s_axi_arready(3) => s03_couplers_to_xbar_ARREADY(3),
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(35 downto 33) => s11_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(32 downto 30) => s10_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(29 downto 27) => s09_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(26 downto 24) => s08_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(23 downto 21) => s07_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(20 downto 18) => s06_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(17 downto 15) => s05_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(14 downto 12) => s04_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(11 downto 9) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(11) => s11_couplers_to_xbar_ARVALID,
      s_axi_arvalid(10) => s10_couplers_to_xbar_ARVALID,
      s_axi_arvalid(9) => s09_couplers_to_xbar_ARVALID,
      s_axi_arvalid(8) => s08_couplers_to_xbar_ARVALID,
      s_axi_arvalid(7) => s07_couplers_to_xbar_ARVALID,
      s_axi_arvalid(6) => s06_couplers_to_xbar_ARVALID,
      s_axi_arvalid(5) => s05_couplers_to_xbar_ARVALID,
      s_axi_arvalid(4) => s04_couplers_to_xbar_ARVALID,
      s_axi_arvalid(3) => s03_couplers_to_xbar_ARVALID,
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(383 downto 352) => s11_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(351 downto 320) => s10_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(319 downto 288) => s09_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(287 downto 256) => s08_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(255 downto 224) => s07_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(223 downto 192) => s06_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(191 downto 160) => s05_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(159 downto 128) => s04_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(127 downto 96) => s03_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(95 downto 64) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(23 downto 22) => s11_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(21 downto 20) => s10_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(19 downto 18) => s09_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(17 downto 16) => s08_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(15 downto 14) => s07_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(13 downto 12) => s06_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(11 downto 10) => s05_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(9 downto 8) => s04_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(7 downto 6) => s03_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(5 downto 4) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(47 downto 44) => s11_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(43 downto 40) => s10_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(39 downto 36) => s09_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(35 downto 32) => s08_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(31 downto 28) => s07_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(27 downto 24) => s06_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(23 downto 20) => s05_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(19 downto 16) => s04_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(15 downto 12) => s03_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(11 downto 8) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(47) => GND_1,
      s_axi_awid(46) => GND_1,
      s_axi_awid(45) => GND_1,
      s_axi_awid(44) => s11_couplers_to_xbar_AWID(0),
      s_axi_awid(43) => GND_1,
      s_axi_awid(42) => GND_1,
      s_axi_awid(41) => GND_1,
      s_axi_awid(40) => s10_couplers_to_xbar_AWID(0),
      s_axi_awid(39) => GND_1,
      s_axi_awid(38) => GND_1,
      s_axi_awid(37) => GND_1,
      s_axi_awid(36) => GND_1,
      s_axi_awid(35) => GND_1,
      s_axi_awid(34) => GND_1,
      s_axi_awid(33) => GND_1,
      s_axi_awid(32) => s08_couplers_to_xbar_AWID(0),
      s_axi_awid(31) => GND_1,
      s_axi_awid(30) => GND_1,
      s_axi_awid(29) => GND_1,
      s_axi_awid(28) => s07_couplers_to_xbar_AWID(0),
      s_axi_awid(27) => GND_1,
      s_axi_awid(26) => GND_1,
      s_axi_awid(25) => GND_1,
      s_axi_awid(24) => GND_1,
      s_axi_awid(23) => GND_1,
      s_axi_awid(22) => GND_1,
      s_axi_awid(21) => GND_1,
      s_axi_awid(20) => s05_couplers_to_xbar_AWID(0),
      s_axi_awid(19) => GND_1,
      s_axi_awid(18) => GND_1,
      s_axi_awid(17) => GND_1,
      s_axi_awid(16) => s04_couplers_to_xbar_AWID(0),
      s_axi_awid(15) => GND_1,
      s_axi_awid(14) => GND_1,
      s_axi_awid(13) => GND_1,
      s_axi_awid(12) => GND_1,
      s_axi_awid(11) => GND_1,
      s_axi_awid(10) => GND_1,
      s_axi_awid(9) => GND_1,
      s_axi_awid(8) => s02_couplers_to_xbar_AWID(0),
      s_axi_awid(7) => GND_1,
      s_axi_awid(6) => GND_1,
      s_axi_awid(5) => GND_1,
      s_axi_awid(4) => s01_couplers_to_xbar_AWID(0),
      s_axi_awid(3) => GND_1,
      s_axi_awid(2) => GND_1,
      s_axi_awid(1) => GND_1,
      s_axi_awid(0) => GND_1,
      s_axi_awlen(95 downto 88) => s11_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(87 downto 80) => s10_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(79 downto 72) => s09_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(71 downto 64) => s08_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(63 downto 56) => s07_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(55 downto 48) => s06_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(47 downto 40) => s05_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(39 downto 32) => s04_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(31 downto 24) => s03_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(23 downto 16) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(11) => s11_couplers_to_xbar_AWLOCK,
      s_axi_awlock(10) => s10_couplers_to_xbar_AWLOCK,
      s_axi_awlock(9) => s09_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(8) => s08_couplers_to_xbar_AWLOCK,
      s_axi_awlock(7) => s07_couplers_to_xbar_AWLOCK,
      s_axi_awlock(6) => s06_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(5) => s05_couplers_to_xbar_AWLOCK,
      s_axi_awlock(4) => s04_couplers_to_xbar_AWLOCK,
      s_axi_awlock(3) => s03_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(2) => s02_couplers_to_xbar_AWLOCK,
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK,
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(35 downto 33) => s11_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(32 downto 30) => s10_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(29 downto 27) => s09_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(26 downto 24) => s08_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(23 downto 21) => s07_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(20 downto 18) => s06_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(17 downto 15) => s05_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(14 downto 12) => s04_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(11 downto 9) => s03_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(47 downto 44) => s11_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(43 downto 40) => s10_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(39 downto 36) => s09_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(35 downto 32) => s08_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(31 downto 28) => s07_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(27 downto 24) => s06_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(23 downto 20) => s05_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(19 downto 16) => s04_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(15 downto 12) => s03_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(11 downto 8) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(11) => s11_couplers_to_xbar_AWREADY(11),
      s_axi_awready(10) => s10_couplers_to_xbar_AWREADY(10),
      s_axi_awready(9) => s09_couplers_to_xbar_AWREADY(9),
      s_axi_awready(8) => s08_couplers_to_xbar_AWREADY(8),
      s_axi_awready(7) => s07_couplers_to_xbar_AWREADY(7),
      s_axi_awready(6) => s06_couplers_to_xbar_AWREADY(6),
      s_axi_awready(5) => s05_couplers_to_xbar_AWREADY(5),
      s_axi_awready(4) => s04_couplers_to_xbar_AWREADY(4),
      s_axi_awready(3) => s03_couplers_to_xbar_AWREADY(3),
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY(2),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(35 downto 33) => s11_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(32 downto 30) => s10_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(29 downto 27) => s09_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(26 downto 24) => s08_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(23 downto 21) => s07_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(20 downto 18) => s06_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(17 downto 15) => s05_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(14 downto 12) => s04_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(11 downto 9) => s03_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(8 downto 6) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(11) => s11_couplers_to_xbar_AWVALID,
      s_axi_awvalid(10) => s10_couplers_to_xbar_AWVALID,
      s_axi_awvalid(9) => s09_couplers_to_xbar_AWVALID,
      s_axi_awvalid(8) => s08_couplers_to_xbar_AWVALID,
      s_axi_awvalid(7) => s07_couplers_to_xbar_AWVALID,
      s_axi_awvalid(6) => s06_couplers_to_xbar_AWVALID,
      s_axi_awvalid(5) => s05_couplers_to_xbar_AWVALID,
      s_axi_awvalid(4) => s04_couplers_to_xbar_AWVALID,
      s_axi_awvalid(3) => s03_couplers_to_xbar_AWVALID,
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(47 downto 44) => s11_couplers_to_xbar_BID(47 downto 44),
      s_axi_bid(43 downto 40) => s10_couplers_to_xbar_BID(43 downto 40),
      s_axi_bid(39 downto 36) => NLW_xbar_s_axi_bid_UNCONNECTED(39 downto 36),
      s_axi_bid(35 downto 32) => s08_couplers_to_xbar_BID(35 downto 32),
      s_axi_bid(31 downto 28) => s07_couplers_to_xbar_BID(31 downto 28),
      s_axi_bid(27 downto 24) => NLW_xbar_s_axi_bid_UNCONNECTED(27 downto 24),
      s_axi_bid(23 downto 20) => s05_couplers_to_xbar_BID(23 downto 20),
      s_axi_bid(19 downto 16) => s04_couplers_to_xbar_BID(19 downto 16),
      s_axi_bid(15 downto 12) => NLW_xbar_s_axi_bid_UNCONNECTED(15 downto 12),
      s_axi_bid(11 downto 8) => s02_couplers_to_xbar_BID(11 downto 8),
      s_axi_bid(7 downto 4) => s01_couplers_to_xbar_BID(7 downto 4),
      s_axi_bid(3 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready(11) => s11_couplers_to_xbar_BREADY,
      s_axi_bready(10) => s10_couplers_to_xbar_BREADY,
      s_axi_bready(9) => s09_couplers_to_xbar_BREADY,
      s_axi_bready(8) => s08_couplers_to_xbar_BREADY,
      s_axi_bready(7) => s07_couplers_to_xbar_BREADY,
      s_axi_bready(6) => s06_couplers_to_xbar_BREADY,
      s_axi_bready(5) => s05_couplers_to_xbar_BREADY,
      s_axi_bready(4) => s04_couplers_to_xbar_BREADY,
      s_axi_bready(3) => s03_couplers_to_xbar_BREADY,
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(23 downto 22) => s11_couplers_to_xbar_BRESP(23 downto 22),
      s_axi_bresp(21 downto 20) => s10_couplers_to_xbar_BRESP(21 downto 20),
      s_axi_bresp(19 downto 18) => s09_couplers_to_xbar_BRESP(19 downto 18),
      s_axi_bresp(17 downto 16) => s08_couplers_to_xbar_BRESP(17 downto 16),
      s_axi_bresp(15 downto 14) => s07_couplers_to_xbar_BRESP(15 downto 14),
      s_axi_bresp(13 downto 12) => s06_couplers_to_xbar_BRESP(13 downto 12),
      s_axi_bresp(11 downto 10) => s05_couplers_to_xbar_BRESP(11 downto 10),
      s_axi_bresp(9 downto 8) => s04_couplers_to_xbar_BRESP(9 downto 8),
      s_axi_bresp(7 downto 6) => s03_couplers_to_xbar_BRESP(7 downto 6),
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(11) => s11_couplers_to_xbar_BVALID(11),
      s_axi_bvalid(10) => s10_couplers_to_xbar_BVALID(10),
      s_axi_bvalid(9) => s09_couplers_to_xbar_BVALID(9),
      s_axi_bvalid(8) => s08_couplers_to_xbar_BVALID(8),
      s_axi_bvalid(7) => s07_couplers_to_xbar_BVALID(7),
      s_axi_bvalid(6) => s06_couplers_to_xbar_BVALID(6),
      s_axi_bvalid(5) => s05_couplers_to_xbar_BVALID(5),
      s_axi_bvalid(4) => s04_couplers_to_xbar_BVALID(4),
      s_axi_bvalid(3) => s03_couplers_to_xbar_BVALID(3),
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID(2),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(383 downto 352) => s11_couplers_to_xbar_RDATA(383 downto 352),
      s_axi_rdata(351 downto 320) => s10_couplers_to_xbar_RDATA(351 downto 320),
      s_axi_rdata(319 downto 288) => s09_couplers_to_xbar_RDATA(319 downto 288),
      s_axi_rdata(287 downto 256) => s08_couplers_to_xbar_RDATA(287 downto 256),
      s_axi_rdata(255 downto 224) => s07_couplers_to_xbar_RDATA(255 downto 224),
      s_axi_rdata(223 downto 192) => s06_couplers_to_xbar_RDATA(223 downto 192),
      s_axi_rdata(191 downto 160) => s05_couplers_to_xbar_RDATA(191 downto 160),
      s_axi_rdata(159 downto 128) => s04_couplers_to_xbar_RDATA(159 downto 128),
      s_axi_rdata(127 downto 96) => s03_couplers_to_xbar_RDATA(127 downto 96),
      s_axi_rdata(95 downto 64) => s02_couplers_to_xbar_RDATA(95 downto 64),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(47 downto 44) => s11_couplers_to_xbar_RID(47 downto 44),
      s_axi_rid(43 downto 40) => s10_couplers_to_xbar_RID(43 downto 40),
      s_axi_rid(39 downto 36) => NLW_xbar_s_axi_rid_UNCONNECTED(39 downto 36),
      s_axi_rid(35 downto 32) => s08_couplers_to_xbar_RID(35 downto 32),
      s_axi_rid(31 downto 28) => s07_couplers_to_xbar_RID(31 downto 28),
      s_axi_rid(27 downto 24) => NLW_xbar_s_axi_rid_UNCONNECTED(27 downto 24),
      s_axi_rid(23 downto 20) => s05_couplers_to_xbar_RID(23 downto 20),
      s_axi_rid(19 downto 16) => s04_couplers_to_xbar_RID(19 downto 16),
      s_axi_rid(15 downto 12) => NLW_xbar_s_axi_rid_UNCONNECTED(15 downto 12),
      s_axi_rid(11 downto 8) => s02_couplers_to_xbar_RID(11 downto 8),
      s_axi_rid(7 downto 4) => s01_couplers_to_xbar_RID(7 downto 4),
      s_axi_rid(3 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast(11) => s11_couplers_to_xbar_RLAST(11),
      s_axi_rlast(10) => s10_couplers_to_xbar_RLAST(10),
      s_axi_rlast(9) => s09_couplers_to_xbar_RLAST(9),
      s_axi_rlast(8) => s08_couplers_to_xbar_RLAST(8),
      s_axi_rlast(7) => s07_couplers_to_xbar_RLAST(7),
      s_axi_rlast(6) => s06_couplers_to_xbar_RLAST(6),
      s_axi_rlast(5) => s05_couplers_to_xbar_RLAST(5),
      s_axi_rlast(4) => s04_couplers_to_xbar_RLAST(4),
      s_axi_rlast(3) => s03_couplers_to_xbar_RLAST(3),
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(11) => s11_couplers_to_xbar_RREADY,
      s_axi_rready(10) => s10_couplers_to_xbar_RREADY,
      s_axi_rready(9) => s09_couplers_to_xbar_RREADY,
      s_axi_rready(8) => s08_couplers_to_xbar_RREADY,
      s_axi_rready(7) => s07_couplers_to_xbar_RREADY,
      s_axi_rready(6) => s06_couplers_to_xbar_RREADY,
      s_axi_rready(5) => s05_couplers_to_xbar_RREADY,
      s_axi_rready(4) => s04_couplers_to_xbar_RREADY,
      s_axi_rready(3) => s03_couplers_to_xbar_RREADY,
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(23 downto 22) => s11_couplers_to_xbar_RRESP(23 downto 22),
      s_axi_rresp(21 downto 20) => s10_couplers_to_xbar_RRESP(21 downto 20),
      s_axi_rresp(19 downto 18) => s09_couplers_to_xbar_RRESP(19 downto 18),
      s_axi_rresp(17 downto 16) => s08_couplers_to_xbar_RRESP(17 downto 16),
      s_axi_rresp(15 downto 14) => s07_couplers_to_xbar_RRESP(15 downto 14),
      s_axi_rresp(13 downto 12) => s06_couplers_to_xbar_RRESP(13 downto 12),
      s_axi_rresp(11 downto 10) => s05_couplers_to_xbar_RRESP(11 downto 10),
      s_axi_rresp(9 downto 8) => s04_couplers_to_xbar_RRESP(9 downto 8),
      s_axi_rresp(7 downto 6) => s03_couplers_to_xbar_RRESP(7 downto 6),
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(11) => s11_couplers_to_xbar_RVALID(11),
      s_axi_rvalid(10) => s10_couplers_to_xbar_RVALID(10),
      s_axi_rvalid(9) => s09_couplers_to_xbar_RVALID(9),
      s_axi_rvalid(8) => s08_couplers_to_xbar_RVALID(8),
      s_axi_rvalid(7) => s07_couplers_to_xbar_RVALID(7),
      s_axi_rvalid(6) => s06_couplers_to_xbar_RVALID(6),
      s_axi_rvalid(5) => s05_couplers_to_xbar_RVALID(5),
      s_axi_rvalid(4) => s04_couplers_to_xbar_RVALID(4),
      s_axi_rvalid(3) => s03_couplers_to_xbar_RVALID(3),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(383 downto 352) => s11_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(351 downto 320) => s10_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(319 downto 288) => s09_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(287 downto 256) => s08_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(255 downto 224) => s07_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(223 downto 192) => s06_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(191 downto 160) => s05_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(159 downto 128) => s04_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(127 downto 96) => s03_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(95 downto 64) => s02_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(11) => s11_couplers_to_xbar_WLAST,
      s_axi_wlast(10) => s10_couplers_to_xbar_WLAST,
      s_axi_wlast(9) => s09_couplers_to_xbar_WLAST,
      s_axi_wlast(8) => s08_couplers_to_xbar_WLAST,
      s_axi_wlast(7) => s07_couplers_to_xbar_WLAST,
      s_axi_wlast(6) => s06_couplers_to_xbar_WLAST,
      s_axi_wlast(5) => s05_couplers_to_xbar_WLAST,
      s_axi_wlast(4) => s04_couplers_to_xbar_WLAST,
      s_axi_wlast(3) => s03_couplers_to_xbar_WLAST,
      s_axi_wlast(2) => s02_couplers_to_xbar_WLAST,
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(11) => s11_couplers_to_xbar_WREADY(11),
      s_axi_wready(10) => s10_couplers_to_xbar_WREADY(10),
      s_axi_wready(9) => s09_couplers_to_xbar_WREADY(9),
      s_axi_wready(8) => s08_couplers_to_xbar_WREADY(8),
      s_axi_wready(7) => s07_couplers_to_xbar_WREADY(7),
      s_axi_wready(6) => s06_couplers_to_xbar_WREADY(6),
      s_axi_wready(5) => s05_couplers_to_xbar_WREADY(5),
      s_axi_wready(4) => s04_couplers_to_xbar_WREADY(4),
      s_axi_wready(3) => s03_couplers_to_xbar_WREADY(3),
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY(2),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(47 downto 44) => s11_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(43 downto 40) => s10_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(39 downto 36) => s09_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(35 downto 32) => s08_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(31 downto 28) => s07_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(27 downto 24) => s06_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(23 downto 20) => s05_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(19 downto 16) => s04_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(15 downto 12) => s03_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(11 downto 8) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(11) => s11_couplers_to_xbar_WVALID,
      s_axi_wvalid(10) => s10_couplers_to_xbar_WVALID,
      s_axi_wvalid(9) => s09_couplers_to_xbar_WVALID,
      s_axi_wvalid(8) => s08_couplers_to_xbar_WVALID,
      s_axi_wvalid(7) => s07_couplers_to_xbar_WVALID,
      s_axi_wvalid(6) => s06_couplers_to_xbar_WVALID,
      s_axi_wvalid(5) => s05_couplers_to_xbar_WVALID,
      s_axi_wvalid(4) => s04_couplers_to_xbar_WVALID,
      s_axi_wvalid(3) => s03_couplers_to_xbar_WVALID,
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze is
  port (
    DDR3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DDR3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_cas_n : out STD_LOGIC;
    DDR3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_dm : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR3_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    DDR3_dqs_n : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR3_dqs_p : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ras_n : out STD_LOGIC;
    DDR3_reset_n : out STD_LOGIC;
    DDR3_we_n : out STD_LOGIC;
    sys_clk_n : in STD_LOGIC;
    sys_clk_p : in STD_LOGIC;
    sys_rst : in STD_LOGIC;
    uart_rtl_rxd : in STD_LOGIC;
    uart_rtl_txd : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of microblaze : entity is "microblaze,IP_Integrator,{x_ipProduct=Vivado 2015.1,x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=microblaze,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=74,numReposBlks=49,numNonXlnxBlks=0,numHierBlks=25,maxHierDepth=0,da_axi4_cnt=97,da_board_cnt=10,da_bram_cntlr_cnt=2,da_mb_cnt=15,da_ps7_cnt=3,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of microblaze : entity is "microblaze.hwdef";
end microblaze;

architecture STRUCTURE of microblaze is
  component microblaze_mig_7series_0_0 is
  port (
    sys_rst : in STD_LOGIC;
    ddr3_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ddr3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ddr3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_ras_n : out STD_LOGIC;
    ddr3_cas_n : out STD_LOGIC;
    ddr3_we_n : out STD_LOGIC;
    ddr3_reset_n : out STD_LOGIC;
    ddr3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_dm : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ddr3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ui_clk_sync_rst : out STD_LOGIC;
    ui_clk : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    sys_clk_p : in STD_LOGIC;
    sys_clk_n : in STD_LOGIC;
    init_calib_complete : out STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  end component microblaze_mig_7series_0_0;
  component microblaze_rst_mig_7series_0_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component microblaze_rst_mig_7series_0_100M_0;
  component microblaze_axi_timer_0_0 is
  port (
    capturetrig0 : in STD_LOGIC;
    capturetrig1 : in STD_LOGIC;
    generateout0 : out STD_LOGIC;
    generateout1 : out STD_LOGIC;
    pwm0 : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  end component microblaze_axi_timer_0_0;
  component microblaze_axi_uartlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component microblaze_axi_uartlite_0_0;
  component microblaze_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component microblaze_blk_mem_gen_0_0;
  component microblaze_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component microblaze_axi_bram_ctrl_0_0;
  component microblaze_microblaze_0_axi_intc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component microblaze_microblaze_0_axi_intc_0;
  component microblaze_microblaze_0_4 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    M_AXI_IC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_AWLOCK : out STD_LOGIC;
    M_AXI_IC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWVALID : out STD_LOGIC;
    M_AXI_IC_AWREADY : in STD_LOGIC;
    M_AXI_IC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_WLAST : out STD_LOGIC;
    M_AXI_IC_WVALID : out STD_LOGIC;
    M_AXI_IC_WREADY : in STD_LOGIC;
    M_AXI_IC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_BVALID : in STD_LOGIC;
    M_AXI_IC_BREADY : out STD_LOGIC;
    M_AXI_IC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_ARLOCK : out STD_LOGIC;
    M_AXI_IC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARVALID : out STD_LOGIC;
    M_AXI_IC_ARREADY : in STD_LOGIC;
    M_AXI_IC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_RLAST : in STD_LOGIC;
    M_AXI_IC_RVALID : in STD_LOGIC;
    M_AXI_IC_RREADY : out STD_LOGIC;
    M_AXI_DC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_AWLOCK : out STD_LOGIC;
    M_AXI_DC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWVALID : out STD_LOGIC;
    M_AXI_DC_AWREADY : in STD_LOGIC;
    M_AXI_DC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_WLAST : out STD_LOGIC;
    M_AXI_DC_WVALID : out STD_LOGIC;
    M_AXI_DC_WREADY : in STD_LOGIC;
    M_AXI_DC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_BVALID : in STD_LOGIC;
    M_AXI_DC_BREADY : out STD_LOGIC;
    M_AXI_DC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_ARLOCK : out STD_LOGIC;
    M_AXI_DC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARVALID : out STD_LOGIC;
    M_AXI_DC_ARREADY : in STD_LOGIC;
    M_AXI_DC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_RLAST : in STD_LOGIC;
    M_AXI_DC_RVALID : in STD_LOGIC;
    M_AXI_DC_RREADY : out STD_LOGIC
  );
  end component microblaze_microblaze_0_4;
  component microblaze_microblaze_0_xlconcat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component microblaze_microblaze_0_xlconcat_0;
  component microblaze_microblaze_0_axi_intc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component microblaze_microblaze_0_axi_intc_1;
  component microblaze_microblaze_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    M_AXI_IC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_AWLOCK : out STD_LOGIC;
    M_AXI_IC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWVALID : out STD_LOGIC;
    M_AXI_IC_AWREADY : in STD_LOGIC;
    M_AXI_IC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_WLAST : out STD_LOGIC;
    M_AXI_IC_WVALID : out STD_LOGIC;
    M_AXI_IC_WREADY : in STD_LOGIC;
    M_AXI_IC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_BVALID : in STD_LOGIC;
    M_AXI_IC_BREADY : out STD_LOGIC;
    M_AXI_IC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_ARLOCK : out STD_LOGIC;
    M_AXI_IC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARVALID : out STD_LOGIC;
    M_AXI_IC_ARREADY : in STD_LOGIC;
    M_AXI_IC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_RLAST : in STD_LOGIC;
    M_AXI_IC_RVALID : in STD_LOGIC;
    M_AXI_IC_RREADY : out STD_LOGIC;
    M_AXI_DC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_AWLOCK : out STD_LOGIC;
    M_AXI_DC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWVALID : out STD_LOGIC;
    M_AXI_DC_AWREADY : in STD_LOGIC;
    M_AXI_DC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_WLAST : out STD_LOGIC;
    M_AXI_DC_WVALID : out STD_LOGIC;
    M_AXI_DC_WREADY : in STD_LOGIC;
    M_AXI_DC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_BVALID : in STD_LOGIC;
    M_AXI_DC_BREADY : out STD_LOGIC;
    M_AXI_DC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_ARLOCK : out STD_LOGIC;
    M_AXI_DC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARVALID : out STD_LOGIC;
    M_AXI_DC_ARREADY : in STD_LOGIC;
    M_AXI_DC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_RLAST : in STD_LOGIC;
    M_AXI_DC_RVALID : in STD_LOGIC;
    M_AXI_DC_RREADY : out STD_LOGIC
  );
  end component microblaze_microblaze_0_0;
  component microblaze_microblaze_0_xlconcat_5 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component microblaze_microblaze_0_xlconcat_5;
  component microblaze_microblaze_0_axi_intc_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component microblaze_microblaze_0_axi_intc_2;
  component microblaze_microblaze_0_1 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    M_AXI_IC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_AWLOCK : out STD_LOGIC;
    M_AXI_IC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWVALID : out STD_LOGIC;
    M_AXI_IC_AWREADY : in STD_LOGIC;
    M_AXI_IC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_WLAST : out STD_LOGIC;
    M_AXI_IC_WVALID : out STD_LOGIC;
    M_AXI_IC_WREADY : in STD_LOGIC;
    M_AXI_IC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_BVALID : in STD_LOGIC;
    M_AXI_IC_BREADY : out STD_LOGIC;
    M_AXI_IC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_ARLOCK : out STD_LOGIC;
    M_AXI_IC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARVALID : out STD_LOGIC;
    M_AXI_IC_ARREADY : in STD_LOGIC;
    M_AXI_IC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_RLAST : in STD_LOGIC;
    M_AXI_IC_RVALID : in STD_LOGIC;
    M_AXI_IC_RREADY : out STD_LOGIC;
    M_AXI_DC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_AWLOCK : out STD_LOGIC;
    M_AXI_DC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWVALID : out STD_LOGIC;
    M_AXI_DC_AWREADY : in STD_LOGIC;
    M_AXI_DC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_WLAST : out STD_LOGIC;
    M_AXI_DC_WVALID : out STD_LOGIC;
    M_AXI_DC_WREADY : in STD_LOGIC;
    M_AXI_DC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_BVALID : in STD_LOGIC;
    M_AXI_DC_BREADY : out STD_LOGIC;
    M_AXI_DC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_ARLOCK : out STD_LOGIC;
    M_AXI_DC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARVALID : out STD_LOGIC;
    M_AXI_DC_ARREADY : in STD_LOGIC;
    M_AXI_DC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_RLAST : in STD_LOGIC;
    M_AXI_DC_RVALID : in STD_LOGIC;
    M_AXI_DC_RREADY : out STD_LOGIC
  );
  end component microblaze_microblaze_0_1;
  component microblaze_microblaze_0_xlconcat_6 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component microblaze_microblaze_0_xlconcat_6;
  component microblaze_microblaze_0_axi_intc_3 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component microblaze_microblaze_0_axi_intc_3;
  component microblaze_microblaze_0_2 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    M_AXI_IC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_AWLOCK : out STD_LOGIC;
    M_AXI_IC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWVALID : out STD_LOGIC;
    M_AXI_IC_AWREADY : in STD_LOGIC;
    M_AXI_IC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_WLAST : out STD_LOGIC;
    M_AXI_IC_WVALID : out STD_LOGIC;
    M_AXI_IC_WREADY : in STD_LOGIC;
    M_AXI_IC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_BVALID : in STD_LOGIC;
    M_AXI_IC_BREADY : out STD_LOGIC;
    M_AXI_IC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_ARLOCK : out STD_LOGIC;
    M_AXI_IC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARVALID : out STD_LOGIC;
    M_AXI_IC_ARREADY : in STD_LOGIC;
    M_AXI_IC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_RLAST : in STD_LOGIC;
    M_AXI_IC_RVALID : in STD_LOGIC;
    M_AXI_IC_RREADY : out STD_LOGIC;
    M_AXI_DC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_AWLOCK : out STD_LOGIC;
    M_AXI_DC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWVALID : out STD_LOGIC;
    M_AXI_DC_AWREADY : in STD_LOGIC;
    M_AXI_DC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_WLAST : out STD_LOGIC;
    M_AXI_DC_WVALID : out STD_LOGIC;
    M_AXI_DC_WREADY : in STD_LOGIC;
    M_AXI_DC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_BVALID : in STD_LOGIC;
    M_AXI_DC_BREADY : out STD_LOGIC;
    M_AXI_DC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_ARLOCK : out STD_LOGIC;
    M_AXI_DC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARVALID : out STD_LOGIC;
    M_AXI_DC_ARREADY : in STD_LOGIC;
    M_AXI_DC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_RLAST : in STD_LOGIC;
    M_AXI_DC_RVALID : in STD_LOGIC;
    M_AXI_DC_RREADY : out STD_LOGIC
  );
  end component microblaze_microblaze_0_2;
  component microblaze_microblaze_0_xlconcat_7 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component microblaze_microblaze_0_xlconcat_7;
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_timer_0_interrupt : STD_LOGIC;
  signal axi_uartlite_0_UART_RxD : STD_LOGIC;
  signal axi_uartlite_0_UART_TxD : STD_LOGIC;
  signal axi_uartlite_0_interrupt : STD_LOGIC;
  signal hier_1_M_AXI_DC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_1_M_AXI_DC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_1_M_AXI_DC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_1_M_AXI_DC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_1_M_AXI_DC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_1_M_AXI_DC_ARLOCK : STD_LOGIC;
  signal hier_1_M_AXI_DC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_1_M_AXI_DC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_1_M_AXI_DC_ARREADY : STD_LOGIC;
  signal hier_1_M_AXI_DC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_1_M_AXI_DC_ARVALID : STD_LOGIC;
  signal hier_1_M_AXI_DC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_1_M_AXI_DC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_1_M_AXI_DC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_1_M_AXI_DC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_1_M_AXI_DC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_1_M_AXI_DC_AWLOCK : STD_LOGIC;
  signal hier_1_M_AXI_DC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_1_M_AXI_DC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_1_M_AXI_DC_AWREADY : STD_LOGIC;
  signal hier_1_M_AXI_DC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_1_M_AXI_DC_AWVALID : STD_LOGIC;
  signal hier_1_M_AXI_DC_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_1_M_AXI_DC_BREADY : STD_LOGIC;
  signal hier_1_M_AXI_DC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_1_M_AXI_DC_BVALID : STD_LOGIC;
  signal hier_1_M_AXI_DC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_1_M_AXI_DC_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_1_M_AXI_DC_RLAST : STD_LOGIC;
  signal hier_1_M_AXI_DC_RREADY : STD_LOGIC;
  signal hier_1_M_AXI_DC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_1_M_AXI_DC_RVALID : STD_LOGIC;
  signal hier_1_M_AXI_DC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_1_M_AXI_DC_WLAST : STD_LOGIC;
  signal hier_1_M_AXI_DC_WREADY : STD_LOGIC;
  signal hier_1_M_AXI_DC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_1_M_AXI_DC_WVALID : STD_LOGIC;
  signal hier_1_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_1_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_1_M_AXI_DP_ARREADY : STD_LOGIC;
  signal hier_1_M_AXI_DP_ARVALID : STD_LOGIC;
  signal hier_1_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_1_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_1_M_AXI_DP_AWREADY : STD_LOGIC;
  signal hier_1_M_AXI_DP_AWVALID : STD_LOGIC;
  signal hier_1_M_AXI_DP_BREADY : STD_LOGIC;
  signal hier_1_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_1_M_AXI_DP_BVALID : STD_LOGIC;
  signal hier_1_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_1_M_AXI_DP_RREADY : STD_LOGIC;
  signal hier_1_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_1_M_AXI_DP_RVALID : STD_LOGIC;
  signal hier_1_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_1_M_AXI_DP_WREADY : STD_LOGIC;
  signal hier_1_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_1_M_AXI_DP_WVALID : STD_LOGIC;
  signal hier_1_M_AXI_IC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_1_M_AXI_IC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_1_M_AXI_IC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_1_M_AXI_IC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_1_M_AXI_IC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_1_M_AXI_IC_ARLOCK : STD_LOGIC;
  signal hier_1_M_AXI_IC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_1_M_AXI_IC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_1_M_AXI_IC_ARREADY : STD_LOGIC;
  signal hier_1_M_AXI_IC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_1_M_AXI_IC_ARVALID : STD_LOGIC;
  signal hier_1_M_AXI_IC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_1_M_AXI_IC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_1_M_AXI_IC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_1_M_AXI_IC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_1_M_AXI_IC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_1_M_AXI_IC_AWLOCK : STD_LOGIC;
  signal hier_1_M_AXI_IC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_1_M_AXI_IC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_1_M_AXI_IC_AWREADY : STD_LOGIC;
  signal hier_1_M_AXI_IC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_1_M_AXI_IC_AWVALID : STD_LOGIC;
  signal hier_1_M_AXI_IC_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_1_M_AXI_IC_BREADY : STD_LOGIC;
  signal hier_1_M_AXI_IC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_1_M_AXI_IC_BVALID : STD_LOGIC;
  signal hier_1_M_AXI_IC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_1_M_AXI_IC_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_1_M_AXI_IC_RLAST : STD_LOGIC;
  signal hier_1_M_AXI_IC_RREADY : STD_LOGIC;
  signal hier_1_M_AXI_IC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_1_M_AXI_IC_RVALID : STD_LOGIC;
  signal hier_1_M_AXI_IC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_1_M_AXI_IC_WLAST : STD_LOGIC;
  signal hier_1_M_AXI_IC_WREADY : STD_LOGIC;
  signal hier_1_M_AXI_IC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_1_M_AXI_IC_WVALID : STD_LOGIC;
  signal hier_2_M_AXI_DC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_2_M_AXI_DC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_2_M_AXI_DC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_2_M_AXI_DC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_2_M_AXI_DC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_2_M_AXI_DC_ARLOCK : STD_LOGIC;
  signal hier_2_M_AXI_DC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_2_M_AXI_DC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_2_M_AXI_DC_ARREADY : STD_LOGIC;
  signal hier_2_M_AXI_DC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_2_M_AXI_DC_ARVALID : STD_LOGIC;
  signal hier_2_M_AXI_DC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_2_M_AXI_DC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_2_M_AXI_DC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_2_M_AXI_DC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_2_M_AXI_DC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_2_M_AXI_DC_AWLOCK : STD_LOGIC;
  signal hier_2_M_AXI_DC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_2_M_AXI_DC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_2_M_AXI_DC_AWREADY : STD_LOGIC;
  signal hier_2_M_AXI_DC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_2_M_AXI_DC_AWVALID : STD_LOGIC;
  signal hier_2_M_AXI_DC_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_2_M_AXI_DC_BREADY : STD_LOGIC;
  signal hier_2_M_AXI_DC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_2_M_AXI_DC_BVALID : STD_LOGIC;
  signal hier_2_M_AXI_DC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_2_M_AXI_DC_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_2_M_AXI_DC_RLAST : STD_LOGIC;
  signal hier_2_M_AXI_DC_RREADY : STD_LOGIC;
  signal hier_2_M_AXI_DC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_2_M_AXI_DC_RVALID : STD_LOGIC;
  signal hier_2_M_AXI_DC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_2_M_AXI_DC_WLAST : STD_LOGIC;
  signal hier_2_M_AXI_DC_WREADY : STD_LOGIC;
  signal hier_2_M_AXI_DC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_2_M_AXI_DC_WVALID : STD_LOGIC;
  signal hier_2_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_2_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_2_M_AXI_DP_ARREADY : STD_LOGIC;
  signal hier_2_M_AXI_DP_ARVALID : STD_LOGIC;
  signal hier_2_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_2_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_2_M_AXI_DP_AWREADY : STD_LOGIC;
  signal hier_2_M_AXI_DP_AWVALID : STD_LOGIC;
  signal hier_2_M_AXI_DP_BREADY : STD_LOGIC;
  signal hier_2_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_2_M_AXI_DP_BVALID : STD_LOGIC;
  signal hier_2_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_2_M_AXI_DP_RREADY : STD_LOGIC;
  signal hier_2_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_2_M_AXI_DP_RVALID : STD_LOGIC;
  signal hier_2_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_2_M_AXI_DP_WREADY : STD_LOGIC;
  signal hier_2_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_2_M_AXI_DP_WVALID : STD_LOGIC;
  signal hier_2_M_AXI_IC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_2_M_AXI_IC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_2_M_AXI_IC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_2_M_AXI_IC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_2_M_AXI_IC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_2_M_AXI_IC_ARLOCK : STD_LOGIC;
  signal hier_2_M_AXI_IC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_2_M_AXI_IC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_2_M_AXI_IC_ARREADY : STD_LOGIC;
  signal hier_2_M_AXI_IC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_2_M_AXI_IC_ARVALID : STD_LOGIC;
  signal hier_2_M_AXI_IC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_2_M_AXI_IC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_2_M_AXI_IC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_2_M_AXI_IC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_2_M_AXI_IC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_2_M_AXI_IC_AWLOCK : STD_LOGIC;
  signal hier_2_M_AXI_IC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_2_M_AXI_IC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_2_M_AXI_IC_AWREADY : STD_LOGIC;
  signal hier_2_M_AXI_IC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_2_M_AXI_IC_AWVALID : STD_LOGIC;
  signal hier_2_M_AXI_IC_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_2_M_AXI_IC_BREADY : STD_LOGIC;
  signal hier_2_M_AXI_IC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_2_M_AXI_IC_BVALID : STD_LOGIC;
  signal hier_2_M_AXI_IC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_2_M_AXI_IC_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_2_M_AXI_IC_RLAST : STD_LOGIC;
  signal hier_2_M_AXI_IC_RREADY : STD_LOGIC;
  signal hier_2_M_AXI_IC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_2_M_AXI_IC_RVALID : STD_LOGIC;
  signal hier_2_M_AXI_IC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_2_M_AXI_IC_WLAST : STD_LOGIC;
  signal hier_2_M_AXI_IC_WREADY : STD_LOGIC;
  signal hier_2_M_AXI_IC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_2_M_AXI_IC_WVALID : STD_LOGIC;
  signal hier_3_M_AXI_DC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_3_M_AXI_DC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_3_M_AXI_DC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_3_M_AXI_DC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_3_M_AXI_DC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_3_M_AXI_DC_ARLOCK : STD_LOGIC;
  signal hier_3_M_AXI_DC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_3_M_AXI_DC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_3_M_AXI_DC_ARREADY : STD_LOGIC;
  signal hier_3_M_AXI_DC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_3_M_AXI_DC_ARVALID : STD_LOGIC;
  signal hier_3_M_AXI_DC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_3_M_AXI_DC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_3_M_AXI_DC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_3_M_AXI_DC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_3_M_AXI_DC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_3_M_AXI_DC_AWLOCK : STD_LOGIC;
  signal hier_3_M_AXI_DC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_3_M_AXI_DC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_3_M_AXI_DC_AWREADY : STD_LOGIC;
  signal hier_3_M_AXI_DC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_3_M_AXI_DC_AWVALID : STD_LOGIC;
  signal hier_3_M_AXI_DC_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_3_M_AXI_DC_BREADY : STD_LOGIC;
  signal hier_3_M_AXI_DC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_3_M_AXI_DC_BVALID : STD_LOGIC;
  signal hier_3_M_AXI_DC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_3_M_AXI_DC_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_3_M_AXI_DC_RLAST : STD_LOGIC;
  signal hier_3_M_AXI_DC_RREADY : STD_LOGIC;
  signal hier_3_M_AXI_DC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_3_M_AXI_DC_RVALID : STD_LOGIC;
  signal hier_3_M_AXI_DC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_3_M_AXI_DC_WLAST : STD_LOGIC;
  signal hier_3_M_AXI_DC_WREADY : STD_LOGIC;
  signal hier_3_M_AXI_DC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_3_M_AXI_DC_WVALID : STD_LOGIC;
  signal hier_3_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_3_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_3_M_AXI_DP_ARREADY : STD_LOGIC;
  signal hier_3_M_AXI_DP_ARVALID : STD_LOGIC;
  signal hier_3_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_3_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_3_M_AXI_DP_AWREADY : STD_LOGIC;
  signal hier_3_M_AXI_DP_AWVALID : STD_LOGIC;
  signal hier_3_M_AXI_DP_BREADY : STD_LOGIC;
  signal hier_3_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_3_M_AXI_DP_BVALID : STD_LOGIC;
  signal hier_3_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_3_M_AXI_DP_RREADY : STD_LOGIC;
  signal hier_3_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_3_M_AXI_DP_RVALID : STD_LOGIC;
  signal hier_3_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_3_M_AXI_DP_WREADY : STD_LOGIC;
  signal hier_3_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_3_M_AXI_DP_WVALID : STD_LOGIC;
  signal hier_3_M_AXI_IC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_3_M_AXI_IC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_3_M_AXI_IC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_3_M_AXI_IC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_3_M_AXI_IC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_3_M_AXI_IC_ARLOCK : STD_LOGIC;
  signal hier_3_M_AXI_IC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_3_M_AXI_IC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_3_M_AXI_IC_ARREADY : STD_LOGIC;
  signal hier_3_M_AXI_IC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_3_M_AXI_IC_ARVALID : STD_LOGIC;
  signal hier_3_M_AXI_IC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_3_M_AXI_IC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_3_M_AXI_IC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_3_M_AXI_IC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_3_M_AXI_IC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_3_M_AXI_IC_AWLOCK : STD_LOGIC;
  signal hier_3_M_AXI_IC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_3_M_AXI_IC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_3_M_AXI_IC_AWREADY : STD_LOGIC;
  signal hier_3_M_AXI_IC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_3_M_AXI_IC_AWVALID : STD_LOGIC;
  signal hier_3_M_AXI_IC_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_3_M_AXI_IC_BREADY : STD_LOGIC;
  signal hier_3_M_AXI_IC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_3_M_AXI_IC_BVALID : STD_LOGIC;
  signal hier_3_M_AXI_IC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_3_M_AXI_IC_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_3_M_AXI_IC_RLAST : STD_LOGIC;
  signal hier_3_M_AXI_IC_RREADY : STD_LOGIC;
  signal hier_3_M_AXI_IC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_3_M_AXI_IC_RVALID : STD_LOGIC;
  signal hier_3_M_AXI_IC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_3_M_AXI_IC_WLAST : STD_LOGIC;
  signal hier_3_M_AXI_IC_WREADY : STD_LOGIC;
  signal hier_3_M_AXI_IC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_3_M_AXI_IC_WVALID : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_DC_ARLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_ARREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_DC_AWLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_AWREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_BVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_RLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_RVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_WLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_WVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_IC_ARLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_ARREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_IC_AWLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_AWREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_BVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_RLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_RVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_WLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_WREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_WVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_dp_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_dp_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_BREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_dp_BVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_RREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_dp_RVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_WREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_dp_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWLOCK : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_WLAST : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_1_CE : STD_LOGIC;
  signal microblaze_0_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_1_READY : STD_LOGIC;
  signal microblaze_0_dlmb_1_UE : STD_LOGIC;
  signal microblaze_0_dlmb_1_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_2_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_2_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_2_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_2_CE : STD_LOGIC;
  signal microblaze_0_dlmb_2_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_2_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_2_READY : STD_LOGIC;
  signal microblaze_0_dlmb_2_UE : STD_LOGIC;
  signal microblaze_0_dlmb_2_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_2_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_2_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_3_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_3_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_3_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_3_CE : STD_LOGIC;
  signal microblaze_0_dlmb_3_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_3_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_3_READY : STD_LOGIC;
  signal microblaze_0_dlmb_3_UE : STD_LOGIC;
  signal microblaze_0_dlmb_3_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_3_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_3_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_4_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_4_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_4_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_4_CE : STD_LOGIC;
  signal microblaze_0_dlmb_4_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_4_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_4_READY : STD_LOGIC;
  signal microblaze_0_dlmb_4_UE : STD_LOGIC;
  signal microblaze_0_dlmb_4_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_4_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_4_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_CE : STD_LOGIC;
  signal microblaze_0_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_READY : STD_LOGIC;
  signal microblaze_0_ilmb_1_UE : STD_LOGIC;
  signal microblaze_0_ilmb_1_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_2_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_2_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_2_CE : STD_LOGIC;
  signal microblaze_0_ilmb_2_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_2_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_2_READY : STD_LOGIC;
  signal microblaze_0_ilmb_2_UE : STD_LOGIC;
  signal microblaze_0_ilmb_2_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_3_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_3_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_3_CE : STD_LOGIC;
  signal microblaze_0_ilmb_3_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_3_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_3_READY : STD_LOGIC;
  signal microblaze_0_ilmb_3_UE : STD_LOGIC;
  signal microblaze_0_ilmb_3_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_4_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_4_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_4_CE : STD_LOGIC;
  signal microblaze_0_ilmb_4_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_4_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_4_READY : STD_LOGIC;
  signal microblaze_0_ilmb_4_UE : STD_LOGIC;
  signal microblaze_0_ilmb_4_WAIT : STD_LOGIC;
  signal microblaze_0_intc_axi_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal microblaze_0_intc_axi_ARREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_ARVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal microblaze_0_intc_axi_AWREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_AWVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_BREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intc_axi_BVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_RREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intc_axi_RVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_WREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_intc_axi_WVALID : STD_LOGIC;
  signal microblaze_0_interrupt_1_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal microblaze_0_interrupt_1_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_interrupt_1_INTERRUPT : STD_LOGIC;
  signal microblaze_0_interrupt_2_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal microblaze_0_interrupt_2_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_interrupt_2_INTERRUPT : STD_LOGIC;
  signal microblaze_0_interrupt_3_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal microblaze_0_interrupt_3_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_interrupt_3_INTERRUPT : STD_LOGIC;
  signal microblaze_0_interrupt_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal microblaze_0_interrupt_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_interrupt_INTERRUPT : STD_LOGIC;
  signal microblaze_0_intr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intr_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intr_2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intr_3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR3_ADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal mig_7series_0_DDR3_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mig_7series_0_DDR3_CAS_N : STD_LOGIC;
  signal mig_7series_0_DDR3_CKE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_CK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_CK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_CS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_DM : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mig_7series_0_DDR3_DQ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal mig_7series_0_DDR3_DQS_N : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mig_7series_0_DDR3_DQS_P : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mig_7series_0_DDR3_ODT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_RAS_N : STD_LOGIC;
  signal mig_7series_0_DDR3_RESET_N : STD_LOGIC;
  signal mig_7series_0_DDR3_WE_N : STD_LOGIC;
  signal mig_7series_0_mmcm_locked : STD_LOGIC;
  signal mig_7series_0_ui_clk_sync_rst : STD_LOGIC;
  signal rst_mig_7series_0_100M_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_mb_reset : STD_LOGIC;
  signal rst_mig_7series_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_clk_n_1 : STD_LOGIC;
  signal sys_clk_p_1 : STD_LOGIC;
  signal sys_rst_1 : STD_LOGIC;
  signal NLW_axi_timer_0_generateout0_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_0_generateout1_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_0_pwm0_UNCONNECTED : STD_LOGIC;
  signal NLW_mig_7series_0_init_calib_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_mig_7series_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of axi_bram_ctrl_0 : label is "byte  0xC0000000 32 >  microblaze blk_mem_gen_0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of axi_bram_ctrl_0 : label is "yes";
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of microblaze_0 : label is "microblaze-le > microblaze microblaze_0_local_memory/dlmb_bram_if_cntlr microblaze axi_bram_ctrl_0";
  attribute KEEP_HIERARCHY of microblaze_0 : label is "yes";
  attribute BMM_INFO_PROCESSOR of microblaze_1 : label is "microblaze-le > microblaze microblaze_0_local_memory_1/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY of microblaze_1 : label is "yes";
  attribute BMM_INFO_PROCESSOR of microblaze_2 : label is "microblaze-le > microblaze microblaze_0_local_memory_2/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY of microblaze_2 : label is "yes";
  attribute BMM_INFO_PROCESSOR of microblaze_3 : label is "microblaze-le > microblaze microblaze_0_local_memory_3/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY of microblaze_3 : label is "yes";
begin
  DDR3_addr(13 downto 0) <= mig_7series_0_DDR3_ADDR(13 downto 0);
  DDR3_ba(2 downto 0) <= mig_7series_0_DDR3_BA(2 downto 0);
  DDR3_cas_n <= mig_7series_0_DDR3_CAS_N;
  DDR3_ck_n(0) <= mig_7series_0_DDR3_CK_N(0);
  DDR3_ck_p(0) <= mig_7series_0_DDR3_CK_P(0);
  DDR3_cke(0) <= mig_7series_0_DDR3_CKE(0);
  DDR3_cs_n(0) <= mig_7series_0_DDR3_CS_N(0);
  DDR3_dm(7 downto 0) <= mig_7series_0_DDR3_DM(7 downto 0);
  DDR3_odt(0) <= mig_7series_0_DDR3_ODT(0);
  DDR3_ras_n <= mig_7series_0_DDR3_RAS_N;
  DDR3_reset_n <= mig_7series_0_DDR3_RESET_N;
  DDR3_we_n <= mig_7series_0_DDR3_WE_N;
  axi_uartlite_0_UART_RxD <= uart_rtl_rxd;
  sys_clk_n_1 <= sys_clk_n;
  sys_clk_p_1 <= sys_clk_p;
  sys_rst_1 <= sys_rst;
  uart_rtl_txd <= axi_uartlite_0_UART_TxD;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => VCC_1
    );
axi_bram_ctrl_0: component microblaze_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      bram_addr_b(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_clk_b => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_en_b => axi_bram_ctrl_0_BRAM_PORTB_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rddata_b(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_rst_b => axi_bram_ctrl_0_BRAM_PORTB_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_we_b(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      bram_wrdata_b(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(31 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(12 downto 0) => microblaze_0_axi_periph_M04_AXI_ARADDR(12 downto 0),
      s_axi_arburst(1 downto 0) => microblaze_0_axi_periph_M04_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => microblaze_0_axi_periph_M04_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_axi_arid(3 downto 0) => microblaze_0_axi_periph_M04_AXI_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => microblaze_0_axi_periph_M04_AXI_ARLEN(7 downto 0),
      s_axi_arlock => microblaze_0_axi_periph_M04_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => microblaze_0_axi_periph_M04_AXI_ARPROT(2 downto 0),
      s_axi_arready => microblaze_0_axi_periph_M04_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => microblaze_0_axi_periph_M04_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => microblaze_0_axi_periph_M04_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => microblaze_0_axi_periph_M04_AXI_AWADDR(12 downto 0),
      s_axi_awburst(1 downto 0) => microblaze_0_axi_periph_M04_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => microblaze_0_axi_periph_M04_AXI_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => microblaze_0_axi_periph_M04_AXI_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => microblaze_0_axi_periph_M04_AXI_AWLEN(7 downto 0),
      s_axi_awlock => microblaze_0_axi_periph_M04_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => microblaze_0_axi_periph_M04_AXI_AWPROT(2 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M04_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => microblaze_0_axi_periph_M04_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => microblaze_0_axi_periph_M04_AXI_AWVALID,
      s_axi_bid(3 downto 0) => microblaze_0_axi_periph_M04_AXI_BID(3 downto 0),
      s_axi_bready => microblaze_0_axi_periph_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      s_axi_rid(3 downto 0) => microblaze_0_axi_periph_M04_AXI_RID(3 downto 0),
      s_axi_rlast => microblaze_0_axi_periph_M04_AXI_RLAST,
      s_axi_rready => microblaze_0_axi_periph_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      s_axi_wlast => microblaze_0_axi_periph_M04_AXI_WLAST,
      s_axi_wready => microblaze_0_axi_periph_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M04_AXI_WVALID
    );
axi_timer_0: component microblaze_axi_timer_0_0
     port map (
      capturetrig0 => GND_1,
      capturetrig1 => GND_1,
      freeze => GND_1,
      generateout0 => NLW_axi_timer_0_generateout0_UNCONNECTED,
      generateout1 => NLW_axi_timer_0_generateout1_UNCONNECTED,
      interrupt => axi_timer_0_interrupt,
      pwm0 => NLW_axi_timer_0_pwm0_UNCONNECTED,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(4 downto 0) => microblaze_0_axi_periph_M02_AXI_ARADDR(4 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M02_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M02_AXI_ARVALID,
      s_axi_awaddr(4 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(4 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M02_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M02_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M02_AXI_WVALID
    );
axi_uartlite_0: component microblaze_axi_uartlite_0_0
     port map (
      interrupt => axi_uartlite_0_interrupt,
      rx => axi_uartlite_0_UART_RxD,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(3 downto 0) => microblaze_0_axi_periph_M03_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M03_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M03_AXI_ARVALID,
      s_axi_awaddr(3 downto 0) => microblaze_0_axi_periph_M03_AXI_AWADDR(3 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M03_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M03_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M03_AXI_WVALID,
      tx => axi_uartlite_0_UART_TxD
    );
blk_mem_gen_0: component microblaze_blk_mem_gen_0_0
     port map (
      addra(31) => GND_1,
      addra(30) => GND_1,
      addra(29) => GND_1,
      addra(28) => GND_1,
      addra(27) => GND_1,
      addra(26) => GND_1,
      addra(25) => GND_1,
      addra(24) => GND_1,
      addra(23) => GND_1,
      addra(22) => GND_1,
      addra(21) => GND_1,
      addra(20) => GND_1,
      addra(19) => GND_1,
      addra(18) => GND_1,
      addra(17) => GND_1,
      addra(16) => GND_1,
      addra(15) => GND_1,
      addra(14) => GND_1,
      addra(13) => GND_1,
      addra(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      addrb(31) => GND_1,
      addrb(30) => GND_1,
      addrb(29) => GND_1,
      addrb(28) => GND_1,
      addrb(27) => GND_1,
      addrb(26) => GND_1,
      addrb(25) => GND_1,
      addrb(24) => GND_1,
      addrb(23) => GND_1,
      addrb(22) => GND_1,
      addrb(21) => GND_1,
      addrb(20) => GND_1,
      addrb(19) => GND_1,
      addrb(18) => GND_1,
      addrb(17) => GND_1,
      addrb(16) => GND_1,
      addrb(15) => GND_1,
      addrb(14) => GND_1,
      addrb(13) => GND_1,
      addrb(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(12 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(31 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => axi_bram_ctrl_0_BRAM_PORTB_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rstb => axi_bram_ctrl_0_BRAM_PORTB_RST,
      wea(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(3 downto 0)
    );
microblaze_0: component microblaze_microblaze_0_4
     port map (
      Byte_Enable(0 to 3) => microblaze_0_dlmb_1_BE(0 to 3),
      Clk => microblaze_0_Clk,
      DCE => microblaze_0_dlmb_1_CE,
      DReady => microblaze_0_dlmb_1_READY,
      DUE => microblaze_0_dlmb_1_UE,
      DWait => microblaze_0_dlmb_1_WAIT,
      D_AS => microblaze_0_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_0_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_0_dlmb_1_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_0_dlmb_1_WRITEDBUS(0 to 31),
      ICE => microblaze_0_ilmb_1_CE,
      IFetch => microblaze_0_ilmb_1_READSTROBE,
      IReady => microblaze_0_ilmb_1_READY,
      IUE => microblaze_0_ilmb_1_UE,
      IWAIT => microblaze_0_ilmb_1_WAIT,
      I_AS => microblaze_0_ilmb_1_ADDRSTROBE,
      Instr(0 to 31) => microblaze_0_ilmb_1_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_0_ilmb_1_ABUS(0 to 31),
      Interrupt => microblaze_0_interrupt_INTERRUPT,
      Interrupt_Ack(0 to 1) => microblaze_0_interrupt_ACK(0 to 1),
      Interrupt_Address(0) => microblaze_0_interrupt_ADDRESS(31),
      Interrupt_Address(1) => microblaze_0_interrupt_ADDRESS(30),
      Interrupt_Address(2) => microblaze_0_interrupt_ADDRESS(29),
      Interrupt_Address(3) => microblaze_0_interrupt_ADDRESS(28),
      Interrupt_Address(4) => microblaze_0_interrupt_ADDRESS(27),
      Interrupt_Address(5) => microblaze_0_interrupt_ADDRESS(26),
      Interrupt_Address(6) => microblaze_0_interrupt_ADDRESS(25),
      Interrupt_Address(7) => microblaze_0_interrupt_ADDRESS(24),
      Interrupt_Address(8) => microblaze_0_interrupt_ADDRESS(23),
      Interrupt_Address(9) => microblaze_0_interrupt_ADDRESS(22),
      Interrupt_Address(10) => microblaze_0_interrupt_ADDRESS(21),
      Interrupt_Address(11) => microblaze_0_interrupt_ADDRESS(20),
      Interrupt_Address(12) => microblaze_0_interrupt_ADDRESS(19),
      Interrupt_Address(13) => microblaze_0_interrupt_ADDRESS(18),
      Interrupt_Address(14) => microblaze_0_interrupt_ADDRESS(17),
      Interrupt_Address(15) => microblaze_0_interrupt_ADDRESS(16),
      Interrupt_Address(16) => microblaze_0_interrupt_ADDRESS(15),
      Interrupt_Address(17) => microblaze_0_interrupt_ADDRESS(14),
      Interrupt_Address(18) => microblaze_0_interrupt_ADDRESS(13),
      Interrupt_Address(19) => microblaze_0_interrupt_ADDRESS(12),
      Interrupt_Address(20) => microblaze_0_interrupt_ADDRESS(11),
      Interrupt_Address(21) => microblaze_0_interrupt_ADDRESS(10),
      Interrupt_Address(22) => microblaze_0_interrupt_ADDRESS(9),
      Interrupt_Address(23) => microblaze_0_interrupt_ADDRESS(8),
      Interrupt_Address(24) => microblaze_0_interrupt_ADDRESS(7),
      Interrupt_Address(25) => microblaze_0_interrupt_ADDRESS(6),
      Interrupt_Address(26) => microblaze_0_interrupt_ADDRESS(5),
      Interrupt_Address(27) => microblaze_0_interrupt_ADDRESS(4),
      Interrupt_Address(28) => microblaze_0_interrupt_ADDRESS(3),
      Interrupt_Address(29) => microblaze_0_interrupt_ADDRESS(2),
      Interrupt_Address(30) => microblaze_0_interrupt_ADDRESS(1),
      Interrupt_Address(31) => microblaze_0_interrupt_ADDRESS(0),
      M_AXI_DC_ARADDR(31 downto 0) => microblaze_0_M_AXI_DC_ARADDR(31 downto 0),
      M_AXI_DC_ARBURST(1 downto 0) => microblaze_0_M_AXI_DC_ARBURST(1 downto 0),
      M_AXI_DC_ARCACHE(3 downto 0) => microblaze_0_M_AXI_DC_ARCACHE(3 downto 0),
      M_AXI_DC_ARID(0) => microblaze_0_M_AXI_DC_ARID(0),
      M_AXI_DC_ARLEN(7 downto 0) => microblaze_0_M_AXI_DC_ARLEN(7 downto 0),
      M_AXI_DC_ARLOCK => microblaze_0_M_AXI_DC_ARLOCK,
      M_AXI_DC_ARPROT(2 downto 0) => microblaze_0_M_AXI_DC_ARPROT(2 downto 0),
      M_AXI_DC_ARQOS(3 downto 0) => microblaze_0_M_AXI_DC_ARQOS(3 downto 0),
      M_AXI_DC_ARREADY => microblaze_0_M_AXI_DC_ARREADY,
      M_AXI_DC_ARSIZE(2 downto 0) => microblaze_0_M_AXI_DC_ARSIZE(2 downto 0),
      M_AXI_DC_ARVALID => microblaze_0_M_AXI_DC_ARVALID,
      M_AXI_DC_AWADDR(31 downto 0) => microblaze_0_M_AXI_DC_AWADDR(31 downto 0),
      M_AXI_DC_AWBURST(1 downto 0) => microblaze_0_M_AXI_DC_AWBURST(1 downto 0),
      M_AXI_DC_AWCACHE(3 downto 0) => microblaze_0_M_AXI_DC_AWCACHE(3 downto 0),
      M_AXI_DC_AWID(0) => microblaze_0_M_AXI_DC_AWID(0),
      M_AXI_DC_AWLEN(7 downto 0) => microblaze_0_M_AXI_DC_AWLEN(7 downto 0),
      M_AXI_DC_AWLOCK => microblaze_0_M_AXI_DC_AWLOCK,
      M_AXI_DC_AWPROT(2 downto 0) => microblaze_0_M_AXI_DC_AWPROT(2 downto 0),
      M_AXI_DC_AWQOS(3 downto 0) => microblaze_0_M_AXI_DC_AWQOS(3 downto 0),
      M_AXI_DC_AWREADY => microblaze_0_M_AXI_DC_AWREADY,
      M_AXI_DC_AWSIZE(2 downto 0) => microblaze_0_M_AXI_DC_AWSIZE(2 downto 0),
      M_AXI_DC_AWVALID => microblaze_0_M_AXI_DC_AWVALID,
      M_AXI_DC_BID(0) => microblaze_0_M_AXI_DC_BID(0),
      M_AXI_DC_BREADY => microblaze_0_M_AXI_DC_BREADY,
      M_AXI_DC_BRESP(1 downto 0) => microblaze_0_M_AXI_DC_BRESP(1 downto 0),
      M_AXI_DC_BVALID => microblaze_0_M_AXI_DC_BVALID,
      M_AXI_DC_RDATA(31 downto 0) => microblaze_0_M_AXI_DC_RDATA(31 downto 0),
      M_AXI_DC_RID(0) => microblaze_0_M_AXI_DC_RID(0),
      M_AXI_DC_RLAST => microblaze_0_M_AXI_DC_RLAST,
      M_AXI_DC_RREADY => microblaze_0_M_AXI_DC_RREADY,
      M_AXI_DC_RRESP(1 downto 0) => microblaze_0_M_AXI_DC_RRESP(1 downto 0),
      M_AXI_DC_RVALID => microblaze_0_M_AXI_DC_RVALID,
      M_AXI_DC_WDATA(31 downto 0) => microblaze_0_M_AXI_DC_WDATA(31 downto 0),
      M_AXI_DC_WLAST => microblaze_0_M_AXI_DC_WLAST,
      M_AXI_DC_WREADY => microblaze_0_M_AXI_DC_WREADY,
      M_AXI_DC_WSTRB(3 downto 0) => microblaze_0_M_AXI_DC_WSTRB(3 downto 0),
      M_AXI_DC_WVALID => microblaze_0_M_AXI_DC_WVALID,
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_0_axi_dp_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_0_axi_dp_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_0_axi_dp_ARREADY,
      M_AXI_DP_ARVALID => microblaze_0_axi_dp_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_0_axi_dp_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_0_axi_dp_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_0_axi_dp_AWREADY,
      M_AXI_DP_AWVALID => microblaze_0_axi_dp_AWVALID,
      M_AXI_DP_BREADY => microblaze_0_axi_dp_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_0_axi_dp_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_0_axi_dp_BVALID,
      M_AXI_DP_RDATA(31 downto 0) => microblaze_0_axi_dp_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_0_axi_dp_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_0_axi_dp_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_0_axi_dp_RVALID,
      M_AXI_DP_WDATA(31 downto 0) => microblaze_0_axi_dp_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_0_axi_dp_WREADY,
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_0_axi_dp_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_0_axi_dp_WVALID,
      M_AXI_IC_ARADDR(31 downto 0) => microblaze_0_M_AXI_IC_ARADDR(31 downto 0),
      M_AXI_IC_ARBURST(1 downto 0) => microblaze_0_M_AXI_IC_ARBURST(1 downto 0),
      M_AXI_IC_ARCACHE(3 downto 0) => microblaze_0_M_AXI_IC_ARCACHE(3 downto 0),
      M_AXI_IC_ARID(0) => microblaze_0_M_AXI_IC_ARID(0),
      M_AXI_IC_ARLEN(7 downto 0) => microblaze_0_M_AXI_IC_ARLEN(7 downto 0),
      M_AXI_IC_ARLOCK => microblaze_0_M_AXI_IC_ARLOCK,
      M_AXI_IC_ARPROT(2 downto 0) => microblaze_0_M_AXI_IC_ARPROT(2 downto 0),
      M_AXI_IC_ARQOS(3 downto 0) => microblaze_0_M_AXI_IC_ARQOS(3 downto 0),
      M_AXI_IC_ARREADY => microblaze_0_M_AXI_IC_ARREADY,
      M_AXI_IC_ARSIZE(2 downto 0) => microblaze_0_M_AXI_IC_ARSIZE(2 downto 0),
      M_AXI_IC_ARVALID => microblaze_0_M_AXI_IC_ARVALID,
      M_AXI_IC_AWADDR(31 downto 0) => microblaze_0_M_AXI_IC_AWADDR(31 downto 0),
      M_AXI_IC_AWBURST(1 downto 0) => microblaze_0_M_AXI_IC_AWBURST(1 downto 0),
      M_AXI_IC_AWCACHE(3 downto 0) => microblaze_0_M_AXI_IC_AWCACHE(3 downto 0),
      M_AXI_IC_AWID(0) => microblaze_0_M_AXI_IC_AWID(0),
      M_AXI_IC_AWLEN(7 downto 0) => microblaze_0_M_AXI_IC_AWLEN(7 downto 0),
      M_AXI_IC_AWLOCK => microblaze_0_M_AXI_IC_AWLOCK,
      M_AXI_IC_AWPROT(2 downto 0) => microblaze_0_M_AXI_IC_AWPROT(2 downto 0),
      M_AXI_IC_AWQOS(3 downto 0) => microblaze_0_M_AXI_IC_AWQOS(3 downto 0),
      M_AXI_IC_AWREADY => microblaze_0_M_AXI_IC_AWREADY,
      M_AXI_IC_AWSIZE(2 downto 0) => microblaze_0_M_AXI_IC_AWSIZE(2 downto 0),
      M_AXI_IC_AWVALID => microblaze_0_M_AXI_IC_AWVALID,
      M_AXI_IC_BID(0) => microblaze_0_M_AXI_IC_BID(0),
      M_AXI_IC_BREADY => microblaze_0_M_AXI_IC_BREADY,
      M_AXI_IC_BRESP(1 downto 0) => microblaze_0_M_AXI_IC_BRESP(1 downto 0),
      M_AXI_IC_BVALID => microblaze_0_M_AXI_IC_BVALID,
      M_AXI_IC_RDATA(31 downto 0) => microblaze_0_M_AXI_IC_RDATA(31 downto 0),
      M_AXI_IC_RID(0) => microblaze_0_M_AXI_IC_RID(0),
      M_AXI_IC_RLAST => microblaze_0_M_AXI_IC_RLAST,
      M_AXI_IC_RREADY => microblaze_0_M_AXI_IC_RREADY,
      M_AXI_IC_RRESP(1 downto 0) => microblaze_0_M_AXI_IC_RRESP(1 downto 0),
      M_AXI_IC_RVALID => microblaze_0_M_AXI_IC_RVALID,
      M_AXI_IC_WDATA(31 downto 0) => microblaze_0_M_AXI_IC_WDATA(31 downto 0),
      M_AXI_IC_WLAST => microblaze_0_M_AXI_IC_WLAST,
      M_AXI_IC_WREADY => microblaze_0_M_AXI_IC_WREADY,
      M_AXI_IC_WSTRB(3 downto 0) => microblaze_0_M_AXI_IC_WSTRB(3 downto 0),
      M_AXI_IC_WVALID => microblaze_0_M_AXI_IC_WVALID,
      Read_Strobe => microblaze_0_dlmb_1_READSTROBE,
      Reset => rst_mig_7series_0_100M_mb_reset,
      Write_Strobe => microblaze_0_dlmb_1_WRITESTROBE
    );
microblaze_0_axi_intc: component microblaze_microblaze_0_axi_intc_0
     port map (
      interrupt_address(31 downto 0) => microblaze_0_interrupt_ADDRESS(31 downto 0),
      intr(1 downto 0) => microblaze_0_intr(1 downto 0),
      irq => microblaze_0_interrupt_INTERRUPT,
      processor_ack(1) => microblaze_0_interrupt_ACK(0),
      processor_ack(0) => microblaze_0_interrupt_ACK(1),
      processor_clk => microblaze_0_Clk,
      processor_rst => rst_mig_7series_0_100M_mb_reset,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_intc_axi_ARADDR(8 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_intc_axi_ARREADY,
      s_axi_arvalid => microblaze_0_intc_axi_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_intc_axi_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_intc_axi_AWREADY,
      s_axi_awvalid => microblaze_0_intc_axi_AWVALID,
      s_axi_bready => microblaze_0_intc_axi_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_intc_axi_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_intc_axi_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_intc_axi_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_intc_axi_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_intc_axi_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_intc_axi_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_intc_axi_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_intc_axi_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_intc_axi_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_intc_axi_WVALID
    );
microblaze_0_axi_intc_1: component microblaze_microblaze_0_axi_intc_1
     port map (
      interrupt_address(31 downto 0) => microblaze_0_interrupt_1_ADDRESS(31 downto 0),
      intr(1 downto 0) => microblaze_0_intr_1(1 downto 0),
      irq => microblaze_0_interrupt_1_INTERRUPT,
      processor_ack(1) => microblaze_0_interrupt_1_ACK(0),
      processor_ack(0) => microblaze_0_interrupt_1_ACK(1),
      processor_clk => microblaze_0_Clk,
      processor_rst => mig_7series_0_ui_clk_sync_rst,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M05_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M05_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M05_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M05_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M05_AXI_WVALID
    );
microblaze_0_axi_intc_2: component microblaze_microblaze_0_axi_intc_2
     port map (
      interrupt_address(31 downto 0) => microblaze_0_interrupt_2_ADDRESS(31 downto 0),
      intr(1 downto 0) => microblaze_0_intr_2(1 downto 0),
      irq => microblaze_0_interrupt_2_INTERRUPT,
      processor_ack(1) => microblaze_0_interrupt_2_ACK(0),
      processor_ack(0) => microblaze_0_interrupt_2_ACK(1),
      processor_clk => microblaze_0_Clk,
      processor_rst => mig_7series_0_ui_clk_sync_rst,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M06_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M06_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M06_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M06_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M06_AXI_WVALID
    );
microblaze_0_axi_intc_3: component microblaze_microblaze_0_axi_intc_3
     port map (
      interrupt_address(31 downto 0) => microblaze_0_interrupt_3_ADDRESS(31 downto 0),
      intr(1 downto 0) => microblaze_0_intr_3(1 downto 0),
      irq => microblaze_0_interrupt_3_INTERRUPT,
      processor_ack(1) => microblaze_0_interrupt_3_ACK(0),
      processor_ack(0) => microblaze_0_interrupt_3_ACK(1),
      processor_clk => microblaze_0_Clk,
      processor_rst => mig_7series_0_ui_clk_sync_rst,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M07_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M07_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M07_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M07_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M07_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M07_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M07_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M07_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M07_AXI_WVALID
    );
microblaze_0_axi_periph: entity work.microblaze_microblaze_0_axi_periph_0
     port map (
      ACLK => microblaze_0_Clk,
      ARESETN(0) => rst_mig_7series_0_100M_interconnect_aresetn(0),
      M00_ACLK => microblaze_0_Clk,
      M00_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(8 downto 0) => microblaze_0_intc_axi_ARADDR(8 downto 0),
      M00_AXI_arready => microblaze_0_intc_axi_ARREADY,
      M00_AXI_arvalid => microblaze_0_intc_axi_ARVALID,
      M00_AXI_awaddr(8 downto 0) => microblaze_0_intc_axi_AWADDR(8 downto 0),
      M00_AXI_awready => microblaze_0_intc_axi_AWREADY,
      M00_AXI_awvalid => microblaze_0_intc_axi_AWVALID,
      M00_AXI_bready => microblaze_0_intc_axi_BREADY,
      M00_AXI_bresp(1 downto 0) => microblaze_0_intc_axi_BRESP(1 downto 0),
      M00_AXI_bvalid => microblaze_0_intc_axi_BVALID,
      M00_AXI_rdata(31 downto 0) => microblaze_0_intc_axi_RDATA(31 downto 0),
      M00_AXI_rready => microblaze_0_intc_axi_RREADY,
      M00_AXI_rresp(1 downto 0) => microblaze_0_intc_axi_RRESP(1 downto 0),
      M00_AXI_rvalid => microblaze_0_intc_axi_RVALID,
      M00_AXI_wdata(31 downto 0) => microblaze_0_intc_axi_WDATA(31 downto 0),
      M00_AXI_wready => microblaze_0_intc_axi_WREADY,
      M00_AXI_wstrb(3 downto 0) => microblaze_0_intc_axi_WSTRB(3 downto 0),
      M00_AXI_wvalid => microblaze_0_intc_axi_WVALID,
      M01_ACLK => microblaze_0_Clk,
      M01_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(29 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(29 downto 0),
      M01_AXI_arburst(1 downto 0) => microblaze_0_axi_periph_M01_AXI_ARBURST(1 downto 0),
      M01_AXI_arcache(3 downto 0) => microblaze_0_axi_periph_M01_AXI_ARCACHE(3 downto 0),
      M01_AXI_arid(3 downto 0) => microblaze_0_axi_periph_M01_AXI_ARID(3 downto 0),
      M01_AXI_arlen(7 downto 0) => microblaze_0_axi_periph_M01_AXI_ARLEN(7 downto 0),
      M01_AXI_arlock(0) => microblaze_0_axi_periph_M01_AXI_ARLOCK(0),
      M01_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arqos(3 downto 0) => microblaze_0_axi_periph_M01_AXI_ARQOS(3 downto 0),
      M01_AXI_arready(0) => microblaze_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arsize(2 downto 0) => microblaze_0_axi_periph_M01_AXI_ARSIZE(2 downto 0),
      M01_AXI_arvalid(0) => microblaze_0_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(29 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(29 downto 0),
      M01_AXI_awburst(1 downto 0) => microblaze_0_axi_periph_M01_AXI_AWBURST(1 downto 0),
      M01_AXI_awcache(3 downto 0) => microblaze_0_axi_periph_M01_AXI_AWCACHE(3 downto 0),
      M01_AXI_awid(3 downto 0) => microblaze_0_axi_periph_M01_AXI_AWID(3 downto 0),
      M01_AXI_awlen(7 downto 0) => microblaze_0_axi_periph_M01_AXI_AWLEN(7 downto 0),
      M01_AXI_awlock(0) => microblaze_0_axi_periph_M01_AXI_AWLOCK(0),
      M01_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awqos(3 downto 0) => microblaze_0_axi_periph_M01_AXI_AWQOS(3 downto 0),
      M01_AXI_awready(0) => microblaze_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awsize(2 downto 0) => microblaze_0_axi_periph_M01_AXI_AWSIZE(2 downto 0),
      M01_AXI_awvalid(0) => microblaze_0_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bid(3 downto 0) => microblaze_0_axi_periph_M01_AXI_BID(3 downto 0),
      M01_AXI_bready(0) => microblaze_0_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => microblaze_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rid(3 downto 0) => microblaze_0_axi_periph_M01_AXI_RID(3 downto 0),
      M01_AXI_rlast(0) => microblaze_0_axi_periph_M01_AXI_RLAST,
      M01_AXI_rready(0) => microblaze_0_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => microblaze_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wlast(0) => microblaze_0_axi_periph_M01_AXI_WLAST(0),
      M01_AXI_wready(0) => microblaze_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => microblaze_0_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => microblaze_0_Clk,
      M02_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(4 downto 0) => microblaze_0_axi_periph_M02_AXI_ARADDR(4 downto 0),
      M02_AXI_arready => microblaze_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid => microblaze_0_axi_periph_M02_AXI_ARVALID,
      M02_AXI_awaddr(4 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(4 downto 0),
      M02_AXI_awready => microblaze_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid => microblaze_0_axi_periph_M02_AXI_AWVALID,
      M02_AXI_bready => microblaze_0_axi_periph_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => microblaze_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => microblaze_0_axi_periph_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => microblaze_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => microblaze_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => microblaze_0_axi_periph_M02_AXI_WVALID,
      M03_ACLK => microblaze_0_Clk,
      M03_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M03_AXI_araddr(3 downto 0) => microblaze_0_axi_periph_M03_AXI_ARADDR(3 downto 0),
      M03_AXI_arready => microblaze_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => microblaze_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(3 downto 0) => microblaze_0_axi_periph_M03_AXI_AWADDR(3 downto 0),
      M03_AXI_awready => microblaze_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => microblaze_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bready => microblaze_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => microblaze_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => microblaze_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => microblaze_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => microblaze_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => microblaze_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => microblaze_0_Clk,
      M04_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M04_AXI_araddr(12 downto 0) => microblaze_0_axi_periph_M04_AXI_ARADDR(12 downto 0),
      M04_AXI_arburst(1 downto 0) => microblaze_0_axi_periph_M04_AXI_ARBURST(1 downto 0),
      M04_AXI_arcache(3 downto 0) => microblaze_0_axi_periph_M04_AXI_ARCACHE(3 downto 0),
      M04_AXI_arid(3 downto 0) => microblaze_0_axi_periph_M04_AXI_ARID(3 downto 0),
      M04_AXI_arlen(7 downto 0) => microblaze_0_axi_periph_M04_AXI_ARLEN(7 downto 0),
      M04_AXI_arlock => microblaze_0_axi_periph_M04_AXI_ARLOCK,
      M04_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arready => microblaze_0_axi_periph_M04_AXI_ARREADY,
      M04_AXI_arsize(2 downto 0) => microblaze_0_axi_periph_M04_AXI_ARSIZE(2 downto 0),
      M04_AXI_arvalid => microblaze_0_axi_periph_M04_AXI_ARVALID,
      M04_AXI_awaddr(12 downto 0) => microblaze_0_axi_periph_M04_AXI_AWADDR(12 downto 0),
      M04_AXI_awburst(1 downto 0) => microblaze_0_axi_periph_M04_AXI_AWBURST(1 downto 0),
      M04_AXI_awcache(3 downto 0) => microblaze_0_axi_periph_M04_AXI_AWCACHE(3 downto 0),
      M04_AXI_awid(3 downto 0) => microblaze_0_axi_periph_M04_AXI_AWID(3 downto 0),
      M04_AXI_awlen(7 downto 0) => microblaze_0_axi_periph_M04_AXI_AWLEN(7 downto 0),
      M04_AXI_awlock => microblaze_0_axi_periph_M04_AXI_AWLOCK,
      M04_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awready => microblaze_0_axi_periph_M04_AXI_AWREADY,
      M04_AXI_awsize(2 downto 0) => microblaze_0_axi_periph_M04_AXI_AWSIZE(2 downto 0),
      M04_AXI_awvalid => microblaze_0_axi_periph_M04_AXI_AWVALID,
      M04_AXI_bid(3 downto 0) => microblaze_0_axi_periph_M04_AXI_BID(3 downto 0),
      M04_AXI_bready => microblaze_0_axi_periph_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => microblaze_0_axi_periph_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rid(3 downto 0) => microblaze_0_axi_periph_M04_AXI_RID(3 downto 0),
      M04_AXI_rlast => microblaze_0_axi_periph_M04_AXI_RLAST,
      M04_AXI_rready => microblaze_0_axi_periph_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => microblaze_0_axi_periph_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wlast => microblaze_0_axi_periph_M04_AXI_WLAST,
      M04_AXI_wready => microblaze_0_axi_periph_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => microblaze_0_axi_periph_M04_AXI_WVALID,
      M05_ACLK => microblaze_0_Clk,
      M05_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M05_AXI_araddr(8 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(8 downto 0),
      M05_AXI_arready => microblaze_0_axi_periph_M05_AXI_ARREADY,
      M05_AXI_arvalid => microblaze_0_axi_periph_M05_AXI_ARVALID,
      M05_AXI_awaddr(8 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(8 downto 0),
      M05_AXI_awready => microblaze_0_axi_periph_M05_AXI_AWREADY,
      M05_AXI_awvalid => microblaze_0_axi_periph_M05_AXI_AWVALID,
      M05_AXI_bready => microblaze_0_axi_periph_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => microblaze_0_axi_periph_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => microblaze_0_axi_periph_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => microblaze_0_axi_periph_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => microblaze_0_axi_periph_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => microblaze_0_axi_periph_M05_AXI_WVALID,
      M06_ACLK => microblaze_0_Clk,
      M06_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M06_AXI_araddr(8 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(8 downto 0),
      M06_AXI_arready => microblaze_0_axi_periph_M06_AXI_ARREADY,
      M06_AXI_arvalid => microblaze_0_axi_periph_M06_AXI_ARVALID,
      M06_AXI_awaddr(8 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(8 downto 0),
      M06_AXI_awready => microblaze_0_axi_periph_M06_AXI_AWREADY,
      M06_AXI_awvalid => microblaze_0_axi_periph_M06_AXI_AWVALID,
      M06_AXI_bready => microblaze_0_axi_periph_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => microblaze_0_axi_periph_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => microblaze_0_axi_periph_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => microblaze_0_axi_periph_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => microblaze_0_axi_periph_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => microblaze_0_axi_periph_M06_AXI_WVALID,
      M07_ACLK => microblaze_0_Clk,
      M07_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M07_AXI_araddr(8 downto 0) => microblaze_0_axi_periph_M07_AXI_ARADDR(8 downto 0),
      M07_AXI_arready => microblaze_0_axi_periph_M07_AXI_ARREADY,
      M07_AXI_arvalid => microblaze_0_axi_periph_M07_AXI_ARVALID,
      M07_AXI_awaddr(8 downto 0) => microblaze_0_axi_periph_M07_AXI_AWADDR(8 downto 0),
      M07_AXI_awready => microblaze_0_axi_periph_M07_AXI_AWREADY,
      M07_AXI_awvalid => microblaze_0_axi_periph_M07_AXI_AWVALID,
      M07_AXI_bready => microblaze_0_axi_periph_M07_AXI_BREADY,
      M07_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid => microblaze_0_axi_periph_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready => microblaze_0_axi_periph_M07_AXI_RREADY,
      M07_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid => microblaze_0_axi_periph_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready => microblaze_0_axi_periph_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid => microblaze_0_axi_periph_M07_AXI_WVALID,
      S00_ACLK => microblaze_0_Clk,
      S00_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => microblaze_0_axi_dp_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => microblaze_0_axi_dp_ARPROT(2 downto 0),
      S00_AXI_arready => microblaze_0_axi_dp_ARREADY,
      S00_AXI_arvalid => microblaze_0_axi_dp_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_axi_dp_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => microblaze_0_axi_dp_AWPROT(2 downto 0),
      S00_AXI_awready => microblaze_0_axi_dp_AWREADY,
      S00_AXI_awvalid => microblaze_0_axi_dp_AWVALID,
      S00_AXI_bready => microblaze_0_axi_dp_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_axi_dp_BRESP(1 downto 0),
      S00_AXI_bvalid => microblaze_0_axi_dp_BVALID,
      S00_AXI_rdata(31 downto 0) => microblaze_0_axi_dp_RDATA(31 downto 0),
      S00_AXI_rready => microblaze_0_axi_dp_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_axi_dp_RRESP(1 downto 0),
      S00_AXI_rvalid => microblaze_0_axi_dp_RVALID,
      S00_AXI_wdata(31 downto 0) => microblaze_0_axi_dp_WDATA(31 downto 0),
      S00_AXI_wready => microblaze_0_axi_dp_WREADY,
      S00_AXI_wstrb(3 downto 0) => microblaze_0_axi_dp_WSTRB(3 downto 0),
      S00_AXI_wvalid => microblaze_0_axi_dp_WVALID,
      S01_ACLK => microblaze_0_Clk,
      S01_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_DC_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => microblaze_0_M_AXI_DC_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => microblaze_0_M_AXI_DC_ARCACHE(3 downto 0),
      S01_AXI_arid(0) => microblaze_0_M_AXI_DC_ARID(0),
      S01_AXI_arlen(7 downto 0) => microblaze_0_M_AXI_DC_ARLEN(7 downto 0),
      S01_AXI_arlock => microblaze_0_M_AXI_DC_ARLOCK,
      S01_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_DC_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => microblaze_0_M_AXI_DC_ARQOS(3 downto 0),
      S01_AXI_arready => microblaze_0_M_AXI_DC_ARREADY,
      S01_AXI_arsize(2 downto 0) => microblaze_0_M_AXI_DC_ARSIZE(2 downto 0),
      S01_AXI_arvalid => microblaze_0_M_AXI_DC_ARVALID,
      S01_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_DC_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => microblaze_0_M_AXI_DC_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => microblaze_0_M_AXI_DC_AWCACHE(3 downto 0),
      S01_AXI_awid(0) => microblaze_0_M_AXI_DC_AWID(0),
      S01_AXI_awlen(7 downto 0) => microblaze_0_M_AXI_DC_AWLEN(7 downto 0),
      S01_AXI_awlock => microblaze_0_M_AXI_DC_AWLOCK,
      S01_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_DC_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => microblaze_0_M_AXI_DC_AWQOS(3 downto 0),
      S01_AXI_awready => microblaze_0_M_AXI_DC_AWREADY,
      S01_AXI_awsize(2 downto 0) => microblaze_0_M_AXI_DC_AWSIZE(2 downto 0),
      S01_AXI_awvalid => microblaze_0_M_AXI_DC_AWVALID,
      S01_AXI_bid(0) => microblaze_0_M_AXI_DC_BID(0),
      S01_AXI_bready => microblaze_0_M_AXI_DC_BREADY,
      S01_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_DC_BRESP(1 downto 0),
      S01_AXI_bvalid => microblaze_0_M_AXI_DC_BVALID,
      S01_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_DC_RDATA(31 downto 0),
      S01_AXI_rid(0) => microblaze_0_M_AXI_DC_RID(0),
      S01_AXI_rlast => microblaze_0_M_AXI_DC_RLAST,
      S01_AXI_rready => microblaze_0_M_AXI_DC_RREADY,
      S01_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_DC_RRESP(1 downto 0),
      S01_AXI_rvalid => microblaze_0_M_AXI_DC_RVALID,
      S01_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_DC_WDATA(31 downto 0),
      S01_AXI_wlast => microblaze_0_M_AXI_DC_WLAST,
      S01_AXI_wready => microblaze_0_M_AXI_DC_WREADY,
      S01_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_DC_WSTRB(3 downto 0),
      S01_AXI_wvalid => microblaze_0_M_AXI_DC_WVALID,
      S02_ACLK => microblaze_0_Clk,
      S02_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S02_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_IC_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => microblaze_0_M_AXI_IC_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => microblaze_0_M_AXI_IC_ARCACHE(3 downto 0),
      S02_AXI_arid(0) => microblaze_0_M_AXI_IC_ARID(0),
      S02_AXI_arlen(7 downto 0) => microblaze_0_M_AXI_IC_ARLEN(7 downto 0),
      S02_AXI_arlock => microblaze_0_M_AXI_IC_ARLOCK,
      S02_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_IC_ARPROT(2 downto 0),
      S02_AXI_arqos(3 downto 0) => microblaze_0_M_AXI_IC_ARQOS(3 downto 0),
      S02_AXI_arready => microblaze_0_M_AXI_IC_ARREADY,
      S02_AXI_arsize(2 downto 0) => microblaze_0_M_AXI_IC_ARSIZE(2 downto 0),
      S02_AXI_arvalid => microblaze_0_M_AXI_IC_ARVALID,
      S02_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_IC_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => microblaze_0_M_AXI_IC_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => microblaze_0_M_AXI_IC_AWCACHE(3 downto 0),
      S02_AXI_awid(0) => microblaze_0_M_AXI_IC_AWID(0),
      S02_AXI_awlen(7 downto 0) => microblaze_0_M_AXI_IC_AWLEN(7 downto 0),
      S02_AXI_awlock => microblaze_0_M_AXI_IC_AWLOCK,
      S02_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_IC_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => microblaze_0_M_AXI_IC_AWQOS(3 downto 0),
      S02_AXI_awready => microblaze_0_M_AXI_IC_AWREADY,
      S02_AXI_awsize(2 downto 0) => microblaze_0_M_AXI_IC_AWSIZE(2 downto 0),
      S02_AXI_awvalid => microblaze_0_M_AXI_IC_AWVALID,
      S02_AXI_bid(0) => microblaze_0_M_AXI_IC_BID(0),
      S02_AXI_bready => microblaze_0_M_AXI_IC_BREADY,
      S02_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_IC_BRESP(1 downto 0),
      S02_AXI_bvalid => microblaze_0_M_AXI_IC_BVALID,
      S02_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_IC_RDATA(31 downto 0),
      S02_AXI_rid(0) => microblaze_0_M_AXI_IC_RID(0),
      S02_AXI_rlast => microblaze_0_M_AXI_IC_RLAST,
      S02_AXI_rready => microblaze_0_M_AXI_IC_RREADY,
      S02_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_IC_RRESP(1 downto 0),
      S02_AXI_rvalid => microblaze_0_M_AXI_IC_RVALID,
      S02_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_IC_WDATA(31 downto 0),
      S02_AXI_wlast => microblaze_0_M_AXI_IC_WLAST,
      S02_AXI_wready => microblaze_0_M_AXI_IC_WREADY,
      S02_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_IC_WSTRB(3 downto 0),
      S02_AXI_wvalid => microblaze_0_M_AXI_IC_WVALID,
      S03_ACLK => microblaze_0_Clk,
      S03_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S03_AXI_araddr(31 downto 0) => hier_1_M_AXI_DP_ARADDR(31 downto 0),
      S03_AXI_arprot(2 downto 0) => hier_1_M_AXI_DP_ARPROT(2 downto 0),
      S03_AXI_arready => hier_1_M_AXI_DP_ARREADY,
      S03_AXI_arvalid => hier_1_M_AXI_DP_ARVALID,
      S03_AXI_awaddr(31 downto 0) => hier_1_M_AXI_DP_AWADDR(31 downto 0),
      S03_AXI_awprot(2 downto 0) => hier_1_M_AXI_DP_AWPROT(2 downto 0),
      S03_AXI_awready => hier_1_M_AXI_DP_AWREADY,
      S03_AXI_awvalid => hier_1_M_AXI_DP_AWVALID,
      S03_AXI_bready => hier_1_M_AXI_DP_BREADY,
      S03_AXI_bresp(1 downto 0) => hier_1_M_AXI_DP_BRESP(1 downto 0),
      S03_AXI_bvalid => hier_1_M_AXI_DP_BVALID,
      S03_AXI_rdata(31 downto 0) => hier_1_M_AXI_DP_RDATA(31 downto 0),
      S03_AXI_rready => hier_1_M_AXI_DP_RREADY,
      S03_AXI_rresp(1 downto 0) => hier_1_M_AXI_DP_RRESP(1 downto 0),
      S03_AXI_rvalid => hier_1_M_AXI_DP_RVALID,
      S03_AXI_wdata(31 downto 0) => hier_1_M_AXI_DP_WDATA(31 downto 0),
      S03_AXI_wready => hier_1_M_AXI_DP_WREADY,
      S03_AXI_wstrb(3 downto 0) => hier_1_M_AXI_DP_WSTRB(3 downto 0),
      S03_AXI_wvalid => hier_1_M_AXI_DP_WVALID,
      S04_ACLK => microblaze_0_Clk,
      S04_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S04_AXI_araddr(31 downto 0) => hier_1_M_AXI_DC_ARADDR(31 downto 0),
      S04_AXI_arburst(1 downto 0) => hier_1_M_AXI_DC_ARBURST(1 downto 0),
      S04_AXI_arcache(3 downto 0) => hier_1_M_AXI_DC_ARCACHE(3 downto 0),
      S04_AXI_arid(0) => hier_1_M_AXI_DC_ARID(0),
      S04_AXI_arlen(7 downto 0) => hier_1_M_AXI_DC_ARLEN(7 downto 0),
      S04_AXI_arlock => hier_1_M_AXI_DC_ARLOCK,
      S04_AXI_arprot(2 downto 0) => hier_1_M_AXI_DC_ARPROT(2 downto 0),
      S04_AXI_arqos(3 downto 0) => hier_1_M_AXI_DC_ARQOS(3 downto 0),
      S04_AXI_arready => hier_1_M_AXI_DC_ARREADY,
      S04_AXI_arsize(2 downto 0) => hier_1_M_AXI_DC_ARSIZE(2 downto 0),
      S04_AXI_arvalid => hier_1_M_AXI_DC_ARVALID,
      S04_AXI_awaddr(31 downto 0) => hier_1_M_AXI_DC_AWADDR(31 downto 0),
      S04_AXI_awburst(1 downto 0) => hier_1_M_AXI_DC_AWBURST(1 downto 0),
      S04_AXI_awcache(3 downto 0) => hier_1_M_AXI_DC_AWCACHE(3 downto 0),
      S04_AXI_awid(0) => hier_1_M_AXI_DC_AWID(0),
      S04_AXI_awlen(7 downto 0) => hier_1_M_AXI_DC_AWLEN(7 downto 0),
      S04_AXI_awlock => hier_1_M_AXI_DC_AWLOCK,
      S04_AXI_awprot(2 downto 0) => hier_1_M_AXI_DC_AWPROT(2 downto 0),
      S04_AXI_awqos(3 downto 0) => hier_1_M_AXI_DC_AWQOS(3 downto 0),
      S04_AXI_awready => hier_1_M_AXI_DC_AWREADY,
      S04_AXI_awsize(2 downto 0) => hier_1_M_AXI_DC_AWSIZE(2 downto 0),
      S04_AXI_awvalid => hier_1_M_AXI_DC_AWVALID,
      S04_AXI_bid(0) => hier_1_M_AXI_DC_BID(0),
      S04_AXI_bready => hier_1_M_AXI_DC_BREADY,
      S04_AXI_bresp(1 downto 0) => hier_1_M_AXI_DC_BRESP(1 downto 0),
      S04_AXI_bvalid => hier_1_M_AXI_DC_BVALID,
      S04_AXI_rdata(31 downto 0) => hier_1_M_AXI_DC_RDATA(31 downto 0),
      S04_AXI_rid(0) => hier_1_M_AXI_DC_RID(0),
      S04_AXI_rlast => hier_1_M_AXI_DC_RLAST,
      S04_AXI_rready => hier_1_M_AXI_DC_RREADY,
      S04_AXI_rresp(1 downto 0) => hier_1_M_AXI_DC_RRESP(1 downto 0),
      S04_AXI_rvalid => hier_1_M_AXI_DC_RVALID,
      S04_AXI_wdata(31 downto 0) => hier_1_M_AXI_DC_WDATA(31 downto 0),
      S04_AXI_wlast => hier_1_M_AXI_DC_WLAST,
      S04_AXI_wready => hier_1_M_AXI_DC_WREADY,
      S04_AXI_wstrb(3 downto 0) => hier_1_M_AXI_DC_WSTRB(3 downto 0),
      S04_AXI_wvalid => hier_1_M_AXI_DC_WVALID,
      S05_ACLK => microblaze_0_Clk,
      S05_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S05_AXI_araddr(31 downto 0) => hier_1_M_AXI_IC_ARADDR(31 downto 0),
      S05_AXI_arburst(1 downto 0) => hier_1_M_AXI_IC_ARBURST(1 downto 0),
      S05_AXI_arcache(3 downto 0) => hier_1_M_AXI_IC_ARCACHE(3 downto 0),
      S05_AXI_arid(0) => hier_1_M_AXI_IC_ARID(0),
      S05_AXI_arlen(7 downto 0) => hier_1_M_AXI_IC_ARLEN(7 downto 0),
      S05_AXI_arlock => hier_1_M_AXI_IC_ARLOCK,
      S05_AXI_arprot(2 downto 0) => hier_1_M_AXI_IC_ARPROT(2 downto 0),
      S05_AXI_arqos(3 downto 0) => hier_1_M_AXI_IC_ARQOS(3 downto 0),
      S05_AXI_arready => hier_1_M_AXI_IC_ARREADY,
      S05_AXI_arsize(2 downto 0) => hier_1_M_AXI_IC_ARSIZE(2 downto 0),
      S05_AXI_arvalid => hier_1_M_AXI_IC_ARVALID,
      S05_AXI_awaddr(31 downto 0) => hier_1_M_AXI_IC_AWADDR(31 downto 0),
      S05_AXI_awburst(1 downto 0) => hier_1_M_AXI_IC_AWBURST(1 downto 0),
      S05_AXI_awcache(3 downto 0) => hier_1_M_AXI_IC_AWCACHE(3 downto 0),
      S05_AXI_awid(0) => hier_1_M_AXI_IC_AWID(0),
      S05_AXI_awlen(7 downto 0) => hier_1_M_AXI_IC_AWLEN(7 downto 0),
      S05_AXI_awlock => hier_1_M_AXI_IC_AWLOCK,
      S05_AXI_awprot(2 downto 0) => hier_1_M_AXI_IC_AWPROT(2 downto 0),
      S05_AXI_awqos(3 downto 0) => hier_1_M_AXI_IC_AWQOS(3 downto 0),
      S05_AXI_awready => hier_1_M_AXI_IC_AWREADY,
      S05_AXI_awsize(2 downto 0) => hier_1_M_AXI_IC_AWSIZE(2 downto 0),
      S05_AXI_awvalid => hier_1_M_AXI_IC_AWVALID,
      S05_AXI_bid(0) => hier_1_M_AXI_IC_BID(0),
      S05_AXI_bready => hier_1_M_AXI_IC_BREADY,
      S05_AXI_bresp(1 downto 0) => hier_1_M_AXI_IC_BRESP(1 downto 0),
      S05_AXI_bvalid => hier_1_M_AXI_IC_BVALID,
      S05_AXI_rdata(31 downto 0) => hier_1_M_AXI_IC_RDATA(31 downto 0),
      S05_AXI_rid(0) => hier_1_M_AXI_IC_RID(0),
      S05_AXI_rlast => hier_1_M_AXI_IC_RLAST,
      S05_AXI_rready => hier_1_M_AXI_IC_RREADY,
      S05_AXI_rresp(1 downto 0) => hier_1_M_AXI_IC_RRESP(1 downto 0),
      S05_AXI_rvalid => hier_1_M_AXI_IC_RVALID,
      S05_AXI_wdata(31 downto 0) => hier_1_M_AXI_IC_WDATA(31 downto 0),
      S05_AXI_wlast => hier_1_M_AXI_IC_WLAST,
      S05_AXI_wready => hier_1_M_AXI_IC_WREADY,
      S05_AXI_wstrb(3 downto 0) => hier_1_M_AXI_IC_WSTRB(3 downto 0),
      S05_AXI_wvalid => hier_1_M_AXI_IC_WVALID,
      S06_ACLK => microblaze_0_Clk,
      S06_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S06_AXI_araddr(31 downto 0) => hier_2_M_AXI_DP_ARADDR(31 downto 0),
      S06_AXI_arprot(2 downto 0) => hier_2_M_AXI_DP_ARPROT(2 downto 0),
      S06_AXI_arready => hier_2_M_AXI_DP_ARREADY,
      S06_AXI_arvalid => hier_2_M_AXI_DP_ARVALID,
      S06_AXI_awaddr(31 downto 0) => hier_2_M_AXI_DP_AWADDR(31 downto 0),
      S06_AXI_awprot(2 downto 0) => hier_2_M_AXI_DP_AWPROT(2 downto 0),
      S06_AXI_awready => hier_2_M_AXI_DP_AWREADY,
      S06_AXI_awvalid => hier_2_M_AXI_DP_AWVALID,
      S06_AXI_bready => hier_2_M_AXI_DP_BREADY,
      S06_AXI_bresp(1 downto 0) => hier_2_M_AXI_DP_BRESP(1 downto 0),
      S06_AXI_bvalid => hier_2_M_AXI_DP_BVALID,
      S06_AXI_rdata(31 downto 0) => hier_2_M_AXI_DP_RDATA(31 downto 0),
      S06_AXI_rready => hier_2_M_AXI_DP_RREADY,
      S06_AXI_rresp(1 downto 0) => hier_2_M_AXI_DP_RRESP(1 downto 0),
      S06_AXI_rvalid => hier_2_M_AXI_DP_RVALID,
      S06_AXI_wdata(31 downto 0) => hier_2_M_AXI_DP_WDATA(31 downto 0),
      S06_AXI_wready => hier_2_M_AXI_DP_WREADY,
      S06_AXI_wstrb(3 downto 0) => hier_2_M_AXI_DP_WSTRB(3 downto 0),
      S06_AXI_wvalid => hier_2_M_AXI_DP_WVALID,
      S07_ACLK => microblaze_0_Clk,
      S07_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S07_AXI_araddr(31 downto 0) => hier_2_M_AXI_DC_ARADDR(31 downto 0),
      S07_AXI_arburst(1 downto 0) => hier_2_M_AXI_DC_ARBURST(1 downto 0),
      S07_AXI_arcache(3 downto 0) => hier_2_M_AXI_DC_ARCACHE(3 downto 0),
      S07_AXI_arid(0) => hier_2_M_AXI_DC_ARID(0),
      S07_AXI_arlen(7 downto 0) => hier_2_M_AXI_DC_ARLEN(7 downto 0),
      S07_AXI_arlock => hier_2_M_AXI_DC_ARLOCK,
      S07_AXI_arprot(2 downto 0) => hier_2_M_AXI_DC_ARPROT(2 downto 0),
      S07_AXI_arqos(3 downto 0) => hier_2_M_AXI_DC_ARQOS(3 downto 0),
      S07_AXI_arready => hier_2_M_AXI_DC_ARREADY,
      S07_AXI_arsize(2 downto 0) => hier_2_M_AXI_DC_ARSIZE(2 downto 0),
      S07_AXI_arvalid => hier_2_M_AXI_DC_ARVALID,
      S07_AXI_awaddr(31 downto 0) => hier_2_M_AXI_DC_AWADDR(31 downto 0),
      S07_AXI_awburst(1 downto 0) => hier_2_M_AXI_DC_AWBURST(1 downto 0),
      S07_AXI_awcache(3 downto 0) => hier_2_M_AXI_DC_AWCACHE(3 downto 0),
      S07_AXI_awid(0) => hier_2_M_AXI_DC_AWID(0),
      S07_AXI_awlen(7 downto 0) => hier_2_M_AXI_DC_AWLEN(7 downto 0),
      S07_AXI_awlock => hier_2_M_AXI_DC_AWLOCK,
      S07_AXI_awprot(2 downto 0) => hier_2_M_AXI_DC_AWPROT(2 downto 0),
      S07_AXI_awqos(3 downto 0) => hier_2_M_AXI_DC_AWQOS(3 downto 0),
      S07_AXI_awready => hier_2_M_AXI_DC_AWREADY,
      S07_AXI_awsize(2 downto 0) => hier_2_M_AXI_DC_AWSIZE(2 downto 0),
      S07_AXI_awvalid => hier_2_M_AXI_DC_AWVALID,
      S07_AXI_bid(0) => hier_2_M_AXI_DC_BID(0),
      S07_AXI_bready => hier_2_M_AXI_DC_BREADY,
      S07_AXI_bresp(1 downto 0) => hier_2_M_AXI_DC_BRESP(1 downto 0),
      S07_AXI_bvalid => hier_2_M_AXI_DC_BVALID,
      S07_AXI_rdata(31 downto 0) => hier_2_M_AXI_DC_RDATA(31 downto 0),
      S07_AXI_rid(0) => hier_2_M_AXI_DC_RID(0),
      S07_AXI_rlast => hier_2_M_AXI_DC_RLAST,
      S07_AXI_rready => hier_2_M_AXI_DC_RREADY,
      S07_AXI_rresp(1 downto 0) => hier_2_M_AXI_DC_RRESP(1 downto 0),
      S07_AXI_rvalid => hier_2_M_AXI_DC_RVALID,
      S07_AXI_wdata(31 downto 0) => hier_2_M_AXI_DC_WDATA(31 downto 0),
      S07_AXI_wlast => hier_2_M_AXI_DC_WLAST,
      S07_AXI_wready => hier_2_M_AXI_DC_WREADY,
      S07_AXI_wstrb(3 downto 0) => hier_2_M_AXI_DC_WSTRB(3 downto 0),
      S07_AXI_wvalid => hier_2_M_AXI_DC_WVALID,
      S08_ACLK => microblaze_0_Clk,
      S08_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S08_AXI_araddr(31 downto 0) => hier_2_M_AXI_IC_ARADDR(31 downto 0),
      S08_AXI_arburst(1 downto 0) => hier_2_M_AXI_IC_ARBURST(1 downto 0),
      S08_AXI_arcache(3 downto 0) => hier_2_M_AXI_IC_ARCACHE(3 downto 0),
      S08_AXI_arid(0) => hier_2_M_AXI_IC_ARID(0),
      S08_AXI_arlen(7 downto 0) => hier_2_M_AXI_IC_ARLEN(7 downto 0),
      S08_AXI_arlock => hier_2_M_AXI_IC_ARLOCK,
      S08_AXI_arprot(2 downto 0) => hier_2_M_AXI_IC_ARPROT(2 downto 0),
      S08_AXI_arqos(3 downto 0) => hier_2_M_AXI_IC_ARQOS(3 downto 0),
      S08_AXI_arready => hier_2_M_AXI_IC_ARREADY,
      S08_AXI_arsize(2 downto 0) => hier_2_M_AXI_IC_ARSIZE(2 downto 0),
      S08_AXI_arvalid => hier_2_M_AXI_IC_ARVALID,
      S08_AXI_awaddr(31 downto 0) => hier_2_M_AXI_IC_AWADDR(31 downto 0),
      S08_AXI_awburst(1 downto 0) => hier_2_M_AXI_IC_AWBURST(1 downto 0),
      S08_AXI_awcache(3 downto 0) => hier_2_M_AXI_IC_AWCACHE(3 downto 0),
      S08_AXI_awid(0) => hier_2_M_AXI_IC_AWID(0),
      S08_AXI_awlen(7 downto 0) => hier_2_M_AXI_IC_AWLEN(7 downto 0),
      S08_AXI_awlock => hier_2_M_AXI_IC_AWLOCK,
      S08_AXI_awprot(2 downto 0) => hier_2_M_AXI_IC_AWPROT(2 downto 0),
      S08_AXI_awqos(3 downto 0) => hier_2_M_AXI_IC_AWQOS(3 downto 0),
      S08_AXI_awready => hier_2_M_AXI_IC_AWREADY,
      S08_AXI_awsize(2 downto 0) => hier_2_M_AXI_IC_AWSIZE(2 downto 0),
      S08_AXI_awvalid => hier_2_M_AXI_IC_AWVALID,
      S08_AXI_bid(0) => hier_2_M_AXI_IC_BID(0),
      S08_AXI_bready => hier_2_M_AXI_IC_BREADY,
      S08_AXI_bresp(1 downto 0) => hier_2_M_AXI_IC_BRESP(1 downto 0),
      S08_AXI_bvalid => hier_2_M_AXI_IC_BVALID,
      S08_AXI_rdata(31 downto 0) => hier_2_M_AXI_IC_RDATA(31 downto 0),
      S08_AXI_rid(0) => hier_2_M_AXI_IC_RID(0),
      S08_AXI_rlast => hier_2_M_AXI_IC_RLAST,
      S08_AXI_rready => hier_2_M_AXI_IC_RREADY,
      S08_AXI_rresp(1 downto 0) => hier_2_M_AXI_IC_RRESP(1 downto 0),
      S08_AXI_rvalid => hier_2_M_AXI_IC_RVALID,
      S08_AXI_wdata(31 downto 0) => hier_2_M_AXI_IC_WDATA(31 downto 0),
      S08_AXI_wlast => hier_2_M_AXI_IC_WLAST,
      S08_AXI_wready => hier_2_M_AXI_IC_WREADY,
      S08_AXI_wstrb(3 downto 0) => hier_2_M_AXI_IC_WSTRB(3 downto 0),
      S08_AXI_wvalid => hier_2_M_AXI_IC_WVALID,
      S09_ACLK => microblaze_0_Clk,
      S09_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S09_AXI_araddr(31 downto 0) => hier_3_M_AXI_DP_ARADDR(31 downto 0),
      S09_AXI_arprot(2 downto 0) => hier_3_M_AXI_DP_ARPROT(2 downto 0),
      S09_AXI_arready => hier_3_M_AXI_DP_ARREADY,
      S09_AXI_arvalid => hier_3_M_AXI_DP_ARVALID,
      S09_AXI_awaddr(31 downto 0) => hier_3_M_AXI_DP_AWADDR(31 downto 0),
      S09_AXI_awprot(2 downto 0) => hier_3_M_AXI_DP_AWPROT(2 downto 0),
      S09_AXI_awready => hier_3_M_AXI_DP_AWREADY,
      S09_AXI_awvalid => hier_3_M_AXI_DP_AWVALID,
      S09_AXI_bready => hier_3_M_AXI_DP_BREADY,
      S09_AXI_bresp(1 downto 0) => hier_3_M_AXI_DP_BRESP(1 downto 0),
      S09_AXI_bvalid => hier_3_M_AXI_DP_BVALID,
      S09_AXI_rdata(31 downto 0) => hier_3_M_AXI_DP_RDATA(31 downto 0),
      S09_AXI_rready => hier_3_M_AXI_DP_RREADY,
      S09_AXI_rresp(1 downto 0) => hier_3_M_AXI_DP_RRESP(1 downto 0),
      S09_AXI_rvalid => hier_3_M_AXI_DP_RVALID,
      S09_AXI_wdata(31 downto 0) => hier_3_M_AXI_DP_WDATA(31 downto 0),
      S09_AXI_wready => hier_3_M_AXI_DP_WREADY,
      S09_AXI_wstrb(3 downto 0) => hier_3_M_AXI_DP_WSTRB(3 downto 0),
      S09_AXI_wvalid => hier_3_M_AXI_DP_WVALID,
      S10_ACLK => microblaze_0_Clk,
      S10_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S10_AXI_araddr(31 downto 0) => hier_3_M_AXI_DC_ARADDR(31 downto 0),
      S10_AXI_arburst(1 downto 0) => hier_3_M_AXI_DC_ARBURST(1 downto 0),
      S10_AXI_arcache(3 downto 0) => hier_3_M_AXI_DC_ARCACHE(3 downto 0),
      S10_AXI_arid(0) => hier_3_M_AXI_DC_ARID(0),
      S10_AXI_arlen(7 downto 0) => hier_3_M_AXI_DC_ARLEN(7 downto 0),
      S10_AXI_arlock => hier_3_M_AXI_DC_ARLOCK,
      S10_AXI_arprot(2 downto 0) => hier_3_M_AXI_DC_ARPROT(2 downto 0),
      S10_AXI_arqos(3 downto 0) => hier_3_M_AXI_DC_ARQOS(3 downto 0),
      S10_AXI_arready => hier_3_M_AXI_DC_ARREADY,
      S10_AXI_arsize(2 downto 0) => hier_3_M_AXI_DC_ARSIZE(2 downto 0),
      S10_AXI_arvalid => hier_3_M_AXI_DC_ARVALID,
      S10_AXI_awaddr(31 downto 0) => hier_3_M_AXI_DC_AWADDR(31 downto 0),
      S10_AXI_awburst(1 downto 0) => hier_3_M_AXI_DC_AWBURST(1 downto 0),
      S10_AXI_awcache(3 downto 0) => hier_3_M_AXI_DC_AWCACHE(3 downto 0),
      S10_AXI_awid(0) => hier_3_M_AXI_DC_AWID(0),
      S10_AXI_awlen(7 downto 0) => hier_3_M_AXI_DC_AWLEN(7 downto 0),
      S10_AXI_awlock => hier_3_M_AXI_DC_AWLOCK,
      S10_AXI_awprot(2 downto 0) => hier_3_M_AXI_DC_AWPROT(2 downto 0),
      S10_AXI_awqos(3 downto 0) => hier_3_M_AXI_DC_AWQOS(3 downto 0),
      S10_AXI_awready => hier_3_M_AXI_DC_AWREADY,
      S10_AXI_awsize(2 downto 0) => hier_3_M_AXI_DC_AWSIZE(2 downto 0),
      S10_AXI_awvalid => hier_3_M_AXI_DC_AWVALID,
      S10_AXI_bid(0) => hier_3_M_AXI_DC_BID(0),
      S10_AXI_bready => hier_3_M_AXI_DC_BREADY,
      S10_AXI_bresp(1 downto 0) => hier_3_M_AXI_DC_BRESP(1 downto 0),
      S10_AXI_bvalid => hier_3_M_AXI_DC_BVALID,
      S10_AXI_rdata(31 downto 0) => hier_3_M_AXI_DC_RDATA(31 downto 0),
      S10_AXI_rid(0) => hier_3_M_AXI_DC_RID(0),
      S10_AXI_rlast => hier_3_M_AXI_DC_RLAST,
      S10_AXI_rready => hier_3_M_AXI_DC_RREADY,
      S10_AXI_rresp(1 downto 0) => hier_3_M_AXI_DC_RRESP(1 downto 0),
      S10_AXI_rvalid => hier_3_M_AXI_DC_RVALID,
      S10_AXI_wdata(31 downto 0) => hier_3_M_AXI_DC_WDATA(31 downto 0),
      S10_AXI_wlast => hier_3_M_AXI_DC_WLAST,
      S10_AXI_wready => hier_3_M_AXI_DC_WREADY,
      S10_AXI_wstrb(3 downto 0) => hier_3_M_AXI_DC_WSTRB(3 downto 0),
      S10_AXI_wvalid => hier_3_M_AXI_DC_WVALID,
      S11_ACLK => microblaze_0_Clk,
      S11_ARESETN(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S11_AXI_araddr(31 downto 0) => hier_3_M_AXI_IC_ARADDR(31 downto 0),
      S11_AXI_arburst(1 downto 0) => hier_3_M_AXI_IC_ARBURST(1 downto 0),
      S11_AXI_arcache(3 downto 0) => hier_3_M_AXI_IC_ARCACHE(3 downto 0),
      S11_AXI_arid(0) => hier_3_M_AXI_IC_ARID(0),
      S11_AXI_arlen(7 downto 0) => hier_3_M_AXI_IC_ARLEN(7 downto 0),
      S11_AXI_arlock => hier_3_M_AXI_IC_ARLOCK,
      S11_AXI_arprot(2 downto 0) => hier_3_M_AXI_IC_ARPROT(2 downto 0),
      S11_AXI_arqos(3 downto 0) => hier_3_M_AXI_IC_ARQOS(3 downto 0),
      S11_AXI_arready => hier_3_M_AXI_IC_ARREADY,
      S11_AXI_arsize(2 downto 0) => hier_3_M_AXI_IC_ARSIZE(2 downto 0),
      S11_AXI_arvalid => hier_3_M_AXI_IC_ARVALID,
      S11_AXI_awaddr(31 downto 0) => hier_3_M_AXI_IC_AWADDR(31 downto 0),
      S11_AXI_awburst(1 downto 0) => hier_3_M_AXI_IC_AWBURST(1 downto 0),
      S11_AXI_awcache(3 downto 0) => hier_3_M_AXI_IC_AWCACHE(3 downto 0),
      S11_AXI_awid(0) => hier_3_M_AXI_IC_AWID(0),
      S11_AXI_awlen(7 downto 0) => hier_3_M_AXI_IC_AWLEN(7 downto 0),
      S11_AXI_awlock => hier_3_M_AXI_IC_AWLOCK,
      S11_AXI_awprot(2 downto 0) => hier_3_M_AXI_IC_AWPROT(2 downto 0),
      S11_AXI_awqos(3 downto 0) => hier_3_M_AXI_IC_AWQOS(3 downto 0),
      S11_AXI_awready => hier_3_M_AXI_IC_AWREADY,
      S11_AXI_awsize(2 downto 0) => hier_3_M_AXI_IC_AWSIZE(2 downto 0),
      S11_AXI_awvalid => hier_3_M_AXI_IC_AWVALID,
      S11_AXI_bid(0) => hier_3_M_AXI_IC_BID(0),
      S11_AXI_bready => hier_3_M_AXI_IC_BREADY,
      S11_AXI_bresp(1 downto 0) => hier_3_M_AXI_IC_BRESP(1 downto 0),
      S11_AXI_bvalid => hier_3_M_AXI_IC_BVALID,
      S11_AXI_rdata(31 downto 0) => hier_3_M_AXI_IC_RDATA(31 downto 0),
      S11_AXI_rid(0) => hier_3_M_AXI_IC_RID(0),
      S11_AXI_rlast => hier_3_M_AXI_IC_RLAST,
      S11_AXI_rready => hier_3_M_AXI_IC_RREADY,
      S11_AXI_rresp(1 downto 0) => hier_3_M_AXI_IC_RRESP(1 downto 0),
      S11_AXI_rvalid => hier_3_M_AXI_IC_RVALID,
      S11_AXI_wdata(31 downto 0) => hier_3_M_AXI_IC_WDATA(31 downto 0),
      S11_AXI_wlast => hier_3_M_AXI_IC_WLAST,
      S11_AXI_wready => hier_3_M_AXI_IC_WREADY,
      S11_AXI_wstrb(3 downto 0) => hier_3_M_AXI_IC_WSTRB(3 downto 0),
      S11_AXI_wvalid => hier_3_M_AXI_IC_WVALID
    );
microblaze_0_local_memory: entity work.microblaze_0_local_memory_imp_HPR3PZ
     port map (
      DLMB_abus(0 to 31) => microblaze_0_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => microblaze_0_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 3) => microblaze_0_dlmb_1_BE(0 to 3),
      DLMB_ce => microblaze_0_dlmb_1_CE,
      DLMB_readdbus(0 to 31) => microblaze_0_dlmb_1_READDBUS(0 to 31),
      DLMB_readstrobe => microblaze_0_dlmb_1_READSTROBE,
      DLMB_ready => microblaze_0_dlmb_1_READY,
      DLMB_ue => microblaze_0_dlmb_1_UE,
      DLMB_wait => microblaze_0_dlmb_1_WAIT,
      DLMB_writedbus(0 to 31) => microblaze_0_dlmb_1_WRITEDBUS(0 to 31),
      DLMB_writestrobe => microblaze_0_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => microblaze_0_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => microblaze_0_ilmb_1_ADDRSTROBE,
      ILMB_ce => microblaze_0_ilmb_1_CE,
      ILMB_readdbus(0 to 31) => microblaze_0_ilmb_1_READDBUS(0 to 31),
      ILMB_readstrobe => microblaze_0_ilmb_1_READSTROBE,
      ILMB_ready => microblaze_0_ilmb_1_READY,
      ILMB_ue => microblaze_0_ilmb_1_UE,
      ILMB_wait => microblaze_0_ilmb_1_WAIT,
      LMB_Clk => microblaze_0_Clk,
      SYS_Rst(0) => rst_mig_7series_0_100M_bus_struct_reset(0)
    );
microblaze_0_local_memory_1: entity work.microblaze_0_local_memory_1_imp_1CUIU1Q
     port map (
      DLMB_abus(0 to 31) => microblaze_0_dlmb_2_ABUS(0 to 31),
      DLMB_addrstrobe => microblaze_0_dlmb_2_ADDRSTROBE,
      DLMB_be(0 to 3) => microblaze_0_dlmb_2_BE(0 to 3),
      DLMB_ce => microblaze_0_dlmb_2_CE,
      DLMB_readdbus(0 to 31) => microblaze_0_dlmb_2_READDBUS(0 to 31),
      DLMB_readstrobe => microblaze_0_dlmb_2_READSTROBE,
      DLMB_ready => microblaze_0_dlmb_2_READY,
      DLMB_ue => microblaze_0_dlmb_2_UE,
      DLMB_wait => microblaze_0_dlmb_2_WAIT,
      DLMB_writedbus(0 to 31) => microblaze_0_dlmb_2_WRITEDBUS(0 to 31),
      DLMB_writestrobe => microblaze_0_dlmb_2_WRITESTROBE,
      ILMB_abus(0 to 31) => microblaze_0_ilmb_2_ABUS(0 to 31),
      ILMB_addrstrobe => microblaze_0_ilmb_2_ADDRSTROBE,
      ILMB_ce => microblaze_0_ilmb_2_CE,
      ILMB_readdbus(0 to 31) => microblaze_0_ilmb_2_READDBUS(0 to 31),
      ILMB_readstrobe => microblaze_0_ilmb_2_READSTROBE,
      ILMB_ready => microblaze_0_ilmb_2_READY,
      ILMB_ue => microblaze_0_ilmb_2_UE,
      ILMB_wait => microblaze_0_ilmb_2_WAIT,
      LMB_Clk => microblaze_0_Clk,
      SYS_Rst(0) => rst_mig_7series_0_100M_bus_struct_reset(0)
    );
microblaze_0_local_memory_2: entity work.microblaze_0_local_memory_2_imp_BMVLI7
     port map (
      DLMB_abus(0 to 31) => microblaze_0_dlmb_3_ABUS(0 to 31),
      DLMB_addrstrobe => microblaze_0_dlmb_3_ADDRSTROBE,
      DLMB_be(0 to 3) => microblaze_0_dlmb_3_BE(0 to 3),
      DLMB_ce => microblaze_0_dlmb_3_CE,
      DLMB_readdbus(0 to 31) => microblaze_0_dlmb_3_READDBUS(0 to 31),
      DLMB_readstrobe => microblaze_0_dlmb_3_READSTROBE,
      DLMB_ready => microblaze_0_dlmb_3_READY,
      DLMB_ue => microblaze_0_dlmb_3_UE,
      DLMB_wait => microblaze_0_dlmb_3_WAIT,
      DLMB_writedbus(0 to 31) => microblaze_0_dlmb_3_WRITEDBUS(0 to 31),
      DLMB_writestrobe => microblaze_0_dlmb_3_WRITESTROBE,
      ILMB_abus(0 to 31) => microblaze_0_ilmb_3_ABUS(0 to 31),
      ILMB_addrstrobe => microblaze_0_ilmb_3_ADDRSTROBE,
      ILMB_ce => microblaze_0_ilmb_3_CE,
      ILMB_readdbus(0 to 31) => microblaze_0_ilmb_3_READDBUS(0 to 31),
      ILMB_readstrobe => microblaze_0_ilmb_3_READSTROBE,
      ILMB_ready => microblaze_0_ilmb_3_READY,
      ILMB_ue => microblaze_0_ilmb_3_UE,
      ILMB_wait => microblaze_0_ilmb_3_WAIT,
      LMB_Clk => microblaze_0_Clk,
      SYS_Rst(0) => rst_mig_7series_0_100M_bus_struct_reset(0)
    );
microblaze_0_local_memory_3: entity work.microblaze_0_local_memory_3_imp_1SH73OF
     port map (
      DLMB_abus(0 to 31) => microblaze_0_dlmb_4_ABUS(0 to 31),
      DLMB_addrstrobe => microblaze_0_dlmb_4_ADDRSTROBE,
      DLMB_be(0 to 3) => microblaze_0_dlmb_4_BE(0 to 3),
      DLMB_ce => microblaze_0_dlmb_4_CE,
      DLMB_readdbus(0 to 31) => microblaze_0_dlmb_4_READDBUS(0 to 31),
      DLMB_readstrobe => microblaze_0_dlmb_4_READSTROBE,
      DLMB_ready => microblaze_0_dlmb_4_READY,
      DLMB_ue => microblaze_0_dlmb_4_UE,
      DLMB_wait => microblaze_0_dlmb_4_WAIT,
      DLMB_writedbus(0 to 31) => microblaze_0_dlmb_4_WRITEDBUS(0 to 31),
      DLMB_writestrobe => microblaze_0_dlmb_4_WRITESTROBE,
      ILMB_abus(0 to 31) => microblaze_0_ilmb_4_ABUS(0 to 31),
      ILMB_addrstrobe => microblaze_0_ilmb_4_ADDRSTROBE,
      ILMB_ce => microblaze_0_ilmb_4_CE,
      ILMB_readdbus(0 to 31) => microblaze_0_ilmb_4_READDBUS(0 to 31),
      ILMB_readstrobe => microblaze_0_ilmb_4_READSTROBE,
      ILMB_ready => microblaze_0_ilmb_4_READY,
      ILMB_ue => microblaze_0_ilmb_4_UE,
      ILMB_wait => microblaze_0_ilmb_4_WAIT,
      LMB_Clk => microblaze_0_Clk,
      SYS_Rst(0) => rst_mig_7series_0_100M_bus_struct_reset(0)
    );
microblaze_0_xlconcat: component microblaze_microblaze_0_xlconcat_0
     port map (
      In0(0) => axi_timer_0_interrupt,
      In1(0) => axi_uartlite_0_interrupt,
      dout(1 downto 0) => microblaze_0_intr(1 downto 0)
    );
microblaze_0_xlconcat_1: component microblaze_microblaze_0_xlconcat_5
     port map (
      In0(0) => axi_timer_0_interrupt,
      In1(0) => axi_uartlite_0_interrupt,
      dout(1 downto 0) => microblaze_0_intr_1(1 downto 0)
    );
microblaze_0_xlconcat_2: component microblaze_microblaze_0_xlconcat_6
     port map (
      In0(0) => axi_timer_0_interrupt,
      In1(0) => axi_uartlite_0_interrupt,
      dout(1 downto 0) => microblaze_0_intr_2(1 downto 0)
    );
microblaze_0_xlconcat_3: component microblaze_microblaze_0_xlconcat_7
     port map (
      In0(0) => axi_timer_0_interrupt,
      In1(0) => axi_uartlite_0_interrupt,
      dout(1 downto 0) => microblaze_0_intr_3(1 downto 0)
    );
microblaze_1: component microblaze_microblaze_0_0
     port map (
      Byte_Enable(0 to 3) => microblaze_0_dlmb_2_BE(0 to 3),
      Clk => microblaze_0_Clk,
      DCE => microblaze_0_dlmb_2_CE,
      DReady => microblaze_0_dlmb_2_READY,
      DUE => microblaze_0_dlmb_2_UE,
      DWait => microblaze_0_dlmb_2_WAIT,
      D_AS => microblaze_0_dlmb_2_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_0_dlmb_2_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_0_dlmb_2_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_0_dlmb_2_WRITEDBUS(0 to 31),
      ICE => microblaze_0_ilmb_2_CE,
      IFetch => microblaze_0_ilmb_2_READSTROBE,
      IReady => microblaze_0_ilmb_2_READY,
      IUE => microblaze_0_ilmb_2_UE,
      IWAIT => microblaze_0_ilmb_2_WAIT,
      I_AS => microblaze_0_ilmb_2_ADDRSTROBE,
      Instr(0 to 31) => microblaze_0_ilmb_2_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_0_ilmb_2_ABUS(0 to 31),
      Interrupt => microblaze_0_interrupt_1_INTERRUPT,
      Interrupt_Ack(0 to 1) => microblaze_0_interrupt_1_ACK(0 to 1),
      Interrupt_Address(0) => microblaze_0_interrupt_1_ADDRESS(31),
      Interrupt_Address(1) => microblaze_0_interrupt_1_ADDRESS(30),
      Interrupt_Address(2) => microblaze_0_interrupt_1_ADDRESS(29),
      Interrupt_Address(3) => microblaze_0_interrupt_1_ADDRESS(28),
      Interrupt_Address(4) => microblaze_0_interrupt_1_ADDRESS(27),
      Interrupt_Address(5) => microblaze_0_interrupt_1_ADDRESS(26),
      Interrupt_Address(6) => microblaze_0_interrupt_1_ADDRESS(25),
      Interrupt_Address(7) => microblaze_0_interrupt_1_ADDRESS(24),
      Interrupt_Address(8) => microblaze_0_interrupt_1_ADDRESS(23),
      Interrupt_Address(9) => microblaze_0_interrupt_1_ADDRESS(22),
      Interrupt_Address(10) => microblaze_0_interrupt_1_ADDRESS(21),
      Interrupt_Address(11) => microblaze_0_interrupt_1_ADDRESS(20),
      Interrupt_Address(12) => microblaze_0_interrupt_1_ADDRESS(19),
      Interrupt_Address(13) => microblaze_0_interrupt_1_ADDRESS(18),
      Interrupt_Address(14) => microblaze_0_interrupt_1_ADDRESS(17),
      Interrupt_Address(15) => microblaze_0_interrupt_1_ADDRESS(16),
      Interrupt_Address(16) => microblaze_0_interrupt_1_ADDRESS(15),
      Interrupt_Address(17) => microblaze_0_interrupt_1_ADDRESS(14),
      Interrupt_Address(18) => microblaze_0_interrupt_1_ADDRESS(13),
      Interrupt_Address(19) => microblaze_0_interrupt_1_ADDRESS(12),
      Interrupt_Address(20) => microblaze_0_interrupt_1_ADDRESS(11),
      Interrupt_Address(21) => microblaze_0_interrupt_1_ADDRESS(10),
      Interrupt_Address(22) => microblaze_0_interrupt_1_ADDRESS(9),
      Interrupt_Address(23) => microblaze_0_interrupt_1_ADDRESS(8),
      Interrupt_Address(24) => microblaze_0_interrupt_1_ADDRESS(7),
      Interrupt_Address(25) => microblaze_0_interrupt_1_ADDRESS(6),
      Interrupt_Address(26) => microblaze_0_interrupt_1_ADDRESS(5),
      Interrupt_Address(27) => microblaze_0_interrupt_1_ADDRESS(4),
      Interrupt_Address(28) => microblaze_0_interrupt_1_ADDRESS(3),
      Interrupt_Address(29) => microblaze_0_interrupt_1_ADDRESS(2),
      Interrupt_Address(30) => microblaze_0_interrupt_1_ADDRESS(1),
      Interrupt_Address(31) => microblaze_0_interrupt_1_ADDRESS(0),
      M_AXI_DC_ARADDR(31 downto 0) => hier_1_M_AXI_DC_ARADDR(31 downto 0),
      M_AXI_DC_ARBURST(1 downto 0) => hier_1_M_AXI_DC_ARBURST(1 downto 0),
      M_AXI_DC_ARCACHE(3 downto 0) => hier_1_M_AXI_DC_ARCACHE(3 downto 0),
      M_AXI_DC_ARID(0) => hier_1_M_AXI_DC_ARID(0),
      M_AXI_DC_ARLEN(7 downto 0) => hier_1_M_AXI_DC_ARLEN(7 downto 0),
      M_AXI_DC_ARLOCK => hier_1_M_AXI_DC_ARLOCK,
      M_AXI_DC_ARPROT(2 downto 0) => hier_1_M_AXI_DC_ARPROT(2 downto 0),
      M_AXI_DC_ARQOS(3 downto 0) => hier_1_M_AXI_DC_ARQOS(3 downto 0),
      M_AXI_DC_ARREADY => hier_1_M_AXI_DC_ARREADY,
      M_AXI_DC_ARSIZE(2 downto 0) => hier_1_M_AXI_DC_ARSIZE(2 downto 0),
      M_AXI_DC_ARVALID => hier_1_M_AXI_DC_ARVALID,
      M_AXI_DC_AWADDR(31 downto 0) => hier_1_M_AXI_DC_AWADDR(31 downto 0),
      M_AXI_DC_AWBURST(1 downto 0) => hier_1_M_AXI_DC_AWBURST(1 downto 0),
      M_AXI_DC_AWCACHE(3 downto 0) => hier_1_M_AXI_DC_AWCACHE(3 downto 0),
      M_AXI_DC_AWID(0) => hier_1_M_AXI_DC_AWID(0),
      M_AXI_DC_AWLEN(7 downto 0) => hier_1_M_AXI_DC_AWLEN(7 downto 0),
      M_AXI_DC_AWLOCK => hier_1_M_AXI_DC_AWLOCK,
      M_AXI_DC_AWPROT(2 downto 0) => hier_1_M_AXI_DC_AWPROT(2 downto 0),
      M_AXI_DC_AWQOS(3 downto 0) => hier_1_M_AXI_DC_AWQOS(3 downto 0),
      M_AXI_DC_AWREADY => hier_1_M_AXI_DC_AWREADY,
      M_AXI_DC_AWSIZE(2 downto 0) => hier_1_M_AXI_DC_AWSIZE(2 downto 0),
      M_AXI_DC_AWVALID => hier_1_M_AXI_DC_AWVALID,
      M_AXI_DC_BID(0) => hier_1_M_AXI_DC_BID(0),
      M_AXI_DC_BREADY => hier_1_M_AXI_DC_BREADY,
      M_AXI_DC_BRESP(1 downto 0) => hier_1_M_AXI_DC_BRESP(1 downto 0),
      M_AXI_DC_BVALID => hier_1_M_AXI_DC_BVALID,
      M_AXI_DC_RDATA(31 downto 0) => hier_1_M_AXI_DC_RDATA(31 downto 0),
      M_AXI_DC_RID(0) => hier_1_M_AXI_DC_RID(0),
      M_AXI_DC_RLAST => hier_1_M_AXI_DC_RLAST,
      M_AXI_DC_RREADY => hier_1_M_AXI_DC_RREADY,
      M_AXI_DC_RRESP(1 downto 0) => hier_1_M_AXI_DC_RRESP(1 downto 0),
      M_AXI_DC_RVALID => hier_1_M_AXI_DC_RVALID,
      M_AXI_DC_WDATA(31 downto 0) => hier_1_M_AXI_DC_WDATA(31 downto 0),
      M_AXI_DC_WLAST => hier_1_M_AXI_DC_WLAST,
      M_AXI_DC_WREADY => hier_1_M_AXI_DC_WREADY,
      M_AXI_DC_WSTRB(3 downto 0) => hier_1_M_AXI_DC_WSTRB(3 downto 0),
      M_AXI_DC_WVALID => hier_1_M_AXI_DC_WVALID,
      M_AXI_DP_ARADDR(31 downto 0) => hier_1_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => hier_1_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => hier_1_M_AXI_DP_ARREADY,
      M_AXI_DP_ARVALID => hier_1_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => hier_1_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => hier_1_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => hier_1_M_AXI_DP_AWREADY,
      M_AXI_DP_AWVALID => hier_1_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => hier_1_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => hier_1_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => hier_1_M_AXI_DP_BVALID,
      M_AXI_DP_RDATA(31 downto 0) => hier_1_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => hier_1_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => hier_1_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => hier_1_M_AXI_DP_RVALID,
      M_AXI_DP_WDATA(31 downto 0) => hier_1_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => hier_1_M_AXI_DP_WREADY,
      M_AXI_DP_WSTRB(3 downto 0) => hier_1_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => hier_1_M_AXI_DP_WVALID,
      M_AXI_IC_ARADDR(31 downto 0) => hier_1_M_AXI_IC_ARADDR(31 downto 0),
      M_AXI_IC_ARBURST(1 downto 0) => hier_1_M_AXI_IC_ARBURST(1 downto 0),
      M_AXI_IC_ARCACHE(3 downto 0) => hier_1_M_AXI_IC_ARCACHE(3 downto 0),
      M_AXI_IC_ARID(0) => hier_1_M_AXI_IC_ARID(0),
      M_AXI_IC_ARLEN(7 downto 0) => hier_1_M_AXI_IC_ARLEN(7 downto 0),
      M_AXI_IC_ARLOCK => hier_1_M_AXI_IC_ARLOCK,
      M_AXI_IC_ARPROT(2 downto 0) => hier_1_M_AXI_IC_ARPROT(2 downto 0),
      M_AXI_IC_ARQOS(3 downto 0) => hier_1_M_AXI_IC_ARQOS(3 downto 0),
      M_AXI_IC_ARREADY => hier_1_M_AXI_IC_ARREADY,
      M_AXI_IC_ARSIZE(2 downto 0) => hier_1_M_AXI_IC_ARSIZE(2 downto 0),
      M_AXI_IC_ARVALID => hier_1_M_AXI_IC_ARVALID,
      M_AXI_IC_AWADDR(31 downto 0) => hier_1_M_AXI_IC_AWADDR(31 downto 0),
      M_AXI_IC_AWBURST(1 downto 0) => hier_1_M_AXI_IC_AWBURST(1 downto 0),
      M_AXI_IC_AWCACHE(3 downto 0) => hier_1_M_AXI_IC_AWCACHE(3 downto 0),
      M_AXI_IC_AWID(0) => hier_1_M_AXI_IC_AWID(0),
      M_AXI_IC_AWLEN(7 downto 0) => hier_1_M_AXI_IC_AWLEN(7 downto 0),
      M_AXI_IC_AWLOCK => hier_1_M_AXI_IC_AWLOCK,
      M_AXI_IC_AWPROT(2 downto 0) => hier_1_M_AXI_IC_AWPROT(2 downto 0),
      M_AXI_IC_AWQOS(3 downto 0) => hier_1_M_AXI_IC_AWQOS(3 downto 0),
      M_AXI_IC_AWREADY => hier_1_M_AXI_IC_AWREADY,
      M_AXI_IC_AWSIZE(2 downto 0) => hier_1_M_AXI_IC_AWSIZE(2 downto 0),
      M_AXI_IC_AWVALID => hier_1_M_AXI_IC_AWVALID,
      M_AXI_IC_BID(0) => hier_1_M_AXI_IC_BID(0),
      M_AXI_IC_BREADY => hier_1_M_AXI_IC_BREADY,
      M_AXI_IC_BRESP(1 downto 0) => hier_1_M_AXI_IC_BRESP(1 downto 0),
      M_AXI_IC_BVALID => hier_1_M_AXI_IC_BVALID,
      M_AXI_IC_RDATA(31 downto 0) => hier_1_M_AXI_IC_RDATA(31 downto 0),
      M_AXI_IC_RID(0) => hier_1_M_AXI_IC_RID(0),
      M_AXI_IC_RLAST => hier_1_M_AXI_IC_RLAST,
      M_AXI_IC_RREADY => hier_1_M_AXI_IC_RREADY,
      M_AXI_IC_RRESP(1 downto 0) => hier_1_M_AXI_IC_RRESP(1 downto 0),
      M_AXI_IC_RVALID => hier_1_M_AXI_IC_RVALID,
      M_AXI_IC_WDATA(31 downto 0) => hier_1_M_AXI_IC_WDATA(31 downto 0),
      M_AXI_IC_WLAST => hier_1_M_AXI_IC_WLAST,
      M_AXI_IC_WREADY => hier_1_M_AXI_IC_WREADY,
      M_AXI_IC_WSTRB(3 downto 0) => hier_1_M_AXI_IC_WSTRB(3 downto 0),
      M_AXI_IC_WVALID => hier_1_M_AXI_IC_WVALID,
      Read_Strobe => microblaze_0_dlmb_2_READSTROBE,
      Reset => mig_7series_0_ui_clk_sync_rst,
      Write_Strobe => microblaze_0_dlmb_2_WRITESTROBE
    );
microblaze_2: component microblaze_microblaze_0_1
     port map (
      Byte_Enable(0 to 3) => microblaze_0_dlmb_3_BE(0 to 3),
      Clk => microblaze_0_Clk,
      DCE => microblaze_0_dlmb_3_CE,
      DReady => microblaze_0_dlmb_3_READY,
      DUE => microblaze_0_dlmb_3_UE,
      DWait => microblaze_0_dlmb_3_WAIT,
      D_AS => microblaze_0_dlmb_3_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_0_dlmb_3_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_0_dlmb_3_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_0_dlmb_3_WRITEDBUS(0 to 31),
      ICE => microblaze_0_ilmb_3_CE,
      IFetch => microblaze_0_ilmb_3_READSTROBE,
      IReady => microblaze_0_ilmb_3_READY,
      IUE => microblaze_0_ilmb_3_UE,
      IWAIT => microblaze_0_ilmb_3_WAIT,
      I_AS => microblaze_0_ilmb_3_ADDRSTROBE,
      Instr(0 to 31) => microblaze_0_ilmb_3_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_0_ilmb_3_ABUS(0 to 31),
      Interrupt => microblaze_0_interrupt_2_INTERRUPT,
      Interrupt_Ack(0 to 1) => microblaze_0_interrupt_2_ACK(0 to 1),
      Interrupt_Address(0) => microblaze_0_interrupt_2_ADDRESS(31),
      Interrupt_Address(1) => microblaze_0_interrupt_2_ADDRESS(30),
      Interrupt_Address(2) => microblaze_0_interrupt_2_ADDRESS(29),
      Interrupt_Address(3) => microblaze_0_interrupt_2_ADDRESS(28),
      Interrupt_Address(4) => microblaze_0_interrupt_2_ADDRESS(27),
      Interrupt_Address(5) => microblaze_0_interrupt_2_ADDRESS(26),
      Interrupt_Address(6) => microblaze_0_interrupt_2_ADDRESS(25),
      Interrupt_Address(7) => microblaze_0_interrupt_2_ADDRESS(24),
      Interrupt_Address(8) => microblaze_0_interrupt_2_ADDRESS(23),
      Interrupt_Address(9) => microblaze_0_interrupt_2_ADDRESS(22),
      Interrupt_Address(10) => microblaze_0_interrupt_2_ADDRESS(21),
      Interrupt_Address(11) => microblaze_0_interrupt_2_ADDRESS(20),
      Interrupt_Address(12) => microblaze_0_interrupt_2_ADDRESS(19),
      Interrupt_Address(13) => microblaze_0_interrupt_2_ADDRESS(18),
      Interrupt_Address(14) => microblaze_0_interrupt_2_ADDRESS(17),
      Interrupt_Address(15) => microblaze_0_interrupt_2_ADDRESS(16),
      Interrupt_Address(16) => microblaze_0_interrupt_2_ADDRESS(15),
      Interrupt_Address(17) => microblaze_0_interrupt_2_ADDRESS(14),
      Interrupt_Address(18) => microblaze_0_interrupt_2_ADDRESS(13),
      Interrupt_Address(19) => microblaze_0_interrupt_2_ADDRESS(12),
      Interrupt_Address(20) => microblaze_0_interrupt_2_ADDRESS(11),
      Interrupt_Address(21) => microblaze_0_interrupt_2_ADDRESS(10),
      Interrupt_Address(22) => microblaze_0_interrupt_2_ADDRESS(9),
      Interrupt_Address(23) => microblaze_0_interrupt_2_ADDRESS(8),
      Interrupt_Address(24) => microblaze_0_interrupt_2_ADDRESS(7),
      Interrupt_Address(25) => microblaze_0_interrupt_2_ADDRESS(6),
      Interrupt_Address(26) => microblaze_0_interrupt_2_ADDRESS(5),
      Interrupt_Address(27) => microblaze_0_interrupt_2_ADDRESS(4),
      Interrupt_Address(28) => microblaze_0_interrupt_2_ADDRESS(3),
      Interrupt_Address(29) => microblaze_0_interrupt_2_ADDRESS(2),
      Interrupt_Address(30) => microblaze_0_interrupt_2_ADDRESS(1),
      Interrupt_Address(31) => microblaze_0_interrupt_2_ADDRESS(0),
      M_AXI_DC_ARADDR(31 downto 0) => hier_2_M_AXI_DC_ARADDR(31 downto 0),
      M_AXI_DC_ARBURST(1 downto 0) => hier_2_M_AXI_DC_ARBURST(1 downto 0),
      M_AXI_DC_ARCACHE(3 downto 0) => hier_2_M_AXI_DC_ARCACHE(3 downto 0),
      M_AXI_DC_ARID(0) => hier_2_M_AXI_DC_ARID(0),
      M_AXI_DC_ARLEN(7 downto 0) => hier_2_M_AXI_DC_ARLEN(7 downto 0),
      M_AXI_DC_ARLOCK => hier_2_M_AXI_DC_ARLOCK,
      M_AXI_DC_ARPROT(2 downto 0) => hier_2_M_AXI_DC_ARPROT(2 downto 0),
      M_AXI_DC_ARQOS(3 downto 0) => hier_2_M_AXI_DC_ARQOS(3 downto 0),
      M_AXI_DC_ARREADY => hier_2_M_AXI_DC_ARREADY,
      M_AXI_DC_ARSIZE(2 downto 0) => hier_2_M_AXI_DC_ARSIZE(2 downto 0),
      M_AXI_DC_ARVALID => hier_2_M_AXI_DC_ARVALID,
      M_AXI_DC_AWADDR(31 downto 0) => hier_2_M_AXI_DC_AWADDR(31 downto 0),
      M_AXI_DC_AWBURST(1 downto 0) => hier_2_M_AXI_DC_AWBURST(1 downto 0),
      M_AXI_DC_AWCACHE(3 downto 0) => hier_2_M_AXI_DC_AWCACHE(3 downto 0),
      M_AXI_DC_AWID(0) => hier_2_M_AXI_DC_AWID(0),
      M_AXI_DC_AWLEN(7 downto 0) => hier_2_M_AXI_DC_AWLEN(7 downto 0),
      M_AXI_DC_AWLOCK => hier_2_M_AXI_DC_AWLOCK,
      M_AXI_DC_AWPROT(2 downto 0) => hier_2_M_AXI_DC_AWPROT(2 downto 0),
      M_AXI_DC_AWQOS(3 downto 0) => hier_2_M_AXI_DC_AWQOS(3 downto 0),
      M_AXI_DC_AWREADY => hier_2_M_AXI_DC_AWREADY,
      M_AXI_DC_AWSIZE(2 downto 0) => hier_2_M_AXI_DC_AWSIZE(2 downto 0),
      M_AXI_DC_AWVALID => hier_2_M_AXI_DC_AWVALID,
      M_AXI_DC_BID(0) => hier_2_M_AXI_DC_BID(0),
      M_AXI_DC_BREADY => hier_2_M_AXI_DC_BREADY,
      M_AXI_DC_BRESP(1 downto 0) => hier_2_M_AXI_DC_BRESP(1 downto 0),
      M_AXI_DC_BVALID => hier_2_M_AXI_DC_BVALID,
      M_AXI_DC_RDATA(31 downto 0) => hier_2_M_AXI_DC_RDATA(31 downto 0),
      M_AXI_DC_RID(0) => hier_2_M_AXI_DC_RID(0),
      M_AXI_DC_RLAST => hier_2_M_AXI_DC_RLAST,
      M_AXI_DC_RREADY => hier_2_M_AXI_DC_RREADY,
      M_AXI_DC_RRESP(1 downto 0) => hier_2_M_AXI_DC_RRESP(1 downto 0),
      M_AXI_DC_RVALID => hier_2_M_AXI_DC_RVALID,
      M_AXI_DC_WDATA(31 downto 0) => hier_2_M_AXI_DC_WDATA(31 downto 0),
      M_AXI_DC_WLAST => hier_2_M_AXI_DC_WLAST,
      M_AXI_DC_WREADY => hier_2_M_AXI_DC_WREADY,
      M_AXI_DC_WSTRB(3 downto 0) => hier_2_M_AXI_DC_WSTRB(3 downto 0),
      M_AXI_DC_WVALID => hier_2_M_AXI_DC_WVALID,
      M_AXI_DP_ARADDR(31 downto 0) => hier_2_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => hier_2_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => hier_2_M_AXI_DP_ARREADY,
      M_AXI_DP_ARVALID => hier_2_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => hier_2_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => hier_2_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => hier_2_M_AXI_DP_AWREADY,
      M_AXI_DP_AWVALID => hier_2_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => hier_2_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => hier_2_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => hier_2_M_AXI_DP_BVALID,
      M_AXI_DP_RDATA(31 downto 0) => hier_2_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => hier_2_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => hier_2_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => hier_2_M_AXI_DP_RVALID,
      M_AXI_DP_WDATA(31 downto 0) => hier_2_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => hier_2_M_AXI_DP_WREADY,
      M_AXI_DP_WSTRB(3 downto 0) => hier_2_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => hier_2_M_AXI_DP_WVALID,
      M_AXI_IC_ARADDR(31 downto 0) => hier_2_M_AXI_IC_ARADDR(31 downto 0),
      M_AXI_IC_ARBURST(1 downto 0) => hier_2_M_AXI_IC_ARBURST(1 downto 0),
      M_AXI_IC_ARCACHE(3 downto 0) => hier_2_M_AXI_IC_ARCACHE(3 downto 0),
      M_AXI_IC_ARID(0) => hier_2_M_AXI_IC_ARID(0),
      M_AXI_IC_ARLEN(7 downto 0) => hier_2_M_AXI_IC_ARLEN(7 downto 0),
      M_AXI_IC_ARLOCK => hier_2_M_AXI_IC_ARLOCK,
      M_AXI_IC_ARPROT(2 downto 0) => hier_2_M_AXI_IC_ARPROT(2 downto 0),
      M_AXI_IC_ARQOS(3 downto 0) => hier_2_M_AXI_IC_ARQOS(3 downto 0),
      M_AXI_IC_ARREADY => hier_2_M_AXI_IC_ARREADY,
      M_AXI_IC_ARSIZE(2 downto 0) => hier_2_M_AXI_IC_ARSIZE(2 downto 0),
      M_AXI_IC_ARVALID => hier_2_M_AXI_IC_ARVALID,
      M_AXI_IC_AWADDR(31 downto 0) => hier_2_M_AXI_IC_AWADDR(31 downto 0),
      M_AXI_IC_AWBURST(1 downto 0) => hier_2_M_AXI_IC_AWBURST(1 downto 0),
      M_AXI_IC_AWCACHE(3 downto 0) => hier_2_M_AXI_IC_AWCACHE(3 downto 0),
      M_AXI_IC_AWID(0) => hier_2_M_AXI_IC_AWID(0),
      M_AXI_IC_AWLEN(7 downto 0) => hier_2_M_AXI_IC_AWLEN(7 downto 0),
      M_AXI_IC_AWLOCK => hier_2_M_AXI_IC_AWLOCK,
      M_AXI_IC_AWPROT(2 downto 0) => hier_2_M_AXI_IC_AWPROT(2 downto 0),
      M_AXI_IC_AWQOS(3 downto 0) => hier_2_M_AXI_IC_AWQOS(3 downto 0),
      M_AXI_IC_AWREADY => hier_2_M_AXI_IC_AWREADY,
      M_AXI_IC_AWSIZE(2 downto 0) => hier_2_M_AXI_IC_AWSIZE(2 downto 0),
      M_AXI_IC_AWVALID => hier_2_M_AXI_IC_AWVALID,
      M_AXI_IC_BID(0) => hier_2_M_AXI_IC_BID(0),
      M_AXI_IC_BREADY => hier_2_M_AXI_IC_BREADY,
      M_AXI_IC_BRESP(1 downto 0) => hier_2_M_AXI_IC_BRESP(1 downto 0),
      M_AXI_IC_BVALID => hier_2_M_AXI_IC_BVALID,
      M_AXI_IC_RDATA(31 downto 0) => hier_2_M_AXI_IC_RDATA(31 downto 0),
      M_AXI_IC_RID(0) => hier_2_M_AXI_IC_RID(0),
      M_AXI_IC_RLAST => hier_2_M_AXI_IC_RLAST,
      M_AXI_IC_RREADY => hier_2_M_AXI_IC_RREADY,
      M_AXI_IC_RRESP(1 downto 0) => hier_2_M_AXI_IC_RRESP(1 downto 0),
      M_AXI_IC_RVALID => hier_2_M_AXI_IC_RVALID,
      M_AXI_IC_WDATA(31 downto 0) => hier_2_M_AXI_IC_WDATA(31 downto 0),
      M_AXI_IC_WLAST => hier_2_M_AXI_IC_WLAST,
      M_AXI_IC_WREADY => hier_2_M_AXI_IC_WREADY,
      M_AXI_IC_WSTRB(3 downto 0) => hier_2_M_AXI_IC_WSTRB(3 downto 0),
      M_AXI_IC_WVALID => hier_2_M_AXI_IC_WVALID,
      Read_Strobe => microblaze_0_dlmb_3_READSTROBE,
      Reset => mig_7series_0_ui_clk_sync_rst,
      Write_Strobe => microblaze_0_dlmb_3_WRITESTROBE
    );
microblaze_3: component microblaze_microblaze_0_2
     port map (
      Byte_Enable(0 to 3) => microblaze_0_dlmb_4_BE(0 to 3),
      Clk => microblaze_0_Clk,
      DCE => microblaze_0_dlmb_4_CE,
      DReady => microblaze_0_dlmb_4_READY,
      DUE => microblaze_0_dlmb_4_UE,
      DWait => microblaze_0_dlmb_4_WAIT,
      D_AS => microblaze_0_dlmb_4_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_0_dlmb_4_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_0_dlmb_4_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_0_dlmb_4_WRITEDBUS(0 to 31),
      ICE => microblaze_0_ilmb_4_CE,
      IFetch => microblaze_0_ilmb_4_READSTROBE,
      IReady => microblaze_0_ilmb_4_READY,
      IUE => microblaze_0_ilmb_4_UE,
      IWAIT => microblaze_0_ilmb_4_WAIT,
      I_AS => microblaze_0_ilmb_4_ADDRSTROBE,
      Instr(0 to 31) => microblaze_0_ilmb_4_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_0_ilmb_4_ABUS(0 to 31),
      Interrupt => microblaze_0_interrupt_3_INTERRUPT,
      Interrupt_Ack(0 to 1) => microblaze_0_interrupt_3_ACK(0 to 1),
      Interrupt_Address(0) => microblaze_0_interrupt_3_ADDRESS(31),
      Interrupt_Address(1) => microblaze_0_interrupt_3_ADDRESS(30),
      Interrupt_Address(2) => microblaze_0_interrupt_3_ADDRESS(29),
      Interrupt_Address(3) => microblaze_0_interrupt_3_ADDRESS(28),
      Interrupt_Address(4) => microblaze_0_interrupt_3_ADDRESS(27),
      Interrupt_Address(5) => microblaze_0_interrupt_3_ADDRESS(26),
      Interrupt_Address(6) => microblaze_0_interrupt_3_ADDRESS(25),
      Interrupt_Address(7) => microblaze_0_interrupt_3_ADDRESS(24),
      Interrupt_Address(8) => microblaze_0_interrupt_3_ADDRESS(23),
      Interrupt_Address(9) => microblaze_0_interrupt_3_ADDRESS(22),
      Interrupt_Address(10) => microblaze_0_interrupt_3_ADDRESS(21),
      Interrupt_Address(11) => microblaze_0_interrupt_3_ADDRESS(20),
      Interrupt_Address(12) => microblaze_0_interrupt_3_ADDRESS(19),
      Interrupt_Address(13) => microblaze_0_interrupt_3_ADDRESS(18),
      Interrupt_Address(14) => microblaze_0_interrupt_3_ADDRESS(17),
      Interrupt_Address(15) => microblaze_0_interrupt_3_ADDRESS(16),
      Interrupt_Address(16) => microblaze_0_interrupt_3_ADDRESS(15),
      Interrupt_Address(17) => microblaze_0_interrupt_3_ADDRESS(14),
      Interrupt_Address(18) => microblaze_0_interrupt_3_ADDRESS(13),
      Interrupt_Address(19) => microblaze_0_interrupt_3_ADDRESS(12),
      Interrupt_Address(20) => microblaze_0_interrupt_3_ADDRESS(11),
      Interrupt_Address(21) => microblaze_0_interrupt_3_ADDRESS(10),
      Interrupt_Address(22) => microblaze_0_interrupt_3_ADDRESS(9),
      Interrupt_Address(23) => microblaze_0_interrupt_3_ADDRESS(8),
      Interrupt_Address(24) => microblaze_0_interrupt_3_ADDRESS(7),
      Interrupt_Address(25) => microblaze_0_interrupt_3_ADDRESS(6),
      Interrupt_Address(26) => microblaze_0_interrupt_3_ADDRESS(5),
      Interrupt_Address(27) => microblaze_0_interrupt_3_ADDRESS(4),
      Interrupt_Address(28) => microblaze_0_interrupt_3_ADDRESS(3),
      Interrupt_Address(29) => microblaze_0_interrupt_3_ADDRESS(2),
      Interrupt_Address(30) => microblaze_0_interrupt_3_ADDRESS(1),
      Interrupt_Address(31) => microblaze_0_interrupt_3_ADDRESS(0),
      M_AXI_DC_ARADDR(31 downto 0) => hier_3_M_AXI_DC_ARADDR(31 downto 0),
      M_AXI_DC_ARBURST(1 downto 0) => hier_3_M_AXI_DC_ARBURST(1 downto 0),
      M_AXI_DC_ARCACHE(3 downto 0) => hier_3_M_AXI_DC_ARCACHE(3 downto 0),
      M_AXI_DC_ARID(0) => hier_3_M_AXI_DC_ARID(0),
      M_AXI_DC_ARLEN(7 downto 0) => hier_3_M_AXI_DC_ARLEN(7 downto 0),
      M_AXI_DC_ARLOCK => hier_3_M_AXI_DC_ARLOCK,
      M_AXI_DC_ARPROT(2 downto 0) => hier_3_M_AXI_DC_ARPROT(2 downto 0),
      M_AXI_DC_ARQOS(3 downto 0) => hier_3_M_AXI_DC_ARQOS(3 downto 0),
      M_AXI_DC_ARREADY => hier_3_M_AXI_DC_ARREADY,
      M_AXI_DC_ARSIZE(2 downto 0) => hier_3_M_AXI_DC_ARSIZE(2 downto 0),
      M_AXI_DC_ARVALID => hier_3_M_AXI_DC_ARVALID,
      M_AXI_DC_AWADDR(31 downto 0) => hier_3_M_AXI_DC_AWADDR(31 downto 0),
      M_AXI_DC_AWBURST(1 downto 0) => hier_3_M_AXI_DC_AWBURST(1 downto 0),
      M_AXI_DC_AWCACHE(3 downto 0) => hier_3_M_AXI_DC_AWCACHE(3 downto 0),
      M_AXI_DC_AWID(0) => hier_3_M_AXI_DC_AWID(0),
      M_AXI_DC_AWLEN(7 downto 0) => hier_3_M_AXI_DC_AWLEN(7 downto 0),
      M_AXI_DC_AWLOCK => hier_3_M_AXI_DC_AWLOCK,
      M_AXI_DC_AWPROT(2 downto 0) => hier_3_M_AXI_DC_AWPROT(2 downto 0),
      M_AXI_DC_AWQOS(3 downto 0) => hier_3_M_AXI_DC_AWQOS(3 downto 0),
      M_AXI_DC_AWREADY => hier_3_M_AXI_DC_AWREADY,
      M_AXI_DC_AWSIZE(2 downto 0) => hier_3_M_AXI_DC_AWSIZE(2 downto 0),
      M_AXI_DC_AWVALID => hier_3_M_AXI_DC_AWVALID,
      M_AXI_DC_BID(0) => hier_3_M_AXI_DC_BID(0),
      M_AXI_DC_BREADY => hier_3_M_AXI_DC_BREADY,
      M_AXI_DC_BRESP(1 downto 0) => hier_3_M_AXI_DC_BRESP(1 downto 0),
      M_AXI_DC_BVALID => hier_3_M_AXI_DC_BVALID,
      M_AXI_DC_RDATA(31 downto 0) => hier_3_M_AXI_DC_RDATA(31 downto 0),
      M_AXI_DC_RID(0) => hier_3_M_AXI_DC_RID(0),
      M_AXI_DC_RLAST => hier_3_M_AXI_DC_RLAST,
      M_AXI_DC_RREADY => hier_3_M_AXI_DC_RREADY,
      M_AXI_DC_RRESP(1 downto 0) => hier_3_M_AXI_DC_RRESP(1 downto 0),
      M_AXI_DC_RVALID => hier_3_M_AXI_DC_RVALID,
      M_AXI_DC_WDATA(31 downto 0) => hier_3_M_AXI_DC_WDATA(31 downto 0),
      M_AXI_DC_WLAST => hier_3_M_AXI_DC_WLAST,
      M_AXI_DC_WREADY => hier_3_M_AXI_DC_WREADY,
      M_AXI_DC_WSTRB(3 downto 0) => hier_3_M_AXI_DC_WSTRB(3 downto 0),
      M_AXI_DC_WVALID => hier_3_M_AXI_DC_WVALID,
      M_AXI_DP_ARADDR(31 downto 0) => hier_3_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => hier_3_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => hier_3_M_AXI_DP_ARREADY,
      M_AXI_DP_ARVALID => hier_3_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => hier_3_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => hier_3_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => hier_3_M_AXI_DP_AWREADY,
      M_AXI_DP_AWVALID => hier_3_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => hier_3_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => hier_3_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => hier_3_M_AXI_DP_BVALID,
      M_AXI_DP_RDATA(31 downto 0) => hier_3_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => hier_3_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => hier_3_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => hier_3_M_AXI_DP_RVALID,
      M_AXI_DP_WDATA(31 downto 0) => hier_3_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => hier_3_M_AXI_DP_WREADY,
      M_AXI_DP_WSTRB(3 downto 0) => hier_3_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => hier_3_M_AXI_DP_WVALID,
      M_AXI_IC_ARADDR(31 downto 0) => hier_3_M_AXI_IC_ARADDR(31 downto 0),
      M_AXI_IC_ARBURST(1 downto 0) => hier_3_M_AXI_IC_ARBURST(1 downto 0),
      M_AXI_IC_ARCACHE(3 downto 0) => hier_3_M_AXI_IC_ARCACHE(3 downto 0),
      M_AXI_IC_ARID(0) => hier_3_M_AXI_IC_ARID(0),
      M_AXI_IC_ARLEN(7 downto 0) => hier_3_M_AXI_IC_ARLEN(7 downto 0),
      M_AXI_IC_ARLOCK => hier_3_M_AXI_IC_ARLOCK,
      M_AXI_IC_ARPROT(2 downto 0) => hier_3_M_AXI_IC_ARPROT(2 downto 0),
      M_AXI_IC_ARQOS(3 downto 0) => hier_3_M_AXI_IC_ARQOS(3 downto 0),
      M_AXI_IC_ARREADY => hier_3_M_AXI_IC_ARREADY,
      M_AXI_IC_ARSIZE(2 downto 0) => hier_3_M_AXI_IC_ARSIZE(2 downto 0),
      M_AXI_IC_ARVALID => hier_3_M_AXI_IC_ARVALID,
      M_AXI_IC_AWADDR(31 downto 0) => hier_3_M_AXI_IC_AWADDR(31 downto 0),
      M_AXI_IC_AWBURST(1 downto 0) => hier_3_M_AXI_IC_AWBURST(1 downto 0),
      M_AXI_IC_AWCACHE(3 downto 0) => hier_3_M_AXI_IC_AWCACHE(3 downto 0),
      M_AXI_IC_AWID(0) => hier_3_M_AXI_IC_AWID(0),
      M_AXI_IC_AWLEN(7 downto 0) => hier_3_M_AXI_IC_AWLEN(7 downto 0),
      M_AXI_IC_AWLOCK => hier_3_M_AXI_IC_AWLOCK,
      M_AXI_IC_AWPROT(2 downto 0) => hier_3_M_AXI_IC_AWPROT(2 downto 0),
      M_AXI_IC_AWQOS(3 downto 0) => hier_3_M_AXI_IC_AWQOS(3 downto 0),
      M_AXI_IC_AWREADY => hier_3_M_AXI_IC_AWREADY,
      M_AXI_IC_AWSIZE(2 downto 0) => hier_3_M_AXI_IC_AWSIZE(2 downto 0),
      M_AXI_IC_AWVALID => hier_3_M_AXI_IC_AWVALID,
      M_AXI_IC_BID(0) => hier_3_M_AXI_IC_BID(0),
      M_AXI_IC_BREADY => hier_3_M_AXI_IC_BREADY,
      M_AXI_IC_BRESP(1 downto 0) => hier_3_M_AXI_IC_BRESP(1 downto 0),
      M_AXI_IC_BVALID => hier_3_M_AXI_IC_BVALID,
      M_AXI_IC_RDATA(31 downto 0) => hier_3_M_AXI_IC_RDATA(31 downto 0),
      M_AXI_IC_RID(0) => hier_3_M_AXI_IC_RID(0),
      M_AXI_IC_RLAST => hier_3_M_AXI_IC_RLAST,
      M_AXI_IC_RREADY => hier_3_M_AXI_IC_RREADY,
      M_AXI_IC_RRESP(1 downto 0) => hier_3_M_AXI_IC_RRESP(1 downto 0),
      M_AXI_IC_RVALID => hier_3_M_AXI_IC_RVALID,
      M_AXI_IC_WDATA(31 downto 0) => hier_3_M_AXI_IC_WDATA(31 downto 0),
      M_AXI_IC_WLAST => hier_3_M_AXI_IC_WLAST,
      M_AXI_IC_WREADY => hier_3_M_AXI_IC_WREADY,
      M_AXI_IC_WSTRB(3 downto 0) => hier_3_M_AXI_IC_WSTRB(3 downto 0),
      M_AXI_IC_WVALID => hier_3_M_AXI_IC_WVALID,
      Read_Strobe => microblaze_0_dlmb_4_READSTROBE,
      Reset => mig_7series_0_ui_clk_sync_rst,
      Write_Strobe => microblaze_0_dlmb_4_WRITESTROBE
    );
mig_7series_0: component microblaze_mig_7series_0_0
     port map (
      aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      ddr3_addr(13 downto 0) => mig_7series_0_DDR3_ADDR(13 downto 0),
      ddr3_ba(2 downto 0) => mig_7series_0_DDR3_BA(2 downto 0),
      ddr3_cas_n => mig_7series_0_DDR3_CAS_N,
      ddr3_ck_n(0) => mig_7series_0_DDR3_CK_N(0),
      ddr3_ck_p(0) => mig_7series_0_DDR3_CK_P(0),
      ddr3_cke(0) => mig_7series_0_DDR3_CKE(0),
      ddr3_cs_n(0) => mig_7series_0_DDR3_CS_N(0),
      ddr3_dm(7 downto 0) => mig_7series_0_DDR3_DM(7 downto 0),
      ddr3_dq(63 downto 0) => DDR3_dq(63 downto 0),
      ddr3_dqs_n(7 downto 0) => DDR3_dqs_n(7 downto 0),
      ddr3_dqs_p(7 downto 0) => DDR3_dqs_p(7 downto 0),
      ddr3_odt(0) => mig_7series_0_DDR3_ODT(0),
      ddr3_ras_n => mig_7series_0_DDR3_RAS_N,
      ddr3_reset_n => mig_7series_0_DDR3_RESET_N,
      ddr3_we_n => mig_7series_0_DDR3_WE_N,
      init_calib_complete => NLW_mig_7series_0_init_calib_complete_UNCONNECTED,
      mmcm_locked => mig_7series_0_mmcm_locked,
      s_axi_araddr(29 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(29 downto 0),
      s_axi_arburst(1 downto 0) => microblaze_0_axi_periph_M01_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => microblaze_0_axi_periph_M01_AXI_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => microblaze_0_axi_periph_M01_AXI_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => microblaze_0_axi_periph_M01_AXI_ARLEN(7 downto 0),
      s_axi_arlock => microblaze_0_axi_periph_M01_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => microblaze_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => microblaze_0_axi_periph_M01_AXI_ARQOS(3 downto 0),
      s_axi_arready => microblaze_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => microblaze_0_axi_periph_M01_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => microblaze_0_axi_periph_M01_AXI_ARVALID(0),
      s_axi_awaddr(29 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(29 downto 0),
      s_axi_awburst(1 downto 0) => microblaze_0_axi_periph_M01_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => microblaze_0_axi_periph_M01_AXI_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => microblaze_0_axi_periph_M01_AXI_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => microblaze_0_axi_periph_M01_AXI_AWLEN(7 downto 0),
      s_axi_awlock => microblaze_0_axi_periph_M01_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => microblaze_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => microblaze_0_axi_periph_M01_AXI_AWQOS(3 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => microblaze_0_axi_periph_M01_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => microblaze_0_axi_periph_M01_AXI_AWVALID(0),
      s_axi_bid(3 downto 0) => microblaze_0_axi_periph_M01_AXI_BID(3 downto 0),
      s_axi_bready => microblaze_0_axi_periph_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rid(3 downto 0) => microblaze_0_axi_periph_M01_AXI_RID(3 downto 0),
      s_axi_rlast => microblaze_0_axi_periph_M01_AXI_RLAST,
      s_axi_rready => microblaze_0_axi_periph_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wlast => microblaze_0_axi_periph_M01_AXI_WLAST(0),
      s_axi_wready => microblaze_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M01_AXI_WVALID(0),
      sys_clk_n => sys_clk_n_1,
      sys_clk_p => sys_clk_p_1,
      sys_rst => sys_rst_1,
      ui_clk => microblaze_0_Clk,
      ui_clk_sync_rst => mig_7series_0_ui_clk_sync_rst
    );
rst_mig_7series_0_100M: component microblaze_rst_mig_7series_0_100M_0
     port map (
      aux_reset_in => VCC_1,
      bus_struct_reset(0) => rst_mig_7series_0_100M_bus_struct_reset(0),
      dcm_locked => mig_7series_0_mmcm_locked,
      ext_reset_in => mig_7series_0_ui_clk_sync_rst,
      interconnect_aresetn(0) => rst_mig_7series_0_100M_interconnect_aresetn(0),
      mb_debug_sys_rst => GND_1,
      mb_reset => rst_mig_7series_0_100M_mb_reset,
      peripheral_aresetn(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_mig_7series_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => microblaze_0_Clk
    );
end STRUCTURE;
