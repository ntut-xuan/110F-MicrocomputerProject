library ieee;
use ieee.std_logic_1164.all;

package fulladd_package is
	component fulladd
		port (fa_cin, fa_x, fa_y: in std_logic; fa_s, fa_out: out std_logic);
	end component;
end fulladd_package;