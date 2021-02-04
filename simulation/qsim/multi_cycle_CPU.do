onerror {exit -code 1}
vlib work
vlog -work work multi_cycle_CPU.vo
vlog -work work multi_cycle_CPU.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multi_cycle_CPU_vlg_vec_tst -voptargs="+acc"
vcd file -direction multi_cycle_CPU.msim.vcd
vcd add -internal multi_cycle_CPU_vlg_vec_tst/*
vcd add -internal multi_cycle_CPU_vlg_vec_tst/i1/*
run -all
quit -f
