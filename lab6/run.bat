ghdl -a --std=02 --ieee=synopsys shift_register_package.vhd
ghdl -a --std=02 --ieee=synopsys main.vhd
ghdl -a --std=02 --ieee=synopsys subtractor_package.vhd
ghdl -a --std=02 --ieee=synopsys subtractor.vhd
ghdl -a --std=02 --ieee=synopsys lab6.vhd
ghdl -e --std=02 --ieee=synopsys eight_bits_div 
ghdl -r --std=02 --ieee=synopsys eight_bits_div --vcd=lab6.vcd
pause