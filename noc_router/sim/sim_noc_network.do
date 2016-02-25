# create the Library working directory
vlib work

# compile the src and tb files along with the includes and options
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/fifo_onehot.v"
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/init_read.v"
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/lbdr.v"
vlog -work work -vopt -nocovercells "../rtl/flowcontrol.v"
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/arbiter.v"
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/xbar.v"
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/output_buffer.v"
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/noc_router.v"
vlog -work work -vopt +incdir+../include +incdir+../tb -nocovercells "../tb/noc_network_tb.v"

# simulate the top file(testbench)
vsim -t 1ns -voptargs=+acc work.noc_network_tb

# add the signals into waveform
add wave -r sim:/noc_network_tb/*

#run the simulation
run -all
