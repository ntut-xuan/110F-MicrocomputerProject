library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FSM is
	port(clk, reset, w : in std_logic; output: out std_logic_vector(2 downto 0));
end;

architecture logicFun of FSM is
	TYPE State_type is (S0, S1, S2A, S2B, S3, S4);
	SIGNAL y : State_type;
BEGIN 
	PROCESS(reset, clk)
	BEGIN
		if(reset = '0') THEN
			y <= S0;
		elsif(clk'Event and clk = '1') then
			case y is
				when S0 =>
					if(w = '0') then
						y <= S0;
					else
						y <= S1;
					end if;
				when S1 =>
					if(w = '0') then
						y <= S2A;
					else
						y <= S2B;
					end if;
				when S2A =>
					y <= S3;
				when S2B =>
					y <= S3;
				when S3 =>
					if(w = '0') then
						y <= S1;
					else
						y <= S4;
					end if;
				when S4 =>
					y <= S4;
			end case;
			
			if(y = S0) then
				output <= "000";
			elsif (y = S1) then
				output <= "001";
			elsif (y = S2A) then
				output <= "010";
			elsif (y = S2B) then
				output <= "011";
			elsif (y = S3) then
				output <= "100";
			else
				output <= "101";
			end if;
		end if;
	end PROCESS;
end logicFun;