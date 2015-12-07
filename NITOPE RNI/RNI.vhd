LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_misc.all ;
USE ieee.std_logic_arith.all ;

USE work.all ;

ENTITY RNI IS

Port (
 R_WRITE : IN STD_LOGIC;
 R2NI_DATA  : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
  Clk      : IN STD_LOGIC;
  Rst      : IN STD_LOGIC;
  PE_READY   :IN STD_LOGIC;
  NI2PE_DATA  :OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
  NI2PE_WRITE:OUT STD_LOGIC;
  NI2R_READY  :OUT STD_LOGIC);

  END RNI;
  
  Architecture FUN of RNI is 







Component PE2NIfsm is



port (

data_in_pe :in std_logic_vector(31 downto 0);

clk :in std_logic;

rst :in std_logic;

full  :in std_logic;
almost_full :in std_logic;
PE_write_in :in std_logic;


wr_en :out std_logic;

ni2pe_readyout:out std_logic;
data_wr_ctlr :out std_logic_vector(31 downto 0));

end component;




Component FIFO is 

Port ( 

CLK : in  STD_LOGIC;

RST : in  STD_LOGIC;

wr_En     : in  STD_LOGIC;

rd_En     : in  STD_LOGIC;

data_wr_ctlr  : in  STD_LOGIC_VECTOR (31 downto 0);

data_ram  : out STD_LOGIC_VECTOR (31 downto 0);

Empty     : out STD_LOGIC;

Full      : out STD_LOGIC;
Almost_full:out STD_LOGIC
);

end Component;

 Component NI2RFSM is
    Port ( clk                 : in  STD_LOGIC;
           rst                 : in  STD_LOGIC;
           data_ram         : in  STD_LOGIC_VECTOR (31 downto 0);
           empty                 : in  STD_LOGIC;
           RT_ready             : in  STD_LOGIC;
           rd_en            : out STD_LOGIC;
       ni_read_ready  :out std_logic;
           data_out_R        : out  STD_LOGIC_VECTOR (31 downto 0));

end component;

Signal Data_in_sig,data_out_sig,data_wr_ctlr,data_ram :std_logic_vector(31 downto 0);
Signal PE_write_sig,r_ready_sig,NI_ready_out_sig,NI_readready_out_sig:std_logic;

signal full,wr_en,rd_en,empty,almost_full:std_logic;

FOR WRITE_CONTROLLER : PE2NIfsm USE  ENTITY work.PE2NIfsm;
FOR FIFO_PE : FIFO USE  ENTITY work.FIFO;
FOR READ_CONTROLLER : NI2RFSM USE  ENTITY work.NI2RFSM;

Begin

---full_Sig<=full;
Data_in_sig<=R2NI_DATA;
PE_write_sig<=R_WRITE;

NI2PE_DATA <=data_out_sig;
NI2R_READY<=NI_ready_out_sig;
---READ_READY<=READ_READY_SIG;
r_ready_sig<=PE_READY;
NI2PE_WRITE<=NI_readready_out_sig;

WRITE_CONTROLLER :PE2NIfsm
Port Map(data_in_sig,clk,rst,full,almost_full,PE_write_sig,wr_en,NI_ready_out_sig,data_wr_ctlr );

FIFO_PE :FIFO
Port Map(clk,rst,wr_en,rd_en,data_wr_ctlr,data_ram,empty,full,almost_full);



READ_CONTROLLER:NI2RFSM
Port Map(Clk,rst,data_ram,empty,R_ready_sig,rd_en,NI_readready_out_sig,data_out_sig);



END FUN;