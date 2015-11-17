-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Top level Network: Generation 
-- Date: 2015/11/17 18:39:22
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- Clock Domain(s) Information on the Network "Generation"
--
-- Network input port(s) clock domain:
--	STREAM --> CLK
-- Network output port(s) clock domain:
-- 	YUV --> CLK
-- Actor(s) clock domains:
--	Generation (Generation) --> CLK
--	YUV_to_RGB (YUV_to_RGB) --> CLK
--	Stream_to_YUV (Stream_to_YUV) --> CLK
--	YUV_to_Stream (YUV_to_Stream) --> CLK
--	RGB_to_YUV (RGB_to_YUV) --> CLK

library ieee;
library SystemBuilder;

use ieee.std_logic_1164.all;

-- ----------------------------------------------------------------------------
-- Entity Declaration
-- ----------------------------------------------------------------------------
entity Generation is
port(
	 -- XDF Network Input(s)
	 STREAM_data : in std_logic_vector(7 downto 0);
	 STREAM_send : in std_logic;
	 STREAM_ack : out std_logic;
	 STREAM_rdy : out std_logic;
	 STREAM_count : in std_logic_vector(15 downto 0);
	 -- XDF Network Output(s)
	 YUV_data : out std_logic_vector(7 downto 0);
	 YUV_send : out std_logic;
	 YUV_ack : in std_logic;
	 YUV_rdy : in std_logic;
	 YUV_count : out std_logic_vector(15 downto 0);
	 -- Clock(s) and Reset
	 CLK : in std_logic;
	 RESET : in std_logic);
end entity Generation;

