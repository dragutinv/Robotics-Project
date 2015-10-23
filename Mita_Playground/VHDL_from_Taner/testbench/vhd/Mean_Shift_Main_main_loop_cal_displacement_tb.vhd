-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: Mean_Shift_Main_main_loop_cal_displacement 
-- Date: 2015/10/14 15:56:26
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Mean_Shift_Main_main_loop_cal_displacement_tb is
end Mean_Shift_Main_main_loop_cal_displacement_tb;

architecture arch_Mean_Shift_Main_main_loop_cal_displacement_tb of Mean_Shift_Main_main_loop_cal_displacement_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Mean_Shift_Main_main_loop_cal_displacement
	port(
	    weights_data : IN std_logic_vector(31 downto 0);
	    weights_send : IN std_logic;
	    weights_ack : OUT std_logic;
	    weights_count : IN std_logic_vector(15 downto 0);
	    kDerArray_data : IN std_logic_vector(31 downto 0);
	    kDerArray_send : IN std_logic;
	    kDerArray_ack : OUT std_logic;
	    kDerArray_count : IN std_logic_vector(15 downto 0);
	    dx_data : OUT std_logic_vector(31 downto 0);
	    dx_send : OUT std_logic;
	    dx_ack : IN std_logic;
	    dx_rdy : IN std_logic;
	    dx_count : OUT std_logic_vector(15 downto 0);
	    dy_data : OUT std_logic_vector(31 downto 0);
	    dy_send : OUT std_logic;
	    dy_ack : IN std_logic;
	    dy_rdy : IN std_logic;
	    dy_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component Mean_Shift_Main_main_loop_cal_displacement;
	
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
		signal tb_FSM_weights : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_displacement_weights : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_displacement_weights.txt";
		signal weights_data : std_logic_vector(31 downto 0) := (others => '0');
		signal weights_send : std_logic := '0';
		signal weights_ack : std_logic;
		signal weights_rdy : std_logic;
		signal weights_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_weights_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_weights_send : std_logic := '0';
		signal q_weights_ack : std_logic;
		signal q_weights_rdy : std_logic;
		signal q_weights_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_kDerArray : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_displacement_kDerArray : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_displacement_kDerArray.txt";
		signal kDerArray_data : std_logic_vector(31 downto 0) := (others => '0');
		signal kDerArray_send : std_logic := '0';
		signal kDerArray_ack : std_logic;
		signal kDerArray_rdy : std_logic;
		signal kDerArray_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_kDerArray_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_kDerArray_send : std_logic := '0';
		signal q_kDerArray_ack : std_logic;
		signal q_kDerArray_rdy : std_logic;
		signal q_kDerArray_count : std_logic_vector(15 downto 0) := (others => '0');
		
		-- Component Output(s) signals
		signal tb_FSM_dx : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_displacement_dx : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_displacement_dx.txt";
		signal dx_data : std_logic_vector(31 downto 0) := (others => '0');
		signal dx_send : std_logic;
		signal dx_ack : std_logic := '0';
		signal dx_rdy : std_logic := '0';
		signal dx_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_dy : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_displacement_dy : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_displacement_dy.txt";
		signal dy_data : std_logic_vector(31 downto 0) := (others => '0');
		signal dy_send : std_logic;
		signal dy_ack : std_logic := '0';
		signal dy_rdy : std_logic := '0';
		signal dy_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_Mean_Shift_Main_main_loop_cal_displacement : Mean_Shift_Main_main_loop_cal_displacement 
	port map(
		weights_data => q_weights_data,
		weights_send => q_weights_send,
		weights_ack => q_weights_ack,
		weights_count => q_weights_count,
		
		kDerArray_data => q_kDerArray_data,
		kDerArray_send => q_kDerArray_send,
		kDerArray_ack => q_kDerArray_ack,
		kDerArray_count => q_kDerArray_count,
		
		dx_data => dx_data,
		dx_send => dx_send,
		dx_ack => dx_ack,
		dx_rdy => dx_rdy,
		dx_count => dx_count,
		
		dy_data => dy_data,
		dy_send => dy_send,
		dy_ack => dy_ack,
		dy_rdy => dy_rdy,
		dy_count => dy_count,
		CLK => CLK,
		reset => reset);
	
	-- Input(s) queues
	q_weights : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
	port map(
		OUT_DATA => q_weights_data,
		OUT_SEND => q_weights_send,
		OUT_ACK => q_weights_ack,
		OUT_COUNT => q_weights_count,
	
		IN_DATA => weights_data,
		IN_SEND => weights_send,
		IN_ACK => weights_ack,
		IN_RDY => weights_rdy,
		IN_COUNT => weights_count,

		CLK => CLK,
		reset => reset);
	
	q_kDerArray : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
	port map(
		OUT_DATA => q_kDerArray_data,
		OUT_SEND => q_kDerArray_send,
		OUT_ACK => q_kDerArray_ack,
		OUT_COUNT => q_kDerArray_count,
	
		IN_DATA => kDerArray_data,
		IN_SEND => kDerArray_send,
		IN_ACK => kDerArray_ack,
		IN_RDY => kDerArray_rdy,
		IN_COUNT => kDerArray_count,

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
		-- Input port: weights Waveform Generation
			case tb_FSM_weights is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_weights <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_displacement_weights)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_displacement_weights, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							weights_data <= std_logic_vector(to_signed(input_bit, 32));
							weights_send <= '1';
							tb_FSM_weights <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_displacement_weights)) and weights_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_displacement_weights, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							weights_data <= std_logic_vector(to_signed(input_bit, 32));
							weights_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_displacement_weights)) then
						weights_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: kDerArray Waveform Generation
			case tb_FSM_kDerArray is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_kDerArray <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_displacement_kDerArray)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_displacement_kDerArray, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							kDerArray_data <= std_logic_vector(to_signed(input_bit, 32));
							kDerArray_send <= '1';
							tb_FSM_kDerArray <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_displacement_kDerArray)) and kDerArray_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_displacement_kDerArray, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							kDerArray_data <= std_logic_vector(to_signed(input_bit, 32));
							kDerArray_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_displacement_kDerArray)) then
						kDerArray_send <= '0';
					end if;
				when others => null;
			end case;
		end if;
	end process WaveGen_Proc_In;
	
	-- Output(s) waveform Generation
	dx_ack <= dx_send;
	dx_rdy <= '1';
	
	dy_ack <= dy_send;
	dy_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_dx : integer := 0;
		
		variable sequence_dy : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: dx Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_displacement_dx) and dx_send = '1') then
				readline(sim_file_Mean_Shift_Main_main_loop_cal_displacement_dx, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (dx_data  = std_logic_vector(to_signed(input_bit, 32)))
						report "on port dx incorrect value computed : " & str(to_integer(signed(dx_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_dx)
						severity failure;
						
						assert (dx_data /= std_logic_vector(to_signed(input_bit, 32)))
						report "on port dx correct value computed : " & str(to_integer(signed(dx_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_dx)
						severity note;
						sequence_dx := sequence_dx + 1;
					end if;
			end if;
		
		-- Output port: dy Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_displacement_dy) and dy_send = '1') then
				readline(sim_file_Mean_Shift_Main_main_loop_cal_displacement_dy, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (dy_data  = std_logic_vector(to_signed(input_bit, 32)))
						report "on port dy incorrect value computed : " & str(to_integer(signed(dy_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_dy)
						severity failure;
						
						assert (dy_data /= std_logic_vector(to_signed(input_bit, 32)))
						report "on port dy correct value computed : " & str(to_integer(signed(dy_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_dy)
						severity note;
						sequence_dy := sequence_dy + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Mean_Shift_Main_main_loop_cal_displacement_tb; 
