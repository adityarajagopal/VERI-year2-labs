transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+H:/Verilog/Ex5 {H:/Verilog/Ex5/top.v}
vlog -vlog01compat -work work +incdir+H:/Verilog/Ex5 {H:/Verilog/Ex5/shift_pattern.v}

