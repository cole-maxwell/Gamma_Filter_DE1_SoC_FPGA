transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/Gamma_Filter_DE1_SoC/syn/Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/Gamma_Filter_DE1_SoC/syn/Gamma_Filter/v/Gamma_Correct_Sim.v}

