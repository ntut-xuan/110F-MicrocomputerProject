transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {8bit-div.vho}

vcom -93 -work work {C:/Users/Xuan/Desktop/110F-MicrocomputerProject/lab6/subtractor.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=8bit-div_vhd.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  subtractor

add wave *
view structure
view signals
run -all
