transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {lab2-1.vho}

vcom -93 -work work {D:/NTUT 110-1/110F-MicrocomputerProject/lab2-1/main.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=lab2-1_vhd.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
