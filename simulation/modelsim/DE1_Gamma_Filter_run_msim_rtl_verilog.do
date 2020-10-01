transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port/Sdram_PLL.vo}
vlib Sdram_PLL
vmap Sdram_PLL Sdram_PLL
vlog -vlog01compat -work Sdram_PLL +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port/Sdram_PLL.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/MAC_3.vo}
vlib MAC_3
vmap MAC_3 MAC_3
vlog -vlog01compat -work MAC_3 +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/MAC_3.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/YCbCr2RGB.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/Gamma_Correct.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/DE1_Gamma_Filter.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port/Sdram_WR_FIFO.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port/Sdram_RD_FIFO.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/YUV422_to_444.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/VGA_Ctrl.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/TD_Detect.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/SEG7_LUT.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/Reset_Delay.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/ITU_656_Decoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/I2C_Controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/I2C_AV_Config.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/Line_Buffer.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/DIV.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/AUDIO_DAC.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/v/SEG7_LUT_6.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/db {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/db/altera_mult_add_vp8c.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port/Sdram_Control_4Port.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port/sdr_data_path.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port/control_interface.v}
vlog -vlog01compat -work work +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port/command.v}
vlog -vlog01compat -work Sdram_PLL +incdir+C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port/Sdram_PLL {C:/Users/coleh/Desktop/uma/ece688_gammaFilter/00_DE1_Gamma_Filter/DE1_Gamma_Filter/Sdram_Control_4Port/Sdram_PLL/Sdram_PLL_0002.v}

