-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: Actor_2 
-- Date: 2015/10/31 11:10:49
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Actor_2_tb is
end Actor_2_tb;

architecture arch_Actor_2_tb of Actor_2_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Actor_2
	port(
	    source2_data : OUT std_logic_vector(7 downto 0);
	    source2_send : OUT std_logic;
	    source2_ack : IN std_logic;
	    source2_rdy : IN std_logic;
	    source2_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component Actor_2;
	
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
		signal tb_FSM_source2 : tb_type;
		file sim_file_Actor_2_source2 : text is "fifoTraces/Actor_2_source2.txt";
		signal source2_data : std_logic_vector(7 downto 0) := (others => '0');
		signal source2_send : std_logic;
		signal source2_ack : std_logic := '0';
		signal source2_rdy : std_logic := '0';
		signal source2_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_Actor_2 : Actor_2 
	port map(
		
		source2_data => source2_data,
		source2_send => source2_send,
		source2_ack => source2_ack,
		source2_rdy => source2_rdy,
		source2_count => source2_count,
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
	source2_ack <= source2_send;
	source2_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_source2 : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: source2 Waveform Generation
			if (not endfile (sim_file_Actor_2_source2) and source2_send = '1') then
				readline(sim_file_Actor_2_source2, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (source2_data  = std_logic_vector(to_signed(input_bit, 8)))
						report "on port source2 incorrect value computed : " & str(to_integer(signed(source2_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_source2)
						severity failure;
						
						assert (source2_data /= std_logic_vector(to_signed(input_bit, 8)))
						report "on port source2 correct value computed : " & str(to_integer(signed(source2_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_source2)
						severity note;
						sequence_source2 := sequence_source2 + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Actor_2_tb; 
