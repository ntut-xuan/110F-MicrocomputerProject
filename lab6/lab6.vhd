library ieee;
use ieee.std_logic_1164.all;	
use ieee.numeric_std.all;
use work.state_type_package.all;
use work.seven_segment_package.all;

entity eight_bits_div is
	generic (N : INTEGER := 4);
	port(
		divisor: in ieee.numeric_std.signed(N-1 downto 0); 
		dividend: in ieee.numeric_std.signed(N-1 downto 0); 
		remainder: buffer ieee.numeric_std.signed(N*2-1 downto 0); 
		clk, reset: in std_logic; 
		quotient : buffer ieee.numeric_std.signed(N*2-1 downto 0);
		led0 : out std_logic_vector(6 downto 0);
		led1 : out std_logic_vector(6 downto 0);
		led2 : out std_logic_vector(6 downto 0);
		led3 : out std_logic_vector(6 downto 0)
	);
end eight_bits_div;

architecture func of eight_bits_div is
	SIGNAL fixed_divisor: ieee.numeric_std.signed(2*N-1 downto 0);
	SIGNAL temp_subtract: ieee.numeric_std.signed(2*N-1 downto 0);
	SIGNAL y : State_type;
	SIGNAL step : INTEGER;
	SIGNAL w : std_logic := '0';
BEGIN
	led_3 : sevenSegment port map (quotient(7), quotient(6), quotient(5), quotient(4), led3(0), led3(1), led3(2), led3(3), led3(4), led3(5), led3(6));
	led_2 : sevenSegment port map (quotient(3), quotient(2), quotient(1), quotient(0), led2(0), led2(1), led2(2), led2(3), led2(4), led2(5), led2(6));
	led_1 : sevenSegment port map (remainder(7), remainder(6), remainder(5), remainder(4), led1(0), led1(1), led1(2), led1(3), led1(4), led1(5), led1(6));
	led_0 : sevenSegment port map (remainder(3), remainder(2), remainder(1), remainder(0), led0(0), led0(1), led0(2), led0(3), led0(4), led0(5), led0(6));
	PROCESS(reset, clk)
	BEGIN
		if(reset = '1') THEN
			y <= S0;	
			step <= 0;
			w <= '0';
			fixed_divisor <= divisor & (N-1 downto 0 => '0');
			remainder <= (2*N-1 downto 0 => '0');
			quotient <= (2*N-1 downto 0 => '0');
		elsif(clk'Event and clk = '1') then
			case y is
				when S0 =>
					if w <= '0' then
						remainder <= (N*2-1 downto N => '0') & dividend;
						w <= '1';
					else
						w <= '0';
						y <= S1;
					end if;
				when S1 =>
					if w = '0' then
						remainder <= remainder - fixed_divisor;
						w <= '1';
					else
						if to_Integer(remainder) >= 0 then
							y <= S2A;
						else
							y <= S2B;
						end if;
						w <= '0';
					end if;
				when S2A =>
					if w = '0' then
						quotient <= quotient(2*N-2 downto 0) & '1';
						w <= '1';
					else
						y <= S3;
						w <= '0';
					end if;
				when S2B =>
					if w = '0' then
						remainder <= remainder + fixed_divisor;
						quotient <= quotient(2*N-2 downto 0) & '0';
						w <= '1';
					else
						y <= S3;
						w <= '0';
					end if;
				when S3 =>
					if w = '0' then
						fixed_divisor <= '0' & fixed_divisor(2*N-1 downto 1);
						step <= step + 1;
						w <= '1';
					else
						if step /= (N+1) then
							y <= S1;
						else
							y <= S4;
						end if;
						w <= '0';
					end if;
				when S4 =>
					y <= S4;
			end case;
		end if;
	END PROCESS;
end func;