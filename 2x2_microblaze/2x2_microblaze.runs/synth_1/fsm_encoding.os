
 add_fsm_encoding \
       {wr_chnl.GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs} \
       { }  \
       {{000 000} {001 100} {010 011} {011 001} {100 010} }

 add_fsm_encoding \
       {rd_chnl.rlast_sm_cs} \
       { }  \
       {{000 000} {001 010} {010 011} {011 100} {100 001} }

 add_fsm_encoding \
       {Icache.cache_state} \
       { }  \
       {{0000 000} {0001 001} {0010 010} {0011 011} {0100 100} }

 add_fsm_encoding \
       {Icache.Using_FPGA_FSL_1.Using_Parity.req_state} \
       { }  \
       {{000 000} {001 011} {010 001} {011 100} {100 101} {101 010} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo.state} \
       { }  \
       {{00 1000} {01 0100} {10 0001} {11 0010} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized0.state} \
       { }  \
       {{00 1000} {01 0100} {10 0001} {11 0010} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized1.state} \
       { }  \
       {{00 1000} {01 0100} {10 0001} {11 0010} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized2.state} \
       { }  \
       {{00 1000} {01 0100} {10 0001} {11 0010} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized3.state} \
       { }  \
       {{00 1000} {01 0100} {10 0001} {11 0010} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized4.state} \
       { }  \
       {{00 1000} {01 0100} {10 0001} {11 0010} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized5.state} \
       { }  \
       {{00 1000} {01 0100} {10 0001} {11 0010} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized6.state} \
       { }  \
       {{00 1000} {01 0100} {10 0001} {11 0010} }

 add_fsm_encoding \
       {mig_7series_v2_3_ddr_phy_ocd_cntlr.sm_r} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} {111 111} }

 add_fsm_encoding \
       {mig_7series_v2_3_ddr_phy_dqs_found_cal_hr.fine_adj_state_r} \
       { }  \
       {{0000 0000} {0001 0011} {0010 0100} {0011 0001} {0100 0101} {0101 0110} {0110 0111} {0111 1000} {1000 1001} {1001 1010} {1010 1111} {1011 1011} {1100 1100} {1101 1101} {1110 1110} {1111 0010} }

 add_fsm_encoding \
       {mig_7series_v2_3_ddr_phy_rdlvl.cal1_state_r} \
       { }  \
       {{000000 00000000000000000000001} {000001 00000000000000000000010} {000010 00000000000000000000100} {000011 00000000000000000001000} {000100 00000000000000000010000} {000101 00000000000000000100000} {000110 00001000000000000000000} {000111 00010000000000000000000} {001000 00000000000000100000000} {001001 00100000000000000000000} {001010 01000000000000000000000} {001011 00000000000001000000000} {001100 00000000000010000000000} {001101 00000000000100000000000} {001110 00000000001000000000000} {001111 00000010000000000000000} {011011 00000001000000000000000} {011100 10000000000000000000000} {011101 00000000100000000000000} {011110 00000000000000010000000} {011111 00000000000000001000000} {100000 00000000010000000000000} {111111 00000100000000000000000} }

 add_fsm_encoding \
       {mig_7series_v2_3_axi_mc_r_channel.state} \
       { }  \
       {{00 1000} {01 0100} {10 0001} {11 0010} }
