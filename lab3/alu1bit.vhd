library ieee;
use ieee.std_logic_1164.all;
use work.fulladd_package.all;
use work.mux2to1_package.all;
use work.mux4to1_package.all;
	
entity alu1bit is
	port(a, b, less, carry_in: in std_logic; carry_out, result, set: out std_logic; opcode: in std_logic_vector(3 downto 0));
end alu1bit;

architecture func of alu1bit is
	signal m1: std_logic;
	signal m2: std_logic;
	signal halfadd_result: std_logic;
	signal mux4to1_input: std_logic_vector(3 downto 0);
	begin
		mux1:     mux2to1 port map (a, not(a), opcode(3), m1);
		mux2:     mux2to1 port map (b, not(b), opcode(2), m2);
		fulladd1: fulladd port map (carry_in, m1, m2, halfadd_result, carry_out);
		
		mux4to1_input(0) <= m1 and m2;
		mux4to1_input(1) <= m1 or m2;
		mux4to1_input(2) <= halfadd_result;
		mux4to1_input(3) <= less;
		set <= mux4to1_input(2);
		
		bigmux:   mux4to1 port map (mux4to1_input, opcode(1 downto 0), result);
	end func;