library ieee;
use ieee.std_logic_1164.all;
use work.alu1bit_package.all;
use work.seven_segment_package.all;

entity alu7bit is
	port (a, b: in std_logic_vector(6 downto 0); opcode: in std_logic_vector(3 downto 0); seg1, seg2: out std_logic_vector(6 downto 0));
end alu7bit;

architecture func of alu7bit is
signal carry_in : std_logic_vector(6 downto 0);
signal set: std_logic_vector(6 downto 0);
signal output: std_logic_vector(6 downto 0) := "0000000";
signal cin0: std_logic;
signal less: std_logic;
begin
	less <= '0';
	cin0 <= opcode(2);
	a1bit7: alu1bit port map (a(0), b(0), set(6), cin0, carry_in(0), output(0), set(0), opcode);
	a1bit6: alu1bit port map (a(1), b(1), '0', carry_in(0), carry_in(1), output(1), set(1), opcode);
	a1bit5: alu1bit port map (a(2), b(2), '0', carry_in(1), carry_in(2), output(2), set(2), opcode);
	a1bit4: alu1bit port map (a(3), b(3), '0', carry_in(2), carry_in(3), output(3), set(3), opcode);
	a1bit3: alu1bit port map (a(4), b(4), '0', carry_in(3), carry_in(4), output(4), set(4), opcode);
	a1bit2: alu1bit port map (a(5), b(5), '0', carry_in(4), carry_in(5), output(5), set(5), opcode);
	a1bit1: alu1bit port map (a(6), b(6), less, carry_in(5), carry_in(6), output(6), set(6), opcode);
	led1: sevenSegment port map('0', output(6), output(5), output(4), seg2(0), seg2(1), seg2(2), seg2(3), seg2(4), seg2(5), seg2(6));
	led2: sevenSegment port map(output(3), output(2), output(1), output(0), seg1(0), seg1(1), seg1(2), seg1(3), seg1(4), seg1(5), seg1(6));
end func;