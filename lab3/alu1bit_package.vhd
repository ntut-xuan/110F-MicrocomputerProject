library ieee;
use ieee.std_logic_1164.all;

package alu1bit_package is
	component alu1bit
		port(a, b, less, carry_in: in std_logic; carry_out, result, set: out std_logic; opcode: in std_logic_vector(3 downto 0));
	end component;
end alu1bit_package;