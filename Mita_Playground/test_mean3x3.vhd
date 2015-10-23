
--------------------------------------------------------------------------------
-- Company: 		Mid Sweden University
-- Engineer:		Benny Thörnberg
--
-- Create Date:   13:42:37 04/30/2008
-- Design Name:   mean_3x3
-- Module Name:   C:/Documents and Settings/bentho/Mina dokument/VHDL/Pegasus/studentVideo/test_mean3x3.vhd
-- Project Name:  studentVideo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mean_3x3
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
USE ieee.std_logic_arith.all;
--USE ieee.numeric_std.ALL;


-- This test bench generates a test vector fo the verification of entity "meanKernel_3x3".
-- "pData1" to "pData9" are assigned the following decimal values, 
-- 150, 100, 170, 200, 10, 255, 70, 50, 20
-- The output of the tested object must then respond with the mean value being the sum 
-- of these inputs divided by 9.
-- The division by 9 is approximated by a multiplication with B"111" at 3.6 format.
-- This is equal to a multiplication with 0.109375 decimal and the output should then be
-- 112 decimal. The result on "pdata_o" is delayed by a latency of three clock cycles.
-- "fsync_o" and "rsync_o" are also delayed by three clock cycles with reference to 
-- "fsync_i" and "rsync_i".
-- Run this simulation for 400 ns

ENTITY test_meanKernel3x3_vhd IS
END test_meanKernel3x3_vhd;

ARCHITECTURE behavior OF test_meanKernel3x3_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT meanKernel_3x3
	PORT(
		pclk_i : IN std_logic;
		fsync_i : IN std_logic;
		rsync_i : IN std_logic;
		pData1 : IN std_logic_vector(7 downto 0);
		pData2 : IN std_logic_vector(7 downto 0);
		pData3 : IN std_logic_vector(7 downto 0);
		pData4 : IN std_logic_vector(7 downto 0);
		pData5 : IN std_logic_vector(7 downto 0);
		pData6 : IN std_logic_vector(7 downto 0);
		pData7 : IN std_logic_vector(7 downto 0);
		pData8 : IN std_logic_vector(7 downto 0);
		pData9 : IN std_logic_vector(7 downto 0);          
		fsync_o : OUT std_logic;
		rsync_o : OUT std_logic;
		pdata_o : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL clk :  std_logic := '1';
	SIGNAL fsync_i :  std_logic := '0';
	SIGNAL rsync_i :  std_logic := '0';
	SIGNAL pData1 :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL pData2 :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL pData3 :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL pData4 :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL pData5 :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL pData6 :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL pData7 :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL pData8 :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL pData9 :  std_logic_vector(7 downto 0) := (others=>'0');

	--Outputs
	SIGNAL fsync_o :  std_logic;
	SIGNAL rsync_o :  std_logic;
	SIGNAL pdata_o :  std_logic_vector(7 downto 0);
	
	-- For test process tp
	signal sumOfTap1, sumOfTap2, sumOfTap3 : std_logic_vector(9 downto 0); -- first pipeline stage
	signal sumOfWindow : std_logic_vector(11 downto 0); -- second pipeline stage
	signal meanVal : std_logic_vector(14 downto 0); -- third pipeline stage

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: meanKernel_3x3 PORT MAP(
		pclk_i => clk,
		fsync_i => fsync_i,
		rsync_i => rsync_i,
		pData1 => pData1,
		pData2 => pData2,
		pData3 => pData3,
		pData4 => pData4,
		pData5 => pData5,
		pData6 => pData6,
		pData7 => pData7,
		pData8 => pData8,
		pData9 => pData9,
		fsync_o => fsync_o,
		rsync_o => rsync_o,
		pdata_o => pdata_o
	);

	clkproc: process(clk)
	begin
		clk <= not clk after 50 ns;
	end process;
	
	tb : PROCESS
	BEGIN

		-- Wait 205 ns for global reset to finish
		
		wait for 205 ns;

		pData1 <= conv_std_logic_vector(150,8);
		pData2 <= conv_std_logic_vector(100,8);
		pData3 <= conv_std_logic_vector(170,8);
		pData4 <= conv_std_logic_vector(200,8);
		pData5 <= conv_std_logic_vector(10,8);
		pData6 <= conv_std_logic_vector(255,8);
		pData7 <= conv_std_logic_vector(70,8);
		pData8 <= conv_std_logic_vector(50,8);
		pData9 <= conv_std_logic_vector(20,8);
		rsync_i <= '1';
		fsync_i <= '1';
		
		wait for 100 ns;
		
		fsync_i <= '0';
		
		wait; -- will wait forever
	END PROCESS;

END;
