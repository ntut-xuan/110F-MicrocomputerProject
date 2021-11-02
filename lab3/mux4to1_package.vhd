library ieee;
use ieee.std_logic_1164.all;

package mux4to1_package is
	component mux4to1
		port(input: in std_logic_vector(3 downto 0); select_input: in std_logic_vector(1 downto 0); output: out std_logic);
	end component;
end mux4to1_package;