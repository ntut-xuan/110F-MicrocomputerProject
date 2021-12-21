library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.shiftRegister_package.all;
use work.subtractor_package.all;

entity eight_bits_div is
	generic (N : INTEGER := 4);
	port(
	divisor: in std_logic_vector(N-1 downto 0); 
	dividend: in std_logic_vector(N-1 downto 0); 
	remainder: buffer std_logic_vector(N*2-1 downto 0); 
	clk, reset: in std_logic; 
	quotient : buffer std_logic_vector(N-1 downto 0);
	minus_temp: buffer std_logic_vector(2*N-1 downto 0);
	w : buffer integer;
	step: buffer integer;
	subtractor_load : buffer STD_LOGIC;
	fixed_dividend: buffer std_logic_vector(N*2-1 downto 0)
	);
	
end eight_bits_div;

architecture func of eight_bits_div is
	TYPE State_type is (S0, S1, S2A, S2B, S3, S4);
	SIGNAL y : State_type := S0;
	SIGNAL fixed_divisor : std_logic_vector(N*2-1 downto 0) := (N*2-1 downto 0 => '0');
	-- SIGNAL fixed_dividend : std_logic_vector(N*2-1 downto 0) := (N*2-1 downto 0 => '0');
	SIGNAL quotient_load : STD_LOGIC := '1';
	SIGNAL divisor_load : STD_LOGIC := '1';
	SIGNAL remainder_load : STD_LOGIC := '1';
	SIGNAL remainder_shift: STD_LOGIC := '1';
	SIGNAL quotient_set: STD_LOGIC := '0';
	SIGNAL temp_divisor: std_logic_vector((N*2-1) downto 0) := (N*2-1 downto 0 => '0');
	-- SIGNAL minus_temp: std_logic_vector(2*N-1 downto 0);
	-- SIGNAL step: integer;
BEGIN
	
	fixed_divisor <= divisor & (N-1 downto 0 => '0');
	fixed_dividend <= (2*N-1 downto N => '0') & dividend;
	
	dd_subtractor: subtractor
		generic map (N*2)
		port map(clk => clk, reset => reset, load => subtractor_load, load_input => fixed_dividend, minuted => remainder, minus => fixed_divisor, output => minus_temp);
	
	divisor_sr: U_Shift 
		generic map (N*2) 
		port map(clk => clk, clear => reset, load => divisor_load, lr_sel => '1', di => fixed_divisor, sdi => '0', qo => temp_divisor);
	
	remainder_sr: U_Shift 
		generic map (N*2) 
		port map(clk => clk, clear => reset, load => remainder_load, lr_sel => remainder_shift, di => minus_temp, sdi => '0', qo => remainder);
	
	qutoient_sr: U_Shift
		generic map (N)
		port map(clk => clk, clear => reset, load => quotient_load, lr_sel => '1', di => quotient, sdi => quotient_set, qo => quotient);
	
	PROCESS(reset, clk)
	BEGIN		
		if(reset = '1') THEN
			y <= S0;
		elsif(clk'Event and clk = '1') then
			case y iS
				when S0 =>
					if w = 1 then
						y <= S1;
					end if;
				when S1 =>
					if w = 0 then
						y <= S2A;
					else
						y <= S2B;
					end if;
				when S2A =>
					if w = 1 then
						y <= S3;
					end if;
				when S2B =>
					if w = 1 then
						y <= S3;
					end if;
				when S3 =>
					if w = 0 then
						y <= S4;
					else
						y <= S4;
					end if;
				when S4 =>
						y <= S4;
			end case;
		end if;
	end PROCESS;
	
	PROCESS(y)
	BEGIN
		case y is
			when S0 =>
				subtractor_load <= '1';
				step <= 0;
				w <= 0;
				if to_Integer(signed(remainder)) = to_Integer(signed(fixed_dividend)) then
					subtractor_load <= '0';
					w <= 1;
					step <= 1;
				end if;
			when S1 =>
				w <= 2;
				if to_Integer(signed(remainder)) = (to_Integer(signed(fixed_dividend)) - to_Integer(signed(fixed_divisor))) then
					if (to_Integer(signed(remainder)) - to_Integer(signed(fixed_divisor))) > 0 then
						step <= (to_Integer(signed(fixed_dividend)) - to_Integer(signed(fixed_divisor)));
						w <= 0;
					else
						step <= 21;
						w <= 1;
					end if;
				end if;
			when S2A =>
				quotient_set <= '1';
				subtractor_load <= '1';
				quotient_load <= '0';
				w <= 1;
				step <= 3;
			when S2B =>
				quotient_set <= '0';
				subtractor_load <= '0';
				quotient_load <= '0';
				if to_Integer(signed(remainder)) - to_Integer(signed(fixed_dividend)) = 0 then
					w <= 1;
				else
					w <= 0;
				end if;
				step <= 3;
			when S3 =>
				quotient_load <= '1';
				divisor_load <= '0';
				step <= 4;
			when S4 =>
				step <= 4;
		end case;
	END PROCESS;
end func;