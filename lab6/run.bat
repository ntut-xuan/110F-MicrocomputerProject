C:\intelFPGA_lite\18.1\quartus\bin64\quartus_map --read_settings_files=on --write_settings_files=off lab6 -c 8bit-div
C:\intelFPGA_lite\18.1\quartus\bin64\quartus_fit --read_settings_files=off --write_settings_files=off lab6 -c 8bit-div
C:\intelFPGA_lite\18.1\quartus\bin64\quartus_sta lab6 -c 8bit-div
C:\intelFPGA_lite\18.1\quartus\bin64\quartus_sh -t c:/intelfpga_lite/18.1/quartus/common/tcl/internal/nativelink/qnativesim.tcl --block_on_gui lab6 8bit-div
