library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity seven_segment is
port(W, X, Y, Z: in bit; a, b, c, d, e, f, g: out bit);
end seven_segment;

architecture archi of seven_segment is
begin
process(W,X,Y,Z)
	variable t: Integer range 0 to 16 := 0;
	begin
		t := 0;
		
		-- calculate WXYZ and turn it into integer
		if W = '1' then
			t := t + 8;
		end if;
		if X = '1' then
			t := t + 4;
		end if;
		if Y = '1' then
			t := t + 2;
		end if;
		if Z = '1' then
			t := t + 1;
		end if;
		
		-- reset led.
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		e <= '0';
		f <= '0';
		g <= '0';
		
		-- if t={1,4,11,13}, turn off a-LED.
		if t = 1 or t = 4 or t = 11 or t = 13 then
			a <= '1';
		end if;
		
		-- if t={5,6,11,12,14,15}, turn off b-LED.
		if t = 5 or t = 6 or t = 11 or t = 12 or t = 14 or t = 15 then
			b <= '1';
		end if;
		
		-- if t={2,12,14,15}, turn off c-LED.
		if t = 2 or t = 12 or t = 14 or t = 15 then
			c <= '1';
		end if;
		
		-- if t={1, 4, 7, 9, 10, 15}, turn off d-LED
		if t = 1 or t = 4 or t = 7 or t = 9 or t = 10 or t = 15 then
			d <= '1';
		end if;
		
		-- if t={1, 3, 4, 5, 7, 9}, turn off e-LED
		if (t = 1 or t = 3 or t = 4 or t = 5 or t = 7 or t = 9) then
			e <= '1';
		end if;
		
		-- if t={1, 2, 3, 7, 13}, turn off f-LED
		if (t = 1 or t = 2 or t = 3 or t = 7 or t = 13) then
			f <= '1';
		end if;
		
		-- if t={0, 1, 7, 12}, turn off g-LED
		if (t = 0 or t = 1 or t = 7 or t = 12) then
			g <= '1';
		end if;
		
		-- project done.
		
	end process;
end archi;