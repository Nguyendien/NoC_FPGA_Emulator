# create the Library working directory
vlib work

# compile the src and tb files along with the includes and options
vlog -work work -vopt -nocovercells "../rtl/flowcontrol.v"
vlog -work work -vopt -nocovercells "../tb/flowcontrol_tb.v"

# simulate the top file(testbench)
vsim -t 1ns -voptargs=+acc work.flowcontrol_tb

# add the signals into waveform
add wave -r sim:/flowcontrol_tb/*

#run the simulation
run -all