
library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;


entity Add_array_tb is
end Add_array_tb;

ARCHITECTURE behavior OF Add_array_tb IS
	-----------------------------------------------------------------------
	-- Component declaration
	-----------------------------------------------------------------------
	component Add_array
	port(
	    Input1_data : IN std_logic_vector(7 downto 0);
	    Input1_send : IN  std_logic := '1';
	    Input1_ack : OUT std_logic;
	    Input1_count : IN std_logic_vector(15 downto 0);
	    Input2_data : IN std_logic_vector(7 downto 0);
	    Input2_send : IN std_logic := '1';
	    Input2_ack : OUT std_logic;
	    Input2_count : IN std_logic_vector(15 downto 0):="1111111111111110";
	    Output_data : OUT std_logic_vector(7 downto 0);
	    Output_send : OUT std_logic;
	    Output_ack : IN std_logic := '1';
	    Output_rdy : IN  std_logic := '1';
	    Output_count : OUT std_logic_vector(15 downto 0);
	    CLK: IN std_logic;
	    RESET: IN std_logic);
	end component Add_array;
	
		-----------------------------------------------------------------------
		-- Achitecure signals & constants
		-----------------------------------------------------------------------
			
		-- Input component queue
		signal q_Input1_data : std_logic_vector(7 downto 0) := "00000010";
		signal q_Input2_data : std_logic_vector(7 downto 0) := "00000010";
		signal q_Input1_count : std_logic_vector(15 downto 0) := "0000000000000000";	
		
		--signal Output_data : std_logic_vector(7 downto 0) := "00000000";
		--declare inputs and initialize them
		signal clk : std_logic := '0';
		signal reset : std_logic := '0';
		--declare outputs and initialize them
		signal count : std_logic_vector(3 downto 0);
		-- Clock period definitions
		constant clk_period : time := 1 ns;
		
	begin
		
		uut : Add_array 
		port map(
			Input1_data => q_Input1_data,		
			Input2_data => q_Input2_data,
		   --Input1_ack => open,
			--Input2_ack => open,
			Input2_count => q_Input1_count,
			Input1_count => q_Input1_count,
			Output_data => open,
			CLK => clk,
			reset => reset);
			-- Clock process definitions( clock with 50% duty cycle is generated here.
			clk_process :process
			begin
				  clk <= '0';
				  wait for clk_period/2;  --for 0.5 ns signal is '0'.
				  clk <= '1';
				  wait for clk_period/2;  --for next 0.5 ns signal is '1'.
			end process;
			-- Stimulus process
		  stim_proc: process
		  
			begin    

					for i in 1 to 5 loop
							-- Set the inputs.
							q_Input1_data <= q_Input1_data + 1 ;
							q_Input2_data <= q_Input2_data + 1 ;
							q_Input1_count <= q_Input1_count + 1 ;
							
					wait for 10 ns;
					
					end loop;			
--					q_Input1_data <= "00000000";q_Input2_data <= "00100000"; wait for 10  ns;
--					q_Input1_data <= "00100000";q_Input2_data <= "01000000"; wait for 10 ns;
--					q_Input1_data <= "01000000";q_Input2_data <= "00100000"; wait for 10  ns;
--					q_Input1_data <= "01100000";q_Input2_data <= "01100000"; wait for 10  ns;
--					q_Input1_data <= "10000000";q_Input2_data <= "10100000"; wait for 10  ns;
--					q_Input1_data <= "10100000";q_Input2_data <= "10000000"; wait for 10  ns;
--					q_Input1_data <= "01100000";q_Input2_data <= "10100000"; wait for 10  ns;
--					q_Input1_data <= "01000000";q_Input2_data <= "00100000"; WAIT; -- will wait forever
		  end process;

end architecture behavior;
