# create the Library working directory
vlib work

# compile the src and tb files along with the includes and options
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/arbiter.v"
vlog -work work -vopt +incdir+../include -nocovercells "../tb/bfm_arbiter.v"
vlog -work work -vopt +incdir+../include -nocovercells "../tb/tb_userinterface.v"

# simulate the top file(testbench)
vsim -t 1ns -voptargs=+acc work.tb_userinterface

# add the signals into waveform
add wave -r sim:/tb_userinterface/*

#run the simulation
run -all