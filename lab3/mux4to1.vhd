library ieee;
use ieee.std_logic_1164.all;
use work.mux2to1_package.all;

entity mux4to1 is
	port(input: in std_logic_vector(3 downto 0); select_input: in std_logic_vector(1 downto 0); output: out std_logic);
end mux4to1;

architecture func of mux4to1 is
signal m: std_logic_vector(1 downto 0);
begin
	G1: for i in 1 downto 0 generate
		muxes: mux2to1 port map (input(2*i), input(2*i+1), select_input(0), m(i));
	end generate G1;
	mux5: mux2to1 port map (m(0), m(1), select_input(1), output);
end func;