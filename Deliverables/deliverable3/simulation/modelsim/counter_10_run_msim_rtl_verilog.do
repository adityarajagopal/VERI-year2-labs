transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+H:/Verilog/Deliverables/deliverable3 {H:/Verilog/Deliverables/deliverable3/clk_div.v}
vlog -vlog01compat -work work +incdir+H:/Verilog/Deliverables/deliverable3 {H:/Verilog/Deliverables/deliverable3/top.v}
vlog -vlog01compat -work work +incdir+H:/Verilog/Deliverables/deliverable3 {H:/Verilog/Deliverables/deliverable3/hex_to_7seg.v}
vlog -vlog01compat -work work +incdir+H:/Verilog/Deliverables/deliverable3 {H:/Verilog/Deliverables/deliverable3/counter.v}

