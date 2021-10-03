library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity seven_segment is
port(W, X, Y, Z: in bit_vector(1 downto 0); a, b, c, d, e, f, g: out bit_vector(1 downto 0));
end seven_segment;

architecture archi of seven_segment is
begin
	process(W,X,Y,Z)
	variable t: Integer range 0 to 16;
	begin
		for i in 0 to 1 loop
			
			-- init the t, let t reset to 0
			t := 0;

			-- calculate WXYZ and turn it into integer
			if W(i) = '1' then
				t := t + 8;
			end if;
			if X(i) = '1' then
				t := t + 4;
			end if;
			if Y(i) = '1' then
				t := t + 2;
			end if;
			if Z(i) = '1' then
				t := t + 1;
			end if;

			-- reset led.
			a(i) <= '0';
			b(i) <= '0';
			c(i) <= '0';
			d(i) <= '0';
			e(i) <= '0';
			f(i) <= '0';
			g(i) <= '0';

			-- if t={1,4,11,13}, turn off a-LED.
			if t = 1 or t = 4 or t = 11 or t = 13 then
				a(i) <= '1';
			end if;

			-- if t={5,6,11,12,14,15}, turn off b-LED.
			if t = 5 or t = 6 or t = 11 or t = 12 or t = 14 or t = 15 then
				b(i) <= '1';
			end if;

			-- if t={2,12,14,15}, turn off c-LED.
			if t = 2 or t = 12 or t = 14 or t = 15 then
				c(i) <= '1';
			end if;

			-- if t={1, 4, 7, 9, 10, 15}, turn off d-LED
			if t = 1 or t = 4 or t = 7 or t = 9 or t = 10 or t = 15 then
				d(i) <= '1';
			end if;

			-- if t={1, 3, 4, 5, 7, 9}, turn off e-LED
			if (t = 1 or t = 3 or t = 4 or t = 5 or t = 7 or t = 9) then
				e(i) <= '1';
			end if;

			-- if t={1, 2, 3, 7, 13}, turn off f-LED
			if (t = 1 or t = 2 or t = 3 or t = 7 or t = 13) then
				f(i) <= '1';
			end if;

			-- if t={0, 1, 7, 12}, turn off g-LED
			if (t = 0 or t = 1 or t = 7 or t = 12) then
				g(i) <= '1';
			end if;
		end loop;
	end process;
end archi;