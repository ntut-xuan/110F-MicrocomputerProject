library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity simpleCPU is
	port( Data, Control: in std_logic_vector(7 downto 0);
			Clk: in std_logic;
			D_Bus: inout std_logic_vector(7 downto 0);
			D_Rs, D_Rt: out std_logic_vector(7 downto 0);
			ProcessComplete: out std_logic);
end simpleCPU;

architecture logic of simpleCPU is

	signal R3, R2, R1, R0: std_logic_vector(7 downto 0);
	signal op: std_logic_vector(3 downto 0);
	signal Rs_pointer: std_logic_vector(1 downto 0);
	signal Rt_pointer: std_logic_vector(1 downto 0);
	signal tmpBus, tmpRs, tmpRt: std_logic_vector(7 downto 0);
	
begin
	op <= Control(3 downto 0);
	Rs_pointer <= Control(5 downto 4);
	Rt_pointer <= Control(7 downto 6);
	
	process(Clk)
		variable excuteStep: integer := 0;
		variable prevop: std_logic_vector(3 downto 0);
		variable tmpBus2: std_logic_vector(7 downto 0);
	begin
		if rising_edge(Clk) then
			if excuteStep = 0 then
				ProcessComplete <= '1';
				case op is
					when "0000" =>
						D_Bus <= Data;
						case Rs_pointer is
							when "00" => R0 <= Data;
							when "01" => R1 <= Data;
							when "10" => R2 <= Data;
							when others => R3 <= Data;
						end case;
					when "0001" =>
						case Rt_pointer is
							when "00" => tmpBus <= R0;
							when "01" => tmpBus <= R1;
							when "10" => tmpBus <= R2;
							when others => tmpBus <= R3;
						end case;
						
						case Rs_pointer is
							when "00" => R0 <= tmpBus;
							when "01" => R1 <= tmpBus;
							when "10" => R2 <= tmpBus;
							when others => R3 <= tmpBus;
						end case;
					when others =>
						ProcessComplete <= '0';
						case Rs_pointer is
							when "00" => tmpBus <= R0;
							when "01" => tmpBus <= R1;
							when "10" => tmpBus <= R2;
							when others => tmpBus <= R3;
						end case;

						D_Bus <= tmpBus;
						prevop := op;
						excuteStep := excuteStep + 1;
				end case;
			elsif excuteStep = 1 then
				tmpBus2 := tmpBus;
				case Rt_pointer is
					when "00" => tmpBus <= R0;
					when "01" => tmpBus <= R1;
					when "10" => tmpBus <= R2;
					when others => tmpBus <= R3;
				end case;
				
				D_Bus <= tmpBus;
				excuteStep := excuteStep + 1;
				
			elsif excuteStep = 2 then
				case prevop is
					when "0010" =>		--Add
						tmpBus <= tmpBus2 + tmpBus;
					when "0011" =>		--And
						tmpBus <= tmpBus2 and tmpBus;
					when "1001" =>		--Sub
						tmpBus <= tmpBus2 - tmpBus;
					when "0101" =>		
						tmpBus <= tmpBus - tmpBus2;
					when "0100" =>		--slt
						if unsigned(tmpBus2) < unsigned(tmpBus) then
							tmpBus <= "00000001";
						else
							tmpBus <= "00000000";
						end if;
					when others =>		
				end case;
	
				D_Bus <= tmpBus;
				excuteStep := excuteStep + 1;
			else		
				case Rs_pointer is
					when "00" => R0 <= tmpBus;
					when "01" => R1 <= tmpBus;
					when "10" => R2 <= tmpBus;
					when others => R3 <= tmpBus;
				end case;

				D_Bus <= tmpBus;
				excuteStep := 0;
				ProcessComplete <= '1';
			end if;
		end if;
	end process;
				

	process(R0, R1, R2, R3)
	begin
		case Rs_pointer is
			when "00" => D_Rs <= R0;
			when "01" => D_Rs <= R1;
			when "10" => D_Rs <= R2;
			when others => D_Rs <= R3;
		end case;
	
		case Rt_pointer is
			when "00" => D_Rt <= R0;
			when "01" => D_Rt <= R1;
			when "10" => D_Rt <= R2;
			when others => D_Rt <= R3;
		end case;
	end process;
end logic;