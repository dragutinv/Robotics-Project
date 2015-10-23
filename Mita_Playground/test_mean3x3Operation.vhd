
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:39:28 05/13/2008
-- Design Name:   mean3x3Operation
-- Module Name:   C:/Documents and Settings/bentho/Mina dokument/VHDL/Pegasus/studentVideo/test_mean3x3Operation.vhd
-- Project Name:  studentVideo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mean3x3Operation
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

ENTITY test_mean3x3Operation_vhd IS
END test_mean3x3Operation_vhd;

ARCHITECTURE behavior OF test_mean3x3Operation_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT mean3x3Operation
	PORT(
		clk : IN std_logic;
		fsync_in : IN std_logic;
		rsync_in : IN std_logic;
		pdata_in : IN std_logic_vector(7 downto 0);          
		fsync_out : OUT std_logic;
		rsync_out : OUT std_logic;
		pdata_out : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;


	SIGNAL clk :  std_logic := '0';
	SIGNAL fsync_in :  std_logic := '0';
	SIGNAL rsync_in :  std_logic := '0';
	SIGNAL pdata_in :  std_logic_vector(7 downto 0) := (others=>'0');


	SIGNAL fsync_out :  std_logic;
	SIGNAL rsync_out :  std_logic;
	SIGNAL pdata_out :  std_logic_vector(7 downto 0);
	
	SIGNAL reset : std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: mean3x3Operation PORT MAP(
		clk => clk,
		fsync_in => fsync_in,
		rsync_in => rsync_in,
		pdata_in => pdata_in,
		fsync_out => fsync_out,
		rsync_out => rsync_out,
		pdata_out => pdata_out
	);

	img_read : entity work.img_testbench
	port map (
      pclk_i    => clk,
	 	reset_i	 => reset,
      fsync_i   => fsync_out,
      rsync_i   => rsync_out,		
      pdata_i   => pdata_out,	  
		cols_o	 => open,
		rows_o	 => open,
		col_o		 => open,
		row_o		 => open,
      fsync_o   => fsync_in,
      rsync_o   => rsync_in,
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
