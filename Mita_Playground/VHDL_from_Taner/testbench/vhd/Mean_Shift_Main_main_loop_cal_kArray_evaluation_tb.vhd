-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: Mean_Shift_Main_main_loop_cal_kArray_evaluation 
-- Date: 2015/10/14 15:55:52
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb is
end Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb;

architecture arch_Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb of Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Mean_Shift_Main_main_loop_cal_kArray_evaluation
	port(
	    kArrayO_data : OUT std_logic_vector(31 downto 0);
	    kArrayO_send : OUT std_logic;
	    kArrayO_ack : IN std_logic;
	    kArrayO_rdy : IN std_logic;
	    kArrayO_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component Mean_Shift_Main_main_loop_cal_kArray_evaluation;
	
		-----------------------------------------------------------------------
		-- Achitecure signals & constants
		-----------------------------------------------------------------------
		constant PERIOD : time := 100 ns;
		constant DUTY_CYCLE : real := 0.5;
		constant OFFSET : time := 100 ns;
		-- Severity level and testbench type types
		type severity_level is (note, warning, error, failure);
		type tb_type is (after_reset, read_file, CheckRead);
		
		-- Component input(s) signals
		
		-- Component Output(s) signals
		signal tb_FSM_kArrayO : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO.txt";
		signal kArrayO_data : std_logic_vector(31 downto 0) := (others => '0');
		signal kArrayO_send : std_logic;
		signal kArrayO_ack : std_logic := '0';
		signal kArrayO_rdy : std_logic := '0';
		signal kArrayO_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_Mean_Shift_Main_main_loop_cal_kArray_evaluation : Mean_Shift_Main_main_loop_cal_kArray_evaluation 
	port map(
		
		kArrayO_data => kArrayO_data,
		kArrayO_send => kArrayO_send,
		kArrayO_ack => kArrayO_ack,
		kArrayO_rdy => kArrayO_rdy,
		kArrayO_count => kArrayO_count,
		CLK => CLK,
		reset => reset);
	
	-- Input(s) queues

	-- Clock process
	
	clockProcess : process
	begin
	wait for OFFSET;
		clockLOOP : loop
			CLK <= '0';
			wait for (PERIOD - (PERIOD * DUTY_CYCLE));
			CLK <= '1';
			wait for (PERIOD * DUTY_CYCLE);
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
	
	-- Output(s) waveform Generation
	kArrayO_ack <= kArrayO_send;
	kArrayO_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_kArrayO : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: kArrayO Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO) and kArrayO_send = '1') then
				readline(sim_file_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (kArrayO_data  = std_logic_vector(to_signed(input_bit, 32)))
						report "on port kArrayO incorrect value computed : " & str(to_integer(signed(kArrayO_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_kArrayO)
						severity failure;
						
						assert (kArrayO_data /= std_logic_vector(to_signed(input_bit, 32)))
						report "on port kArrayO correct value computed : " & str(to_integer(signed(kArrayO_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_kArrayO)
						severity note;
						sequence_kArrayO := sequence_kArrayO + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb; 
