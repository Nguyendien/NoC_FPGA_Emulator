# create the Library working directory
vlib work

# compile the src and tb files along with the includes and options
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/xbar.v"
vlog -work work -vopt +incdir+../include -nocovercells "../tb/xbar_tb.v"

# simulate the top file(testbench)
vsim -t 1ns -voptargs=+acc work.xbar_tb

# add the signals into waveform
add wave -r sim:/xbar_tb/*

#run the simulation
run -all