library ieee;
use ieee.std_logic_1164.all;
use work.fulladd_package.all;
use work.seven_segment_package.all;

entity fulladder is
	port(
	a, b: in std_logic_vector(0 to 7); 
	cout: out std_logic; 
	l1: out std_logic_vector(0 to 6);
	l2: out std_logic_vector(0 to 6)
	);
end fulladder;

architecture adder of fulladder is
component fulladd
	port (cin, x, y: in std_logic; s, cout: out std_logic);
end component;
component sevenSegment
	port(w, x, y, z: in std_logic; a, b, c, d, e, f, g: out std_logic);
end component;
signal s: std_logic_vector(0 to 7);
signal c: std_logic_vector(0 to 7);
begin
	adder1: fulladd port map(c(0),  a(0), b(0), c(1), s(0));
	adder2: fulladd port map(c(1), a(1), b(1), c(2), s(1));
	adder3: fulladd port map(c(2), a(2), b(2), c(3), s(2));
	adder4: fulladd port map(c(3), a(3), b(3), c(4), s(3));
	adder5: fulladd port map(c(4), a(4), b(4), c(5), s(4));
	adder6: fulladd port map(c(5), a(5), b(5), c(6), s(5));
	adder7: fulladd port map(c(6), a(6), b(6), c(7), s(6));
	adder8: fulladd port map(c(7), a(7), b(7), cout, s(7));
	led1: sevenSegment port map(s(0), s(1), s(2), s(3), l1(0), l1(1), l1(2), l1(3), l1(4), l1(5), l1(6));
	led2: sevenSegment port map(s(4), s(5), s(6), s(7), l2(0), l2(1), l2(2), l2(3), l2(4), l2(5), l2(6));
end adder;