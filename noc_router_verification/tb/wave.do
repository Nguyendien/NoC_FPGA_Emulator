onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate :noc_router_tb:clk
add wave -noupdate :noc_router_tb:rst
add wave -noupdate :noc_router_tb:cur_addr
add wave -noupdate -radix decimal :noc_router_tb:Ldata_in
add wave -noupdate -radix decimal :noc_router_tb:Ndata_in
add wave -noupdate -radix decimal :noc_router_tb:Edata_in
add wave -noupdate -radix decimal :noc_router_tb:Wdata_in
add wave -noupdate -radix decimal :noc_router_tb:Sdata_in
add wave -noupdate -radix decimal :noc_router_tb:clk
add wave -noupdate -radix decimal :noc_router_tb:Ldata_out
add wave -noupdate -radix decimal :noc_router_tb:Ndata_out
add wave -noupdate -radix decimal :noc_router_tb:Edata_out
add wave -noupdate -radix decimal :noc_router_tb:Wdata_out
add wave -noupdate -radix decimal :noc_router_tb:Sdata_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {64 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 270
configure wave -valuecolwidth 133
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {329183 ps} {329433 ps}
