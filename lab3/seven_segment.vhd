library ieee;
use ieee.std_logic_1164.all;

entity sevenSegment is 
	port(ss_w, ss_x, ss_y, ss_z: in std_logic; ss_a, ss_b, ss_c, ss_d, ss_e, ss_f, ss_g: out std_logic);
end sevenSegment;

architecture func of sevenSegment is
begin
	ss_a <= (not(ss_w) and not(ss_x) and not(ss_y) and ss_z) or
	(not(ss_w) and ss_x and not(ss_y) and not(ss_z)) or
	(ss_w and not(ss_x) and ss_y and ss_z) or
	(ss_w and ss_x and not(ss_y) and ss_z);
	
	ss_b <= (not(ss_w) and ss_x and not(ss_y) and ss_z) or
	(not(ss_w) and ss_x and ss_y and not(ss_z)) or
	(ss_w and not(ss_x) and ss_y and ss_z) or
	(ss_w and ss_x and not(ss_y) and not(ss_z)) or
	(ss_w and ss_x and ss_y and not(ss_z)) or
	(ss_w and ss_x and ss_y and ss_z);
	 
	ss_c <= (not(ss_w) and not(ss_x) and ss_y and not(ss_z)) or
	(ss_w and ss_x and not(ss_y) and not(ss_z)) or
	(ss_w and ss_x and ss_y and not(ss_z)) or
	(ss_w and ss_x and ss_y and ss_z);
	
	ss_d <= (not(ss_w) and not(ss_x) and not(ss_y) and ss_z) or
	(not(ss_w) and ss_x and not(ss_y) and not(ss_z)) or
	(not(ss_w) and ss_x and ss_y and ss_z) or
	(ss_w and not(ss_x) and ss_y and not(ss_z)) or
	(ss_w and ss_x and ss_y and ss_z);
	
	ss_e <= (not(ss_w) and not(ss_x) and not(ss_y) and ss_z) or
	(not(ss_w) and not(ss_x) and ss_y and ss_z) or
	(not(ss_w) and ss_x and not(ss_y) and not(ss_z)) or
	(not(ss_w) and ss_x and not(ss_y) and ss_z) or
	(not(ss_w) and ss_x and ss_y and ss_z) or
	(ss_w and not(ss_x) and not(ss_y) and ss_z);
	
	ss_f <= (not(ss_w) and not(ss_x) and not(ss_y) and ss_z) or
	(not(ss_w) and not(ss_x) and ss_y and not(ss_z)) or
	(not(ss_w) and not(ss_x) and ss_y and ss_z) or
	(not(ss_w) and ss_x and ss_y and ss_z) or
	(ss_w and ss_x and not(ss_y) and ss_z);
	
	ss_g <= (not(ss_w) and not(ss_x) and not(ss_y) and not(ss_z)) or
	(not(ss_w) and not(ss_x) and not(ss_y) and ss_z) or
	(not(ss_w) and ss_x and ss_y and ss_z) or
	(ss_w and ss_x and not(ss_y) and not(ss_z));
end func;

