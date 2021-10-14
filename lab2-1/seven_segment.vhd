library ieee;
use ieee.std_logic_1164.all;

entity sevenSegment is 
	port(w, x, y, z: in std_logic; a, b, c, d, e, f, g: out std_logic);
end sevenSegment;

architecture func of sevenSegment is
begin
	a <= (not(w) and not(x) and not(y) and z) or
	(not(w) and x and not(y) and not(z)) or
	(w and not(x) and y and z) or
	(w and x and not(y) and z);
	
	b <= (not(w) and x and not(y) and z) or
	(not(w) and x and y and not(z)) or
	(w and not(x) and y and z) or
	(w and x and not(y) and not(z)) or
	(w and x and y and not(z)) or
	(w and x and y and z);
	 
	c <= (not(w) and not(x) and y and not(z)) or
	(w and x and not(y) and not(z)) or
	(w and x and y and not(z)) or
	(w and x and y and z);
	
	d <= (not(w) and not(x) and not(y) and z) or
	(not(w) and x and not(y) and not(z)) or
	(not(w) and x and y and z) or
	(w and not(x) and y and not(z)) or
	(w and x and y and z);
	
	e <= (not(w) and not(x) and not(y) and z) or
	(not(w) and not(x) and y and z) or
	(not(w) and x and not(y) and not(z)) or
	(not(w) and x and not(y) and z) or
	(not(w) and x and y and z) or
	(w and not(x) and not(y) and z);
	
	f <= (not(w) and not(x) and not(y) and z) or
	(not(w) and not(x) and y and not(z)) or
	(not(w) and not(x) and y and z) or
	(not(w) and x and y and z) or
	(w and x and not(y) and z);
	
	g <= (not(w) and not(x) and not(y) and not(z)) or
	(not(w) and not(x) and not(y) and z) or
	(not(w) and x and y and z) or
	(w and x and not(y) and not(z));
end func;

