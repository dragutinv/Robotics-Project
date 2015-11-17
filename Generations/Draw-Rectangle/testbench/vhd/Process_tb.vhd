-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Testbench for Network: Process 
-- Date: 2015/11/17 16:04:05
-- ----------------------------------------------------------------------------

library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;
use work.sim_package.all;

entity Process_tb is
end Process_tb;

architecture arch_Process_tb of Process_tb is
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Process
	port(
	    R_data : IN std_logic_vector(31 downto 0);
	    R_send : IN std_logic;
	    R_ack : OUT std_logic;
	    R_count : IN std_logic_vector(15 downto 0);
	    G_data : IN std_logic_vector(31 downto 0);
	    G_send : IN std_logic;
	    G_ack : OUT std_logic;
	    G_count : IN std_logic_vector(15 downto 0);
	    B_data : IN std_logic_vector(31 downto 0);
	    B_send : IN std_logic;
	    B_ack : OUT std_logic;
	    B_count : IN std_logic_vector(15 downto 0);
	    Ro_data : OUT std_logic_vector(31 downto 0);
	    Ro_send : OUT std_logic;
	    Ro_ack : IN std_logic;
	    Ro_rdy : IN std_logic;
	    Ro_count : OUT std_logic_vector(15 downto 0);
	    Go_data : OUT std_logic_vector(31 downto 0);
	    Go_send : OUT std_logic;
	    Go_ack : IN std_logic;
	    Go_rdy : IN std_logic;
	    Go_count : OUT std_logic_vector(15 downto 0);
	    Bo_data : OUT std_logic_vector(31 downto 0);
	    Bo_send : OUT std_logic;
	    Bo_ack : IN std_logic;
	    Bo_rdy : IN std_logic;
	    Bo_count : OUT std_logic_vector(15 downto 0);
	    CLK : in std_logic;
	    RESET: IN std_logic);
	end component Process;
	
		-----------------------------------------------------------------------
		-- Achitecure signals & constants
		-----------------------------------------------------------------------
		constant CLK_PERIOD : time := 100 ns;
		constant CLK_DUTY_CYCLE : real := 0.5;
		constant OFFSET : time := 100 ns;
		-- Severity level and testbench type types
		type severity_level is (note, warning, error, failure);
		type tb_type is (after_reset, read_file, CheckRead);
		
		-- Component input(s) signals
		signal tb_FSM_R : tb_type;
		file sim_file_Process_R : text is "fifoTraces/Process_R.txt";
		signal R_data : std_logic_vector(31 downto 0) := (others => '0');
		signal R_send : std_logic := '0';
		signal R_ack : std_logic;
		signal R_rdy : std_logic;
		signal R_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_R_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_R_send : std_logic := '0';
		signal q_R_ack : std_logic;
		signal q_R_rdy : std_logic;
		signal q_R_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_G : tb_type;
		file sim_file_Process_G : text is "fifoTraces/Process_G.txt";
		signal G_data : std_logic_vector(31 downto 0) := (others => '0');
		signal G_send : std_logic := '0';
		signal G_ack : std_logic;
		signal G_rdy : std_logic;
		signal G_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_G_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_G_send : std_logic := '0';
		signal q_G_ack : std_logic;
		signal q_G_rdy : std_logic;
		signal q_G_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_B : tb_type;
		file sim_file_Process_B : text is "fifoTraces/Process_B.txt";
		signal B_data : std_logic_vector(31 downto 0) := (others => '0');
		signal B_send : std_logic := '0';
		signal B_ack : std_logic;
		signal B_rdy : std_logic;
		signal B_count : std_logic_vector(15 downto 0) := (others => '0');
		-- Input component queue
		signal q_B_data : std_logic_vector(31 downto 0) := (others => '0');
		signal q_B_send : std_logic := '0';
		signal q_B_ack : std_logic;
		signal q_B_rdy : std_logic;
		signal q_B_count : std_logic_vector(15 downto 0) := (others => '0');
		
		-- Component Output(s) signals
		signal tb_FSM_Ro : tb_type;
		file sim_file_Process_Ro : text is "fifoTraces/Process_Ro.txt";
		signal Ro_data : std_logic_vector(31 downto 0) := (others => '0');
		signal Ro_send : std_logic;
		signal Ro_ack : std_logic := '0';
		signal Ro_rdy : std_logic := '0';
		signal Ro_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_Go : tb_type;
		file sim_file_Process_Go : text is "fifoTraces/Process_Go.txt";
		signal Go_data : std_logic_vector(31 downto 0) := (others => '0');
		signal Go_send : std_logic;
		signal Go_ack : std_logic := '0';
		signal Go_rdy : std_logic := '0';
		signal Go_count : std_logic_vector(15 downto 0) := (others => '0');
		signal tb_FSM_Bo : tb_type;
		file sim_file_Process_Bo : text is "fifoTraces/Process_Bo.txt";
		signal Bo_data : std_logic_vector(31 downto 0) := (others => '0');
		signal Bo_send : std_logic;
		signal Bo_ack : std_logic := '0';
		signal Bo_rdy : std_logic := '0';
		signal Bo_count : std_logic_vector(15 downto 0) := (others => '0');
		
	
		-- GoDone Weights Output Files
		
		signal count : integer range 255 downto 0 := 0;
		signal CLK : std_logic := '0';
		signal reset : std_logic := '0';
		
