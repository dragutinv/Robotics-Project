-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Top level Network: Process 
-- Date: 2015/11/17 16:04:05
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- Clock Domain(s) Information on the Network "Process"
--
-- Network input port(s) clock domain:
--	R --> CLK
--	G --> CLK
--	B --> CLK
-- Network output port(s) clock domain:
-- 	Ro --> CLK
-- 	Go --> CLK
-- 	Bo --> CLK
-- Actor(s) clock domains:
--	PROCESS (PROCESS) --> CLK

library ieee;
library SystemBuilder;

use ieee.std_logic_1164.all;

-- ----------------------------------------------------------------------------
-- Entity Declaration
-- ----------------------------------------------------------------------------
entity Process is
port(
	 -- XDF Network Input(s)
	 R_data : in std_logic_vector(31 downto 0);
	 R_send : in std_logic;
	 R_ack : out std_logic;
	 R_rdy : out std_logic;
	 R_count : in std_logic_vector(15 downto 0);
	 G_data : in std_logic_vector(31 downto 0);
	 G_send : in std_logic;
	 G_ack : out std_logic;
	 G_rdy : out std_logic;
	 G_count : in std_logic_vector(15 downto 0);
	 B_data : in std_logic_vector(31 downto 0);
	 B_send : in std_logic;
	 B_ack : out std_logic;
	 B_rdy : out std_logic;
	 B_count : in std_logic_vector(15 downto 0);
	 -- XDF Network Output(s)
	 Ro_data : out std_logic_vector(31 downto 0);
	 Ro_send : out std_logic;
	 Ro_ack : in std_logic;
	 Ro_rdy : in std_logic;
	 Ro_count : out std_logic_vector(15 downto 0);
	 Go_data : out std_logic_vector(31 downto 0);
	 Go_send : out std_logic;
	 Go_ack : in std_logic;
	 Go_rdy : in std_logic;
	 Go_count : out std_logic_vector(15 downto 0);
	 Bo_data : out std_logic_vector(31 downto 0);
	 Bo_send : out std_logic;
	 Bo_ack : in std_logic;
	 Bo_rdy : in std_logic;
	 Bo_count : out std_logic_vector(15 downto 0);
	 -- Clock(s) and Reset
	 CLK : in std_logic;
	 RESET : in std_logic);
end entity Process;

