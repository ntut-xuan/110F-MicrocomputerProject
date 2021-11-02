library ieee;
use ieee.std_logic_1164.all;

entity mux2to1 is
	port(a, b: in std_logic; select_input: in std_logic; output: out std_logic);
end mux2to1;

architecture func of mux2to1 is
	begin
		with select_input select
			output <= a when '0', b when others;
			
	end func;