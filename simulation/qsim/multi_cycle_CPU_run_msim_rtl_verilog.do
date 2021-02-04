transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE {C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE/ALP.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE {C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE/register_file.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE {C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE/data_instr_memory.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE {C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE/register_wen.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE {C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE/MUX2to1.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE {C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE/MUX4to1.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE {C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE/EXTEND.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE {C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE/registerRes.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE {C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE/multicycle_controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE {C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE/mux8to1.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE {C:/Users/ahmet/Desktop/COMPUTER_ARCHITECTURE/LAB_4_MULTICYCLE/decoder3_8.v}

