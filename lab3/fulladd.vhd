library ieee;
use ieee.std_logic_1164.all;

entity fulladd is 
	port (fa_cin, fa_x, fa_y: in std_logic; fa_s, fa_out: out std_logic);
end fulladd;

architecture func of fulladd is
begin
	fa_s <= fa_x xor fa_y xor fa_cin;
	fa_out <= (fa_x and fa_y) or (fa_cin and fa_x) or (fa_cin and fa_y);
end func;