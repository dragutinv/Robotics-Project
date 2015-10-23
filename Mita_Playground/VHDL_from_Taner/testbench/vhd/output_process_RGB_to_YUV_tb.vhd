-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: output_process_RGB_to_YUV 
-- Date: 2015/10/14 15:56:50
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity output_process_RGB_to_YUV_tb is
end output_process_RGB_to_YUV_tb;

architecture arch_output_process_RGB_to_YUV_tb of output_process_RGB_to_YUV_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component output_process_RGB_to_YUV
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
	    Y_data : OUT std_logic_vector(7 downto 0);
	    Y_send : OUT std_logic;
	    Y_ack : IN std_logic;
	    Y_rdy : IN std_logic;
	    Y_count : OUT std_logic_vector(15 downto 0);
	    U_data : OUT std_logic_vector(7 downto 0);
	    U_send : OUT std_logic;
	    U_ack : IN std_logic;
	    U_rdy : IN std_logic;
	    U_count : OUT std_logic_vector(15 downto 0);
	    V_data : OUT std_logic_vector(7 downto 0);
	    V_send : OUT std_logic;
	    V_ack : IN std_logic;
	    V_rdy : IN std_logic;
	    V_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component output_process_RGB_to_YUV;
	
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
		file sim_file_output_process_RGB_to_YUV_R : text is "fifoTraces/output_process_RGB_to_YUV_R.txt";
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
		file sim_file_output_process_RGB_to_YUV_G : text is "fifoTraces/output_process_RGB_to_YUV_G.txt";
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
		file sim_file_output_process_RGB_to_YUV_B : text is "fifoTraces/output_process_RGB_to_YUV_B.txt";
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
		
		-- Component Output(s) signals
		signal tb_FSM_Y : tb_type;
		file sim_file_output_process_RGB_to_YUV_Y : text is "fifoTraces/output_process_RGB_to_YUV_Y.txt";
		signal Y_data : std_logic_vector(7 downto 0) := (others => '0');
		signal Y_send : std_logic;
		signal Y_ack : std_logic := '0';
		signal Y_rdy : std_logic := '0';
		signal Y_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_U : tb_type;
		file sim_file_output_process_RGB_to_YUV_U : text is "fifoTraces/output_process_RGB_to_YUV_U.txt";
		signal U_data : std_logic_vector(7 downto 0) := (others => '0');
		signal U_send : std_logic;
		signal U_ack : std_logic := '0';
		signal U_rdy : std_logic := '0';
		signal U_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_V : tb_type;
		file sim_file_output_process_RGB_to_YUV_V : text is "fifoTraces/output_process_RGB_to_YUV_V.txt";
		signal V_data : std_logic_vector(7 downto 0) := (others => '0');
		signal V_send : std_logic;
		signal V_ack : std_logic := '0';
		signal V_rdy : std_logic := '0';
		signal V_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_output_process_RGB_to_YUV : output_process_RGB_to_YUV 
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
		
		Y_data => Y_data,
		Y_send => Y_send,
		Y_ack => Y_ack,
		Y_rdy => Y_rdy,
		Y_count => Y_count,
		
		U_data => U_data,
		U_send => U_send,
		U_ack => U_ack,
		U_rdy => U_rdy,
		U_count => U_count,
		
		V_data => V_data,
		V_send => V_send,
		V_ack => V_ack,
		V_rdy => V_rdy,
		V_count => V_count,
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
					if (not endfile (sim_file_output_process_RGB_to_YUV_R)) then
						readline(sim_file_output_process_RGB_to_YUV_R, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							R_data <= std_logic_vector(to_unsigned(input_bit, 8));
							R_send <= '1';
							tb_FSM_R <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_output_process_RGB_to_YUV_R)) and R_ack = '1' then
						readline(sim_file_output_process_RGB_to_YUV_R, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							R_data <= std_logic_vector(to_unsigned(input_bit, 8));
							R_send <= '1';
						end if;
					elsif (endfile (sim_file_output_process_RGB_to_YUV_R)) then
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
					if (not endfile (sim_file_output_process_RGB_to_YUV_G)) then
						readline(sim_file_output_process_RGB_to_YUV_G, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							G_data <= std_logic_vector(to_unsigned(input_bit, 8));
							G_send <= '1';
							tb_FSM_G <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_output_process_RGB_to_YUV_G)) and G_ack = '1' then
						readline(sim_file_output_process_RGB_to_YUV_G, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							G_data <= std_logic_vector(to_unsigned(input_bit, 8));
							G_send <= '1';
						end if;
					elsif (endfile (sim_file_output_process_RGB_to_YUV_G)) then
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
					if (not endfile (sim_file_output_process_RGB_to_YUV_B)) then
						readline(sim_file_output_process_RGB_to_YUV_B, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							B_data <= std_logic_vector(to_unsigned(input_bit, 8));
							B_send <= '1';
							tb_FSM_B <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_output_process_RGB_to_YUV_B)) and B_ack = '1' then
						readline(sim_file_output_process_RGB_to_YUV_B, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							B_data <= std_logic_vector(to_unsigned(input_bit, 8));
							B_send <= '1';
						end if;
					elsif (endfile (sim_file_output_process_RGB_to_YUV_B)) then
						B_send <= '0';
					end if;
				when others => null;
			end case;
		end if;
	end process WaveGen_Proc_In;
	
	-- Output(s) waveform Generation
	Y_ack <= Y_send;
	Y_rdy <= '1';
	
	U_ack <= U_send;
	U_rdy <= '1';
	
	V_ack <= V_send;
	V_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_Y : integer := 0;
		
		variable sequence_U : integer := 0;
		
		variable sequence_V : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: Y Waveform Generation
			if (not endfile (sim_file_output_process_RGB_to_YUV_Y) and Y_send = '1') then
				readline(sim_file_output_process_RGB_to_YUV_Y, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (Y_data  = std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port Y incorrect value computed : " & str(to_integer(unsigned(Y_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_Y)
						severity failure;
						
						assert (Y_data /= std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port Y correct value computed : " & str(to_integer(unsigned(Y_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_Y)
						severity note;
						sequence_Y := sequence_Y + 1;
					end if;
			end if;
		
		-- Output port: U Waveform Generation
			if (not endfile (sim_file_output_process_RGB_to_YUV_U) and U_send = '1') then
				readline(sim_file_output_process_RGB_to_YUV_U, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (U_data  = std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port U incorrect value computed : " & str(to_integer(unsigned(U_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_U)
						severity failure;
						
						assert (U_data /= std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port U correct value computed : " & str(to_integer(unsigned(U_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_U)
						severity note;
						sequence_U := sequence_U + 1;
					end if;
			end if;
		
		-- Output port: V Waveform Generation
			if (not endfile (sim_file_output_process_RGB_to_YUV_V) and V_send = '1') then
				readline(sim_file_output_process_RGB_to_YUV_V, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (V_data  = std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port V incorrect value computed : " & str(to_integer(unsigned(V_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_V)
						severity failure;
						
						assert (V_data /= std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port V correct value computed : " & str(to_integer(unsigned(V_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_V)
						severity note;
						sequence_V := sequence_V + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_output_process_RGB_to_YUV_tb; 
