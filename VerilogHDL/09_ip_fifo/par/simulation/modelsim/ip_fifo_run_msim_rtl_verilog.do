transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/ip_fifo/rtl {C:/Users/Administrator/Desktop/ip_fifo/rtl/fifo_wr.v}
vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/ip_fifo/rtl {C:/Users/Administrator/Desktop/ip_fifo/rtl/fifo_rd.v}
vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/ip_fifo/rtl {C:/Users/Administrator/Desktop/ip_fifo/rtl/ip_fifo.v}
vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/ip_fifo/par/ipcore {C:/Users/Administrator/Desktop/ip_fifo/par/ipcore/fifo.v}

vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/ip_fifo/par/../sim {C:/Users/Administrator/Desktop/ip_fifo/par/../sim/ip_fifo_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  ip_fifo_tb

add wave *
view structure
view signals
run -all
