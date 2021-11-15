LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY U_Shift is
	GENERIC (N : INTEGER := 8);
	PORT(
		 clk    : IN STD_LOGIC;
		 clear  : IN STD_LOGIC;
		 load   : IN STD_LOGIC;
		 lr_sel : IN STD_LOGIC;
		 di     : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		 sdi    : IN STD_LOGIC;
		 qo     : BUFFER STD_LOGIC_VECTOR(N-1 DOWNTO 0));
end U_Shift;

ARCHITECTURE func of U_Shift is
BEGIN
	PROCESS(CLK) is
	BEGIN
		if rising_edge(CLK) then
			if clear = '1' then
				for i in N-1 downto 0 loop
					qo(i) <= '0';
				end loop;
			end if;
			if clear = '0' and load = '1' then
				for i in N-1 downto 0 loop
					qo(i) <= di(i);
				end loop;
			end if;
			
			if clear = '0' and load = '0' then
				if lr_sel = '0' then
					for i in N-1 downto 1 loop
						qo(i-1) <= qo(i);
					end loop;
					qo(N-1) <= sdi;
				end if;
				if  lr_sel = '1' then
					for i in N-2 downto 0 loop
						qo(i+1) <= qo(i);
					end loop;
					qo(0) <= sdi;
				end if;
			end if;
		end if;
	END PROCESS;
END func;
