-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: Actor_3 
-- Date: 2015/10/31 11:10:49
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Actor_3_tb is
end Actor_3_tb;

architecture arch_Actor_3_tb of Actor_3_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Actor_3
	port(
	    result_data : IN std_logic_vector(7 downto 0);
	    result_send : IN std_logic;
	    result_ack : OUT std_logic;
	    result_count : IN std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component Actor_3;
	
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
		signal tb_FSM_result : tb_type;
		file sim_file_Actor_3_result : text is "fifoTraces/Actor_3_result.txt";
		signal result_data : std_logic_vector(7 downto 0) := (others => '0');
		signal result_send : std_logic := '0';
		signal result_ack : std_logic;
		signal result_rdy : std_logic;
		signal result_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_result_data : std_logic_vector(7 downto 0) := (others => '0');
		signal q_result_send : std_logic := '0';
		signal q_result_ack : std_logic;
		signal q_result_rdy : std_logic;
		signal q_result_count : std_logic_vector(15 downto 0) := (others => '0');
		
		-- Component Output(s) signals
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_Actor_3 : Actor_3 
	port map(
		result_data => q_result_data,
		result_send => q_result_send,
		result_ack => q_result_ack,
		result_count => q_result_count,
		
		CLK => CLK,
		reset => reset);
	
	-- Input(s) queues
	q_result : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 8)
	port map(
		OUT_DATA => q_result_data,
		OUT_SEND => q_result_send,
		OUT_ACK => q_result_ack,
		OUT_COUNT => q_result_count,
	
		IN_DATA => result_data,
		IN_SEND => result_send,
		IN_ACK => result_ack,
		IN_RDY => result_rdy,
		IN_COUNT => result_count,

		CLK => CLK,
		reset => reset);

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
		-- Input port: result Waveform Generation
			case tb_FSM_result is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_result <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Actor_3_result)) then
						readline(sim_file_Actor_3_result, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							result_data <= std_logic_vector(to_signed(input_bit, 8));
							result_send <= '1';
							tb_FSM_result <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Actor_3_result)) and result_ack = '1' then
						readline(sim_file_Actor_3_result, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							result_data <= std_logic_vector(to_signed(input_bit, 8));
							result_send <= '1';
						end if;
					elsif (endfile (sim_file_Actor_3_result)) then
						result_send <= '0';
					end if;
				when others => null;
			end case;
		end if;
	end process WaveGen_Proc_In;
	
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
	begin
		if (rising_edge(CLK)) then
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Actor_3_tb; 
