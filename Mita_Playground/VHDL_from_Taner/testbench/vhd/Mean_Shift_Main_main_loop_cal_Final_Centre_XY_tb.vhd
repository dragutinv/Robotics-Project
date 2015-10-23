-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: Mean_Shift_Main_main_loop_cal_Final_Centre_XY 
-- Date: 2015/10/14 15:56:29
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb is
end Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb;

architecture arch_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb of Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Mean_Shift_Main_main_loop_cal_Final_Centre_XY
	port(
	    X_in_data : IN std_logic_vector(31 downto 0);
	    X_in_send : IN std_logic;
	    X_in_ack : OUT std_logic;
	    X_in_count : IN std_logic_vector(15 downto 0);
	    Y_in_data : IN std_logic_vector(31 downto 0);
	    Y_in_send : IN std_logic;
	    Y_in_ack : OUT std_logic;
	    Y_in_count : IN std_logic_vector(15 downto 0);
	    loop_stat_data : IN std_logic;
	    loop_stat_send : IN std_logic;
	    loop_stat_ack : OUT std_logic;
	    loop_stat_count : IN std_logic_vector(15 downto 0);
	    X_out_data : OUT std_logic_vector(15 downto 0);
	    X_out_send : OUT std_logic;
	    X_out_ack : IN std_logic;
	    X_out_rdy : IN std_logic;
	    X_out_count : OUT std_logic_vector(15 downto 0);
	    Y_out_data : OUT std_logic_vector(15 downto 0);
	    Y_out_send : OUT std_logic;
	    Y_out_ack : IN std_logic;
	    Y_out_rdy : IN std_logic;
	    Y_out_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component Mean_Shift_Main_main_loop_cal_Final_Centre_XY;
	
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
		signal tb_FSM_X_in : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in.txt";
		signal X_in_data : std_logic_vector(31 downto 0) := (others => '0');
		signal X_in_send : std_logic := '0';
		signal X_in_ack : std_logic;
		signal X_in_rdy : std_logic;
		signal X_in_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_X_in_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_X_in_send : std_logic := '0';
		signal q_X_in_ack : std_logic;
		signal q_X_in_rdy : std_logic;
		signal q_X_in_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_Y_in : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in.txt";
		signal Y_in_data : std_logic_vector(31 downto 0) := (others => '0');
		signal Y_in_send : std_logic := '0';
		signal Y_in_ack : std_logic;
		signal Y_in_rdy : std_logic;
		signal Y_in_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_Y_in_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_Y_in_send : std_logic := '0';
		signal q_Y_in_ack : std_logic;
		signal q_Y_in_rdy : std_logic;
		signal q_Y_in_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_loop_stat : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat.txt";
		signal loop_stat_data : std_logic := '0';
		signal loop_stat_send : std_logic := '0';
		signal loop_stat_ack : std_logic;
		signal loop_stat_rdy : std_logic;
		signal loop_stat_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_loop_stat_data : std_logic := '0';
		signal q_loop_stat_send : std_logic := '0';
		signal q_loop_stat_ack : std_logic;
		signal q_loop_stat_rdy : std_logic;
		signal q_loop_stat_count : std_logic_vector(15 downto 0) := (others => '0');
		
		-- Component Output(s) signals
		signal tb_FSM_X_out : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out.txt";
		signal X_out_data : std_logic_vector(15 downto 0) := (others => '0');
		signal X_out_send : std_logic;
		signal X_out_ack : std_logic := '0';
		signal X_out_rdy : std_logic := '0';
		signal X_out_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_Y_out : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out.txt";
		signal Y_out_data : std_logic_vector(15 downto 0) := (others => '0');
		signal Y_out_send : std_logic;
		signal Y_out_ack : std_logic := '0';
		signal Y_out_rdy : std_logic := '0';
		signal Y_out_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY : Mean_Shift_Main_main_loop_cal_Final_Centre_XY 
	port map(
		X_in_data => q_X_in_data,
		X_in_send => q_X_in_send,
		X_in_ack => q_X_in_ack,
		X_in_count => q_X_in_count,
		
		Y_in_data => q_Y_in_data,
		Y_in_send => q_Y_in_send,
		Y_in_ack => q_Y_in_ack,
		Y_in_count => q_Y_in_count,
		
		loop_stat_data => q_loop_stat_data,
		loop_stat_send => q_loop_stat_send,
		loop_stat_ack => q_loop_stat_ack,
		loop_stat_count => q_loop_stat_count,
		
		X_out_data => X_out_data,
		X_out_send => X_out_send,
		X_out_ack => X_out_ack,
		X_out_rdy => X_out_rdy,
		X_out_count => X_out_count,
		
		Y_out_data => Y_out_data,
		Y_out_send => Y_out_send,
		Y_out_ack => Y_out_ack,
		Y_out_rdy => Y_out_rdy,
		Y_out_count => Y_out_count,
		CLK => CLK,
		reset => reset);
	
	-- Input(s) queues
	q_X_in : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
	port map(
		OUT_DATA => q_X_in_data,
		OUT_SEND => q_X_in_send,
		OUT_ACK => q_X_in_ack,
		OUT_COUNT => q_X_in_count,
	
		IN_DATA => X_in_data,
		IN_SEND => X_in_send,
		IN_ACK => X_in_ack,
		IN_RDY => X_in_rdy,
		IN_COUNT => X_in_count,

		CLK => CLK,
		reset => reset);
	
	q_Y_in : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
	port map(
		OUT_DATA => q_Y_in_data,
		OUT_SEND => q_Y_in_send,
		OUT_ACK => q_Y_in_ack,
		OUT_COUNT => q_Y_in_count,
	
		IN_DATA => Y_in_data,
		IN_SEND => Y_in_send,
		IN_ACK => Y_in_ack,
		IN_RDY => Y_in_rdy,
		IN_COUNT => Y_in_count,

		CLK => CLK,
		reset => reset);
	
	q_loop_stat : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 1)
	port map(
		OUT_DATA(0) => q_loop_stat_data,
		OUT_SEND => q_loop_stat_send,
		OUT_ACK => q_loop_stat_ack,
		OUT_COUNT => q_loop_stat_count,
	
		IN_DATA(0)  => loop_stat_data,
		IN_SEND => loop_stat_send,
		IN_ACK => loop_stat_ack,
		IN_RDY => loop_stat_rdy,
		IN_COUNT => loop_stat_count,

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
		-- Input port: X_in Waveform Generation
			case tb_FSM_X_in is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_X_in <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							X_in_data <= std_logic_vector(to_unsigned(input_bit, 32));
							X_in_send <= '1';
							tb_FSM_X_in <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in)) and X_in_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							X_in_data <= std_logic_vector(to_unsigned(input_bit, 32));
							X_in_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in)) then
						X_in_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: Y_in Waveform Generation
			case tb_FSM_Y_in is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_Y_in <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							Y_in_data <= std_logic_vector(to_unsigned(input_bit, 32));
							Y_in_send <= '1';
							tb_FSM_Y_in <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in)) and Y_in_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							Y_in_data <= std_logic_vector(to_unsigned(input_bit, 32));
							Y_in_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in)) then
						Y_in_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: loop_stat Waveform Generation
			case tb_FSM_loop_stat is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_loop_stat <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							if (input_bit = 1) then
								loop_stat_data <= '1';
							else
								loop_stat_data <= '0';
							end if;
							loop_stat_send <= '1';
							tb_FSM_loop_stat <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat)) and loop_stat_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							if (input_bit = 1) then
								loop_stat_data <= '1';
							else
								loop_stat_data <= '0';
							end if;
							loop_stat_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat)) then
						loop_stat_send <= '0';
					end if;
				when others => null;
			end case;
		end if;
	end process WaveGen_Proc_In;
	
	-- Output(s) waveform Generation
	X_out_ack <= X_out_send;
	X_out_rdy <= '1';
	
	Y_out_ack <= Y_out_send;
	Y_out_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_X_out : integer := 0;
		
		variable sequence_Y_out : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: X_out Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out) and X_out_send = '1') then
				readline(sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (X_out_data  = std_logic_vector(to_unsigned(input_bit, 16)))
						report "on port X_out incorrect value computed : " & str(to_integer(unsigned(X_out_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_X_out)
						severity failure;
						
						assert (X_out_data /= std_logic_vector(to_unsigned(input_bit, 16)))
						report "on port X_out correct value computed : " & str(to_integer(unsigned(X_out_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_X_out)
						severity note;
						sequence_X_out := sequence_X_out + 1;
					end if;
			end if;
		
		-- Output port: Y_out Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out) and Y_out_send = '1') then
				readline(sim_file_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (Y_out_data  = std_logic_vector(to_unsigned(input_bit, 16)))
						report "on port Y_out incorrect value computed : " & str(to_integer(unsigned(Y_out_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_Y_out)
						severity failure;
						
						assert (Y_out_data /= std_logic_vector(to_unsigned(input_bit, 16)))
						report "on port Y_out correct value computed : " & str(to_integer(unsigned(Y_out_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_Y_out)
						severity note;
						sequence_Y_out := sequence_Y_out + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb; 