begin
	
	i_Process : Process 
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
		
		Ro_data => Ro_data,
		Ro_send => Ro_send,
		Ro_ack => Ro_ack,
		Ro_rdy => Ro_rdy,
		Ro_count => Ro_count,
		
		Go_data => Go_data,
		Go_send => Go_send,
		Go_ack => Go_ack,
		Go_rdy => Go_rdy,
		Go_count => Go_count,
		
		Bo_data => Bo_data,
		Bo_send => Bo_send,
		Bo_ack => Bo_ack,
		Bo_rdy => Bo_rdy,
		Bo_count => Bo_count,
		CLK => CLK,
		reset => reset);
	
	-- Input(s) queues
	q_R : entity systemBuilder.Queue(behavioral)
	generic map(length => 512, width => 32)
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
	generic map(length => 512, width => 32)
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
	generic map(length => 512, width => 32)
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
	
	CLK_clockProcess : process
		begin
		wait for OFFSET;
			clockLOOP : loop
				CLK <= '0';
				wait for (CLK_PERIOD - (CLK_PERIOD * CLK_DUTY_CYCLE));
				CLK <= '1';
				wait for (CLK_PERIOD * CLK_DUTY_CYCLE);
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
					if (not endfile (sim_file_Process_R)) then
						readline(sim_file_Process_R, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							R_data <= std_logic_vector(to_signed(input_bit, 32));
							R_send <= '1';
							tb_FSM_R <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Process_R)) and R_ack = '1' then
						readline(sim_file_Process_R, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							R_data <= std_logic_vector(to_signed(input_bit, 32));
							R_send <= '1';
						end if;
					elsif (endfile (sim_file_Process_R)) then
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
					if (not endfile (sim_file_Process_G)) then
						readline(sim_file_Process_G, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							G_data <= std_logic_vector(to_signed(input_bit, 32));
							G_send <= '1';
							tb_FSM_G <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Process_G)) and G_ack = '1' then
						readline(sim_file_Process_G, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							G_data <= std_logic_vector(to_signed(input_bit, 32));
							G_send <= '1';
						end if;
					elsif (endfile (sim_file_Process_G)) then
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
					if (not endfile (sim_file_Process_B)) then
						readline(sim_file_Process_B, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							B_data <= std_logic_vector(to_signed(input_bit, 32));
							B_send <= '1';
							tb_FSM_B <= CheckRead;
						end if;
					end if;
				when CheckRead =>
					if (not endfile (sim_file_Process_B)) and B_ack = '1' then
						readline(sim_file_Process_B, line_number);
						if (line_number'length > 0 and line_number(1) /= '/') then
							read(line_number, input_bit);
							B_data <= std_logic_vector(to_signed(input_bit, 32));
							B_send <= '1';
						end if;
					elsif (endfile (sim_file_Process_B)) then
						B_send <= '0';
					end if;
				when others => null;
			end case;
		end if;
	end process WaveGen_Proc_In;
	
	-- Output(s) waveform Generation
	Ro_ack <= Ro_send;
	Ro_rdy <= '1';
	
	Go_ack <= Go_send;
	Go_rdy <= '1';
	
	Bo_ack <= Bo_send;
	Bo_rdy <= '1';
	
	WaveGen_Proc_Out : process (CLK)
		variable Input_bit   : integer range 2147483647 downto - 2147483648;
		variable line_number : line;
		variable sequence_Ro : integer := 0;
		
		variable sequence_Go : integer := 0;
		
		variable sequence_Bo : integer := 0;
	begin
		if (rising_edge(CLK)) then
		-- Output port: Ro Waveform Generation
			if (not endfile (sim_file_Process_Ro) and Ro_send = '1') then
				readline(sim_file_Process_Ro, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (Ro_data  = std_logic_vector(to_signed(input_bit, 32)))
						report "on port Ro incorrect value computed : " & str(to_integer(signed(Ro_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_Ro)
						severity failure;
						
						assert (Ro_data /= std_logic_vector(to_signed(input_bit, 32)))
						report "on port Ro correct value computed : " & str(to_integer(signed(Ro_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_Ro)
						severity note;
						sequence_Ro := sequence_Ro + 1;
					end if;
			end if;
		
		-- Output port: Go Waveform Generation
			if (not endfile (sim_file_Process_Go) and Go_send = '1') then
				readline(sim_file_Process_Go, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (Go_data  = std_logic_vector(to_signed(input_bit, 32)))
						report "on port Go incorrect value computed : " & str(to_integer(signed(Go_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_Go)
						severity failure;
						
						assert (Go_data /= std_logic_vector(to_signed(input_bit, 32)))
						report "on port Go correct value computed : " & str(to_integer(signed(Go_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_Go)
						severity note;
						sequence_Go := sequence_Go + 1;
					end if;
			end if;
		
		-- Output port: Bo Waveform Generation
			if (not endfile (sim_file_Process_Bo) and Bo_send = '1') then
				readline(sim_file_Process_Bo, line_number);
					if (line_number'length > 0 and line_number(1) /= '/') then
						read(line_number, input_bit);
						assert (Bo_data  = std_logic_vector(to_signed(input_bit, 32)))
						report "on port Bo incorrect value computed : " & str(to_integer(signed(Bo_data))) & " instead of : " & str(input_bit) & " sequence " & str(sequence_Bo)
						severity failure;
						
						assert (Bo_data /= std_logic_vector(to_signed(input_bit, 32)))
						report "on port Bo correct value computed : " & str(to_integer(signed(Bo_data))) & " equals : " & str(input_bit) & " sequence " & str(sequence_Bo)
						severity note;
						sequence_Bo := sequence_Bo + 1;
					end if;
			end if;
		end if;			
	end process WaveGen_Proc_Out;
	
end architecture arch_Process_tb; 
