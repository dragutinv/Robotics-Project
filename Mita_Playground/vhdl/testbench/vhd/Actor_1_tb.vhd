-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: Actor_1 
-- Date: 2015/10/31 11:10:48
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Actor_1_tb is
end Actor_1_tb;

architecture arch_Actor_1_tb of Actor_1_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Actor_1
	port(
	    source1_data : OUT std_logic_vector(7 downto 0);
	    source1_send : OUT std_logic;
	    source1_ack : IN std_logic;
	    source1_rdy : IN std_logic;
	    source1_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component Actor_1;
	
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
		signal tb_FSM_source1 : tb_type;
		file sim_file_Actor_1_source1 : text is "fifoTraces/Actor_1_source1.txt";
		signal source1_data : std_logic_vector(7 downto 0) := (others => '0');
		signal source1_send : std_logic;
		signal source1_ack : std_logic := '0';
		signal source1_rdy : std_logic := '0';
		signal source1_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_Actor_1 : Actor_1 
	port map(
		
		source1_data => source1_data,
		source1_send => source1_send,
		source1_ack => source1_ack,
		source1_rdy => source1_rdy,
		source1_count => source1_count,
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
	source1_ack <= source1_send;
	source1_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_source1 : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: source1 Waveform Generation
			if (not endfile (sim_file_Actor_1_source1) and source1_send = '1') then
				readline(sim_file_Actor_1_source1, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (source1_data  = std_logic_vector(to_signed(input_bit, 8)))
						report "on port source1 incorrect value computed : " & str(to_integer(signed(source1_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_source1)
						severity failure;
						
						assert (source1_data /= std_logic_vector(to_signed(input_bit, 8)))
						report "on port source1 correct value computed : " & str(to_integer(signed(source1_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_source1)
						severity note;
						sequence_source1 := sequence_source1 + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Actor_1_tb; 
