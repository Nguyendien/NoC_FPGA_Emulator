library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.std_logic_arith.all;

use work.all;

entity RNI is
	port(
		ROUTER_WRITE     : in  STD_LOGIC;--- Handshaking signal from Router to NI signalling that it wants to write
		ROUTER2NI_DATA   : in  STD_LOGIC_VECTOR(31 downto 0); ---Data from Router to NI
		Clk         : in  STD_LOGIC;
		Rst         : in  STD_LOGIC;
		PE_READY    : in  STD_LOGIC; --Handshaking signal from PE to NI signalling that it is ready to Read data
		
		PE_WRITE : IN STD_LOGIC;--- Handshaking signal from PE to NI signalling that it wants to write
        PE2NI_DATA  : IN STD_LOGIC_VECTOR (31 DOWNTO 0);---Data from PE to NI
		ROUTER_READY  :IN STD_LOGIC;--Handshaking signal from Router to NI signalling that it is ready to Read data
		
		NI2ROUTER_DATA  :OUT STD_LOGIC_VECTOR (31 DOWNTO 0);--Data from NI to router
        NI2ROUTER_WRITE :OUT STD_LOGIC;---Handshaking signal from NI to Router signalling that it is ready to write out data
        NI2PE_READY  :OUT STD_LOGIC;-----Handshaking signal from NI to PE signalling that it is ready to write out data
		
		NI2PE_DATA  : out STD_LOGIC_VECTOR(31 downto 0);--Data from NI to PE
		NI2PE_WRITE : out STD_LOGIC;---Handshaking signal from NI to PE signalling that it is ready to write out data
		NI2ROUTER_READY  : out STD_LOGIC--Handshaking signal from NI to Router signalling that it is ready to write out data
		
		
		);

end RNI;

architecture BEH of RNI is
	component Writefsm is
		port(
			data_in_pe     : in  std_logic_vector(31 downto 0);

			clk            : in  std_logic;

			rst            : in  std_logic;

			full           : in  std_logic;
			almost_full    : in  std_logic;
			PE_write_in    : in  std_logic;

			wr_en          : out std_logic;

			ni2pe_readyout : out std_logic;
			data_wr_ctlr   : out std_logic_vector(31 downto 0));

	end component;

	component FIFO is
		port(
			CLK          : in  STD_LOGIC;

			RST          : in  STD_LOGIC;

			wr_En        : in  STD_LOGIC;

			rd_En        : in  STD_LOGIC;

			data_wr_ctlr : in  STD_LOGIC_VECTOR(31 downto 0);

			data_ram     : out STD_LOGIC_VECTOR(31 downto 0);

			Empty        : out STD_LOGIC;

			Full         : out STD_LOGIC;
			Almost_full  : out STD_LOGIC
		);

	end component;

	component Readfsm is
		port(clk           : in  STD_LOGIC;
			 rst           : in  STD_LOGIC;
			 data_ram      : in  STD_LOGIC_VECTOR(31 downto 0);
			 empty         : in  STD_LOGIC;
			 RT_ready      : in  STD_LOGIC;
			 rd_en         : out STD_LOGIC;
			 ni_read_ready : out std_logic;
			 data_out_R    : out STD_LOGIC_VECTOR(31 downto 0));

	end component;

	signal Data_in_sig, data_out_sig, data_wr_ctlr, data_ram                 : std_logic_vector(31 downto 0);
	signal PE_write_sig, r_ready_sig, NI_ready_out_sig, NI_readready_out_sig : std_logic;

	signal full, wr_en, rd_en, empty, almost_full : std_logic;
signal full1, wr_en1, rd_en1, empty1, almost_full1 : std_logic;

	
	Signal Data_in_sig1,data_out_sig1,data_wr_ctlr1,data_ram1 :std_logic_vector(31 downto 0);
Signal PE_write_sig1,r_ready_sig1,NI_ready_out_sig1,NI_readready_out_sig1:std_logic;

	
	for WRITE_CONTROLLER1 : Writefsm use entity work.Writefsm;
	for FIFO_PE1 : FIFO use entity work.FIFO;
	for READ_CONTROLLER1 : Readfsm  use entity work.Readfsm ;

	for WRITE_CONTROLLER2 : Writefsm use entity work.Writefsm;
	for FIFO_PE2 : FIFO use entity work.FIFO;
	for READ_CONTROLLER2 : Readfsm  use entity work.Readfsm ;
	
begin

	---full_Sig<=full;
	Data_in_sig  <= ROUTER2NI_DATA;
	PE_write_sig <= ROUTER_WRITE;

	NI2PE_DATA  <= data_out_sig;
	NI2ROUTER_READY  <= NI_ready_out_sig;
	---READ_READY<=READ_READY_SIG;
	r_ready_sig <= PE_READY;
	NI2PE_WRITE <= NI_readready_out_sig;

Data_in_sig1<=PE2NI_DATA;
PE_write_sig1<=PE_write;

NI2ROUTER_DATA <=data_out_sig1;
NI2PE_READY<=NI_ready_out_sig1;
---READ_READY<=READ_READY_SIG;
r_ready_sig1<=ROUTER_READY;
NI2ROUTER_WRITE <=NI_readready_out_sig1;

	
	
	
	
	WRITE_CONTROLLER1 :Writefsm
		port map(data_in_sig, clk, rst, full, almost_full, PE_write_sig, wr_en, NI_ready_out_sig, data_wr_ctlr);

	FIFO_PE1 : FIFO
		port map(clk, rst, wr_en, rd_en, data_wr_ctlr, data_ram, empty, full, almost_full);

	READ_CONTROLLER1 : Readfsm 
		port map(Clk, rst, data_ram, empty, R_ready_sig, rd_en, NI_readready_out_sig, data_out_sig);
		
		
WRITE_CONTROLLER2 :Writefsm
Port Map(data_in_sig1,clk,rst,full1,almost_full1,PE_write_sig1,wr_en1,NI_ready_out_sig1,data_wr_ctlr1 );

FIFO_PE2 :FIFO
Port Map(clk,rst,wr_en1,rd_en1,data_wr_ctlr1,data_ram1,empty1,full1,almost_full1);



READ_CONTROLLER2:Readfsm 
Port Map(Clk,rst,data_ram1,empty1,R_ready_sig1,rd_en1,NI_readready_out_sig1,data_out_sig1);


End Beh;