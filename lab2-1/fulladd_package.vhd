library ieee;
use ieee.std_logic_1164.all;

package fulladd_package is
	component fulladd
		port(cin, x, y: in std_logic; s, cout: out std_logic);
	end component;
end fulladd_package;