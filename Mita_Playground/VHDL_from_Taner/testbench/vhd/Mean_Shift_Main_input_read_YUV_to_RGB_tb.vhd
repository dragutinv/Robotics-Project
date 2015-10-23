-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: Mean_Shift_Main_input_read_YUV_to_RGB 
-- Date: 2015/10/14 15:56:36
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Mean_Shift_Main_input_read_YUV_to_RGB_tb is
end Mean_Shift_Main_input_read_YUV_to_RGB_tb;

architecture arch_Mean_Shift_Main_input_read_YUV_to_RGB_tb of Mean_Shift_Main_input_read_YUV_to_RGB_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Mean_Shift_Main_input_read_YUV_to_RGB
	port(
	    Y_data : IN std_logic_vector(7 downto 0);
	    Y_send : IN std_logic;
	    Y_ack : OUT std_logic;
	    Y_count : IN std_logic_vector(15 downto 0);
	    U_data : IN std_logic_vector(7 downto 0);
	    U_send : IN std_logic;
	    U_ack : OUT std_logic;
	    U_count : IN std_logic_vector(15 downto 0);
	    V_data : IN std_logic_vector(7 downto 0);
	    V_send : IN std_logic;
	    V_ack : OUT std_logic;
	    V_count : IN std_logic_vector(15 downto 0);
	    R_data : OUT std_logic_vector(7 downto 0);
	    R_send : OUT std_logic;
	    R_ack : IN std_logic;
	    R_rdy : IN std_logic;
	    R_count : OUT std_logic_vector(15 downto 0);
	    G_data : OUT std_logic_vector(7 downto 0);
	    G_send : OUT std_logic;
	    G_ack : IN std_logic;
	    G_rdy : IN std_logic;
	    G_count : OUT std_logic_vector(15 downto 0);
	    B_data : OUT std_logic_vector(7 downto 0);
	    B_send : OUT std_logic;
	    B_ack : IN std_logic;
	    B_rdy : IN std_logic;
	    B_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component Mean_Shift_Main_input_read_YUV_to_RGB;
	
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
		signal tb_FSM_Y : tb_type;
		file sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_Y : text is "fifoTraces/Mean_Shift_Main_input_read_YUV_to_RGB_Y.txt";
		signal Y_data : std_logic_vector(7 downto 0) := (others => '0');
		signal Y_send : std_logic := '0';
		signal Y_ack : std_logic;
		signal Y_rdy : std_logic;
		signal Y_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_Y_data : std_logic_vector(7 downto 0) := (others => '0');
		signal q_Y_send : std_logic := '0';
		signal q_Y_ack : std_logic;
		signal q_Y_rdy : std_logic;
		signal q_Y_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_U : tb_type;
		file sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_U : text is "fifoTraces/Mean_Shift_Main_input_read_YUV_to_RGB_U.txt";
		signal U_data : std_logic_vector(7 downto 0) := (others => '0');
		signal U_send : std_logic := '0';
		signal U_ack : std_logic;
		signal U_rdy : std_logic;
		signal U_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_U_data : std_logic_vector(7 downto 0) := (others => '0');
		signal q_U_send : std_logic := '0';
		signal q_U_ack : std_logic;
		signal q_U_rdy : std_logic;
		signal q_U_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_V : tb_type;
		file sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_V : text is "fifoTraces/Mean_Shift_Main_input_read_YUV_to_RGB_V.txt";
		signal V_data : std_logic_vector(7 downto 0) := (others => '0');
		signal V_send : std_logic := '0';
		signal V_ack : std_logic;
		signal V_rdy : std_logic;
		signal V_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_V_data : std_logic_vector(7 downto 0) := (others => '0');
		signal q_V_send : std_logic := '0';
		signal q_V_ack : std_logic;
		signal q_V_rdy : std_logic;
		signal q_V_count : std_logic_vector(15 downto 0) := (others => '0');
		
		-- Component Output(s) signals
		signal tb_FSM_R : tb_type;
		file sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_R : text is "fifoTraces/Mean_Shift_Main_input_read_YUV_to_RGB_R.txt";
		signal R_data : std_logic_vector(7 downto 0) := (others => '0');
		signal R_send : std_logic;
		signal R_ack : std_logic := '0';
		signal R_rdy : std_logic := '0';
		signal R_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_G : tb_type;
		file sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_G : text is "fifoTraces/Mean_Shift_Main_input_read_YUV_to_RGB_G.txt";
		signal G_data : std_logic_vector(7 downto 0) := (others => '0');
		signal G_send : std_logic;
		signal G_ack : std_logic := '0';
		signal G_rdy : std_logic := '0';
		signal G_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_B : tb_type;
		file sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_B : text is "fifoTraces/Mean_Shift_Main_input_read_YUV_to_RGB_B.txt";
		signal B_data : std_logic_vector(7 downto 0) := (others => '0');
		signal B_send : std_logic;
		signal B_ack : std_logic := '0';
		signal B_rdy : std_logic := '0';
		signal B_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_Mean_Shift_Main_input_read_YUV_to_RGB : Mean_Shift_Main_input_read_YUV_to_RGB 
	port map(
		Y_data => q_Y_data,
		Y_send => q_Y_send,
		Y_ack => q_Y_ack,
		Y_count => q_Y_count,
		
		U_data => q_U_data,
		U_send => q_U_send,
		U_ack => q_U_ack,
		U_count => q_U_count,
		
		V_data => q_V_data,
		V_send => q_V_send,
		V_ack => q_V_ack,
		V_count => q_V_count,
		
		R_data => R_data,
		R_send => R_send,
		R_ack => R_ack,
		R_rdy => R_rdy,
		R_count => R_count,
		
		G_data => G_data,
		G_send => G_send,
		G_ack => G_ack,
		G_rdy => G_rdy,
		G_count => G_count,
		
		B_data => B_data,
		B_send => B_send,
		B_ack => B_ack,
		B_rdy => B_rdy,
		B_count => B_count,
		CLK => CLK,
		reset => reset);
	
	-- Input(s) queues
	q_Y : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 8)
	port map(
		OUT_DATA => q_Y_data,
		OUT_SEND => q_Y_send,
		OUT_ACK => q_Y_ack,
		OUT_COUNT => q_Y_count,
	
		IN_DATA => Y_data,
		IN_SEND => Y_send,
		IN_ACK => Y_ack,
		IN_RDY => Y_rdy,
		IN_COUNT => Y_count,

		CLK => CLK,
		reset => reset);
	
	q_U : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 8)
	port map(
		OUT_DATA => q_U_data,
		OUT_SEND => q_U_send,
		OUT_ACK => q_U_ack,
		OUT_COUNT => q_U_count,
	
		IN_DATA => U_data,
		IN_SEND => U_send,
		IN_ACK => U_ack,
		IN_RDY => U_rdy,
		IN_COUNT => U_count,

		CLK => CLK,
		reset => reset);
	
	q_V : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 8)
	port map(
		OUT_DATA => q_V_data,
		OUT_SEND => q_V_send,
		OUT_ACK => q_V_ack,
		OUT_COUNT => q_V_count,
	
		IN_DATA => V_data,
		IN_SEND => V_send,
		IN_ACK => V_ack,
		IN_RDY => V_rdy,
		IN_COUNT => V_count,

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
		-- Input port: Y Waveform Generation
			case tb_FSM_Y is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_Y <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_Y)) then
						readline(sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_Y, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							Y_data <= std_logic_vector(to_unsigned(input_bit, 8));
							Y_send <= '1';
							tb_FSM_Y <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_Y)) and Y_ack = '1' then
						readline(sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_Y, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							Y_data <= std_logic_vector(to_unsigned(input_bit, 8));
							Y_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_Y)) then
						Y_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: U Waveform Generation
			case tb_FSM_U is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_U <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_U)) then
						readline(sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_U, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							U_data <= std_logic_vector(to_unsigned(input_bit, 8));
							U_send <= '1';
							tb_FSM_U <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_U)) and U_ack = '1' then
						readline(sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_U, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							U_data <= std_logic_vector(to_unsigned(input_bit, 8));
							U_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_U)) then
						U_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: V Waveform Generation
			case tb_FSM_V is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_V <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_V)) then
						readline(sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_V, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							V_data <= std_logic_vector(to_unsigned(input_bit, 8));
							V_send <= '1';
							tb_FSM_V <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_V)) and V_ack = '1' then
						readline(sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_V, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							V_data <= std_logic_vector(to_unsigned(input_bit, 8));
							V_send <= '1';
						end if;
					elsif (endfile (sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_V)) then
						V_send <= '0';
					end if;
				when others => null;
			end case;
		end if;
	end process WaveGen_Proc_In;
	
	-- Output(s) waveform Generation
	R_ack <= R_send;
	R_rdy <= '1';
	
	G_ack <= G_send;
	G_rdy <= '1';
	
	B_ack <= B_send;
	B_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_R : integer := 0;
		
		variable sequence_G : integer := 0;
		
		variable sequence_B : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: R Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_R) and R_send = '1') then
				readline(sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_R, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (R_data  = std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port R incorrect value computed : " & str(to_integer(unsigned(R_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_R)
						severity failure;
						
						assert (R_data /= std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port R correct value computed : " & str(to_integer(unsigned(R_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_R)
						severity note;
						sequence_R := sequence_R + 1;
					end if;
			end if;
		
		-- Output port: G Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_G) and G_send = '1') then
				readline(sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_G, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (G_data  = std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port G incorrect value computed : " & str(to_integer(unsigned(G_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_G)
						severity failure;
						
						assert (G_data /= std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port G correct value computed : " & str(to_integer(unsigned(G_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_G)
						severity note;
						sequence_G := sequence_G + 1;
					end if;
			end if;
		
		-- Output port: B Waveform Generation
			if (not endfile (sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_B) and B_send = '1') then
				readline(sim_file_Mean_Shift_Main_input_read_YUV_to_RGB_B, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (B_data  = std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port B incorrect value computed : " & str(to_integer(unsigned(B_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_B)
						severity failure;
						
						assert (B_data /= std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port B correct value computed : " & str(to_integer(unsigned(B_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_B)
						severity note;
						sequence_B := sequence_B + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Mean_Shift_Main_input_read_YUV_to_RGB_tb; 
