library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.std_logic_arith.all;

use work.all;

entity RNI is
	port(
		PE_WRITE    : in  STD_LOGIC;
		PE2NI_DATA  : in  STD_LOGIC_VECTOR(31 downto 0);
		Clk         : in  STD_LOGIC;
		Rst         : in  STD_LOGIC;
		R_READY     : in  STD_LOGIC;
		NI2R_DATA   : out STD_LOGIC_VECTOR(31 downto 0);
		NI2R_WRITE  : out STD_LOGIC;
		NI2PE_READY : out STD_LOGIC);

end RNI;

architecture FUN of RNI is
	component PE2NIfsm is
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
			Almost_full  : out STD_LOGIC);
	end component;

	component NI2RFSM is
		port(clk           : in  STD_LOGIC;
			 rst           : in  STD_LOGIC;
			 data_ram      : in  STD_LOGIC_VECTOR(31 downto 0);
			 empty         : in  STD_LOGIC;
			 R_ready       : in  STD_LOGIC;
			 rd_en         : out STD_LOGIC;
			 ni_read_ready : out std_logic;
			 data_out_R    : out STD_LOGIC_VECTOR(31 downto 0));
	end component;

	signal Data_in_sig, data_out_sig, data_wr_ctlr, data_ram                 : std_logic_vector(31 downto 0);
	signal PE_write_sig, r_ready_sig, NI_ready_out_sig, NI_readready_out_sig : std_logic;
	signal full, wr_en, rd_en, empty, almost_full                            : std_logic;

	for WRITE_CONTROLLER : PE2NIfsm use entity work.PE2NIfsm;
	for FIFO_PE : FIFO use entity work.FIFO;
	for READ_CONTROLLER : NI2RFSM use entity work.NI2RFSM;

begin

	---full_Sig<=full;
	Data_in_sig  <= PE2NI_DATA;
	PE_write_sig <= PE_write;

	NI2R_DATA   <= data_out_sig;
	NI2PE_READY <= NI_ready_out_sig;
	---READ_READY<=READ_READY_SIG;
	r_ready_sig <= R_READY;
	NI2R_WRITE  <= NI_readready_out_sig;

	WRITE_CONTROLLER : PE2NIfsm
		port map(data_in_sig, clk, rst, full, almost_full, PE_write_sig, wr_en, NI_ready_out_sig, data_wr_ctlr);

	FIFO_PE : FIFO
		port map(clk, rst, wr_en, rd_en, data_wr_ctlr, data_ram, empty, full, almost_full);

	READ_CONTROLLER : NI2RFSM
		port map(Clk, rst, data_ram, empty, R_ready_sig, rd_en, NI_readready_out_sig, data_out_sig);

end FUN;