-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: Mean_Shift_Main_main_loop_cal_update_model 
-- Date: 2015/10/14 15:56:16
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Mean_Shift_Main_main_loop_cal_update_model_tb is
end Mean_Shift_Main_main_loop_cal_update_model_tb;

architecture arch_Mean_Shift_Main_main_loop_cal_update_model_tb of Mean_Shift_Main_main_loop_cal_update_model_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Mean_Shift_Main_main_loop_cal_update_model
	port(
	    R_data : IN std_logic_vector(7 downto 0);
	    R_send : IN std_logic;
	    R_ack : OUT std_logic;
	    R_count : IN std_logic_vector(15 downto 0);
	    G_data : IN std_logic_vector(7 downto 0);
	    G_send : IN std_logic;
	    G_ack : OUT std_logic;
	    G_count : IN std_logic_vector(15 downto 0);
	    B_data : IN std_logic_vector(7 downto 0);
	    B_send : IN std_logic;
	    B_ack : OUT std_logic;
	    B_count : IN std_logic_vector(15 downto 0);
	    centre_x_i_data : IN std_logic_vector(31 downto 0);
	    centre_x_i_send : IN std_logic;
	    centre_x_i_ack : OUT std_logic;
	    centre_x_i_count : IN std_logic_vector(15 downto 0);
	    centre_y_i_data : IN std_logic_vector(31 downto 0);
	    centre_y_i_send : IN std_logic;
	    centre_y_i_ack : OUT std_logic;
	    centre_y_i_count : IN std_logic_vector(15 downto 0);
	    kArray_data : IN std_logic_vector(31 downto 0);
	    kArray_send : IN std_logic;
	    kArray_ack : OUT std_logic;
	    kArray_count : IN std_logic_vector(15 downto 0);
	    loop_status_data : IN std_logic;
	    loop_status_send : IN std_logic;
	    loop_status_ack : OUT std_logic;
	    loop_status_count : IN std_logic_vector(15 downto 0);
	    Qu_data : OUT std_logic_vector(31 downto 0);
	    Qu_send : OUT std_logic;
	    Qu_ack : IN std_logic;
	    Qu_rdy : IN std_logic;
	    Qu_count : OUT std_logic_vector(15 downto 0);
	    Pu_data : OUT std_logic_vector(31 downto 0);
	    Pu_send : OUT std_logic;
	    Pu_ack : IN std_logic;
	    Pu_rdy : IN std_logic;
	    Pu_count : OUT std_logic_vector(15 downto 0);
	    bin_o_data : OUT std_logic_vector(31 downto 0);
	    bin_o_send : OUT std_logic;
	    bin_o_ack : IN std_logic;
	    bin_o_rdy : IN std_logic;
	    bin_o_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component Mean_Shift_Main_main_loop_cal_update_model;
	
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
		signal tb_FSM_R : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_model_R : text is "C:/Users/Mita/Documents\VIBOT/RP_test/Test/testbench/fifoTraces/Mean_Shift_Main_main_loop_cal_update_model_R.txt";
		signal R_data : std_logic_vector(7 downto 0) := (others => '0');
		signal R_send : std_logic := '0';
		signal R_ack : std_logic;
		signal R_rdy : std_logic;
		signal R_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_R_data : std_logic_vector(7 downto 0) := (others => '0');
		signal q_R_send : std_logic := '0';
		signal q_R_ack : std_logic;
		signal q_R_rdy : std_logic;
		signal q_R_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_G : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_model_G : text is "C:/Users/Mita/Documents/VIBOT/RP_test/Test/testbench/fifoTraces/Mean_Shift_Main_main_loop_cal_update_model_G.txt";
		signal G_data : std_logic_vector(7 downto 0) := (others => '0');
		signal G_send : std_logic := '0';
		signal G_ack : std_logic;
		signal G_rdy : std_logic;
		signal G_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_G_data : std_logic_vector(7 downto 0) := (others => '0');
		signal q_G_send : std_logic := '0';
		signal q_G_ack : std_logic;
		signal q_G_rdy : std_logic;
		signal q_G_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_B : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_model_B : text is "C:/Users/Mita/Documents/VIBOT/RP_test/Test/testbench/fifoTraces/Mean_Shift_Main_main_loop_cal_update_model_B.txt";
		signal B_data : std_logic_vector(7 downto 0) := (others => '0');
		signal B_send : std_logic := '0';
		signal B_ack : std_logic;
		signal B_rdy : std_logic;
		signal B_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_B_data : std_logic_vector(7 downto 0) := (others => '0');
		signal q_B_send : std_logic := '0';
		signal q_B_ack : std_logic;
		signal q_B_rdy : std_logic;
		signal q_B_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_centre_x_i : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i : text is "C:/Users/Mita/Documents/VIBOT/RP_test/Test/testbench/fifoTraces/Mean_Shift_Main_main_loop_cal_update_model_centre_x_i.txt";
		signal centre_x_i_data : std_logic_vector(31 downto 0) := (others => '0');
		signal centre_x_i_send : std_logic := '0';
		signal centre_x_i_ack : std_logic;
		signal centre_x_i_rdy : std_logic;
		signal centre_x_i_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_centre_x_i_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_centre_x_i_send : std_logic := '0';
		signal q_centre_x_i_ack : std_logic;
		signal q_centre_x_i_rdy : std_logic;
		signal q_centre_x_i_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_centre_y_i : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i : text is "C:/Users/Mita/Documents/VIBOT/RP_test/Test/testbench/fifoTraces/Mean_Shift_Main_main_loop_cal_update_model_centre_y_i.txt";
		signal centre_y_i_data : std_logic_vector(31 downto 0) := (others => '0');
		signal centre_y_i_send : std_logic := '0';
		signal centre_y_i_ack : std_logic;
		signal centre_y_i_rdy : std_logic;
		signal centre_y_i_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_centre_y_i_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_centre_y_i_send : std_logic := '0';
		signal q_centre_y_i_ack : std_logic;
		signal q_centre_y_i_rdy : std_logic;
		signal q_centre_y_i_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_kArray : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_model_kArray : text is "C:/Users/Mita/Documents/VIBOT/RP_test/Test/testbench/fifoTraces/Mean_Shift_Main_main_loop_cal_update_model_kArray.txt";
		signal kArray_data : std_logic_vector(31 downto 0) := (others => '0');
		signal kArray_send : std_logic := '0';
		signal kArray_ack : std_logic;
		signal kArray_rdy : std_logic;
		signal kArray_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_kArray_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_kArray_send : std_logic := '0';
		signal q_kArray_ack : std_logic;
		signal q_kArray_rdy : std_logic;
		signal q_kArray_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_loop_status : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_model_loop_status : text is "C:/Users/Mita/Documents/VIBOT/RP_test/Test/testbench/fifoTraces/Mean_Shift_Main_main_loop_cal_update_model_loop_status.txt";
		signal loop_status_data : std_logic := '0';
		signal loop_status_send : std_logic := '0';
		signal loop_status_ack : std_logic;
		signal loop_status_rdy : std_logic;
		signal loop_status_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_loop_status_data : std_logic := '0';
		signal q_loop_status_send : std_logic := '0';
		signal q_loop_status_ack : std_logic;
		signal q_loop_status_rdy : std_logic;
		signal q_loop_status_count : std_logic_vector(15 downto 0) := (others => '0');
		
		-- Component Output(s) signals
		signal tb_FSM_Qu : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_model_Qu : text is "C:/Users/Mita/Documents/VIBOT/RP_test/Test/testbench/fifoTraces/Mean_Shift_Main_main_loop_cal_update_model_Qu.txt";
		signal Qu_data : std_logic_vector(31 downto 0) := (others => '0');
		signal Qu_send : std_logic;
		signal Qu_ack : std_logic := '0';
		signal Qu_rdy : std_logic := '0';
		signal Qu_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_Pu : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_model_Pu : text is "C:/Users/Mita/Documents/VIBOT/RP_test/Test/testbench/fifoTraces/Mean_Shift_Main_main_loop_cal_update_model_Pu.txt";
		signal Pu_data : std_logic_vector(31 downto 0) := (others => '0');
		signal Pu_send : std_logic;
		signal Pu_ack : std_logic := '0';
		signal Pu_rdy : std_logic := '0';
		signal Pu_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_bin_o : tb_type;
		file sim_file_Mean_Shift_Main_main_loop_cal_update_model_bin_o : text is "C:/Users/Mita/Documents/VIBOT/RP_test/Test/testbench/fifoTraces/Mean_Shift_Main_main_loop_cal_update_model_bin_o.txt";
		signal bin_o_data : std_logic_vector(31 downto 0) := (others => '0');
		signal bin_o_send : std_logic;
		signal bin_o_ack : std_logic := '0';
		signal bin_o_rdy : std_logic := '0';
		signal bin_o_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_Mean_Shift_Main_main_loop_cal_update_model : Mean_Shift_Main_main_loop_cal_update_model 
	port map(
		R_data => q_R_data,
		R_send => q_R_send,
		R_ack => q_R_ack,
		R_count => q_R_count,
		
		G_data => q_G_data,
		G_send => q_G_send,
		G_ack => q_G_ack,
		G_count => q_G_count,
		
		B_data => q_B_data,
		B_send => q_B_send,
		B_ack => q_B_ack,
		B_count => q_B_count,
		
		centre_x_i_data => q_centre_x_i_data,
		centre_x_i_send => q_centre_x_i_send,
		centre_x_i_ack => q_centre_x_i_ack,
		centre_x_i_count => q_centre_x_i_count,
		
		centre_y_i_data => q_centre_y_i_data,
		centre_y_i_send => q_centre_y_i_send,
		centre_y_i_ack => q_centre_y_i_ack,
		centre_y_i_count => q_centre_y_i_count,
		
		kArray_data => q_kArray_data,
		kArray_send => q_kArray_send,
		kArray_ack => q_kArray_ack,
		kArray_count => q_kArray_count,
		
		loop_status_data => q_loop_status_data,
		loop_status_send => q_loop_status_send,
		loop_status_ack => q_loop_status_ack,
		loop_status_count => q_loop_status_count,
		
		Qu_data => Qu_data,
		Qu_send => Qu_send,
		Qu_ack => Qu_ack,
		Qu_rdy => Qu_rdy,
		Qu_count => Qu_count,
		
		Pu_data => Pu_data,
		Pu_send => Pu_send,
		Pu_ack => Pu_ack,
		Pu_rdy => Pu_rdy,
		Pu_count => Pu_count,
		
		bin_o_data => bin_o_data,
		bin_o_send => bin_o_send,
		bin_o_ack => bin_o_ack,
		bin_o_rdy => bin_o_rdy,
		bin_o_count => bin_o_count,
		CLK => CLK,
		reset => reset);
	
	-- Input(s) queues
	q_R : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 8)
	port map(
		OUT_DATA => q_R_data,
		OUT_SEND => q_R_send,
		OUT_ACK => q_R_ack,
		OUT_COUNT => q_R_count,
	
		IN_DATA => R_data,
		IN_SEND => R_send,
		IN_ACK => R_ack,
		IN_RDY => R_rdy,
		IN_COUNT => R_count,

		CLK => CLK,
		reset => reset);
	
	q_G : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 8)
	port map(
		OUT_DATA => q_G_data,
		OUT_SEND => q_G_send,
		OUT_ACK => q_G_ack,
		OUT_COUNT => q_G_count,
	
		IN_DATA => G_data,
		IN_SEND => G_send,
		IN_ACK => G_ack,
		IN_RDY => G_rdy,
		IN_COUNT => G_count,

		CLK => CLK,
		reset => reset);
	
	q_B : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 8)
	port map(
		OUT_DATA => q_B_data,
		OUT_SEND => q_B_send,
		OUT_ACK => q_B_ack,
		OUT_COUNT => q_B_count,
	
		IN_DATA => B_data,
		IN_SEND => B_send,
		IN_ACK => B_ack,
		IN_RDY => B_rdy,
		IN_COUNT => B_count,

		CLK => CLK,
		reset => reset);
	
	q_centre_x_i : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
	port map(
		OUT_DATA => q_centre_x_i_data,
		OUT_SEND => q_centre_x_i_send,
		OUT_ACK => q_centre_x_i_ack,
		OUT_COUNT => q_centre_x_i_count,
	
		IN_DATA => centre_x_i_data,
		IN_SEND => centre_x_i_send,
		IN_ACK => centre_x_i_ack,
		IN_RDY => centre_x_i_rdy,
		IN_COUNT => centre_x_i_count,

		CLK => CLK,
		reset => reset);
	
	q_centre_y_i : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
	port map(
		OUT_DATA => q_centre_y_i_data,
		OUT_SEND => q_centre_y_i_send,
		OUT_ACK => q_centre_y_i_ack,
		OUT_COUNT => q_centre_y_i_count,
	
		IN_DATA => centre_y_i_data,
		IN_SEND => centre_y_i_send,
		IN_ACK => centre_y_i_ack,
		IN_RDY => centre_y_i_rdy,
		IN_COUNT => centre_y_i_count,

		CLK => CLK,
		reset => reset);
	
	q_kArray : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
	port map(
		OUT_DATA => q_kArray_data,
		OUT_SEND => q_kArray_send,
		OUT_ACK => q_kArray_ack,
		OUT_COUNT => q_kArray_count,
	
		IN_DATA => kArray_data,
		IN_SEND => kArray_send,
		IN_ACK => kArray_ack,
		IN_RDY => kArray_rdy,
		IN_COUNT => kArray_count,

		CLK => CLK,
		reset => reset);
	
	q_loop_status : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 1)
	port map(
		OUT_DATA(0) => q_loop_status_data,
		OUT_SEND => q_loop_status_send,
		OUT_ACK => q_loop_status_ack,
		OUT_COUNT => q_loop_status_count,
	
		IN_DATA(0)  => loop_status_data,
		IN_SEND => loop_status_send,
		IN_ACK => loop_status_ack,
		IN_RDY => loop_status_rdy,
		IN_COUNT => loop_status_count,

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
		-- Input port: R Waveform Generation
			case tb_FSM_R is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_R <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_R)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_R, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							R_data <= std_logic_vector(to_unsigned(input_bit, 8));
							R_send <= '1';
							tb_FSM_R <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_R)) and R_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_R, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							R_data <= std_logic_vector(to_unsigned(input_bit, 8));
							R_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_R)) then
						R_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: G Waveform Generation
			case tb_FSM_G is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_G <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_G)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_G, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							G_data <= std_logic_vector(to_unsigned(input_bit, 8));
							G_send <= '1';
							tb_FSM_G <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_G)) and G_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_G, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							G_data <= std_logic_vector(to_unsigned(input_bit, 8));
							G_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_G)) then
						G_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: B Waveform Generation
			case tb_FSM_B is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_B <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_B)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_B, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							B_data <= std_logic_vector(to_unsigned(input_bit, 8));
							B_send <= '1';
							tb_FSM_B <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_B)) and B_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_B, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							B_data <= std_logic_vector(to_unsigned(input_bit, 8));
							B_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_B)) then
						B_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: centre_x_i Waveform Generation
			case tb_FSM_centre_x_i is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_centre_x_i <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							centre_x_i_data <= std_logic_vector(to_unsigned(input_bit, 32));
							centre_x_i_send <= '1';
							tb_FSM_centre_x_i <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i)) and centre_x_i_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							centre_x_i_data <= std_logic_vector(to_unsigned(input_bit, 32));
							centre_x_i_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i)) then
						centre_x_i_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: centre_y_i Waveform Generation
			case tb_FSM_centre_y_i is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_centre_y_i <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							centre_y_i_data <= std_logic_vector(to_unsigned(input_bit, 32));
							centre_y_i_send <= '1';
							tb_FSM_centre_y_i <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i)) and centre_y_i_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							centre_y_i_data <= std_logic_vector(to_unsigned(input_bit, 32));
							centre_y_i_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i)) then
						centre_y_i_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: kArray Waveform Generation
			case tb_FSM_kArray is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_kArray <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_kArray)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_kArray, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							kArray_data <= std_logic_vector(to_signed(input_bit, 32));
							kArray_send <= '1';
							tb_FSM_kArray <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_kArray)) and kArray_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_kArray, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							kArray_data <= std_logic_vector(to_signed(input_bit, 32));
							kArray_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_kArray)) then
						kArray_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: loop_status Waveform Generation
			case tb_FSM_loop_status is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_loop_status <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_loop_status)) then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_loop_status, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							if (input_bit = 1) then
								loop_status_data <= '1';
							else
								loop_status_data <= '0';
							end if;
							loop_status_send <= '1';
							tb_FSM_loop_status <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_loop_status)) and loop_status_ack = '1' then
						readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_loop_status, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							if (input_bit = 1) then
								loop_status_data <= '1';
							else
								loop_status_data <= '0';
							end if;
							loop_status_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_loop_status)) then
						loop_status_send <= '0';
					end if;
				when others => null;
			end case;
		end if;
	end process WaveGen_Proc_In;
	
	-- Output(s) waveform Generation
	Qu_ack <= Qu_send;
	Qu_rdy <= '1';
	
	Pu_ack <= Pu_send;
	Pu_rdy <= '1';
	
	bin_o_ack <= bin_o_send;
	bin_o_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_Qu : integer := 0;
		
		variable sequence_Pu : integer := 0;
		
		variable sequence_bin_o : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: Qu Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_Qu) and Qu_send = '1') then
				readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_Qu, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (Qu_data  = std_logic_vector(to_signed(input_bit, 32)))
						report "on port Qu incorrect value computed : " & str(to_integer(signed(Qu_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_Qu)
						severity failure;
						
						assert (Qu_data /= std_logic_vector(to_signed(input_bit, 32)))
						report "on port Qu correct value computed : " & str(to_integer(signed(Qu_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_Qu)
						severity note;
						sequence_Qu := sequence_Qu + 1;
					end if;
			end if;
		
		-- Output port: Pu Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_Pu) and Pu_send = '1') then
				readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_Pu, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (Pu_data  = std_logic_vector(to_signed(input_bit, 32)))
						report "on port Pu incorrect value computed : " & str(to_integer(signed(Pu_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_Pu)
						severity failure;
						
						assert (Pu_data /= std_logic_vector(to_signed(input_bit, 32)))
						report "on port Pu correct value computed : " & str(to_integer(signed(Pu_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_Pu)
						severity note;
						sequence_Pu := sequence_Pu + 1;
					end if;
			end if;
		
		-- Output port: bin_o Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_main_loop_cal_update_model_bin_o) and bin_o_send = '1') then
				readline(sim_file_Mean_Shift_Main_main_loop_cal_update_model_bin_o, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (bin_o_data  = std_logic_vector(to_unsigned(input_bit, 32)))
						report "on port bin_o incorrect value computed : " & str(to_integer(unsigned(bin_o_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_bin_o)
						severity failure;
						
						assert (bin_o_data /= std_logic_vector(to_unsigned(input_bit, 32)))
						report "on port bin_o correct value computed : " & str(to_integer(unsigned(bin_o_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_bin_o)
						severity note;
						sequence_bin_o := sequence_bin_o + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Mean_Shift_Main_main_loop_cal_update_model_tb; 
