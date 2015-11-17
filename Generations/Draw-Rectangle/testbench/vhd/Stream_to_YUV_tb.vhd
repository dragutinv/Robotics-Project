-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: Stream_to_YUV 
-- Date: 2015/11/17 18:39:16
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Stream_to_YUV_tb is
end Stream_to_YUV_tb;

architecture arch_Stream_to_YUV_tb of Stream_to_YUV_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Stream_to_YUV
	port(
	    stream_data : IN std_logic_vector(7 downto 0);
	    stream_send : IN std_logic;
	    stream_ack : OUT std_logic;
	    stream_count : IN std_logic_vector(15 downto 0);
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
	end component Stream_to_YUV;
	
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
		signal tb_FSM_stream : tb_type;
		file sim_file_Stream_to_YUV_stream : text is "fifoTraces/Stream_to_YUV_stream.txt";
		signal stream_data : std_logic_vector(7 downto 0) := (others => '0');
		signal stream_send : std_logic := '0';
		signal stream_ack : std_logic;
		signal stream_rdy : std_logic;
		signal stream_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_stream_data : std_logic_vector(7 downto 0) := (others => '0');
		signal q_stream_send : std_logic := '0';
		signal q_stream_ack : std_logic;
		signal q_stream_rdy : std_logic;
		signal q_stream_count : std_logic_vector(15 downto 0) := (others => '0');
		
		-- Component Output(s) signals
		signal tb_FSM_Y : tb_type;
		file sim_file_Stream_to_YUV_Y : text is "fifoTraces/Stream_to_YUV_Y.txt";
		signal Y_data : std_logic_vector(7 downto 0) := (others => '0');
		signal Y_send : std_logic;
		signal Y_ack : std_logic := '0';
		signal Y_rdy : std_logic := '0';
		signal Y_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_U : tb_type;
		file sim_file_Stream_to_YUV_U : text is "fifoTraces/Stream_to_YUV_U.txt";
		signal U_data : std_logic_vector(7 downto 0) := (others => '0');
		signal U_send : std_logic;
		signal U_ack : std_logic := '0';
		signal U_rdy : std_logic := '0';
		signal U_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_V : tb_type;
		file sim_file_Stream_to_YUV_V : text is "fifoTraces/Stream_to_YUV_V.txt";
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
	
	i_Stream_to_YUV : Stream_to_YUV 
	port map(
		stream_data => q_stream_data,
		stream_send => q_stream_send,
		stream_ack => q_stream_ack,
		stream_count => q_stream_count,
		
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
	q_stream : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 8)
	port map(
		OUT_DATA => q_stream_data,
		OUT_SEND => q_stream_send,
		OUT_ACK => q_stream_ack,
		OUT_COUNT => q_stream_count,
	
		IN_DATA => stream_data,
		IN_SEND => stream_send,
		IN_ACK => stream_ack,
		IN_RDY => stream_rdy,
		IN_COUNT => stream_count,

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
		-- Input port: stream Waveform Generation
			case tb_FSM_stream is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_stream <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_Stream_to_YUV_stream)) then
						readline(sim_file_Stream_to_YUV_stream, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							stream_data <= std_logic_vector(to_unsigned(input_bit, 8));
							stream_send <= '1';
							tb_FSM_stream <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Stream_to_YUV_stream)) and stream_ack = '1' then
						readline(sim_file_Stream_to_YUV_stream, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							stream_data <= std_logic_vector(to_unsigned(input_bit, 8));
							stream_send <= '1';
						end if;
					elsif (endfile (sim_file_Stream_to_YUV_stream)) then
						stream_send <= '0';
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
			if (not endfile (sim_file_Stream_to_YUV_Y) and Y_send = '1') then
				readline(sim_file_Stream_to_YUV_Y, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (Y_data  = std_logic_vector(to_signed(input_bit, 8)))
						report "on port Y incorrect value computed : " & str(to_integer(signed(Y_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_Y)
						severity failure;
						
						assert (Y_data /= std_logic_vector(to_signed(input_bit, 8)))
						report "on port Y correct value computed : " & str(to_integer(signed(Y_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_Y)
						severity note;
						sequence_Y := sequence_Y + 1;
					end if;
			end if;
		
		-- Output port: U Waveform Generation
			if (not endfile (sim_file_Stream_to_YUV_U) and U_send = '1') then
				readline(sim_file_Stream_to_YUV_U, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (U_data  = std_logic_vector(to_signed(input_bit, 8)))
						report "on port U incorrect value computed : " & str(to_integer(signed(U_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_U)
						severity failure;
						
						assert (U_data /= std_logic_vector(to_signed(input_bit, 8)))
						report "on port U correct value computed : " & str(to_integer(signed(U_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_U)
						severity note;
						sequence_U := sequence_U + 1;
					end if;
			end if;
		
		-- Output port: V Waveform Generation
			if (not endfile (sim_file_Stream_to_YUV_V) and V_send = '1') then
				readline(sim_file_Stream_to_YUV_V, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (V_data  = std_logic_vector(to_signed(input_bit, 8)))
						report "on port V incorrect value computed : " & str(to_integer(signed(V_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_V)
						severity failure;
						
						assert (V_data /= std_logic_vector(to_signed(input_bit, 8)))
						report "on port V correct value computed : " & str(to_integer(signed(V_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_V)
						severity note;
						sequence_V := sequence_V + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Stream_to_YUV_tb; 
