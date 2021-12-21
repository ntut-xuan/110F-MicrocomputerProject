library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity subtractor is
	generic (N: Integer);
	port(clk, reset, load: in STD_LOGIC; load_input: in std_logic_vector(N-1 downto 0); minuted: in std_logic_vector(N-1 downto 0); minus: in std_logic_vector(N-1 downto 0); output: out std_logic_vector(N-1 downto 0));
end subtractor;

architecture func of subtractor is
BEGIN
	
	PROCESS(clk, reset)
	BEGIN
		if(reset = '1') THEN
			output <= (N-1 downto 0 => '0');
		elsif(clk'Event and clk = '1') then
			if load = '1' then
				output <= load_input;
			else
				output <= minuted - minus;
			end if;
		end if;
	END PROCESS;
END func;
