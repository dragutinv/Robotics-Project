-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Top level Network: TopAddArray 
-- Date: 2015/10/31 11:10:49
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- Clock Domain(s) Information on the Network "TopAddArray"
--
-- Network input port(s) clock domain:
-- Network output port(s) clock domain:
-- Actor(s) clock domains:
--	Actor_1 (Actor_1) --> CLK
--	Actor_2 (Actor_2) --> CLK
--	Actor_3 (Actor_3) --> CLK
--	Add_array (Add_array) --> CLK

library ieee;
library SystemBuilder;

use ieee.std_logic_1164.all;

-- ----------------------------------------------------------------------------
-- Entity Declaration
-- ----------------------------------------------------------------------------
entity TopAddArray is
port(
	 -- XDF Network Input(s)
	 -- XDF Network Output(s)
	 -- Clock(s) and Reset
	 CLK : in std_logic;
	 RESET : in std_logic);
end entity TopAddArray;

-- ----------------------------------------------------------------------------
-- Architecture Declaration
-- ----------------------------------------------------------------------------
architecture rtl of TopAddArray is
	-- --------------------------------------------------------------------------
	-- Internal Signals
	-- --------------------------------------------------------------------------

	-- Clock(s) and Reset signal
	signal clocks, resets: std_logic_vector(0 downto 0);

	-- Network Input Port(s)
	
	-- Network Input Port Fanout(s)
	
	-- Network Output Port(s) 
	
	-- Actors Input/Output and Output fanout signals
	
	signal ao_Actor_1_source1_data : std_logic_vector(7 downto 0);
	signal ao_Actor_1_source1_send : std_logic;
	signal ao_Actor_1_source1_ack : std_logic;
	signal ao_Actor_1_source1_rdy : std_logic;
	signal ao_Actor_1_source1_count : std_logic_vector(15 downto 0);
	
	signal aof_Actor_1_source1_data : std_logic_vector(7 downto 0);
	signal aof_Actor_1_source1_send : std_logic_vector(0 downto 0);
	signal aof_Actor_1_source1_ack : std_logic_vector(0 downto 0);
	signal aof_Actor_1_source1_rdy : std_logic_vector(0 downto 0);
	signal aof_Actor_1_source1_count : std_logic_vector(15 downto 0);
	
	
	signal ao_Actor_2_source2_data : std_logic_vector(7 downto 0);
	signal ao_Actor_2_source2_send : std_logic;
	signal ao_Actor_2_source2_ack : std_logic;
	signal ao_Actor_2_source2_rdy : std_logic;
	signal ao_Actor_2_source2_count : std_logic_vector(15 downto 0);
	
	signal aof_Actor_2_source2_data : std_logic_vector(7 downto 0);
	signal aof_Actor_2_source2_send : std_logic_vector(0 downto 0);
	signal aof_Actor_2_source2_ack : std_logic_vector(0 downto 0);
	signal aof_Actor_2_source2_rdy : std_logic_vector(0 downto 0);
	signal aof_Actor_2_source2_count : std_logic_vector(15 downto 0);
	
	signal ai_Actor_3_result_data : std_logic_vector(7 downto 0);
	signal ai_Actor_3_result_send : std_logic;
	signal ai_Actor_3_result_ack : std_logic;
	signal ai_Actor_3_result_count : std_logic_vector(15 downto 0);
	
	
	signal ai_Add_array_Input1_data : std_logic_vector(7 downto 0);
	signal ai_Add_array_Input1_send : std_logic;
	signal ai_Add_array_Input1_ack : std_logic;
	signal ai_Add_array_Input1_count : std_logic_vector(15 downto 0);
	
	signal ai_Add_array_Input2_data : std_logic_vector(7 downto 0);
	signal ai_Add_array_Input2_send : std_logic;
	signal ai_Add_array_Input2_ack : std_logic;
	signal ai_Add_array_Input2_count : std_logic_vector(15 downto 0);
	
	signal ao_Add_array_Output_data : std_logic_vector(7 downto 0);
	signal ao_Add_array_Output_send : std_logic;
	signal ao_Add_array_Output_ack : std_logic;
	signal ao_Add_array_Output_rdy : std_logic;
	signal ao_Add_array_Output_count : std_logic_vector(15 downto 0);
	
	signal aof_Add_array_Output_data : std_logic_vector(7 downto 0);
	signal aof_Add_array_Output_send : std_logic_vector(0 downto 0);
	signal aof_Add_array_Output_ack : std_logic_vector(0 downto 0);
	signal aof_Add_array_Output_rdy : std_logic_vector(0 downto 0);
	signal aof_Add_array_Output_count : std_logic_vector(15 downto 0);

	-- --------------------------------------------------------------------------
	-- Network Instances
	-- --------------------------------------------------------------------------
	component Actor_1 is
	port(
	     -- Instance Actor_1 Input(s)
	     -- Instance Actor_1 Output(s)
	     source1_data : out std_logic_vector(7 downto 0);
	     source1_send : out std_logic;
	     source1_ack : in std_logic;
	     source1_rdy : in std_logic;
	     source1_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Actor_1;
	
	component Actor_2 is
	port(
	     -- Instance Actor_2 Input(s)
	     -- Instance Actor_2 Output(s)
	     source2_data : out std_logic_vector(7 downto 0);
	     source2_send : out std_logic;
	     source2_ack : in std_logic;
	     source2_rdy : in std_logic;
	     source2_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Actor_2;
	
	component Actor_3 is
	port(
	     -- Instance Actor_3 Input(s)
	     result_data : in std_logic_vector(7 downto 0);
	     result_send : in std_logic;
	     result_ack : out std_logic;
	     result_count : in std_logic_vector(15 downto 0);
	     -- Instance Actor_3 Output(s)
	     clk: in std_logic;
	     reset: in std_logic);
	end component Actor_3;
	
	component Add_array is
	port(
	     -- Instance Add_array Input(s)
	     Input1_data : in std_logic_vector(7 downto 0);
	     Input1_send : in std_logic;
	     Input1_ack : out std_logic;
	     Input1_count : in std_logic_vector(15 downto 0);
	     Input2_data : in std_logic_vector(7 downto 0);
	     Input2_send : in std_logic;
	     Input2_ack : out std_logic;
	     Input2_count : in std_logic_vector(15 downto 0);
	     -- Instance Add_array Output(s)
	     Output_data : out std_logic_vector(7 downto 0);
	     Output_send : out std_logic;
	     Output_ack : in std_logic;
	     Output_rdy : in std_logic;
	     Output_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Add_array;
	

begin
	-- Reset Controller
	rcon: entity SystemBuilder.resetController(behavioral)
	generic map(count => 1)
	port map( 
	         clocks => clocks, 
	         reset_in => reset, 
	         resets => resets);
	
	clocks(0) <= CLK;

	-- --------------------------------------------------------------------------
	-- Actor instances
	-- --------------------------------------------------------------------------
	i_Actor_1 : component Actor_1
	port map(
		-- Instance Actor_1 Input(s)
		-- Instance Actor_1 Output(s)
		source1_data => ao_Actor_1_source1_data,
		source1_send => ao_Actor_1_source1_send,
		source1_ack => ao_Actor_1_source1_ack,
		source1_rdy => ao_Actor_1_source1_rdy,
		source1_count => ao_Actor_1_source1_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Actor_2 : component Actor_2
	port map(
		-- Instance Actor_2 Input(s)
		-- Instance Actor_2 Output(s)
		source2_data => ao_Actor_2_source2_data,
		source2_send => ao_Actor_2_source2_send,
		source2_ack => ao_Actor_2_source2_ack,
		source2_rdy => ao_Actor_2_source2_rdy,
		source2_count => ao_Actor_2_source2_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Actor_3 : component Actor_3
	port map(
		-- Instance Actor_3 Input(s)
		result_data => ai_Actor_3_result_data,
		result_send => ai_Actor_3_result_send,
		result_ack => ai_Actor_3_result_ack,
		result_count => ai_Actor_3_result_count,
		-- Instance Actor_3 Output(s)
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Add_array : component Add_array
	port map(
		-- Instance Add_array Input(s)
		Input1_data => ai_Add_array_Input1_data,
		Input1_send => ai_Add_array_Input1_send,
		Input1_ack => ai_Add_array_Input1_ack,
		Input1_count => ai_Add_array_Input1_count,
		
		Input2_data => ai_Add_array_Input2_data,
		Input2_send => ai_Add_array_Input2_send,
		Input2_ack => ai_Add_array_Input2_ack,
		Input2_count => ai_Add_array_Input2_count,
		-- Instance Add_array Output(s)
		Output_data => ao_Add_array_Output_data,
		Output_send => ao_Add_array_Output_send,
		Output_ack => ao_Add_array_Output_ack,
		Output_rdy => ao_Add_array_Output_rdy,
		Output_count => ao_Add_array_Output_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	-- --------------------------------------------------------------------------
	-- Nework Input Fanouts
	-- --------------------------------------------------------------------------

	-- --------------------------------------------------------------------------
	-- Actor Output Fanouts
	-- --------------------------------------------------------------------------
	f_ao_Actor_1_source1 : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Actor_1_source1_data,
		In_send => ao_Actor_1_source1_send,
		In_ack => ao_Actor_1_source1_ack,
		In_rdy => ao_Actor_1_source1_rdy,
		In_count => ao_Actor_1_source1_count,
		-- Fanout Out
		Out_data => aof_Actor_1_source1_data,
		Out_send => aof_Actor_1_source1_send,
		Out_ack => aof_Actor_1_source1_ack,
		Out_rdy => aof_Actor_1_source1_rdy,
		Out_count => aof_Actor_1_source1_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_Actor_2_source2 : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Actor_2_source2_data,
		In_send => ao_Actor_2_source2_send,
		In_ack => ao_Actor_2_source2_ack,
		In_rdy => ao_Actor_2_source2_rdy,
		In_count => ao_Actor_2_source2_count,
		-- Fanout Out
		Out_data => aof_Actor_2_source2_data,
		Out_send => aof_Actor_2_source2_send,
		Out_ack => aof_Actor_2_source2_ack,
		Out_rdy => aof_Actor_2_source2_rdy,
		Out_count => aof_Actor_2_source2_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	
	f_ao_Add_array_Output : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Add_array_Output_data,
		In_send => ao_Add_array_Output_send,
		In_ack => ao_Add_array_Output_ack,
		In_rdy => ao_Add_array_Output_rdy,
		In_count => ao_Add_array_Output_count,
		-- Fanout Out
		Out_data => aof_Add_array_Output_data,
		Out_send => aof_Add_array_Output_send,
		Out_ack => aof_Add_array_Output_ack,
		Out_rdy => aof_Add_array_Output_rdy,
		Out_count => aof_Add_array_Output_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));

	-- --------------------------------------------------------------------------
	-- Queues
	-- --------------------------------------------------------------------------
	q_ai_Add_array_Input1 : entity SystemBuilder.Queue(behavioral)
	generic map (length => 512, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Add_array_Input1_data,
		Out_send => ai_Add_array_Input1_send,
		Out_ack => ai_Add_array_Input1_ack,
		Out_count => ai_Add_array_Input1_count,
		-- Queue In
		In_data => aof_Actor_1_source1_data,
		In_send => aof_Actor_1_source1_send(0),
		In_ack => aof_Actor_1_source1_ack(0),
		In_rdy => aof_Actor_1_source1_rdy(0),
		In_count => aof_Actor_1_source1_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Add_array_Input2 : entity SystemBuilder.Queue(behavioral)
	generic map (length => 512, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Add_array_Input2_data,
		Out_send => ai_Add_array_Input2_send,
		Out_ack => ai_Add_array_Input2_ack,
		Out_count => ai_Add_array_Input2_count,
		-- Queue In
		In_data => aof_Actor_2_source2_data,
		In_send => aof_Actor_2_source2_send(0),
		In_ack => aof_Actor_2_source2_ack(0),
		In_rdy => aof_Actor_2_source2_rdy(0),
		In_count => aof_Actor_2_source2_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Actor_3_result : entity SystemBuilder.Queue(behavioral)
	generic map (length => 512, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Actor_3_result_data,
		Out_send => ai_Actor_3_result_send,
		Out_ack => ai_Actor_3_result_ack,
		Out_count => ai_Actor_3_result_count,
		-- Queue In
		In_data => aof_Add_array_Output_data,
		In_send => aof_Add_array_Output_send(0),
		In_ack => aof_Add_array_Output_ack(0),
		In_rdy => aof_Add_array_Output_rdy(0),
		In_count => aof_Add_array_Output_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);

	-- --------------------------------------------------------------------------
	-- Network port(s) instantiation
	-- --------------------------------------------------------------------------
	
	-- Output Port(s) Instantiation
	
	-- Input Port(s) Instantiation
end architecture rtl;
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
