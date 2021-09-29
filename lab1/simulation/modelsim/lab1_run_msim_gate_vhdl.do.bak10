transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {lab1.vho}

vcom -93 -work work {C:/Users/f7798/Desktop/lab1/lab1.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=lab1_vhd.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
