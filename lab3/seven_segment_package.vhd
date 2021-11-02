library ieee;
use ieee.std_logic_1164.all;

package seven_segment_package is
	component sevenSegment
		port(ss_w, ss_x, ss_y, ss_z: in std_logic; ss_a, ss_b, ss_c, ss_d, ss_e, ss_f, ss_g: out std_logic);
	end component;
end seven_segment_package;