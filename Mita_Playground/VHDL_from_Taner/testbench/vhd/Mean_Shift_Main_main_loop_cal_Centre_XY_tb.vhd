-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: Mean_Shift_Main_main_loop_cal_Centre_XY 
-- Date: 2015/10/14 15:56:28
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Mean_Shift_Main_main_loop_cal_Centre_XY_tb is
end Mean_Shift_Main_main_loop_cal_Centre_XY_tb;

architecture arch_Mean_Shift_Main_main_loop_cal_Centre_XY_tb of Mean_Shift_Main_main_loop_cal_Centre_XY_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Mean_Shift_Main_main_loop_cal_Centre_XY
	port(
	    dx_i_data : IN std_logic_vector(31 downto 0);
	    dx_i_send : IN std_logic;
	    dx_i_ack : OUT std_logic;
	    dx_i_count : IN std_logic_vector(15 downto 0);
	    dy_i_data : IN std_logic_vector(31 downto 0);
	    dy_i_send : IN std_logic;
	    dy_i_ack : OUT std_logic;
	    dy_i_count : IN std_logic_vector(15 downto 0);
	    centre_x_out_data : OUT std_logic_vector(31 downto 0);
	    centre_x_out_send : OUT std_logic;
	    centre_x_out_ack : IN std_logic;
	    centre_x_out_rdy : IN std_logic;
	    centre_x_out_count : OUT std_logic_vector(15 downto 0);
	    centre_y_out_data : OUT std_logic_vector(31 downto 0);
	    centre_y_out_send : OUT std_logic;
	    centre_y_out_ack : IN std_logic;
	    centre_y_out_rdy : IN std_logic;
	    centre_y_out_count : OUT std_logic_vector(15 downto 0);
	    loop_status_data : OUT std_logic;
	    loop_status_send : OUT std_logic;
	    loop_status_ack : IN std_logic;
	    loop_status_rdy : IN std_logic;
	    loop_status_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component Mean_Shift_Main_main_loop_cal_Centre_XY;
	
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
		signal tb_FSM_dx_i : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i.txt";
		signal dx_i_data : std_logic_vector(31 downto 0) := (others => '0');
		signal dx_i_send : std_logic := '0';
		signal dx_i_ack : std_logic;
		signal dx_i_rdy : std_logic;
		signal dx_i_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_dx_i_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_dx_i_send : std_logic := '0';
		signal q_dx_i_ack : std_logic;
		signal q_dx_i_rdy : std_logic;
		signal q_dx_i_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_dy_i : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i.txt";
		signal dy_i_data : std_logic_vector(31 downto 0) := (others => '0');
		signal dy_i_send : std_logic := '0';
		signal dy_i_ack : std_logic;
		signal dy_i_rdy : std_logic;
		signal dy_i_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_dy_i_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_dy_i_send : std_logic := '0';
		signal q_dy_i_ack : std_logic;
		signal q_dy_i_rdy : std_logic;
		signal q_dy_i_count : std_logic_vector(15 downto 0) := (others => '0');
		
		-- Component Output(s) signals
		signal tb_FSM_centre_x_out : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out.txt";
		signal centre_x_out_data : std_logic_vector(31 downto 0) := (others => '0');
		signal centre_x_out_send : std_logic;
		signal centre_x_out_ack : std_logic := '0';
		signal centre_x_out_rdy : std_logic := '0';
		signal centre_x_out_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_centre_y_out : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out.txt";
		signal centre_y_out_data : std_logic_vector(31 downto 0) := (others => '0');
		signal centre_y_out_send : std_logic;
		signal centre_y_out_ack : std_logic := '0';
		signal centre_y_out_rdy : std_logic := '0';
		signal centre_y_out_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_loop_status : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status.txt";
		signal loop_status_data : std_logic := '0';
		signal loop_status_send : std_logic;
		signal loop_status_ack : std_logic := '0';
		signal loop_status_rdy : std_logic := '0';
		signal loop_status_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_Mean_Shift_Main_main_loop_cal_Centre_XY : Mean_Shift_Main_main_loop_cal_Centre_XY 
	port map(
		dx_i_data => q_dx_i_data,
		dx_i_send => q_dx_i_send,
		dx_i_ack => q_dx_i_ack,
		dx_i_count => q_dx_i_count,
		
		dy_i_data => q_dy_i_data,
		dy_i_send => q_dy_i_send,
		dy_i_ack => q_dy_i_ack,
		dy_i_count => q_dy_i_count,
		
		centre_x_out_data => centre_x_out_data,
		centre_x_out_send => centre_x_out_send,
		centre_x_out_ack => centre_x_out_ack,
		centre_x_out_rdy => centre_x_out_rdy,
		centre_x_out_count => centre_x_out_count,
		
		centre_y_out_data => centre_y_out_data,
		centre_y_out_send => centre_y_out_send,
		centre_y_out_ack => centre_y_out_ack,
		centre_y_out_rdy => centre_y_out_rdy,
		centre_y_out_count => centre_y_out_count,
		
		loop_status_data => loop_status_data,
		loop_status_send => loop_status_send,
		loop_status_ack => loop_status_ack,
		loop_status_rdy => loop_status_rdy,
		loop_status_count => loop_status_count,
		CLK => CLK,
		reset => reset);
	
	-- Input(s) queues
	q_dx_i : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
	port map(
		OUT_DATA => q_dx_i_data,
		OUT_SEND => q_dx_i_send,
		OUT_ACK => q_dx_i_ack,
		OUT_COUNT => q_dx_i_count,
	
		IN_DATA => dx_i_data,
		IN_SEND => dx_i_send,
		IN_ACK => dx_i_ack,
		IN_RDY => dx_i_rdy,
		IN_COUNT => dx_i_count,

		CLK => CLK,
		reset => reset);
	
	q_dy_i : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
	port map(
		OUT_DATA => q_dy_i_data,
		OUT_SEND => q_dy_i_send,
		OUT_ACK => q_dy_i_ack,
		OUT_COUNT => q_dy_i_count,
	
		IN_DATA => dy_i_data,
		IN_SEND => dy_i_send,
		IN_ACK => dy_i_ack,
		IN_RDY => dy_i_rdy,
		IN_COUNT => dy_i_count,

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
		-- Input port: dx_i Waveform Generation
			case tb_FSM_dx_i is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_dx_i <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							dx_i_data <= std_logic_vector(to_signed(input_bit, 32));
							dx_i_send <= '1';
							tb_FSM_dx_i <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i)) and dx_i_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							dx_i_data <= std_logic_vector(to_signed(input_bit, 32));
							dx_i_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i)) then
						dx_i_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: dy_i Waveform Generation
			case tb_FSM_dy_i is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_dy_i <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							dy_i_data <= std_logic_vector(to_signed(input_bit, 32));
							dy_i_send <= '1';
							tb_FSM_dy_i <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i)) and dy_i_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							dy_i_data <= std_logic_vector(to_signed(input_bit, 32));
							dy_i_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i)) then
						dy_i_send <= '0';
					end if;
				when others => null;
			end case;
		end if;
	end process WaveGen_Proc_In;
	
	-- Output(s) waveform Generation
	centre_x_out_ack <= centre_x_out_send;
	centre_x_out_rdy <= '1';
	
	centre_y_out_ack <= centre_y_out_send;
	centre_y_out_rdy <= '1';
	
	loop_status_ack <= loop_status_send;
	loop_status_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_centre_x_out : integer := 0;
		
		variable sequence_centre_y_out : integer := 0;
		
		variable sequence_loop_status : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: centre_x_out Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out) and centre_x_out_send = '1') then
				readline(sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (centre_x_out_data  = std_logic_vector(to_unsigned(input_bit, 32)))
						report "on port centre_x_out incorrect value computed : " & str(to_integer(unsigned(centre_x_out_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_centre_x_out)
						severity failure;
						
						assert (centre_x_out_data /= std_logic_vector(to_unsigned(input_bit, 32)))
						report "on port centre_x_out correct value computed : " & str(to_integer(unsigned(centre_x_out_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_centre_x_out)
						severity note;
						sequence_centre_x_out := sequence_centre_x_out + 1;
					end if;
			end if;
		
		-- Output port: centre_y_out Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out) and centre_y_out_send = '1') then
				readline(sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (centre_y_out_data  = std_logic_vector(to_unsigned(input_bit, 32)))
						report "on port centre_y_out incorrect value computed : " & str(to_integer(unsigned(centre_y_out_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_centre_y_out)
						severity failure;
						
						assert (centre_y_out_data /= std_logic_vector(to_unsigned(input_bit, 32)))
						report "on port centre_y_out correct value computed : " & str(to_integer(unsigned(centre_y_out_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_centre_y_out)
						severity note;
						sequence_centre_y_out := sequence_centre_y_out + 1;
					end if;
			end if;
		
		-- Output port: loop_status Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status) and loop_status_send = '1') then
				readline(sim_file_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						if (input_bit = 1) then
							assert (loop_status_data = '1')
							report "on port loop_status incorrect value computed : '0' instead of : '1' sequence " & str(sequence_loop_status)
							severity failure;
							
							assert (loop_status_data = '0')
							report "on port loop_status correct value computed : '1' instead of : '1' sequence " & str(sequence_loop_status)
							severity note;
						else
							assert (loop_status_data = '0')
							report "on port loop_status incorrect value computed : '1' instead of : '0' sequence " & str(sequence_loop_status)
							severity failure;
							
							assert (loop_status_data = '1')
							report "on port loop_status correct value computed : '0' instead of : '0' sequence " & str(sequence_loop_status)
							severity note;
						end if;
						sequence_loop_status := sequence_loop_status + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Mean_Shift_Main_main_loop_cal_Centre_XY_tb; 
