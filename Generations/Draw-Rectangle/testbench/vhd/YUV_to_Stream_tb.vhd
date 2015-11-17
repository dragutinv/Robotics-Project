-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: YUV_to_Stream 
-- Date: 2015/11/17 18:39:21
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity YUV_to_Stream_tb is
end YUV_to_Stream_tb;

architecture arch_YUV_to_Stream_tb of YUV_to_Stream_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component YUV_to_Stream
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
	    YUV_data : OUT std_logic_vector(7 downto 0);
	    YUV_send : OUT std_logic;
	    YUV_ack : IN std_logic;
	    YUV_rdy : IN std_logic;
	    YUV_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component YUV_to_Stream;
	
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
		file sim_file_YUV_to_Stream_Y : text is "fifoTraces/YUV_to_Stream_Y.txt";
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
		file sim_file_YUV_to_Stream_U : text is "fifoTraces/YUV_to_Stream_U.txt";
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
		file sim_file_YUV_to_Stream_V : text is "fifoTraces/YUV_to_Stream_V.txt";
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
		signal tb_FSM_YUV : tb_type;
		file sim_file_YUV_to_Stream_YUV : text is "fifoTraces/YUV_to_Stream_YUV.txt";
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
	
	i_YUV_to_Stream : YUV_to_Stream 
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
		
		YUV_data => YUV_data,
		YUV_send => YUV_send,
		YUV_ack => YUV_ack,
		YUV_rdy => YUV_rdy,
		YUV_count => YUV_count,
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
					if (not endfile (sim_file_YUV_to_Stream_Y)) then
						readline(sim_file_YUV_to_Stream_Y, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							Y_data <= std_logic_vector(to_unsigned(input_bit, 8));
							Y_send <= '1';
							tb_FSM_Y <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_YUV_to_Stream_Y)) and Y_ack = '1' then
						readline(sim_file_YUV_to_Stream_Y, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							Y_data <= std_logic_vector(to_unsigned(input_bit, 8));
							Y_send <= '1';
						end if;
					elsif (endfile (sim_file_YUV_to_Stream_Y)) then
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
					if (not endfile (sim_file_YUV_to_Stream_U)) then
						readline(sim_file_YUV_to_Stream_U, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							U_data <= std_logic_vector(to_unsigned(input_bit, 8));
							U_send <= '1';
							tb_FSM_U <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_YUV_to_Stream_U)) and U_ack = '1' then
						readline(sim_file_YUV_to_Stream_U, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							U_data <= std_logic_vector(to_unsigned(input_bit, 8));
							U_send <= '1';
						end if;
					elsif (endfile (sim_file_YUV_to_Stream_U)) then
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
					if (not endfile (sim_file_YUV_to_Stream_V)) then
						readline(sim_file_YUV_to_Stream_V, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							V_data <= std_logic_vector(to_unsigned(input_bit, 8));
							V_send <= '1';
							tb_FSM_V <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_YUV_to_Stream_V)) and V_ack = '1' then
						readline(sim_file_YUV_to_Stream_V, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							V_data <= std_logic_vector(to_unsigned(input_bit, 8));
							V_send <= '1';
						end if;
					elsif (endfile (sim_file_YUV_to_Stream_V)) then
						V_send <= '0';
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
			if (not endfile (sim_file_YUV_to_Stream_YUV) and YUV_send = '1') then
				readline(sim_file_YUV_to_Stream_YUV, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (YUV_data  = std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port YUV incorrect value computed : " & str(to_integer(unsigned(YUV_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_YUV)
						severity failure;
						
						assert (YUV_data /= std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port YUV correct value computed : " & str(to_integer(unsigned(YUV_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_YUV)
						severity note;
						sequence_YUV := sequence_YUV + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_YUV_to_Stream_tb; 
