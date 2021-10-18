library ieee;
use ieee.std_logic_1164.all;

entity BCDadder is
	port(
	input_a, input_b: in std_logic_vector(3 downto 0); 
	l1: out std_logic_vector(0 to 6);
	l2: out std_logic_vector(0 to 6)
	);
end BCDadder;

architecture adder of BCDadder is
	component fulladd
		port (fa_cin, fa_x, fa_y: in std_logic; fa_s, fa_out: out std_logic);
	end component;
	component sevenSegment
		port(ss_w, ss_x, ss_y, ss_z: in std_logic; ss_a, ss_b, ss_c, ss_d, ss_e, ss_f, ss_g: out std_logic);
	end component;
	component fixed_circuit
		port(fixed_a, fixed_b, fixed_c, fixed_d: in std_logic; fixed_carry: in std_logic; fixed_out: out std_logic);
	end component;
	signal sum1: std_logic_vector(0 to 3);
	signal sum2: std_logic_vector(0 to 3);
	signal carry1: std_logic_vector(0 to 4);
	signal carry2: std_logic_vector(0 to 4);
	signal fixed_signal: std_logic;
	begin
		carry1(0) <= '0';
		adder1:         fulladd       port map(carry1(0), input_a(0), input_b(0), sum1(0), carry1(1));
		adder2:         fulladd       port map(carry1(1), input_a(1), input_b(1), sum1(1), carry1(2));
		adder3:         fulladd       port map(carry1(2), input_a(2), input_b(2), sum1(2), carry1(3));
		adder4:         fulladd       port map(carry1(3), input_a(3), input_b(3), sum1(3), carry1(4));
		fixed_circuit1: fixed_circuit port map(sum1(3), sum1(2), sum1(1), sum1(0), carry1(4), fixed_signal);
		adder5:         fulladd       port map(carry2(0), '0', sum1(0), sum2(0), carry2(1));
		adder6:         fulladd       port map(carry2(1), fixed_signal, sum1(1), sum2(1), carry2(2));
		adder7:         fulladd       port map(carry2(2), fixed_signal, sum1(2), sum2(2), carry2(3));
		adder8:         fulladd       port map(carry2(3), '0', sum1(3), sum2(3), carry2(4));
		seven_segment1: sevenSegment  port map(sum2(3), sum2(2), sum2(1), sum2(0), l1(0), l1(1), l1(2), l1(3), l1(4), l1(5), l1(6));
		seven_segment2: sevenSegment  port map('0', '0', '0', fixed_signal, l2(0), l2(1), l2(2), l2(3), l2(4), l2(5), l2(6));
	end adder;
	