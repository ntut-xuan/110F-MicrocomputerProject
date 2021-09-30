transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {lab1-2.vho}

vcom -93 -work work {D:/Xuan/Documents/MC_Lab/lab1-2/lab1-2.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=lab1-2_vhd.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