-- ----------------------------------------------------------------------------
-- Architecture Declaration
-- ----------------------------------------------------------------------------
architecture rtl of Process is
	-- --------------------------------------------------------------------------
	-- Internal Signals
	-- --------------------------------------------------------------------------

	-- Clock(s) and Reset signal
	signal clocks, resets: std_logic_vector(0 downto 0);

	-- Network Input Port(s)
	signal ni_R_data : std_logic_vector(31 downto 0);
	signal ni_R_send : std_logic;
	signal ni_R_ack : std_logic;
	signal ni_R_rdy : std_logic;
	signal ni_R_count : std_logic_vector(15 downto 0);
	signal ni_G_data : std_logic_vector(31 downto 0);
	signal ni_G_send : std_logic;
	signal ni_G_ack : std_logic;
	signal ni_G_rdy : std_logic;
	signal ni_G_count : std_logic_vector(15 downto 0);
	signal ni_B_data : std_logic_vector(31 downto 0);
	signal ni_B_send : std_logic;
	signal ni_B_ack : std_logic;
	signal ni_B_rdy : std_logic;
	signal ni_B_count : std_logic_vector(15 downto 0);
	
	-- Network Input Port Fanout(s)
	signal nif_R_data : std_logic_vector(31 downto 0);
	signal nif_R_send : std_logic_vector(0 downto 0);
	signal nif_R_ack : std_logic_vector(0 downto 0);
	signal nif_R_rdy : std_logic_vector(0 downto 0);
	signal nif_R_count : std_logic_vector(15 downto 0);
	signal nif_G_data : std_logic_vector(31 downto 0);
	signal nif_G_send : std_logic_vector(0 downto 0);
	signal nif_G_ack : std_logic_vector(0 downto 0);
	signal nif_G_rdy : std_logic_vector(0 downto 0);
	signal nif_G_count : std_logic_vector(15 downto 0);
	signal nif_B_data : std_logic_vector(31 downto 0);
	signal nif_B_send : std_logic_vector(0 downto 0);
	signal nif_B_ack : std_logic_vector(0 downto 0);
	signal nif_B_rdy : std_logic_vector(0 downto 0);
	signal nif_B_count : std_logic_vector(15 downto 0);
	
	-- Network Output Port(s) 
	signal no_Ro_data : std_logic_vector(31 downto 0);
	signal no_Ro_send : std_logic;
	signal no_Ro_ack : std_logic;
	signal no_Ro_rdy : std_logic;
	signal no_Ro_count : std_logic_vector(15 downto 0);
	signal no_Go_data : std_logic_vector(31 downto 0);
	signal no_Go_send : std_logic;
	signal no_Go_ack : std_logic;
	signal no_Go_rdy : std_logic;
	signal no_Go_count : std_logic_vector(15 downto 0);
	signal no_Bo_data : std_logic_vector(31 downto 0);
	signal no_Bo_send : std_logic;
	signal no_Bo_ack : std_logic;
	signal no_Bo_rdy : std_logic;
	signal no_Bo_count : std_logic_vector(15 downto 0);
	
	-- Actors Input/Output and Output fanout signals
	signal ai_PROCESS_Rin_data : std_logic_vector(7 downto 0);
	signal ai_PROCESS_Rin_send : std_logic;
	signal ai_PROCESS_Rin_ack : std_logic;
	signal ai_PROCESS_Rin_count : std_logic_vector(15 downto 0);
	
	signal ai_PROCESS_Gin_data : std_logic_vector(7 downto 0);
	signal ai_PROCESS_Gin_send : std_logic;
	signal ai_PROCESS_Gin_ack : std_logic;
	signal ai_PROCESS_Gin_count : std_logic_vector(15 downto 0);
	
	signal ai_PROCESS_Bin_data : std_logic_vector(7 downto 0);
	signal ai_PROCESS_Bin_send : std_logic;
	signal ai_PROCESS_Bin_ack : std_logic;
	signal ai_PROCESS_Bin_count : std_logic_vector(15 downto 0);
	
	signal ao_PROCESS_Rout_data : std_logic_vector(7 downto 0);
	signal ao_PROCESS_Rout_send : std_logic;
	signal ao_PROCESS_Rout_ack : std_logic;
	signal ao_PROCESS_Rout_rdy : std_logic;
	signal ao_PROCESS_Rout_count : std_logic_vector(15 downto 0);
	
	signal aof_PROCESS_Rout_data : std_logic_vector(7 downto 0);
	signal aof_PROCESS_Rout_send : std_logic_vector(0 downto 0);
	signal aof_PROCESS_Rout_ack : std_logic_vector(0 downto 0);
	signal aof_PROCESS_Rout_rdy : std_logic_vector(0 downto 0);
	signal aof_PROCESS_Rout_count : std_logic_vector(15 downto 0);
	
	signal ao_PROCESS_Gout_data : std_logic_vector(7 downto 0);
	signal ao_PROCESS_Gout_send : std_logic;
	signal ao_PROCESS_Gout_ack : std_logic;
	signal ao_PROCESS_Gout_rdy : std_logic;
	signal ao_PROCESS_Gout_count : std_logic_vector(15 downto 0);
	
	signal aof_PROCESS_Gout_data : std_logic_vector(7 downto 0);
	signal aof_PROCESS_Gout_send : std_logic_vector(0 downto 0);
	signal aof_PROCESS_Gout_ack : std_logic_vector(0 downto 0);
	signal aof_PROCESS_Gout_rdy : std_logic_vector(0 downto 0);
	signal aof_PROCESS_Gout_count : std_logic_vector(15 downto 0);
	
	signal ao_PROCESS_Bout_data : std_logic_vector(7 downto 0);
	signal ao_PROCESS_Bout_send : std_logic;
	signal ao_PROCESS_Bout_ack : std_logic;
	signal ao_PROCESS_Bout_rdy : std_logic;
	signal ao_PROCESS_Bout_count : std_logic_vector(15 downto 0);
	
	signal aof_PROCESS_Bout_data : std_logic_vector(7 downto 0);
	signal aof_PROCESS_Bout_send : std_logic_vector(0 downto 0);
	signal aof_PROCESS_Bout_ack : std_logic_vector(0 downto 0);
	signal aof_PROCESS_Bout_rdy : std_logic_vector(0 downto 0);
	signal aof_PROCESS_Bout_count : std_logic_vector(15 downto 0);

	-- --------------------------------------------------------------------------
	-- Network Instances
	-- --------------------------------------------------------------------------
	component PROCESS is
	port(
	     -- Instance PROCESS Input(s)
	     Rin_data : in std_logic_vector(7 downto 0);
	     Rin_send : in std_logic;
	     Rin_ack : out std_logic;
	     Rin_count : in std_logic_vector(15 downto 0);
	     Gin_data : in std_logic_vector(7 downto 0);
	     Gin_send : in std_logic;
	     Gin_ack : out std_logic;
	     Gin_count : in std_logic_vector(15 downto 0);
	     Bin_data : in std_logic_vector(7 downto 0);
	     Bin_send : in std_logic;
	     Bin_ack : out std_logic;
	     Bin_count : in std_logic_vector(15 downto 0);
	     -- Instance PROCESS Output(s)
	     Rout_data : out std_logic_vector(7 downto 0);
	     Rout_send : out std_logic;
	     Rout_ack : in std_logic;
	     Rout_rdy : in std_logic;
	     Rout_count : out std_logic_vector(15 downto 0);
	     Gout_data : out std_logic_vector(7 downto 0);
	     Gout_send : out std_logic;
	     Gout_ack : in std_logic;
	     Gout_rdy : in std_logic;
	     Gout_count : out std_logic_vector(15 downto 0);
	     Bout_data : out std_logic_vector(7 downto 0);
	     Bout_send : out std_logic;
	     Bout_ack : in std_logic;
	     Bout_rdy : in std_logic;
	     Bout_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component PROCESS;
	

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
	i_PROCESS : component PROCESS
	port map(
		-- Instance PROCESS Input(s)
		Rin_data => ai_PROCESS_Rin_data,
		Rin_send => ai_PROCESS_Rin_send,
		Rin_ack => ai_PROCESS_Rin_ack,
		Rin_count => ai_PROCESS_Rin_count,
		
		Gin_data => ai_PROCESS_Gin_data,
		Gin_send => ai_PROCESS_Gin_send,
		Gin_ack => ai_PROCESS_Gin_ack,
		Gin_count => ai_PROCESS_Gin_count,
		
		Bin_data => ai_PROCESS_Bin_data,
		Bin_send => ai_PROCESS_Bin_send,
		Bin_ack => ai_PROCESS_Bin_ack,
		Bin_count => ai_PROCESS_Bin_count,
		-- Instance PROCESS Output(s)
		Rout_data => ao_PROCESS_Rout_data,
		Rout_send => ao_PROCESS_Rout_send,
		Rout_ack => ao_PROCESS_Rout_ack,
		Rout_rdy => ao_PROCESS_Rout_rdy,
		Rout_count => ao_PROCESS_Rout_count,
		
		Gout_data => ao_PROCESS_Gout_data,
		Gout_send => ao_PROCESS_Gout_send,
		Gout_ack => ao_PROCESS_Gout_ack,
		Gout_rdy => ao_PROCESS_Gout_rdy,
		Gout_count => ao_PROCESS_Gout_count,
		
		Bout_data => ao_PROCESS_Bout_data,
		Bout_send => ao_PROCESS_Bout_send,
		Bout_ack => ao_PROCESS_Bout_ack,
		Bout_rdy => ao_PROCESS_Bout_rdy,
		Bout_count => ao_PROCESS_Bout_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	-- --------------------------------------------------------------------------
	-- Nework Input Fanouts
	-- --------------------------------------------------------------------------
	f_ni_R : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 32)
	port map(
		-- Fanout In
		In_data => ni_R_data,
		In_send => ni_R_send,
		In_ack => ni_R_ack,
		In_rdy => ni_R_rdy,
		In_count => ni_R_count,
		-- Fanout Out
		Out_data => nif_R_data,
		Out_send => nif_R_send,
		Out_ack => nif_R_ack,
		Out_rdy => nif_R_rdy,
		Out_count => nif_R_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ni_G : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 32)
	port map(
		-- Fanout In
		In_data => ni_G_data,
		In_send => ni_G_send,
		In_ack => ni_G_ack,
		In_rdy => ni_G_rdy,
		In_count => ni_G_count,
		-- Fanout Out
		Out_data => nif_G_data,
		Out_send => nif_G_send,
		Out_ack => nif_G_ack,
		Out_rdy => nif_G_rdy,
		Out_count => nif_G_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ni_B : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 32)
	port map(
		-- Fanout In
		In_data => ni_B_data,
		In_send => ni_B_send,
		In_ack => ni_B_ack,
		In_rdy => ni_B_rdy,
		In_count => ni_B_count,
		-- Fanout Out
		Out_data => nif_B_data,
		Out_send => nif_B_send,
		Out_ack => nif_B_ack,
		Out_rdy => nif_B_rdy,
		Out_count => nif_B_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));

	-- --------------------------------------------------------------------------
	-- Actor Output Fanouts
	-- --------------------------------------------------------------------------
	f_ao_PROCESS_Rout : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_PROCESS_Rout_data,
		In_send => ao_PROCESS_Rout_send,
		In_ack => ao_PROCESS_Rout_ack,
		In_rdy => ao_PROCESS_Rout_rdy,
		In_count => ao_PROCESS_Rout_count,
		-- Fanout Out
		Out_data => aof_PROCESS_Rout_data,
		Out_send => aof_PROCESS_Rout_send,
		Out_ack => aof_PROCESS_Rout_ack,
		Out_rdy => aof_PROCESS_Rout_rdy,
		Out_count => aof_PROCESS_Rout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_PROCESS_Gout : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_PROCESS_Gout_data,
		In_send => ao_PROCESS_Gout_send,
		In_ack => ao_PROCESS_Gout_ack,
		In_rdy => ao_PROCESS_Gout_rdy,
		In_count => ao_PROCESS_Gout_count,
		-- Fanout Out
		Out_data => aof_PROCESS_Gout_data,
		Out_send => aof_PROCESS_Gout_send,
		Out_ack => aof_PROCESS_Gout_ack,
		Out_rdy => aof_PROCESS_Gout_rdy,
		Out_count => aof_PROCESS_Gout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_PROCESS_Bout : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_PROCESS_Bout_data,
		In_send => ao_PROCESS_Bout_send,
		In_ack => ao_PROCESS_Bout_ack,
		In_rdy => ao_PROCESS_Bout_rdy,
		In_count => ao_PROCESS_Bout_count,
		-- Fanout Out
		Out_data => aof_PROCESS_Bout_data,
		Out_send => aof_PROCESS_Bout_send,
		Out_ack => aof_PROCESS_Bout_ack,
		Out_rdy => aof_PROCESS_Bout_rdy,
		Out_count => aof_PROCESS_Bout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));

	-- --------------------------------------------------------------------------
	-- Queues
	-- --------------------------------------------------------------------------
	q_ai_PROCESS_Rin : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_PROCESS_Rin_data,
		Out_send => ai_PROCESS_Rin_send,
		Out_ack => ai_PROCESS_Rin_ack,
		Out_count => ai_PROCESS_Rin_count,
		-- Queue In
		In_data => nif_R_data,
		In_send => nif_R_send(0),
		In_ack => nif_R_ack(0),
		In_rdy => nif_R_rdy(0),
		In_count => nif_R_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_PROCESS_Gin : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_PROCESS_Gin_data,
		Out_send => ai_PROCESS_Gin_send,
		Out_ack => ai_PROCESS_Gin_ack,
		Out_count => ai_PROCESS_Gin_count,
		-- Queue In
		In_data => nif_G_data,
		In_send => nif_G_send(0),
		In_ack => nif_G_ack(0),
		In_rdy => nif_G_rdy(0),
		In_count => nif_G_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_PROCESS_Bin : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_PROCESS_Bin_data,
		Out_send => ai_PROCESS_Bin_send,
		Out_ack => ai_PROCESS_Bin_ack,
		Out_count => ai_PROCESS_Bin_count,
		-- Queue In
		In_data => nif_B_data,
		In_send => nif_B_send(0),
		In_ack => nif_B_ack(0),
		In_rdy => nif_B_rdy(0),
		In_count => nif_B_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_no_Ro : entity SystemBuilder.Queue(behavioral)
	generic map (length => 64, width => 32)
	port map(
		-- Queue Out
		Out_data => no_Ro_data,
		Out_send => no_Ro_send,
		Out_ack => no_Ro_ack,
		Out_count => no_Ro_count,
		-- Queue In
		In_data => aof_PROCESS_Rout_data,
		In_send => aof_PROCESS_Rout_send(0),
		In_ack => aof_PROCESS_Rout_ack(0),
		In_rdy => aof_PROCESS_Rout_rdy(0),
		In_count => aof_PROCESS_Rout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_no_Go : entity SystemBuilder.Queue(behavioral)
	generic map (length => 64, width => 32)
	port map(
		-- Queue Out
		Out_data => no_Go_data,
		Out_send => no_Go_send,
		Out_ack => no_Go_ack,
		Out_count => no_Go_count,
		-- Queue In
		In_data => aof_PROCESS_Gout_data,
		In_send => aof_PROCESS_Gout_send(0),
		In_ack => aof_PROCESS_Gout_ack(0),
		In_rdy => aof_PROCESS_Gout_rdy(0),
		In_count => aof_PROCESS_Gout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_no_Bo : entity SystemBuilder.Queue(behavioral)
	generic map (length => 64, width => 32)
	port map(
		-- Queue Out
		Out_data => no_Bo_data,
		Out_send => no_Bo_send,
		Out_ack => no_Bo_ack,
		Out_count => no_Bo_count,
		-- Queue In
		In_data => aof_PROCESS_Bout_data,
		In_send => aof_PROCESS_Bout_send(0),
		In_ack => aof_PROCESS_Bout_ack(0),
		In_rdy => aof_PROCESS_Bout_rdy(0),
		In_count => aof_PROCESS_Bout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);

	-- --------------------------------------------------------------------------
	-- Network port(s) instantiation
	-- --------------------------------------------------------------------------
	
	-- Output Port(s) Instantiation
	Ro_data <= no_Ro_data;
	Ro_send <= no_Ro_send;
	no_Ro_ack <= Ro_ack;
	no_Ro_rdy <= Ro_rdy;
	Ro_count <= no_Ro_count;
	Go_data <= no_Go_data;
	Go_send <= no_Go_send;
	no_Go_ack <= Go_ack;
	no_Go_rdy <= Go_rdy;
	Go_count <= no_Go_count;
	Bo_data <= no_Bo_data;
	Bo_send <= no_Bo_send;
	no_Bo_ack <= Bo_ack;
	no_Bo_rdy <= Bo_rdy;
	Bo_count <= no_Bo_count;
	
	-- Input Port(s) Instantiation
	ni_R_data <= R_data;
	ni_R_send <= R_send;
	R_ack <= ni_R_ack;
	R_rdy <= ni_R_rdy;
	ni_R_count <= R_count;
	ni_G_data <= G_data;
	ni_G_send <= G_send;
	G_ack <= ni_G_ack;
	G_rdy <= ni_G_rdy;
	ni_G_count <= G_count;
	ni_B_data <= B_data;
	ni_B_send <= B_send;
	B_ack <= ni_B_ack;
	B_rdy <= ni_B_rdy;
	ni_B_count <= B_count;
end architecture rtl;
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
