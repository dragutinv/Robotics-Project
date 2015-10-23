-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: Mean_Shift_Main_main_loop_cal_update_weight 
-- Date: 2015/10/14 15:56:21
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Mean_Shift_Main_main_loop_cal_update_weight_tb is
end Mean_Shift_Main_main_loop_cal_update_weight_tb;

architecture arch_Mean_Shift_Main_main_loop_cal_update_weight_tb of Mean_Shift_Main_main_loop_cal_update_weight_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Mean_Shift_Main_main_loop_cal_update_weight
	port(
	    QuModel_data : IN std_logic_vector(31 downto 0);
	    QuModel_send : IN std_logic;
	    QuModel_ack : OUT std_logic;
	    QuModel_count : IN std_logic_vector(15 downto 0);
	    PuModel_data : IN std_logic_vector(31 downto 0);
	    PuModel_send : IN std_logic;
	    PuModel_ack : OUT std_logic;
	    PuModel_count : IN std_logic_vector(15 downto 0);
	    bin_data : IN std_logic_vector(31 downto 0);
	    bin_send : IN std_logic;
	    bin_ack : OUT std_logic;
	    bin_count : IN std_logic_vector(15 downto 0);
	    weights_data : OUT std_logic_vector(31 downto 0);
	    weights_send : OUT std_logic;
	    weights_ack : IN std_logic;
	    weights_rdy : IN std_logic;
	    weights_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component Mean_Shift_Main_main_loop_cal_update_weight;
	
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
		signal tb_FSM_QuModel : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_weight_QuModel : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_update_weight_QuModel.txt";
		signal QuModel_data : std_logic_vector(31 downto 0) := (others => '0');
		signal QuModel_send : std_logic := '0';
		signal QuModel_ack : std_logic;
		signal QuModel_rdy : std_logic;
		signal QuModel_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_QuModel_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_QuModel_send : std_logic := '0';
		signal q_QuModel_ack : std_logic;
		signal q_QuModel_rdy : std_logic;
		signal q_QuModel_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_PuModel : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_weight_PuModel : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_update_weight_PuModel.txt";
		signal PuModel_data : std_logic_vector(31 downto 0) := (others => '0');
		signal PuModel_send : std_logic := '0';
		signal PuModel_ack : std_logic;
		signal PuModel_rdy : std_logic;
		signal PuModel_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_PuModel_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_PuModel_send : std_logic := '0';
		signal q_PuModel_ack : std_logic;
		signal q_PuModel_rdy : std_logic;
		signal q_PuModel_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_bin : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_weight_bin : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_update_weight_bin.txt";
		signal bin_data : std_logic_vector(31 downto 0) := (others => '0');
		signal bin_send : std_logic := '0';
		signal bin_ack : std_logic;
		signal bin_rdy : std_logic;
		signal bin_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_bin_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_bin_send : std_logic := '0';
		signal q_bin_ack : std_logic;
		signal q_bin_rdy : std_logic;
		signal q_bin_count : std_logic_vector(15 downto 0) := (others => '0');
		
		-- Component Output(s) signals
		signal tb_FSM_weights : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_weight_weights : text is "fifoTraces/Mean_Shift_Main_main_loop_cal_update_weight_weights.txt";
		signal weights_data : std_logic_vector(31 downto 0) := (others => '0');
		signal weights_send : std_logic;
		signal weights_ack : std_logic := '0';
		signal weights_rdy : std_logic := '0';
		signal weights_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_Mean_Shift_Main_main_loop_cal_update_weight : Mean_Shift_Main_main_loop_cal_update_weight 
	port map(
		QuModel_data => q_QuModel_data,
		QuModel_send => q_QuModel_send,
		QuModel_ack => q_QuModel_ack,
		QuModel_count => q_QuModel_count,
		
		PuModel_data => q_PuModel_data,
		PuModel_send => q_PuModel_send,
		PuModel_ack => q_PuModel_ack,
		PuModel_count => q_PuModel_count,
		
		bin_data => q_bin_data,
		bin_send => q_bin_send,
		bin_ack => q_bin_ack,
		bin_count => q_bin_count,
		
		weights_data => weights_data,
		weights_send => weights_send,
		weights_ack => weights_ack,
		weights_rdy => weights_rdy,
		weights_count => weights_count,
		CLK => CLK,
		reset => reset);
	
	-- Input(s) queues
	q_QuModel : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
	port map(
		OUT_DATA => q_QuModel_data,
		OUT_SEND => q_QuModel_send,
		OUT_ACK => q_QuModel_ack,
		OUT_COUNT => q_QuModel_count,
	
		IN_DATA => QuModel_data,
		IN_SEND => QuModel_send,
		IN_ACK => QuModel_ack,
		IN_RDY => QuModel_rdy,
		IN_COUNT => QuModel_count,

		CLK => CLK,
		reset => reset);
	
	q_PuModel : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
	port map(
		OUT_DATA => q_PuModel_data,
		OUT_SEND => q_PuModel_send,
		OUT_ACK => q_PuModel_ack,
		OUT_COUNT => q_PuModel_count,
	
		IN_DATA => PuModel_data,
		IN_SEND => PuModel_send,
		IN_ACK => PuModel_ack,
		IN_RDY => PuModel_rdy,
		IN_COUNT => PuModel_count,

		CLK => CLK,
		reset => reset);
	
	q_bin : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
	port map(
		OUT_DATA => q_bin_data,
		OUT_SEND => q_bin_send,
		OUT_ACK => q_bin_ack,
		OUT_COUNT => q_bin_count,
	
		IN_DATA => bin_data,
		IN_SEND => bin_send,
		IN_ACK => bin_ack,
		IN_RDY => bin_rdy,
		IN_COUNT => bin_count,

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
		-- Input port: QuModel Waveform Generation
			case tb_FSM_QuModel is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_QuModel <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_weight_QuModel)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_weight_QuModel, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							QuModel_data <= std_logic_vector(to_signed(input_bit, 32));
							QuModel_send <= '1';
							tb_FSM_QuModel <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_weight_QuModel)) and QuModel_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_weight_QuModel, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							QuModel_data <= std_logic_vector(to_signed(input_bit, 32));
							QuModel_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_weight_QuModel)) then
						QuModel_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: PuModel Waveform Generation
			case tb_FSM_PuModel is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_PuModel <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_weight_PuModel)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_weight_PuModel, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							PuModel_data <= std_logic_vector(to_signed(input_bit, 32));
							PuModel_send <= '1';
							tb_FSM_PuModel <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_weight_PuModel)) and PuModel_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_weight_PuModel, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							PuModel_data <= std_logic_vector(to_signed(input_bit, 32));
							PuModel_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_weight_PuModel)) then
						PuModel_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: bin Waveform Generation
			case tb_FSM_bin is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_bin <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_weight_bin)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_weight_bin, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							bin_data <= std_logic_vector(to_unsigned(input_bit, 32));
							bin_send <= '1';
							tb_FSM_bin <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_weight_bin)) and bin_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_weight_bin, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							bin_data <= std_logic_vector(to_unsigned(input_bit, 32));
							bin_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_weight_bin)) then
						bin_send <= '0';
					end if;
				when others => null;
			end case;
		end if;
	end process WaveGen_Proc_In;
	
	-- Output(s) waveform Generation
	weights_ack <= weights_send;
	weights_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_weights : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: weights Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_weight_weights) and weights_send = '1') then
				readline(sim_file_Mean_Shift_Main_main_loop_cal_update_weight_weights, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (weights_data  = std_logic_vector(to_signed(input_bit, 32)))
						report "on port weights incorrect value computed : " & str(to_integer(signed(weights_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_weights)
						severity failure;
						
						assert (weights_data /= std_logic_vector(to_signed(input_bit, 32)))
						report "on port weights correct value computed : " & str(to_integer(signed(weights_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_weights)
						severity note;
						sequence_weights := sequence_weights + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Mean_Shift_Main_main_loop_cal_update_weight_tb; 
