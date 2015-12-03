transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+//icnas2.cc.ic.ac.uk/mr4314/Verilog/Deliverables/deilverable1 {//icnas2.cc.ic.ac.uk/mr4314/Verilog/Deliverables/deilverable1/counter.v}

