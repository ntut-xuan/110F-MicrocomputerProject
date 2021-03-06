library ieee;
use ieee.std_logic_1164.all;
use work.fulladd_package.all;
use work.seven_segment_package.all;

entity fulladder is
	port(
	input_a, input_b: in std_logic_vector(7 downto 0); 
	cout: buffer std_logic; 
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
	signal sum: std_logic_vector(0 to 7);
	signal carry: std_logic_vector(0 to 7);
	begin
		carry(0) <= '0';
		adder1: fulladd port map(carry(0), input_a(0), input_b(0), sum(0), carry(1));
		adder2: fulladd port map(carry(1), input_a(1), input_b(1), sum(1), carry(2));
		adder3: fulladd port map(carry(2), input_a(2), input_b(2), sum(2), carry(3));
		adder4: fulladd port map(carry(3), input_a(3), input_b(3), sum(3), carry(4));
		adder5: fulladd port map(carry(4), input_a(4), input_b(4), sum(4), carry(5));
		adder6: fulladd port map(carry(5), input_a(5), input_b(5), sum(5), carry(6));
		adder7: fulladd port map(carry(6), input_a(6), input_b(6), sum(6), carry(7));
		adder8: fulladd port map(carry(7), input_a(7), input_b(7), sum(7), cout);
		seven_segment1: sevenSegment port map(sum(7), sum(6), sum(5), sum(4), l1(0), l1(1), l1(2), l1(3), l1(4), l1(5), l1(6));
		seven_segment2: sevenSegment port map(sum(3), sum(2), sum(1), sum(0), l2(0), l2(1), l2(2), l2(3), l2(4), l2(5), l2(6));
	end adder;