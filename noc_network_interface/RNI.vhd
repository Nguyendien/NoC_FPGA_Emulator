LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_misc.all ;
USE ieee.std_logic_arith.all ;

USE work.all ;

ENTITY RNI IS

Port (
  ROUTER_WRITE :IN STD_LOGIC;---Signal from Router to NI indicating that it wants to write in data
  R2NI_DATA  : IN STD_LOGIC_VECTOR (31 DOWNTO 0);---Data from Router to NI
  Clk :IN STD_LOGIC;
  Rst      : IN STD_LOGIC;
  PE_READY   :IN STD_LOGIC;---Signal from PE to NI indicating that it is ready to read data from NI FIFO containing data from Router
  PE_WRITE : IN STD_LOGIC;--- Handshaking signal from PE to NI signalling that it wants to write
  PE2NI_DATA  : IN STD_LOGIC_VECTOR (31 DOWNTO 0);---Data from PE to NI
  ROUTER_READY  :IN STD_LOGIC;--Handshaking signal from Router to NI signalling that it is ready to Read data
  NI2PE_DATA  :OUT STD_LOGIC_VECTOR (31 DOWNTO 0);--Data from NI TO PE
  NI2PE_WRITE:OUT STD_LOGIC;------Handshaking signal from NI to PE signalling that it is ready to write out data
  NI2ROUTER_READY  :OUT STD_LOGIC;
  NI2ROUTER_DATA  :OUT STD_LOGIC_VECTOR (31 DOWNTO 0);--Data from NI to router
  NI2ROUTER_WRITE :OUT STD_LOGIC;---Handshaking signal from NI to Router signalling that it is ready to write out data
  NI2PE_READY  :OUT STD_LOGIC-----Handshaking signal from NI to PE signalling that it is ready to write out data
		
  );--Handshaking signal from NI to Router signalling that it is ready to read in data

  END RNI;
  
  Architecture FUN of RNI is 







Component Writefsm is
	port( length_in     : in  std_logic_vector(11 downto 0);-- data from the processing element(PE)or Router
		clk            : in  std_logic;
		rst            : in  std_logic;
	    almost_full    : in  std_logic;
		write_in    : in  std_logic;                    --- Handshaking signal from the PE or Router informing the NI that it wants to write
		wr_en          : out std_logic;
		Read_in       :out  std_logic;
		write_data_ctrl:out std_logic;
		length_out  : out std_logic_vector(11 downto 0));-- data from the write controller to the FIFO
	
end Component;




Component FIFO is 

port(
		CLK          : in  STD_LOGIC;
		RST          : in  STD_LOGIC;
		wr_en        : in  STD_LOGIC;
		rd_en        : in  STD_LOGIC;
		fifo_data_in : in  STD_LOGIC_VECTOR(31 downto 0);
		fifo_data_out: out STD_LOGIC_VECTOR(31 downto 0);
		Empty        : out STD_LOGIC;
		Almost_full  : out STD_LOGIC
	);

end Component;

 Component Readfsm is
	port(clk           : in  STD_LOGIC;
		 rst           : in  STD_LOGIC;
		 empty         : in  STD_LOGIC;
		 Read_Ready    : in  STD_LOGIC;---Handshaking signal from Router or PE  to NI signalling that it is ready to read out data
		 rd_en         : out STD_LOGIC;---Read Enable from FIFO
		 read_data_ctrl : out STD_LOGIC;
		 Write_ready : out std_logic);--- Handshaking signal from NI to Router or PE signalling that it is ready to write out data
		

end Component;

Component Out_reg is
Port
(
		CLK          : in  STD_LOGIC;
		RST          : in  STD_LOGIC;
		fifo_data_out: in  STD_LOGIC_VECTOR(31 downto 0);
		write_data_ctrl:in std_logic;
		read_data_ctrl:in std_logic;
		data_fifo     : out STD_LOGIC_VECTOR(31 downto 0)
		
		
	);
	
	end component;
Signal router_data_ram,fifo_data_out,PE_data_ram,fifo_data_out1  :std_logic_vector(31 downto 0);

Signal  Router_length_in_sig,Router_length_out_sig,PE_length_in_sig,PE_length_out_sig:std_logic_vector(11 downto 0);
signal wr_en,rd_en,empty,almost_full,write_data_ctrl,read_data_ctrl,wr_en1,rd_en1,empty1,almost_full1,write_data_ctrl1,read_data_ctrl1:std_logic;
Signal Router_data_no_length,PE_data_no_length:std_logic_vector(19 downto 0);


FOR WRITE_CONTROLLER_R2PE : Writefsm USE  ENTITY work.Writefsm;
FOR FIFO_R2PE : FIFO USE  ENTITY work.FIFO;
FOR READ_CONTROLLER_R2PE : ReadFsm USE  ENTITY work.Readfsm;
For Out_reg_R2PE:Out_reg USE ENTITY work.Out_reg;

FOR WRITE_CONTROLLER_PE2R : Writefsm USE  ENTITY work.Writefsm;
FOR FIFO_PE2R: FIFO USE  ENTITY work.FIFO;
FOR READ_CONTROLLER_PE2R : ReadFsm USE  ENTITY work.Readfsm;
For Out_reg_PE2R:Out_reg USE ENTITY work.Out_reg;
Begin


Router_length_in_sig<=R2NI_DATA(28 DOWNTO 17);

Router_data_no_length<=R2NI_DATA(31 DOWNTO 29)&R2NI_DATA(16 DOWNTO 0);


router_data_ram<=R2NI_DATA(31 DOWNTO 29)&router_length_out_sig&R2NI_DATA(16 DOWNTO 0);


PE_length_in_sig<=PE2NI_DATA(28 DOWNTO 17);

PE_data_no_length<=PE2NI_DATA(31 DOWNTO 29)&PE2NI_DATA(16 DOWNTO 0);




PE_data_ram<=PE2NI_DATA(31 DOWNTO 29)&PE_length_out_sig&PE2NI_DATA(16 DOWNTO 0);


WRITE_CONTROLLER_R2PE :Writefsm
Port Map(Router_length_in_sig,clk,rst,almost_full,Router_write,wr_en,NI2ROUTER_READY,write_data_ctrl, Router_length_out_sig);

FIFO_R2PE :FIFO
Port Map(clk,rst,wr_en,rd_en,router_data_ram,fifo_data_out,empty,almost_full);

Out_reg_R2PE:Out_reg
Port Map(clk,rst,fifo_data_out,write_data_ctrl,read_data_ctrl,NI2PE_DATA);

READ_CONTROLLER_R2PE:Readfsm
Port Map(Clk,rst,empty,PE_ready,rd_en,read_data_ctrl,NI2PE_WRITE);


WRITE_CONTROLLER_PE2R :Writefsm
Port Map(PE_length_in_sig,clk,rst,almost_full1,PE_write,wr_en1,NI2PE_READY,write_data_ctrl1, PE_length_out_sig);

FIFO_PE2R :FIFO
Port Map(clk,rst,wr_en1,rd_en1,PE_data_ram,fifo_data_out1,empty1,almost_full1);

Out_reg_PE2R:Out_reg
Port Map(clk,rst,fifo_data_out1,write_data_ctrl1,read_data_ctrl1,NI2ROUTER_DATA);

READ_CONTROLLER_PE2R:Readfsm
Port Map(Clk,rst,empty1,ROUTER_ready,rd_en1,read_data_ctrl1,NI2ROUTER_WRITE);
END FUN;
