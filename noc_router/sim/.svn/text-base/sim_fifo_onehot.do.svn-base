# create the Library working directory
vlib work

# compile the src and tb files along with the includes and options
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/fifo_onehot.v"
vlog -work work -vopt +incdir+../include -nocovercells "../tb/fifo_onehot_tb.v"

# simulate the top file(testbench)
vsim -t 1ns -voptargs=+acc work.fifo_onehot_tb

# add the signals into waveform
add wave -r sim:/fifo_onehot_tb/*

#run the simulation
run -all