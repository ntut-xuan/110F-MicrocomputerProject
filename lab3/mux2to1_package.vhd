library ieee;
use ieee.std_logic_1164.all;

package mux2to1_package is
	component mux2to1
		port(a, b: in std_logic; select_input: in std_logic; output: out std_logic);
	end component;
end mux2to1_package;