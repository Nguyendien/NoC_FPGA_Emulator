# create the Library working directory
vlib work

# compile the src and tb files along with the includes and options
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/output_buffer.v"
vlog -work work -vopt +incdir+../include -nocovercells "../tb/output_buffer_tb.v"

# simulate the top file(testbench)
vsim -t 1ns -voptargs=+acc work.output_buffer_tb

# add the signals into waveform
add wave -r sim:/output_buffer_tb/*

#run the simulation
run -all