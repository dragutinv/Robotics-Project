-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Instance: output_process_Draw_rectangle 
-- Date: 2015/10/14 15:56:48
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity output_process_Draw_rectangle_tb is
end output_process_Draw_rectangle_tb;

architecture arch_output_process_Draw_rectangle_tb of output_process_Draw_rectangle_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component output_process_Draw_rectangle
	port(
	    Rin_data : IN std_logic_vector(7 downto 0);
	    Rin_send : IN std_logic;
	    Rin_ack : OUT std_logic;
	    Rin_count : IN std_logic_vector(15 downto 0);
	    Gin_data : IN std_logic_vector(7 downto 0);
	    Gin_send : IN std_logic;
	    Gin_ack : OUT std_logic;
	    Gin_count : IN std_logic_vector(15 downto 0);
	    Bin_data : IN std_logic_vector(7 downto 0);
	    Bin_send : IN std_logic;
	    Bin_ack : OUT std_logic;
	    Bin_count : IN std_logic_vector(15 downto 0);
	    center_x_data : IN std_logic_vector(15 downto 0);
	    center_x_send : IN std_logic;
	    center_x_ack : OUT std_logic;
	    center_x_count : IN std_logic_vector(15 downto 0);
	    center_y_data : IN std_logic_vector(15 downto 0);
	    center_y_send : IN std_logic;
	    center_y_ack : OUT std_logic;
	    center_y_count : IN std_logic_vector(15 downto 0);
	    Rout_data : OUT std_logic_vector(7 downto 0);
	    Rout_send : OUT std_logic;
	    Rout_ack : IN std_logic;
	    Rout_rdy : IN std_logic;
	    Rout_count : OUT std_logic_vector(15 downto 0);
	    Gout_data : OUT std_logic_vector(7 downto 0);
	    Gout_send : OUT std_logic;
	    Gout_ack : IN std_logic;
	    Gout_rdy : IN std_logic;
	    Gout_count : OUT std_logic_vector(15 downto 0);
	    Bout_data : OUT std_logic_vector(7 downto 0);
	    Bout_send : OUT std_logic;
	    Bout_ack : IN std_logic;
	    Bout_rdy : IN std_logic;
	    Bout_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component output_process_Draw_rectangle;
	
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
		signal tb_FSM_Rin : tb_type;
		file sim_file_output_process_Draw_rectangle_Rin : text is "fifoTraces/output_process_Draw_rectangle_Rin.txt";
		signal Rin_data : std_logic_vector(7 downto 0) := (others => '0');
		signal Rin_send : std_logic := '0';
		signal Rin_ack : std_logic;
		signal Rin_rdy : std_logic;
		signal Rin_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_Rin_data : std_logic_vector(7 downto 0) := (others => '0');
		signal q_Rin_send : std_logic := '0';
		signal q_Rin_ack : std_logic;
		signal q_Rin_rdy : std_logic;
		signal q_Rin_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_Gin : tb_type;
		file sim_file_output_process_Draw_rectangle_Gin : text is "fifoTraces/output_process_Draw_rectangle_Gin.txt";
		signal Gin_data : std_logic_vector(7 downto 0) := (others => '0');
		signal Gin_send : std_logic := '0';
		signal Gin_ack : std_logic;
		signal Gin_rdy : std_logic;
		signal Gin_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_Gin_data : std_logic_vector(7 downto 0) := (others => '0');
		signal q_Gin_send : std_logic := '0';
		signal q_Gin_ack : std_logic;
		signal q_Gin_rdy : std_logic;
		signal q_Gin_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_Bin : tb_type;
		file sim_file_output_process_Draw_rectangle_Bin : text is "fifoTraces/output_process_Draw_rectangle_Bin.txt";
		signal Bin_data : std_logic_vector(7 downto 0) := (others => '0');
		signal Bin_send : std_logic := '0';
		signal Bin_ack : std_logic;
		signal Bin_rdy : std_logic;
		signal Bin_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_Bin_data : std_logic_vector(7 downto 0) := (others => '0');
		signal q_Bin_send : std_logic := '0';
		signal q_Bin_ack : std_logic;
		signal q_Bin_rdy : std_logic;
		signal q_Bin_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_center_x : tb_type;
		file sim_file_output_process_Draw_rectangle_center_x : text is "fifoTraces/output_process_Draw_rectangle_center_x.txt";
		signal center_x_data : std_logic_vector(15 downto 0) := (others => '0');
		signal center_x_send : std_logic := '0';
		signal center_x_ack : std_logic;
		signal center_x_rdy : std_logic;
		signal center_x_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_center_x_data : std_logic_vector(15 downto 0) := (others => '0');
		signal q_center_x_send : std_logic := '0';
		signal q_center_x_ack : std_logic;
		signal q_center_x_rdy : std_logic;
		signal q_center_x_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_center_y : tb_type;
		file sim_file_output_process_Draw_rectangle_center_y : text is "fifoTraces/output_process_Draw_rectangle_center_y.txt";
		signal center_y_data : std_logic_vector(15 downto 0) := (others => '0');
		signal center_y_send : std_logic := '0';
		signal center_y_ack : std_logic;
		signal center_y_rdy : std_logic;
		signal center_y_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_center_y_data : std_logic_vector(15 downto 0) := (others => '0');
		signal q_center_y_send : std_logic := '0';
		signal q_center_y_ack : std_logic;
		signal q_center_y_rdy : std_logic;
		signal q_center_y_count : std_logic_vector(15 downto 0) := (others => '0');
		
		-- Component Output(s) signals
		signal tb_FSM_Rout : tb_type;
		file sim_file_output_process_Draw_rectangle_Rout : text is "fifoTraces/output_process_Draw_rectangle_Rout.txt";
		signal Rout_data : std_logic_vector(7 downto 0) := (others => '0');
		signal Rout_send : std_logic;
		signal Rout_ack : std_logic := '0';
		signal Rout_rdy : std_logic := '0';
		signal Rout_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_Gout : tb_type;
		file sim_file_output_process_Draw_rectangle_Gout : text is "fifoTraces/output_process_Draw_rectangle_Gout.txt";
		signal Gout_data : std_logic_vector(7 downto 0) := (others => '0');
		signal Gout_send : std_logic;
		signal Gout_ack : std_logic := '0';
		signal Gout_rdy : std_logic := '0';
		signal Gout_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_Bout : tb_type;
		file sim_file_output_process_Draw_rectangle_Bout : text is "fifoTraces/output_process_Draw_rectangle_Bout.txt";
		signal Bout_data : std_logic_vector(7 downto 0) := (others => '0');
		signal Bout_send : std_logic;
		signal Bout_ack : std_logic := '0';
		signal Bout_rdy : std_logic := '0';
		signal Bout_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_output_process_Draw_rectangle : output_process_Draw_rectangle 
	port map(
		Rin_data => q_Rin_data,
		Rin_send => q_Rin_send,
		Rin_ack => q_Rin_ack,
		Rin_count => q_Rin_count,
		
		Gin_data => q_Gin_data,
		Gin_send => q_Gin_send,
		Gin_ack => q_Gin_ack,
		Gin_count => q_Gin_count,
		
		Bin_data => q_Bin_data,
		Bin_send => q_Bin_send,
		Bin_ack => q_Bin_ack,
		Bin_count => q_Bin_count,
		
		center_x_data => q_center_x_data,
		center_x_send => q_center_x_send,
		center_x_ack => q_center_x_ack,
		center_x_count => q_center_x_count,
		
		center_y_data => q_center_y_data,
		center_y_send => q_center_y_send,
		center_y_ack => q_center_y_ack,
		center_y_count => q_center_y_count,
		
		Rout_data => Rout_data,
		Rout_send => Rout_send,
		Rout_ack => Rout_ack,
		Rout_rdy => Rout_rdy,
		Rout_count => Rout_count,
		
		Gout_data => Gout_data,
		Gout_send => Gout_send,
		Gout_ack => Gout_ack,
		Gout_rdy => Gout_rdy,
		Gout_count => Gout_count,
		
		Bout_data => Bout_data,
		Bout_send => Bout_send,
		Bout_ack => Bout_ack,
		Bout_rdy => Bout_rdy,
		Bout_count => Bout_count,
		CLK => CLK,
		reset => reset);
	
	-- Input(s) queues
	q_Rin : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 8)
	port map(
		OUT_DATA => q_Rin_data,
		OUT_SEND => q_Rin_send,
		OUT_ACK => q_Rin_ack,
		OUT_COUNT => q_Rin_count,
	
		IN_DATA => Rin_data,
		IN_SEND => Rin_send,
		IN_ACK => Rin_ack,
		IN_RDY => Rin_rdy,
		IN_COUNT => Rin_count,

		CLK => CLK,
		reset => reset);
	
	q_Gin : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 8)
	port map(
		OUT_DATA => q_Gin_data,
		OUT_SEND => q_Gin_send,
		OUT_ACK => q_Gin_ack,
		OUT_COUNT => q_Gin_count,
	
		IN_DATA => Gin_data,
		IN_SEND => Gin_send,
		IN_ACK => Gin_ack,
		IN_RDY => Gin_rdy,
		IN_COUNT => Gin_count,

		CLK => CLK,
		reset => reset);
	
	q_Bin : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 8)
	port map(
		OUT_DATA => q_Bin_data,
		OUT_SEND => q_Bin_send,
		OUT_ACK => q_Bin_ack,
		OUT_COUNT => q_Bin_count,
	
		IN_DATA => Bin_data,
		IN_SEND => Bin_send,
		IN_ACK => Bin_ack,
		IN_RDY => Bin_rdy,
		IN_COUNT => Bin_count,

		CLK => CLK,
		reset => reset);
	
	q_center_x : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 16)
	port map(
		OUT_DATA => q_center_x_data,
		OUT_SEND => q_center_x_send,
		OUT_ACK => q_center_x_ack,
		OUT_COUNT => q_center_x_count,
	
		IN_DATA => center_x_data,
		IN_SEND => center_x_send,
		IN_ACK => center_x_ack,
		IN_RDY => center_x_rdy,
		IN_COUNT => center_x_count,

		CLK => CLK,
		reset => reset);
	
	q_center_y : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 16)
	port map(
		OUT_DATA => q_center_y_data,
		OUT_SEND => q_center_y_send,
		OUT_ACK => q_center_y_ack,
		OUT_COUNT => q_center_y_count,
	
		IN_DATA => center_y_data,
		IN_SEND => center_y_send,
		IN_ACK => center_y_ack,
		IN_RDY => center_y_rdy,
		IN_COUNT => center_y_count,

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
		-- Input port: Rin Waveform Generation
			case tb_FSM_Rin is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_Rin <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_output_process_Draw_rectangle_Rin)) then
						readline(sim_file_output_process_Draw_rectangle_Rin, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							Rin_data <= std_logic_vector(to_unsigned(input_bit, 8));
							Rin_send <= '1';
							tb_FSM_Rin <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_output_process_Draw_rectangle_Rin)) and Rin_ack = '1' then
						readline(sim_file_output_process_Draw_rectangle_Rin, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							Rin_data <= std_logic_vector(to_unsigned(input_bit, 8));
							Rin_send <= '1';
						end if;
					elsif (endfile (sim_file_output_process_Draw_rectangle_Rin)) then
						Rin_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: Gin Waveform Generation
			case tb_FSM_Gin is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_Gin <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_output_process_Draw_rectangle_Gin)) then
						readline(sim_file_output_process_Draw_rectangle_Gin, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							Gin_data <= std_logic_vector(to_unsigned(input_bit, 8));
							Gin_send <= '1';
							tb_FSM_Gin <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_output_process_Draw_rectangle_Gin)) and Gin_ack = '1' then
						readline(sim_file_output_process_Draw_rectangle_Gin, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							Gin_data <= std_logic_vector(to_unsigned(input_bit, 8));
							Gin_send <= '1';
						end if;
					elsif (endfile (sim_file_output_process_Draw_rectangle_Gin)) then
						Gin_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: Bin Waveform Generation
			case tb_FSM_Bin is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_Bin <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_output_process_Draw_rectangle_Bin)) then
						readline(sim_file_output_process_Draw_rectangle_Bin, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							Bin_data <= std_logic_vector(to_unsigned(input_bit, 8));
							Bin_send <= '1';
							tb_FSM_Bin <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_output_process_Draw_rectangle_Bin)) and Bin_ack = '1' then
						readline(sim_file_output_process_Draw_rectangle_Bin, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							Bin_data <= std_logic_vector(to_unsigned(input_bit, 8));
							Bin_send <= '1';
						end if;
					elsif (endfile (sim_file_output_process_Draw_rectangle_Bin)) then
						Bin_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: center_x Waveform Generation
			case tb_FSM_center_x is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_center_x <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_output_process_Draw_rectangle_center_x)) then
						readline(sim_file_output_process_Draw_rectangle_center_x, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							center_x_data <= std_logic_vector(to_unsigned(input_bit, 16));
							center_x_send <= '1';
							tb_FSM_center_x <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_output_process_Draw_rectangle_center_x)) and center_x_ack = '1' then
						readline(sim_file_output_process_Draw_rectangle_center_x, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							center_x_data <= std_logic_vector(to_unsigned(input_bit, 16));
							center_x_send <= '1';
						end if;
					elsif (endfile (sim_file_output_process_Draw_rectangle_center_x)) then
						center_x_send <= '0';
					end if;
				when others => null;
			end case;
		
		-- Input port: center_y Waveform Generation
			case tb_FSM_center_y is
				when after_reset =>
					count <= count + 1;
					if (count = 15) then
						tb_FSM_center_y <= read_file;
						count <= 0;
					end if;
				when read_file =>
					if (not endfile (sim_file_output_process_Draw_rectangle_center_y)) then
						readline(sim_file_output_process_Draw_rectangle_center_y, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							center_y_data <= std_logic_vector(to_unsigned(input_bit, 16));
							center_y_send <= '1';
							tb_FSM_center_y <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_output_process_Draw_rectangle_center_y)) and center_y_ack = '1' then
						readline(sim_file_output_process_Draw_rectangle_center_y, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							center_y_data <= std_logic_vector(to_unsigned(input_bit, 16));
							center_y_send <= '1';
						end if;
					elsif (endfile (sim_file_output_process_Draw_rectangle_center_y)) then
						center_y_send <= '0';
					end if;
				when others => null;
			end case;
		end if;
	end process WaveGen_Proc_In;
	
	-- Output(s) waveform Generation
	Rout_ack <= Rout_send;
	Rout_rdy <= '1';
	
	Gout_ack <= Gout_send;
	Gout_rdy <= '1';
	
	Bout_ack <= Bout_send;
	Bout_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_Rout : integer := 0;
		
		variable sequence_Gout : integer := 0;
		
		variable sequence_Bout : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: Rout Waveform Generation
			if (not endfile (sim_file_output_process_Draw_rectangle_Rout) and Rout_send = '1') then
				readline(sim_file_output_process_Draw_rectangle_Rout, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (Rout_data  = std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port Rout incorrect value computed : " & str(to_integer(unsigned(Rout_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_Rout)
						severity failure;
						
						assert (Rout_data /= std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port Rout correct value computed : " & str(to_integer(unsigned(Rout_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_Rout)
						severity note;
						sequence_Rout := sequence_Rout + 1;
					end if;
			end if;
		
		-- Output port: Gout Waveform Generation
			if (not endfile (sim_file_output_process_Draw_rectangle_Gout) and Gout_send = '1') then
				readline(sim_file_output_process_Draw_rectangle_Gout, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (Gout_data  = std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port Gout incorrect value computed : " & str(to_integer(unsigned(Gout_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_Gout)
						severity failure;
						
						assert (Gout_data /= std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port Gout correct value computed : " & str(to_integer(unsigned(Gout_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_Gout)
						severity note;
						sequence_Gout := sequence_Gout + 1;
					end if;
			end if;
		
		-- Output port: Bout Waveform Generation
			if (not endfile (sim_file_output_process_Draw_rectangle_Bout) and Bout_send = '1') then
				readline(sim_file_output_process_Draw_rectangle_Bout, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (Bout_data  = std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port Bout incorrect value computed : " & str(to_integer(unsigned(Bout_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_Bout)
						severity failure;
						
						assert (Bout_data /= std_logic_vector(to_unsigned(input_bit, 8)))
						report "on port Bout correct value computed : " & str(to_integer(unsigned(Bout_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_Bout)
						severity note;
						sequence_Bout := sequence_Bout + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_output_process_Draw_rectangle_tb; 
