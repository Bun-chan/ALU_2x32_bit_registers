transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/MSEE/5361/Week2/Assignment4_VHDLALU/AAC2M2H1.vhd}

