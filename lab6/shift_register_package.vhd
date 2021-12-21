library ieee;
use ieee.std_logic_1164.all;

package shiftRegister_package is
	component U_Shift is
		GENERIC (N : INTEGER);
		PORT(
		 clk    : IN STD_LOGIC;
		 clear  : IN STD_LOGIC;
		 load   : IN STD_LOGIC;
		 lr_sel : IN STD_LOGIC;
		 di     : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		 sdi    : IN STD_LOGIC;
		 qo     : BUFFER STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	end component;
end shiftRegister_package;