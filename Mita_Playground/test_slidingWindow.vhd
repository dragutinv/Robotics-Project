
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:07:05 04/17/2008
-- Design Name:   slidingWindow
-- Module Name:   C:/Documents and Settings/bentho/Mina dokument/VHDL/Pegasus/studentVideo/test_slidingWindow.vhd
-- Project Name:  studentVideo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: slidingWindow
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY test_slidingWindow_vhd IS
END test_slidingWindow_vhd;

ARCHITECTURE behavior OF test_slidingWindow_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT slidingWindow
	PORT(
		clk : IN std_logic;
		fsynch_in : IN std_logic;
		rsynch_in : IN std_logic;
		pdata_in : IN std_logic_vector(7 downto 0);          
		fsynch_out : OUT std_logic;
		rsynch_out : OUT std_logic;
		pdata_out1 : OUT std_logic_vector(7 downto 0);
		pdata_out2 : OUT std_logic_vector(7 downto 0);
		pdata_out3 : OUT std_logic_vector(7 downto 0);
		pdata_out4 : OUT std_logic_vector(7 downto 0);
		pdata_out5 : OUT std_logic_vector(7 downto 0);
		pdata_out6 : OUT std_logic_vector(7 downto 0);
		pdata_out7 : OUT std_logic_vector(7 downto 0);
		pdata_out8 : OUT std_logic_vector(7 downto 0);
		pdata_out9 : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	SIGNAL clk :  std_logic := '0';
	SIGNAL fsynch_in :  std_logic := '0'; -- fsynch_in, rsynch_in and pdata_in are the video signals 
	SIGNAL rsynch_in :  std_logic := '0'; -- coming from the img_testbench that reads the simulation
													  -- input stimuli
	SIGNAL pdata_in :  std_logic_vector(7 downto 0) := (others=>'0');

	SIGNAL fsynch_int :  std_logic; -- fsynch_int and rsynch_int and pdata_in are the video signals 
	SIGNAL rsynch_int :  std_logic; -- coming from the sliding window and connect to the filter kernel

	SIGNAL fsynch_out :  std_logic; -- fsynch_out, rsynch_out and pdata_out are output video signals
	SIGNAL rsynch_out :  std_logic; -- from the filter kernel and connected to the img_testbench output
	SIGNAL pdata_out  :  std_logic_vector(7 downto 0); -- as simulation ouput
	
	SIGNAL reset      :  std_logic;
	SIGNAL pdata_int1 :  std_logic_vector(7 downto 0);	-- pdata_int1 to pdata_int9 are signal outputs
	SIGNAL pdata_int2 :  std_logic_vector(7 downto 0); -- from the taps of the memory hierarchi
	SIGNAL pdata_int3 :  std_logic_vector(7 downto 0); -- They are connected to the filter kernel inputs
	SIGNAL pdata_int4 :  std_logic_vector(7 downto 0);  
	SIGNAL pdata_int5 :  std_logic_vector(7 downto 0);
	SIGNAL pdata_int6 :  std_logic_vector(7 downto 0);
	SIGNAL pdata_int7 :  std_logic_vector(7 downto 0);
	SIGNAL pdata_int8 :  std_logic_vector(7 downto 0);
	SIGNAL pdata_int9 :  std_logic_vector(7 downto 0);
	
	SIGNAL columns 	:  std_logic_vector(9 downto 0);
	SIGNAL rcnt    	:  std_logic_vector(8 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut1: slidingWindow PORT MAP(
		clk => clk,
		fsynch_in => fsynch_in,
		rsynch_in => rsynch_in,
		pdata_in => pdata_in,
		fsynch_out => fsynch_int,
		rsynch_out => rsynch_int,
		pdata_out1 => pdata_int1,
		pdata_out2 => pdata_int2,
		pdata_out3 => pdata_int3,
		pdata_out4 => pdata_int4,
		pdata_out5 => pdata_int5,
		pdata_out6 => pdata_int6,
		pdata_out7 => pdata_int7,
		pdata_out8 => pdata_int8,
		pdata_out9 => pdata_int9
	);
	
	uut2: entity work.meanKernel_3x3 PORT MAP(
		pclk_i => clk,
		fsync_i => fsynch_int,
		rsync_i => rsynch_int,
		pData1 => pData_int1,
		pData2 => pData_int2,
		pData3 => pData_int3,
		pData4 => pData_int4,
		pData5 => pData_int5,
		pData6 => pData_int6,
		pData7 => pData_int7,
		pData8 => pData_int8,
		pData9 => pData_int9,
		fsync_o => fsynch_out,
		rsync_o => rsynch_out,
		pdata_o => pdata_out
	);
	
	img_read : entity work.img_testbench
	port map (
      pclk_i    => clk,
	 	reset_i	 => reset,
      fsync_i   => fsynch_out,
      rsync_i   => rsynch_out,		
      pdata_i   => pdata_out,	  
		cols_o	 => open,
		rows_o	 => open,
		col_o		 => open,
		row_o		 => open,
      fsync_o   => fsynch_in,
      rsync_o   => rsynch_in,
		pdata_o   => pdata_in);

	clock_generate: process (clk)
		constant T_pw : time := 50 ns;      -- Clock period is 100ns.
	begin  -- process img
		if clk = '0' then
			clk <= '1' after T_pw, '0' after 2*T_pw;
		end if;
	end process clock_generate;
	
	reset <= '1', '0' after 60 ns;

END;
