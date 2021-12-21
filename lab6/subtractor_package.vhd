library ieee;
use ieee.std_logic_1164.all;

package subtractor_package is
	component subtractor is
		generic (N: Integer);
		port(clk, reset, load: in STD_LOGIC; load_input: in std_logic_vector(N-1 downto 0); minuted: in std_logic_vector(N-1 downto 0); minus: in std_logic_vector(N-1 downto 0); output: out std_logic_vector(N-1 downto 0));
	end component;
end subtractor_package;