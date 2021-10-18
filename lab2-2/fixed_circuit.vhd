library ieee;
use ieee.std_logic_1164.all;

entity fixed_circuit is 
	port(fixed_a, fixed_b, fixed_c, fixed_d: in std_logic; fixed_carry: in std_logic; fixed_out: out std_logic);
end fixed_circuit;

architecture func of fixed_circuit is
begin
	fixed_out <= (fixed_a and fixed_b) or (fixed_a and fixed_c) or fixed_carry;
end func;