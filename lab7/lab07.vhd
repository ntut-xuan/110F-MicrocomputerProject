library ieee;
use ieee.std_logic_1164.all;
use work.seven_segment_package.all;

entity lab7 is
	port( Data, Control: in std_logic_vector(7 downto 0);
			Clk    : in std_logic;
			HEX_Bus, HEX_Rs, HEX_Rt: out std_logic_vector(13 downto 0);
			Done   : out std_logic);
end lab7;

architecture logic of lab7 is

	component simpleCPU
		port( Data, Control: in std_logic_vector(7 downto 0);
			   Clk: in std_logic;
			   D_Bus: inout std_logic_vector(7 downto 0);
			   D_Rs, D_Rt: out std_logic_vector(7 downto 0);
			   ProcessComplete: out std_logic);
	end component;
	
	signal tmpBus, tmpRs, tmpRt: std_logic_vector(7 downto 0);
	
begin
	CPU: simpleCPU
		port map(Data, Control, Clk, tmpBus, tmpRs, tmpRt, Done);
	HEX1_Bus: sevenSegment
		port map(tmpBus(7), tmpBus(6), tmpBus(5), tmpBus(4), HEX_Bus(7), HEX_Bus(8), HEX_Bus(9), HEX_Bus(10), HEX_Bus(11), HEX_Bus(12), HEX_Bus(13));
	HEX0_Bus: sevenSegment
		port map(tmpBus(3), tmpBus(2), tmpBus(1), tmpBus(0), HEX_Bus(0), HEX_Bus(1), HEX_Bus(2), HEX_Bus(3), HEX_Bus(4), HEX_Bus(5), HEX_Bus(6));
	HEX1_Rs: sevenSegment
		port map(tmpRs(7), tmpRs(6), tmpRs(5), tmpRs(4), HEX_Rs(7), HEX_Rs(8), HEX_Rs(9), HEX_Rs(10), HEX_Rs(11), HEX_Rs(12), HEX_Rs(13));
	HEX0_Rs: sevenSegment
		port map(tmpRs(3), tmpRs(2), tmpRs(1), tmpRs(0), HEX_Rs(0), HEX_Rs(1), HEX_Rs(2), HEX_Rs(3), HEX_Rs(4), HEX_Rs(5), HEX_Rs(6));
	HEX1_Rt: sevenSegment
		port map(tmpRt(7), tmpRt(6), tmpRt(5), tmpRt(4), HEX_Rt(7), HEX_Rt(8), HEX_Rt(9), HEX_Rt(10), HEX_Rt(11), HEX_Rt(12), HEX_Rt(13));
	HEX0_Rt: sevenSegment
		port map(tmpRt(3), tmpRt(2), tmpRt(1), tmpRt(0), HEX_Rt(0), HEX_Rt(1), HEX_Rt(2), HEX_Rt(3), HEX_Rt(4), HEX_Rt(5), HEX_Rt(6));
end logic;