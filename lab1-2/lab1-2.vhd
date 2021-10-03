library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity seven_segment is
port(W, X, Y, Z: in bit_vector(1 downto 0); a, b, c, d, e, f, g: out bit_vector(1 downto 0));
end seven_segment;

architecture archi of seven_segment is
begin
process(W,X,Y,Z)
	variable t1: Integer range 0 to 16 := 0;
	variable t2: Integer range 0 to 16 := 0;
	begin
		t1 := 0;

		-- calculate WXYZ and turn it into integer
		if W(0) = '1' then
			t1 := t1 + 8;
		end if;
		if X(0) = '1' then
			t1 := t1 + 4;
		end if;
		if Y(0) = '1' then
			t1 := t1 + 2;
		end if;
		if Z(0) = '1' then
			t1 := t1 + 1;
		end if;

		-- reset led.
		a(0) <= '0';
		b(0) <= '0';
		c(0) <= '0';
		d(0) <= '0';
		e(0) <= '0';
		f(0) <= '0';
		g(0) <= '0';

		-- if t={1,4,11,13}, turn off a-LED.
		if t1 = 1 or t1 = 4 or t1 = 11 or t1 = 13 then
			a(0) <= '1';
		end if;

		-- if t={5,6,11,12,14,15}, turn off b-LED.
		if t1 = 5 or t1 = 6 or t1 = 11 or t1 = 12 or t1 = 14 or t1 = 15 then
			b(0) <= '1';
		end if;

		-- if t={2,12,14,15}, turn off c-LED.
		if t1 = 2 or t1 = 12 or t1 = 14 or t1 = 15 then
			c(0) <= '1';
		end if;

		-- if t={1, 4, 7, 9, 10, 15}, turn off d-LED
		if t1 = 1 or t1 = 4 or t1 = 7 or t1 = 9 or t1 = 10 or t1 = 15 then
			d(0) <= '1';
		end if;

		-- if t={1, 3, 4, 5, 7, 9}, turn off e-LED
		if (t1 = 1 or t1 = 3 or t1 = 4 or t1 = 5 or t1 = 7 or t1 = 9) then
			e(0) <= '1';
		end if;

		-- if t={1, 2, 3, 7, 13}, turn off f-LED
		if (t1 = 1 or t1 = 2 or t1 = 3 or t1 = 7 or t1 = 13) then
			f(0) <= '1';
		end if;

		-- if t={0, 1, 7, 12}, turn off g-LED
		if (t1 = 0 or t1 = 1 or t1 = 7 or t1 = 12) then
			g(0) <= '1';
		end if;

		t2 := 0;

		-- calculate WXYZ and turn it into integer
		if W(1) = '1' then
			t2 := t2 + 8;
		end if;
		if X(1) = '1' then
			t2 := t2 + 4;
		end if;
		if Y(1) = '1' then
			t2 := t2 + 2;
		end if;
		if Z(1) = '1' then
			t2 := t2 + 1;
		end if;

		-- reset led.
		a(1) <= '0';
		b(1) <= '0';
		c(1) <= '0';
		d(1) <= '0';
		e(1) <= '0';
		f(1) <= '0';
		g(1) <= '0';

		-- if t={1,4,11,13}, turn off a-LED.
		if t2 = 1 or t2 = 4 or t2 = 11 or t2 = 13 then
			a(1) <= '1';
		end if;

		-- if t={5,6,11,12,14,15}, turn off b-LED.
		if t2 = 5 or t2 = 6 or t2 = 11 or t2 = 12 or t2 = 14 or t2 = 15 then
			b(1) <= '1';
		end if;

		-- if t={2,12,14,15}, turn off c-LED.
		if t2 = 2 or t2 = 12 or t2 = 14 or t2 = 15 then
			c(1) <= '1';
		end if;

		-- if t={1, 4, 7, 9, 10, 15}, turn off d-LED
		if t2 = 1 or t2 = 4 or t2 = 7 or t2 = 9 or t2 = 10 or t2 = 15 then
			d(1) <= '1';
		end if;

		-- if t={1, 3, 4, 5, 7, 9}, turn off e-LED
		if (t2 = 1 or t2 = 3 or t2 = 4 or t2 = 5 or t2 = 7 or t2 = 9) then
			e(1) <= '1';
		end if;

		-- if t={1, 2, 3, 7, 13}, turn off f-LED
		if (t2 = 1 or t2 = 2 or t2 = 3 or t2 = 7 or t2 = 13) then
			f(1) <= '1';
		end if;

		-- if t={0, 1, 7, 12}, turn off g-LED
		if (t2 = 0 or t2 = 1 or t2 = 7 or t2 = 12) then
			g(1) <= '1';
		end if;

		-- project done.
		
	end process;
end archi;