-- ----------------------------------------------------------------------------
-- Architecture Declaration
-- ----------------------------------------------------------------------------
architecture rtl of Generation is
	-- --------------------------------------------------------------------------
	-- Internal Signals
	-- --------------------------------------------------------------------------

	-- Clock(s) and Reset signal
	signal clocks, resets: std_logic_vector(0 downto 0);

	-- Network Input Port(s)
	signal ni_STREAM_data : std_logic_vector(7 downto 0);
	signal ni_STREAM_send : std_logic;
	signal ni_STREAM_ack : std_logic;
	signal ni_STREAM_rdy : std_logic;
	signal ni_STREAM_count : std_logic_vector(15 downto 0);
	
	-- Network Input Port Fanout(s)
	signal nif_STREAM_data : std_logic_vector(7 downto 0);
	signal nif_STREAM_send : std_logic_vector(0 downto 0);
	signal nif_STREAM_ack : std_logic_vector(0 downto 0);
	signal nif_STREAM_rdy : std_logic_vector(0 downto 0);
	signal nif_STREAM_count : std_logic_vector(15 downto 0);
	
	-- Network Output Port(s) 
	signal no_YUV_data : std_logic_vector(7 downto 0);
	signal no_YUV_send : std_logic;
	signal no_YUV_ack : std_logic;
	signal no_YUV_rdy : std_logic;
	signal no_YUV_count : std_logic_vector(15 downto 0);
	
	-- Actors Input/Output and Output fanout signals
	signal ai_Generation_Rin_data : std_logic_vector(7 downto 0);
	signal ai_Generation_Rin_send : std_logic;
	signal ai_Generation_Rin_ack : std_logic;
	signal ai_Generation_Rin_count : std_logic_vector(15 downto 0);
	
	signal ai_Generation_Gin_data : std_logic_vector(7 downto 0);
	signal ai_Generation_Gin_send : std_logic;
	signal ai_Generation_Gin_ack : std_logic;
	signal ai_Generation_Gin_count : std_logic_vector(15 downto 0);
	
	signal ai_Generation_Bin_data : std_logic_vector(7 downto 0);
	signal ai_Generation_Bin_send : std_logic;
	signal ai_Generation_Bin_ack : std_logic;
	signal ai_Generation_Bin_count : std_logic_vector(15 downto 0);
	
	signal ao_Generation_Rout_data : std_logic_vector(7 downto 0);
	signal ao_Generation_Rout_send : std_logic;
	signal ao_Generation_Rout_ack : std_logic;
	signal ao_Generation_Rout_rdy : std_logic;
	signal ao_Generation_Rout_count : std_logic_vector(15 downto 0);
	
	signal aof_Generation_Rout_data : std_logic_vector(7 downto 0);
	signal aof_Generation_Rout_send : std_logic_vector(0 downto 0);
	signal aof_Generation_Rout_ack : std_logic_vector(0 downto 0);
	signal aof_Generation_Rout_rdy : std_logic_vector(0 downto 0);
	signal aof_Generation_Rout_count : std_logic_vector(15 downto 0);
	
	signal ao_Generation_Gout_data : std_logic_vector(7 downto 0);
	signal ao_Generation_Gout_send : std_logic;
	signal ao_Generation_Gout_ack : std_logic;
	signal ao_Generation_Gout_rdy : std_logic;
	signal ao_Generation_Gout_count : std_logic_vector(15 downto 0);
	
	signal aof_Generation_Gout_data : std_logic_vector(7 downto 0);
	signal aof_Generation_Gout_send : std_logic_vector(0 downto 0);
	signal aof_Generation_Gout_ack : std_logic_vector(0 downto 0);
	signal aof_Generation_Gout_rdy : std_logic_vector(0 downto 0);
	signal aof_Generation_Gout_count : std_logic_vector(15 downto 0);
	
	signal ao_Generation_Bout_data : std_logic_vector(7 downto 0);
	signal ao_Generation_Bout_send : std_logic;
	signal ao_Generation_Bout_ack : std_logic;
	signal ao_Generation_Bout_rdy : std_logic;
	signal ao_Generation_Bout_count : std_logic_vector(15 downto 0);
	
	signal aof_Generation_Bout_data : std_logic_vector(7 downto 0);
	signal aof_Generation_Bout_send : std_logic_vector(0 downto 0);
	signal aof_Generation_Bout_ack : std_logic_vector(0 downto 0);
	signal aof_Generation_Bout_rdy : std_logic_vector(0 downto 0);
	signal aof_Generation_Bout_count : std_logic_vector(15 downto 0);
	
	signal ai_YUV_to_RGB_Y_data : std_logic_vector(7 downto 0);
	signal ai_YUV_to_RGB_Y_send : std_logic;
	signal ai_YUV_to_RGB_Y_ack : std_logic;
	signal ai_YUV_to_RGB_Y_count : std_logic_vector(15 downto 0);
	
	signal ai_YUV_to_RGB_U_data : std_logic_vector(7 downto 0);
	signal ai_YUV_to_RGB_U_send : std_logic;
	signal ai_YUV_to_RGB_U_ack : std_logic;
	signal ai_YUV_to_RGB_U_count : std_logic_vector(15 downto 0);
	
	signal ai_YUV_to_RGB_V_data : std_logic_vector(7 downto 0);
	signal ai_YUV_to_RGB_V_send : std_logic;
	signal ai_YUV_to_RGB_V_ack : std_logic;
	signal ai_YUV_to_RGB_V_count : std_logic_vector(15 downto 0);
	
	signal ao_YUV_to_RGB_R_data : std_logic_vector(7 downto 0);
	signal ao_YUV_to_RGB_R_send : std_logic;
	signal ao_YUV_to_RGB_R_ack : std_logic;
	signal ao_YUV_to_RGB_R_rdy : std_logic;
	signal ao_YUV_to_RGB_R_count : std_logic_vector(15 downto 0);
	
	signal aof_YUV_to_RGB_R_data : std_logic_vector(7 downto 0);
	signal aof_YUV_to_RGB_R_send : std_logic_vector(0 downto 0);
	signal aof_YUV_to_RGB_R_ack : std_logic_vector(0 downto 0);
	signal aof_YUV_to_RGB_R_rdy : std_logic_vector(0 downto 0);
	signal aof_YUV_to_RGB_R_count : std_logic_vector(15 downto 0);
	
	signal ao_YUV_to_RGB_G_data : std_logic_vector(7 downto 0);
	signal ao_YUV_to_RGB_G_send : std_logic;
	signal ao_YUV_to_RGB_G_ack : std_logic;
	signal ao_YUV_to_RGB_G_rdy : std_logic;
	signal ao_YUV_to_RGB_G_count : std_logic_vector(15 downto 0);
	
	signal aof_YUV_to_RGB_G_data : std_logic_vector(7 downto 0);
	signal aof_YUV_to_RGB_G_send : std_logic_vector(0 downto 0);
	signal aof_YUV_to_RGB_G_ack : std_logic_vector(0 downto 0);
	signal aof_YUV_to_RGB_G_rdy : std_logic_vector(0 downto 0);
	signal aof_YUV_to_RGB_G_count : std_logic_vector(15 downto 0);
	
	signal ao_YUV_to_RGB_B_data : std_logic_vector(7 downto 0);
	signal ao_YUV_to_RGB_B_send : std_logic;
	signal ao_YUV_to_RGB_B_ack : std_logic;
	signal ao_YUV_to_RGB_B_rdy : std_logic;
	signal ao_YUV_to_RGB_B_count : std_logic_vector(15 downto 0);
	
	signal aof_YUV_to_RGB_B_data : std_logic_vector(7 downto 0);
	signal aof_YUV_to_RGB_B_send : std_logic_vector(0 downto 0);
	signal aof_YUV_to_RGB_B_ack : std_logic_vector(0 downto 0);
	signal aof_YUV_to_RGB_B_rdy : std_logic_vector(0 downto 0);
	signal aof_YUV_to_RGB_B_count : std_logic_vector(15 downto 0);
	
	signal ai_Stream_to_YUV_stream_data : std_logic_vector(7 downto 0);
	signal ai_Stream_to_YUV_stream_send : std_logic;
	signal ai_Stream_to_YUV_stream_ack : std_logic;
	signal ai_Stream_to_YUV_stream_count : std_logic_vector(15 downto 0);
	
	signal ao_Stream_to_YUV_Y_data : std_logic_vector(7 downto 0);
	signal ao_Stream_to_YUV_Y_send : std_logic;
	signal ao_Stream_to_YUV_Y_ack : std_logic;
	signal ao_Stream_to_YUV_Y_rdy : std_logic;
	signal ao_Stream_to_YUV_Y_count : std_logic_vector(15 downto 0);
	
	signal aof_Stream_to_YUV_Y_data : std_logic_vector(7 downto 0);
	signal aof_Stream_to_YUV_Y_send : std_logic_vector(0 downto 0);
	signal aof_Stream_to_YUV_Y_ack : std_logic_vector(0 downto 0);
	signal aof_Stream_to_YUV_Y_rdy : std_logic_vector(0 downto 0);
	signal aof_Stream_to_YUV_Y_count : std_logic_vector(15 downto 0);
	
	signal ao_Stream_to_YUV_U_data : std_logic_vector(7 downto 0);
	signal ao_Stream_to_YUV_U_send : std_logic;
	signal ao_Stream_to_YUV_U_ack : std_logic;
	signal ao_Stream_to_YUV_U_rdy : std_logic;
	signal ao_Stream_to_YUV_U_count : std_logic_vector(15 downto 0);
	
	signal aof_Stream_to_YUV_U_data : std_logic_vector(7 downto 0);
	signal aof_Stream_to_YUV_U_send : std_logic_vector(0 downto 0);
	signal aof_Stream_to_YUV_U_ack : std_logic_vector(0 downto 0);
	signal aof_Stream_to_YUV_U_rdy : std_logic_vector(0 downto 0);
	signal aof_Stream_to_YUV_U_count : std_logic_vector(15 downto 0);
	
	signal ao_Stream_to_YUV_V_data : std_logic_vector(7 downto 0);
	signal ao_Stream_to_YUV_V_send : std_logic;
	signal ao_Stream_to_YUV_V_ack : std_logic;
	signal ao_Stream_to_YUV_V_rdy : std_logic;
	signal ao_Stream_to_YUV_V_count : std_logic_vector(15 downto 0);
	
	signal aof_Stream_to_YUV_V_data : std_logic_vector(7 downto 0);
	signal aof_Stream_to_YUV_V_send : std_logic_vector(0 downto 0);
	signal aof_Stream_to_YUV_V_ack : std_logic_vector(0 downto 0);
	signal aof_Stream_to_YUV_V_rdy : std_logic_vector(0 downto 0);
	signal aof_Stream_to_YUV_V_count : std_logic_vector(15 downto 0);
	
	signal ai_YUV_to_Stream_Y_data : std_logic_vector(7 downto 0);
	signal ai_YUV_to_Stream_Y_send : std_logic;
	signal ai_YUV_to_Stream_Y_ack : std_logic;
	signal ai_YUV_to_Stream_Y_count : std_logic_vector(15 downto 0);
	
	signal ai_YUV_to_Stream_U_data : std_logic_vector(7 downto 0);
	signal ai_YUV_to_Stream_U_send : std_logic;
	signal ai_YUV_to_Stream_U_ack : std_logic;
	signal ai_YUV_to_Stream_U_count : std_logic_vector(15 downto 0);
	
	signal ai_YUV_to_Stream_V_data : std_logic_vector(7 downto 0);
	signal ai_YUV_to_Stream_V_send : std_logic;
	signal ai_YUV_to_Stream_V_ack : std_logic;
	signal ai_YUV_to_Stream_V_count : std_logic_vector(15 downto 0);
	
	signal ao_YUV_to_Stream_YUV_data : std_logic_vector(7 downto 0);
	signal ao_YUV_to_Stream_YUV_send : std_logic;
	signal ao_YUV_to_Stream_YUV_ack : std_logic;
	signal ao_YUV_to_Stream_YUV_rdy : std_logic;
	signal ao_YUV_to_Stream_YUV_count : std_logic_vector(15 downto 0);
	
	signal aof_YUV_to_Stream_YUV_data : std_logic_vector(7 downto 0);
	signal aof_YUV_to_Stream_YUV_send : std_logic_vector(0 downto 0);
	signal aof_YUV_to_Stream_YUV_ack : std_logic_vector(0 downto 0);
	signal aof_YUV_to_Stream_YUV_rdy : std_logic_vector(0 downto 0);
	signal aof_YUV_to_Stream_YUV_count : std_logic_vector(15 downto 0);
	
	signal ai_RGB_to_YUV_R_data : std_logic_vector(7 downto 0);
	signal ai_RGB_to_YUV_R_send : std_logic;
	signal ai_RGB_to_YUV_R_ack : std_logic;
	signal ai_RGB_to_YUV_R_count : std_logic_vector(15 downto 0);
	
	signal ai_RGB_to_YUV_G_data : std_logic_vector(7 downto 0);
	signal ai_RGB_to_YUV_G_send : std_logic;
	signal ai_RGB_to_YUV_G_ack : std_logic;
	signal ai_RGB_to_YUV_G_count : std_logic_vector(15 downto 0);
	
	signal ai_RGB_to_YUV_B_data : std_logic_vector(7 downto 0);
	signal ai_RGB_to_YUV_B_send : std_logic;
	signal ai_RGB_to_YUV_B_ack : std_logic;
	signal ai_RGB_to_YUV_B_count : std_logic_vector(15 downto 0);
	
	signal ao_RGB_to_YUV_Y_data : std_logic_vector(7 downto 0);
	signal ao_RGB_to_YUV_Y_send : std_logic;
	signal ao_RGB_to_YUV_Y_ack : std_logic;
	signal ao_RGB_to_YUV_Y_rdy : std_logic;
	signal ao_RGB_to_YUV_Y_count : std_logic_vector(15 downto 0);
	
	signal aof_RGB_to_YUV_Y_data : std_logic_vector(7 downto 0);
	signal aof_RGB_to_YUV_Y_send : std_logic_vector(0 downto 0);
	signal aof_RGB_to_YUV_Y_ack : std_logic_vector(0 downto 0);
	signal aof_RGB_to_YUV_Y_rdy : std_logic_vector(0 downto 0);
	signal aof_RGB_to_YUV_Y_count : std_logic_vector(15 downto 0);
	
	signal ao_RGB_to_YUV_U_data : std_logic_vector(7 downto 0);
	signal ao_RGB_to_YUV_U_send : std_logic;
	signal ao_RGB_to_YUV_U_ack : std_logic;
	signal ao_RGB_to_YUV_U_rdy : std_logic;
	signal ao_RGB_to_YUV_U_count : std_logic_vector(15 downto 0);
	
	signal aof_RGB_to_YUV_U_data : std_logic_vector(7 downto 0);
	signal aof_RGB_to_YUV_U_send : std_logic_vector(0 downto 0);
	signal aof_RGB_to_YUV_U_ack : std_logic_vector(0 downto 0);
	signal aof_RGB_to_YUV_U_rdy : std_logic_vector(0 downto 0);
	signal aof_RGB_to_YUV_U_count : std_logic_vector(15 downto 0);
	
	signal ao_RGB_to_YUV_V_data : std_logic_vector(7 downto 0);
	signal ao_RGB_to_YUV_V_send : std_logic;
	signal ao_RGB_to_YUV_V_ack : std_logic;
	signal ao_RGB_to_YUV_V_rdy : std_logic;
	signal ao_RGB_to_YUV_V_count : std_logic_vector(15 downto 0);
	
	signal aof_RGB_to_YUV_V_data : std_logic_vector(7 downto 0);
	signal aof_RGB_to_YUV_V_send : std_logic_vector(0 downto 0);
	signal aof_RGB_to_YUV_V_ack : std_logic_vector(0 downto 0);
	signal aof_RGB_to_YUV_V_rdy : std_logic_vector(0 downto 0);
	signal aof_RGB_to_YUV_V_count : std_logic_vector(15 downto 0);

	-- --------------------------------------------------------------------------
	-- Network Instances
	-- --------------------------------------------------------------------------
	component Generation is
	port(
	     -- Instance Generation Input(s)
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
	     -- Instance Generation Output(s)
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
	end component Generation;
	
	component YUV_to_RGB is
	port(
	     -- Instance YUV_to_RGB Input(s)
	     Y_data : in std_logic_vector(7 downto 0);
	     Y_send : in std_logic;
	     Y_ack : out std_logic;
	     Y_count : in std_logic_vector(15 downto 0);
	     U_data : in std_logic_vector(7 downto 0);
	     U_send : in std_logic;
	     U_ack : out std_logic;
	     U_count : in std_logic_vector(15 downto 0);
	     V_data : in std_logic_vector(7 downto 0);
	     V_send : in std_logic;
	     V_ack : out std_logic;
	     V_count : in std_logic_vector(15 downto 0);
	     -- Instance YUV_to_RGB Output(s)
	     R_data : out std_logic_vector(7 downto 0);
	     R_send : out std_logic;
	     R_ack : in std_logic;
	     R_rdy : in std_logic;
	     R_count : out std_logic_vector(15 downto 0);
	     G_data : out std_logic_vector(7 downto 0);
	     G_send : out std_logic;
	     G_ack : in std_logic;
	     G_rdy : in std_logic;
	     G_count : out std_logic_vector(15 downto 0);
	     B_data : out std_logic_vector(7 downto 0);
	     B_send : out std_logic;
	     B_ack : in std_logic;
	     B_rdy : in std_logic;
	     B_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component YUV_to_RGB;
	
	component Stream_to_YUV is
	port(
	     -- Instance Stream_to_YUV Input(s)
	     stream_data : in std_logic_vector(7 downto 0);
	     stream_send : in std_logic;
	     stream_ack : out std_logic;
	     stream_count : in std_logic_vector(15 downto 0);
	     -- Instance Stream_to_YUV Output(s)
	     Y_data : out std_logic_vector(7 downto 0);
	     Y_send : out std_logic;
	     Y_ack : in std_logic;
	     Y_rdy : in std_logic;
	     Y_count : out std_logic_vector(15 downto 0);
	     U_data : out std_logic_vector(7 downto 0);
	     U_send : out std_logic;
	     U_ack : in std_logic;
	     U_rdy : in std_logic;
	     U_count : out std_logic_vector(15 downto 0);
	     V_data : out std_logic_vector(7 downto 0);
	     V_send : out std_logic;
	     V_ack : in std_logic;
	     V_rdy : in std_logic;
	     V_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Stream_to_YUV;
	
	component YUV_to_Stream is
	port(
	     -- Instance YUV_to_Stream Input(s)
	     Y_data : in std_logic_vector(7 downto 0);
	     Y_send : in std_logic;
	     Y_ack : out std_logic;
	     Y_count : in std_logic_vector(15 downto 0);
	     U_data : in std_logic_vector(7 downto 0);
	     U_send : in std_logic;
	     U_ack : out std_logic;
	     U_count : in std_logic_vector(15 downto 0);
	     V_data : in std_logic_vector(7 downto 0);
	     V_send : in std_logic;
	     V_ack : out std_logic;
	     V_count : in std_logic_vector(15 downto 0);
	     -- Instance YUV_to_Stream Output(s)
	     YUV_data : out std_logic_vector(7 downto 0);
	     YUV_send : out std_logic;
	     YUV_ack : in std_logic;
	     YUV_rdy : in std_logic;
	     YUV_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component YUV_to_Stream;
	
	component RGB_to_YUV is
	port(
	     -- Instance RGB_to_YUV Input(s)
	     R_data : in std_logic_vector(7 downto 0);
	     R_send : in std_logic;
	     R_ack : out std_logic;
	     R_count : in std_logic_vector(15 downto 0);
	     G_data : in std_logic_vector(7 downto 0);
	     G_send : in std_logic;
	     G_ack : out std_logic;
	     G_count : in std_logic_vector(15 downto 0);
	     B_data : in std_logic_vector(7 downto 0);
	     B_send : in std_logic;
	     B_ack : out std_logic;
	     B_count : in std_logic_vector(15 downto 0);
	     -- Instance RGB_to_YUV Output(s)
	     Y_data : out std_logic_vector(7 downto 0);
	     Y_send : out std_logic;
	     Y_ack : in std_logic;
	     Y_rdy : in std_logic;
	     Y_count : out std_logic_vector(15 downto 0);
	     U_data : out std_logic_vector(7 downto 0);
	     U_send : out std_logic;
	     U_ack : in std_logic;
	     U_rdy : in std_logic;
	     U_count : out std_logic_vector(15 downto 0);
	     V_data : out std_logic_vector(7 downto 0);
	     V_send : out std_logic;
	     V_ack : in std_logic;
	     V_rdy : in std_logic;
	     V_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component RGB_to_YUV;
	

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
	i_Generation : component Generation
	port map(
		-- Instance Generation Input(s)
		Rin_data => ai_Generation_Rin_data,
		Rin_send => ai_Generation_Rin_send,
		Rin_ack => ai_Generation_Rin_ack,
		Rin_count => ai_Generation_Rin_count,
		
		Gin_data => ai_Generation_Gin_data,
		Gin_send => ai_Generation_Gin_send,
		Gin_ack => ai_Generation_Gin_ack,
		Gin_count => ai_Generation_Gin_count,
		
		Bin_data => ai_Generation_Bin_data,
		Bin_send => ai_Generation_Bin_send,
		Bin_ack => ai_Generation_Bin_ack,
		Bin_count => ai_Generation_Bin_count,
		-- Instance Generation Output(s)
		Rout_data => ao_Generation_Rout_data,
		Rout_send => ao_Generation_Rout_send,
		Rout_ack => ao_Generation_Rout_ack,
		Rout_rdy => ao_Generation_Rout_rdy,
		Rout_count => ao_Generation_Rout_count,
		
		Gout_data => ao_Generation_Gout_data,
		Gout_send => ao_Generation_Gout_send,
		Gout_ack => ao_Generation_Gout_ack,
		Gout_rdy => ao_Generation_Gout_rdy,
		Gout_count => ao_Generation_Gout_count,
		
		Bout_data => ao_Generation_Bout_data,
		Bout_send => ao_Generation_Bout_send,
		Bout_ack => ao_Generation_Bout_ack,
		Bout_rdy => ao_Generation_Bout_rdy,
		Bout_count => ao_Generation_Bout_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_YUV_to_RGB : component YUV_to_RGB
	port map(
		-- Instance YUV_to_RGB Input(s)
		Y_data => ai_YUV_to_RGB_Y_data,
		Y_send => ai_YUV_to_RGB_Y_send,
		Y_ack => ai_YUV_to_RGB_Y_ack,
		Y_count => ai_YUV_to_RGB_Y_count,
		
		U_data => ai_YUV_to_RGB_U_data,
		U_send => ai_YUV_to_RGB_U_send,
		U_ack => ai_YUV_to_RGB_U_ack,
		U_count => ai_YUV_to_RGB_U_count,
		
		V_data => ai_YUV_to_RGB_V_data,
		V_send => ai_YUV_to_RGB_V_send,
		V_ack => ai_YUV_to_RGB_V_ack,
		V_count => ai_YUV_to_RGB_V_count,
		-- Instance YUV_to_RGB Output(s)
		R_data => ao_YUV_to_RGB_R_data,
		R_send => ao_YUV_to_RGB_R_send,
		R_ack => ao_YUV_to_RGB_R_ack,
		R_rdy => ao_YUV_to_RGB_R_rdy,
		R_count => ao_YUV_to_RGB_R_count,
		
		G_data => ao_YUV_to_RGB_G_data,
		G_send => ao_YUV_to_RGB_G_send,
		G_ack => ao_YUV_to_RGB_G_ack,
		G_rdy => ao_YUV_to_RGB_G_rdy,
		G_count => ao_YUV_to_RGB_G_count,
		
		B_data => ao_YUV_to_RGB_B_data,
		B_send => ao_YUV_to_RGB_B_send,
		B_ack => ao_YUV_to_RGB_B_ack,
		B_rdy => ao_YUV_to_RGB_B_rdy,
		B_count => ao_YUV_to_RGB_B_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Stream_to_YUV : component Stream_to_YUV
	port map(
		-- Instance Stream_to_YUV Input(s)
		stream_data => ai_Stream_to_YUV_stream_data,
		stream_send => ai_Stream_to_YUV_stream_send,
		stream_ack => ai_Stream_to_YUV_stream_ack,
		stream_count => ai_Stream_to_YUV_stream_count,
		-- Instance Stream_to_YUV Output(s)
		Y_data => ao_Stream_to_YUV_Y_data,
		Y_send => ao_Stream_to_YUV_Y_send,
		Y_ack => ao_Stream_to_YUV_Y_ack,
		Y_rdy => ao_Stream_to_YUV_Y_rdy,
		Y_count => ao_Stream_to_YUV_Y_count,
		
		U_data => ao_Stream_to_YUV_U_data,
		U_send => ao_Stream_to_YUV_U_send,
		U_ack => ao_Stream_to_YUV_U_ack,
		U_rdy => ao_Stream_to_YUV_U_rdy,
		U_count => ao_Stream_to_YUV_U_count,
		
		V_data => ao_Stream_to_YUV_V_data,
		V_send => ao_Stream_to_YUV_V_send,
		V_ack => ao_Stream_to_YUV_V_ack,
		V_rdy => ao_Stream_to_YUV_V_rdy,
		V_count => ao_Stream_to_YUV_V_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_YUV_to_Stream : component YUV_to_Stream
	port map(
		-- Instance YUV_to_Stream Input(s)
		Y_data => ai_YUV_to_Stream_Y_data,
		Y_send => ai_YUV_to_Stream_Y_send,
		Y_ack => ai_YUV_to_Stream_Y_ack,
		Y_count => ai_YUV_to_Stream_Y_count,
		
		U_data => ai_YUV_to_Stream_U_data,
		U_send => ai_YUV_to_Stream_U_send,
		U_ack => ai_YUV_to_Stream_U_ack,
		U_count => ai_YUV_to_Stream_U_count,
		
		V_data => ai_YUV_to_Stream_V_data,
		V_send => ai_YUV_to_Stream_V_send,
		V_ack => ai_YUV_to_Stream_V_ack,
		V_count => ai_YUV_to_Stream_V_count,
		-- Instance YUV_to_Stream Output(s)
		YUV_data => ao_YUV_to_Stream_YUV_data,
		YUV_send => ao_YUV_to_Stream_YUV_send,
		YUV_ack => ao_YUV_to_Stream_YUV_ack,
		YUV_rdy => ao_YUV_to_Stream_YUV_rdy,
		YUV_count => ao_YUV_to_Stream_YUV_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_RGB_to_YUV : component RGB_to_YUV
	port map(
		-- Instance RGB_to_YUV Input(s)
		R_data => ai_RGB_to_YUV_R_data,
		R_send => ai_RGB_to_YUV_R_send,
		R_ack => ai_RGB_to_YUV_R_ack,
		R_count => ai_RGB_to_YUV_R_count,
		
		G_data => ai_RGB_to_YUV_G_data,
		G_send => ai_RGB_to_YUV_G_send,
		G_ack => ai_RGB_to_YUV_G_ack,
		G_count => ai_RGB_to_YUV_G_count,
		
		B_data => ai_RGB_to_YUV_B_data,
		B_send => ai_RGB_to_YUV_B_send,
		B_ack => ai_RGB_to_YUV_B_ack,
		B_count => ai_RGB_to_YUV_B_count,
		-- Instance RGB_to_YUV Output(s)
		Y_data => ao_RGB_to_YUV_Y_data,
		Y_send => ao_RGB_to_YUV_Y_send,
		Y_ack => ao_RGB_to_YUV_Y_ack,
		Y_rdy => ao_RGB_to_YUV_Y_rdy,
		Y_count => ao_RGB_to_YUV_Y_count,
		
		U_data => ao_RGB_to_YUV_U_data,
		U_send => ao_RGB_to_YUV_U_send,
		U_ack => ao_RGB_to_YUV_U_ack,
		U_rdy => ao_RGB_to_YUV_U_rdy,
		U_count => ao_RGB_to_YUV_U_count,
		
		V_data => ao_RGB_to_YUV_V_data,
		V_send => ao_RGB_to_YUV_V_send,
		V_ack => ao_RGB_to_YUV_V_ack,
		V_rdy => ao_RGB_to_YUV_V_rdy,
		V_count => ao_RGB_to_YUV_V_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	-- --------------------------------------------------------------------------
	-- Nework Input Fanouts
	-- --------------------------------------------------------------------------
	f_ni_STREAM : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ni_STREAM_data,
		In_send => ni_STREAM_send,
		In_ack => ni_STREAM_ack,
		In_rdy => ni_STREAM_rdy,
		In_count => ni_STREAM_count,
		-- Fanout Out
		Out_data => nif_STREAM_data,
		Out_send => nif_STREAM_send,
		Out_ack => nif_STREAM_ack,
		Out_rdy => nif_STREAM_rdy,
		Out_count => nif_STREAM_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));

	-- --------------------------------------------------------------------------
	-- Actor Output Fanouts
	-- --------------------------------------------------------------------------
	f_ao_Generation_Rout : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Generation_Rout_data,
		In_send => ao_Generation_Rout_send,
		In_ack => ao_Generation_Rout_ack,
		In_rdy => ao_Generation_Rout_rdy,
		In_count => ao_Generation_Rout_count,
		-- Fanout Out
		Out_data => aof_Generation_Rout_data,
		Out_send => aof_Generation_Rout_send,
		Out_ack => aof_Generation_Rout_ack,
		Out_rdy => aof_Generation_Rout_rdy,
		Out_count => aof_Generation_Rout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Generation_Gout : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Generation_Gout_data,
		In_send => ao_Generation_Gout_send,
		In_ack => ao_Generation_Gout_ack,
		In_rdy => ao_Generation_Gout_rdy,
		In_count => ao_Generation_Gout_count,
		-- Fanout Out
		Out_data => aof_Generation_Gout_data,
		Out_send => aof_Generation_Gout_send,
		Out_ack => aof_Generation_Gout_ack,
		Out_rdy => aof_Generation_Gout_rdy,
		Out_count => aof_Generation_Gout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Generation_Bout : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Generation_Bout_data,
		In_send => ao_Generation_Bout_send,
		In_ack => ao_Generation_Bout_ack,
		In_rdy => ao_Generation_Bout_rdy,
		In_count => ao_Generation_Bout_count,
		-- Fanout Out
		Out_data => aof_Generation_Bout_data,
		Out_send => aof_Generation_Bout_send,
		Out_ack => aof_Generation_Bout_ack,
		Out_rdy => aof_Generation_Bout_rdy,
		Out_count => aof_Generation_Bout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_YUV_to_RGB_R : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_YUV_to_RGB_R_data,
		In_send => ao_YUV_to_RGB_R_send,
		In_ack => ao_YUV_to_RGB_R_ack,
		In_rdy => ao_YUV_to_RGB_R_rdy,
		In_count => ao_YUV_to_RGB_R_count,
		-- Fanout Out
		Out_data => aof_YUV_to_RGB_R_data,
		Out_send => aof_YUV_to_RGB_R_send,
		Out_ack => aof_YUV_to_RGB_R_ack,
		Out_rdy => aof_YUV_to_RGB_R_rdy,
		Out_count => aof_YUV_to_RGB_R_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_YUV_to_RGB_G : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_YUV_to_RGB_G_data,
		In_send => ao_YUV_to_RGB_G_send,
		In_ack => ao_YUV_to_RGB_G_ack,
		In_rdy => ao_YUV_to_RGB_G_rdy,
		In_count => ao_YUV_to_RGB_G_count,
		-- Fanout Out
		Out_data => aof_YUV_to_RGB_G_data,
		Out_send => aof_YUV_to_RGB_G_send,
		Out_ack => aof_YUV_to_RGB_G_ack,
		Out_rdy => aof_YUV_to_RGB_G_rdy,
		Out_count => aof_YUV_to_RGB_G_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_YUV_to_RGB_B : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_YUV_to_RGB_B_data,
		In_send => ao_YUV_to_RGB_B_send,
		In_ack => ao_YUV_to_RGB_B_ack,
		In_rdy => ao_YUV_to_RGB_B_rdy,
		In_count => ao_YUV_to_RGB_B_count,
		-- Fanout Out
		Out_data => aof_YUV_to_RGB_B_data,
		Out_send => aof_YUV_to_RGB_B_send,
		Out_ack => aof_YUV_to_RGB_B_ack,
		Out_rdy => aof_YUV_to_RGB_B_rdy,
		Out_count => aof_YUV_to_RGB_B_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_Stream_to_YUV_Y : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Stream_to_YUV_Y_data,
		In_send => ao_Stream_to_YUV_Y_send,
		In_ack => ao_Stream_to_YUV_Y_ack,
		In_rdy => ao_Stream_to_YUV_Y_rdy,
		In_count => ao_Stream_to_YUV_Y_count,
		-- Fanout Out
		Out_data => aof_Stream_to_YUV_Y_data,
		Out_send => aof_Stream_to_YUV_Y_send,
		Out_ack => aof_Stream_to_YUV_Y_ack,
		Out_rdy => aof_Stream_to_YUV_Y_rdy,
		Out_count => aof_Stream_to_YUV_Y_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Stream_to_YUV_U : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Stream_to_YUV_U_data,
		In_send => ao_Stream_to_YUV_U_send,
		In_ack => ao_Stream_to_YUV_U_ack,
		In_rdy => ao_Stream_to_YUV_U_rdy,
		In_count => ao_Stream_to_YUV_U_count,
		-- Fanout Out
		Out_data => aof_Stream_to_YUV_U_data,
		Out_send => aof_Stream_to_YUV_U_send,
		Out_ack => aof_Stream_to_YUV_U_ack,
		Out_rdy => aof_Stream_to_YUV_U_rdy,
		Out_count => aof_Stream_to_YUV_U_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Stream_to_YUV_V : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Stream_to_YUV_V_data,
		In_send => ao_Stream_to_YUV_V_send,
		In_ack => ao_Stream_to_YUV_V_ack,
		In_rdy => ao_Stream_to_YUV_V_rdy,
		In_count => ao_Stream_to_YUV_V_count,
		-- Fanout Out
		Out_data => aof_Stream_to_YUV_V_data,
		Out_send => aof_Stream_to_YUV_V_send,
		Out_ack => aof_Stream_to_YUV_V_ack,
		Out_rdy => aof_Stream_to_YUV_V_rdy,
		Out_count => aof_Stream_to_YUV_V_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_YUV_to_Stream_YUV : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_YUV_to_Stream_YUV_data,
		In_send => ao_YUV_to_Stream_YUV_send,
		In_ack => ao_YUV_to_Stream_YUV_ack,
		In_rdy => ao_YUV_to_Stream_YUV_rdy,
		In_count => ao_YUV_to_Stream_YUV_count,
		-- Fanout Out
		Out_data => aof_YUV_to_Stream_YUV_data,
		Out_send => aof_YUV_to_Stream_YUV_send,
		Out_ack => aof_YUV_to_Stream_YUV_ack,
		Out_rdy => aof_YUV_to_Stream_YUV_rdy,
		Out_count => aof_YUV_to_Stream_YUV_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_RGB_to_YUV_Y : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_RGB_to_YUV_Y_data,
		In_send => ao_RGB_to_YUV_Y_send,
		In_ack => ao_RGB_to_YUV_Y_ack,
		In_rdy => ao_RGB_to_YUV_Y_rdy,
		In_count => ao_RGB_to_YUV_Y_count,
		-- Fanout Out
		Out_data => aof_RGB_to_YUV_Y_data,
		Out_send => aof_RGB_to_YUV_Y_send,
		Out_ack => aof_RGB_to_YUV_Y_ack,
		Out_rdy => aof_RGB_to_YUV_Y_rdy,
		Out_count => aof_RGB_to_YUV_Y_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_RGB_to_YUV_U : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_RGB_to_YUV_U_data,
		In_send => ao_RGB_to_YUV_U_send,
		In_ack => ao_RGB_to_YUV_U_ack,
		In_rdy => ao_RGB_to_YUV_U_rdy,
		In_count => ao_RGB_to_YUV_U_count,
		-- Fanout Out
		Out_data => aof_RGB_to_YUV_U_data,
		Out_send => aof_RGB_to_YUV_U_send,
		Out_ack => aof_RGB_to_YUV_U_ack,
		Out_rdy => aof_RGB_to_YUV_U_rdy,
		Out_count => aof_RGB_to_YUV_U_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_RGB_to_YUV_V : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_RGB_to_YUV_V_data,
		In_send => ao_RGB_to_YUV_V_send,
		In_ack => ao_RGB_to_YUV_V_ack,
		In_rdy => ao_RGB_to_YUV_V_rdy,
		In_count => ao_RGB_to_YUV_V_count,
		-- Fanout Out
		Out_data => aof_RGB_to_YUV_V_data,
		Out_send => aof_RGB_to_YUV_V_send,
		Out_ack => aof_RGB_to_YUV_V_ack,
		Out_rdy => aof_RGB_to_YUV_V_rdy,
		Out_count => aof_RGB_to_YUV_V_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));

	-- --------------------------------------------------------------------------
	-- Queues
	-- --------------------------------------------------------------------------
	q_ai_YUV_to_RGB_Y : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_YUV_to_RGB_Y_data,
		Out_send => ai_YUV_to_RGB_Y_send,
		Out_ack => ai_YUV_to_RGB_Y_ack,
		Out_count => ai_YUV_to_RGB_Y_count,
		-- Queue In
		In_data => aof_Stream_to_YUV_Y_data,
		In_send => aof_Stream_to_YUV_Y_send(0),
		In_ack => aof_Stream_to_YUV_Y_ack(0),
		In_rdy => aof_Stream_to_YUV_Y_rdy(0),
		In_count => aof_Stream_to_YUV_Y_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_YUV_to_RGB_U : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_YUV_to_RGB_U_data,
		Out_send => ai_YUV_to_RGB_U_send,
		Out_ack => ai_YUV_to_RGB_U_ack,
		Out_count => ai_YUV_to_RGB_U_count,
		-- Queue In
		In_data => aof_Stream_to_YUV_U_data,
		In_send => aof_Stream_to_YUV_U_send(0),
		In_ack => aof_Stream_to_YUV_U_ack(0),
		In_rdy => aof_Stream_to_YUV_U_rdy(0),
		In_count => aof_Stream_to_YUV_U_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_YUV_to_RGB_V : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_YUV_to_RGB_V_data,
		Out_send => ai_YUV_to_RGB_V_send,
		Out_ack => ai_YUV_to_RGB_V_ack,
		Out_count => ai_YUV_to_RGB_V_count,
		-- Queue In
		In_data => aof_Stream_to_YUV_V_data,
		In_send => aof_Stream_to_YUV_V_send(0),
		In_ack => aof_Stream_to_YUV_V_ack(0),
		In_rdy => aof_Stream_to_YUV_V_rdy(0),
		In_count => aof_Stream_to_YUV_V_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Generation_Rin : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Generation_Rin_data,
		Out_send => ai_Generation_Rin_send,
		Out_ack => ai_Generation_Rin_ack,
		Out_count => ai_Generation_Rin_count,
		-- Queue In
		In_data => aof_YUV_to_RGB_R_data,
		In_send => aof_YUV_to_RGB_R_send(0),
		In_ack => aof_YUV_to_RGB_R_ack(0),
		In_rdy => aof_YUV_to_RGB_R_rdy(0),
		In_count => aof_YUV_to_RGB_R_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Generation_Gin : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Generation_Gin_data,
		Out_send => ai_Generation_Gin_send,
		Out_ack => ai_Generation_Gin_ack,
		Out_count => ai_Generation_Gin_count,
		-- Queue In
		In_data => aof_YUV_to_RGB_G_data,
		In_send => aof_YUV_to_RGB_G_send(0),
		In_ack => aof_YUV_to_RGB_G_ack(0),
		In_rdy => aof_YUV_to_RGB_G_rdy(0),
		In_count => aof_YUV_to_RGB_G_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Generation_Bin : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Generation_Bin_data,
		Out_send => ai_Generation_Bin_send,
		Out_ack => ai_Generation_Bin_ack,
		Out_count => ai_Generation_Bin_count,
		-- Queue In
		In_data => aof_YUV_to_RGB_B_data,
		In_send => aof_YUV_to_RGB_B_send(0),
		In_ack => aof_YUV_to_RGB_B_ack(0),
		In_rdy => aof_YUV_to_RGB_B_rdy(0),
		In_count => aof_YUV_to_RGB_B_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_RGB_to_YUV_R : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_RGB_to_YUV_R_data,
		Out_send => ai_RGB_to_YUV_R_send,
		Out_ack => ai_RGB_to_YUV_R_ack,
		Out_count => ai_RGB_to_YUV_R_count,
		-- Queue In
		In_data => aof_Generation_Rout_data,
		In_send => aof_Generation_Rout_send(0),
		In_ack => aof_Generation_Rout_ack(0),
		In_rdy => aof_Generation_Rout_rdy(0),
		In_count => aof_Generation_Rout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_RGB_to_YUV_G : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_RGB_to_YUV_G_data,
		Out_send => ai_RGB_to_YUV_G_send,
		Out_ack => ai_RGB_to_YUV_G_ack,
		Out_count => ai_RGB_to_YUV_G_count,
		-- Queue In
		In_data => aof_Generation_Gout_data,
		In_send => aof_Generation_Gout_send(0),
		In_ack => aof_Generation_Gout_ack(0),
		In_rdy => aof_Generation_Gout_rdy(0),
		In_count => aof_Generation_Gout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_RGB_to_YUV_B : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_RGB_to_YUV_B_data,
		Out_send => ai_RGB_to_YUV_B_send,
		Out_ack => ai_RGB_to_YUV_B_ack,
		Out_count => ai_RGB_to_YUV_B_count,
		-- Queue In
		In_data => aof_Generation_Bout_data,
		In_send => aof_Generation_Bout_send(0),
		In_ack => aof_Generation_Bout_ack(0),
		In_rdy => aof_Generation_Bout_rdy(0),
		In_count => aof_Generation_Bout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_YUV_to_Stream_Y : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_YUV_to_Stream_Y_data,
		Out_send => ai_YUV_to_Stream_Y_send,
		Out_ack => ai_YUV_to_Stream_Y_ack,
		Out_count => ai_YUV_to_Stream_Y_count,
		-- Queue In
		In_data => aof_RGB_to_YUV_Y_data,
		In_send => aof_RGB_to_YUV_Y_send(0),
		In_ack => aof_RGB_to_YUV_Y_ack(0),
		In_rdy => aof_RGB_to_YUV_Y_rdy(0),
		In_count => aof_RGB_to_YUV_Y_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_YUV_to_Stream_U : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_YUV_to_Stream_U_data,
		Out_send => ai_YUV_to_Stream_U_send,
		Out_ack => ai_YUV_to_Stream_U_ack,
		Out_count => ai_YUV_to_Stream_U_count,
		-- Queue In
		In_data => aof_RGB_to_YUV_U_data,
		In_send => aof_RGB_to_YUV_U_send(0),
		In_ack => aof_RGB_to_YUV_U_ack(0),
		In_rdy => aof_RGB_to_YUV_U_rdy(0),
		In_count => aof_RGB_to_YUV_U_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_YUV_to_Stream_V : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_YUV_to_Stream_V_data,
		Out_send => ai_YUV_to_Stream_V_send,
		Out_ack => ai_YUV_to_Stream_V_ack,
		Out_count => ai_YUV_to_Stream_V_count,
		-- Queue In
		In_data => aof_RGB_to_YUV_V_data,
		In_send => aof_RGB_to_YUV_V_send(0),
		In_ack => aof_RGB_to_YUV_V_ack(0),
		In_rdy => aof_RGB_to_YUV_V_rdy(0),
		In_count => aof_RGB_to_YUV_V_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_no_YUV : entity SystemBuilder.Queue(behavioral)
	generic map (length => 64, width => 8)
	port map(
		-- Queue Out
		Out_data => no_YUV_data,
		Out_send => no_YUV_send,
		Out_ack => no_YUV_ack,
		Out_count => no_YUV_count,
		-- Queue In
		In_data => aof_YUV_to_Stream_YUV_data,
		In_send => aof_YUV_to_Stream_YUV_send(0),
		In_ack => aof_YUV_to_Stream_YUV_ack(0),
		In_rdy => aof_YUV_to_Stream_YUV_rdy(0),
		In_count => aof_YUV_to_Stream_YUV_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Stream_to_YUV_stream : entity SystemBuilder.Queue(behavioral)
	generic map (length => 32768, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Stream_to_YUV_stream_data,
		Out_send => ai_Stream_to_YUV_stream_send,
		Out_ack => ai_Stream_to_YUV_stream_ack,
		Out_count => ai_Stream_to_YUV_stream_count,
		-- Queue In
		In_data => nif_STREAM_data,
		In_send => nif_STREAM_send(0),
		In_ack => nif_STREAM_ack(0),
		In_rdy => nif_STREAM_rdy(0),
		In_count => nif_STREAM_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);

	-- --------------------------------------------------------------------------
	-- Network port(s) instantiation
	-- --------------------------------------------------------------------------
	
	-- Output Port(s) Instantiation
	YUV_data <= no_YUV_data;
	YUV_send <= no_YUV_send;
	no_YUV_ack <= YUV_ack;
	no_YUV_rdy <= YUV_rdy;
	YUV_count <= no_YUV_count;
	
	-- Input Port(s) Instantiation
	ni_STREAM_data <= STREAM_data;
	ni_STREAM_send <= STREAM_send;
	STREAM_ack <= ni_STREAM_ack;
	STREAM_rdy <= ni_STREAM_rdy;
	ni_STREAM_count <= STREAM_count;
end architecture rtl;
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
