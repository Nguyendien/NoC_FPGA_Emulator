# create the Library working directory
vlib work

# compile the src and tb files along with the includes and options
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/init_read.v"
vlog -work work -vopt +incdir+../include -nocovercells "../tb/init_read_tb.v"

# simulate the top file(testbench)
vsim -t 1ns -voptargs=+acc work.init_read_tb

# add the signals into waveform
add wave -r sim:/init_read_tb/*

#run the simulation
run -all