
--------------------------------------------------------------------------------
-- Company: 		Mid Sweden university
-- Engineer:		Benny Thörnberg
--
-- Create Date:   14:43:06 04/11/2008
-- Design Name:   line_buffer_8b
-- Module Name:   C:/Documents and Settings/bentho/Mina dokument/VHDL/Pegasus/studentVideo/test_line_buffer_8b.vhd
-- Project Name:  studentVideo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: line_buffer_8b
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
USE ieee.numeric_std.ALL;

-- This is a testbench that gives testvectors for the "line_buffer_8b" entity. 
-- The simulation output must be checked manually by the designer.
-- The "line_buffer_8b" entity constitutes a FIFO-register that can be used for storage 
-- of line delays for image processing. 
-- It is implemented as a circular buffer using one single pointer.
-- The address for this pointer must be driven externally by the interface signal "pointer".
-- Data is first read from the memory location referenced by "pointer" to "odata" on the falling 
-- clock edge and then data is written to the same location from "idata" on the rising clock edge.
-- An additional register on the data output is clocked on the rising clockedge such that data output
-- appears on the output on rising edge allthough it is read on the falling edge.
-- The maximum size of the final line buffer is 1025 by 8 bits. The size of this line buffer can be
-- any size ranging from 1 to 1025 depending on the sequence of addressses driven on "pointer".
--
-- "pointer" is generated as a modulo 16 counter in this test bench and it means that the length of
-- the line buffer in this simulation is 17 elements by 8 bits and the data sequence on the input port
-- will thus be delayed by 17 clock cycles.
-- Run this simulation for 3200 ns

ENTITY test_line_buffer_8b_vhd IS
END test_line_buffer_8b_vhd;

ARCHITECTURE behavior OF test_line_buffer_8b_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT line_buffer_8b
	PORT(
		idata : IN std_logic_vector(7 downto 0);
		pointer : IN std_logic_vector(9 downto 0);
		ena : IN std_logic;
		clk : IN std_logic;          
		odata : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL ena :  std_logic := '1';
	SIGNAL clk :  std_logic := '0';
	SIGNAL idata :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL pointer :  std_logic_vector(9 downto 0) := (others=>'0');

	--Outputs
	SIGNAL odata :  std_logic_vector(7 downto 0);

BEGIN

	generate_clk: process (clk)
		constant T_pw : time := 50 ns;      -- Clock period is 100ns.
	begin  -- process img
		if clk = '0' then
			clk <= '1' after T_pw, '0' after 2*T_pw;
		end if;
	end process generate_clk;
	
	-- Instantiate the Unit Under Test (UUT)
	uut: line_buffer_8b PORT MAP(
		idata => idata,
		odata => odata,
		pointer => pointer,
		ena => ena,
		clk => clk
	);
	
	tb : PROCESS(clk)
	variable pnt : std_logic_vector(3 downto 0):= B"0000";
	BEGIN
		if(clk'event AND clk = '1') then
		
			idata <= idata + 1;
			if(idata < 5) then
				ena <= '0';
			else
				ena <= '1';
			end if;
			pnt := pnt + 1;
			pointer <= B"000000" & pnt;
		end if;
	END PROCESS;

END;
