-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Network: Generation 
-- Date: 2015/11/17 18:39:22
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Generation_tb is
end Generation_tb;

architecture arch_Generation_tb of Generation_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Generation
	port(
	    STREAM_data : IN std_logic_vector(7 downto 0);
	    STREAM_send : IN std_logic;
	    STREAM_ack : OUT std_logic;
	    STREAM_count : IN std_logic_vector(15 downto 0);
	    YUV_data : OUT std_logic_vector(7 downto 0);
	    YUV_send : OUT std_logic;
	    YUV_ack : IN std_logic;
	    YUV_rdy : IN std_logic;
	    YUV_count : OUT std_logic_vector(15 downto 0);
	    CLK : in std_logic;
	    RESET: IN std_logic);
	end component Generation;
	
		-----------------------------------------------------------------------
		-- Achitecure signals & constants
		-----------------------------------------------------------------------
		constant CLK_PERIOD : time := 100 ns;
		constant CLK_DUTY_CYCLE : real := 0.5;
		constant OFFSET : time := 100 ns;
		-- Severity level and testbench type types
		type severity_level is (note, warning, error, failure);
		type tb_type is (after_reset, read_file, CheckRead);
		
		-- Component input(s) signals
		signal tb_FSM_STREAM : tb_type;
		file sim_file_Generation_STREAM : text is "fifoTraces/Generation_STREAM.txt";
		signal STREAM_data : std_logic_vector(7 downto 0) := (others => '0');
		signal STREAM_send : std_logic := '0';
		signal STREAM_ack : std_logic;
		signal STREAM_rdy : std_logic;
		signal STREAM_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_STREAM_data : std_logic_vector(7 downto 0) := (others => '0');
		signal q_STREAM_send : std_logic := '0';
		signal q_STREAM_ack : std_logic;
		signal q_STREAM_rdy : std_logic;
		signal q_STREAM_count : std_logic_vector(15 downto 0) := (others => '0');
		
		-- Component Output(s) signals
		signal tb_FSM_YUV : tb_type;
		file sim_file_Generation_YUV : text is "fifoTraces/Generation_YUV.txt";
		signal YUV_data : std_logic_vector(7 downto 0) := (others => '0');
		signal YUV_send : std_logic;
		signal YUV_ack : std_logic := '0';
		signal YUV_rdy : std_logic := '0';
		signal YUV_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_Generation : Generation 
	port map(
		STREAM_data => q_STREAM_data,
		STREAM_send => q_STREAM_send,
		STREAM_ack => q_STREAM_ack,
		STREAM_count => q_STREAM_count,
		
		YUV_data => YUV_data,
		YUV_send => YUV_send,
		YUV_ack => YUV_ack,
		YUV_rdy => YUV_rdy,
		YUV_count => YUV_count,
		CLK => CLK,
		reset => reset);
	
	-- Input(s) queues
	q_STREAM : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 8)
	port map(
		OUT_DATA => q_STREAM_data,
		OUT_SEND => q_STREAM_send,
		OUT_ACK => q_STREAM_ack,
		OUT_COUNT => q_STREAM_count,
	
		IN_DATA => STREAM_data,
		IN_SEND => STREAM_send,
		IN_ACK => STREAM_ack,
		IN_RDY => STREAM_rdy,
		IN_COUNT => STREAM_count,

		CLK => CLK,
		reset => reset);

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
		-- Input port: STREAM Waveform Generation
			case tb_FSM_STREAM is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_STREAM <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Generation_STREAM)) then
						readline(sim_file_Generation_STREAM, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							STREAM_data <= std_logic_vector(to_signed(input_bit, 8));
							STREAM_send <= '1';
							tb_FSM_STREAM <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Generation_STREAM)) and STREAM_ack = '1' then
						readline(sim_file_Generation_STREAM, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							STREAM_data <= std_logic_vector(to_signed(input_bit, 8));
							STREAM_send <= '1';
						end if;
					elsif (endfile (sim_file_Generation_STREAM)) then
						STREAM_send <= '0';
					end if;
				when others => null;
			end case;
		end if;
	end process WaveGen_Proc_In;
	
	-- Output(s) waveform Generation
	YUV_ack <= YUV_send;
	YUV_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_YUV : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: YUV Waveform Generation
			if (not endfile (sim_file_Generation_YUV) and YUV_send = '1') then
				readline(sim_file_Generation_YUV, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (YUV_data  = std_logic_vector(to_signed(input_bit, 8)))
						report "on port YUV incorrect value computed : " & str(to_integer(signed(YUV_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_YUV)
						severity failure;
						
						assert (YUV_data /= std_logic_vector(to_signed(input_bit, 8)))
						report "on port YUV correct value computed : " & str(to_integer(signed(YUV_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_YUV)
						severity note;
						sequence_YUV := sequence_YUV + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Generation_tb; 
