-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Network: TopMeanShift 
-- Date: 2015/10/14 15:56:57
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity TopMeanShift_tb is
end TopMeanShift_tb;

architecture arch_TopMeanShift_tb of TopMeanShift_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component TopMeanShift
	port(
	    CLK : in std_logic;
	    RESET: IN std_logic);
	end component TopMeanShift;
	
		-----------------------------------------------------------------------
		-- Achitecure signals & constants
		-----------------------------------------------------------------------
		constant CLK_PERIOD : time := 100 ns;
		constant CLK_DUTY_CYCLE : real := 0.5;
		constant OFFSET : time := 100 ns;
		-- Severity level and testbench type types
		type severity_level is (note, warning, error, failure);
		type tb_type is (after_reset, read_file, CheckRead);
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_TopMeanShift : TopMeanShift 
	port map(
		
		CLK => CLK,
		reset => reset);
	
	-- Input(s) queues

	-- Clock process
	
	CLK_clockProcess : process
		begin
		wait for OFFSET;
			clockLOOP : loop
				CLK <= '0';
				wait for (CLK_PERIOD - (CLK_PERIOD * CLK_DUTY_CYCLE));
				CLK <= '1';
				wait for (CLK_PERIOD * CLK_DUTY_CYCLE);
			end loop clockLOOP;
	end process;
	
	-- Reset process
	resetProcess : process
	begin
		wait for OFFSET;
		-- reset state for 100 ns.
		RESET <= '1';
		wait for 100 ns;
		RESET <= '0';
		wait;
	end process;

	
	-- Input(s) Waveform Generation
	WaveGen_Proc_In : process (CLK)
		variable Input_bit : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
	begin
		if rising_edge(CLK) then
		end if;
	end process WaveGen_Proc_In;
	
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
	begin
		if (rising_edge(CLK)) then
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_TopMeanShift_tb; 
