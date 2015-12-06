# create the Library working directory
vlib work

# compile the src and tb files along with the includes and options
vlog -work work -vopt +incdir+../include -nocovercells "../rtl/LBDR.v"
vlog -work work -vopt +incdir+../include -nocovercells "../tb/LBDR_tb.v"

# simulate the top file(testbench)
vsim -t 1ns -voptargs=+acc work.LBDR_tb

# add the signals into waveform
add wave -r sim:/LBDR_tb/*

#run the simulation
run -all