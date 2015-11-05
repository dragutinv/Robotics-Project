
library ieee, SystemBuilder;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;


entity Add_array_tb is
end Add_array_tb;

ARCHITECTURE behavior2 OF Add_array_tb IS
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
		signal qInput1_ack : std_logic := '1';
		signal qInput2_ack : std_logic := '1';
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
		   Input1_ack => qInput1_ack,
			Input2_ack => qInput2_ack,
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
			file input1,input2 : text;
			variable line_content1,line_content2 : string(1 to 8);
			variable line_num1,line_num2 : line;
			variable j : integer := 0;
			variable char1,char2 : character:='0'; 
			begin    
					--Open the file in read mode.
				    file_open(input1,"C:\Users\Mita\Documents\VIBOT\Robotic Project\Mita_Playground\input1.txt",read_mode);
				    file_open(input2,"C:\Users\Mita\Documents\VIBOT\Robotic Project\Mita_Playground\input2.txt",read_mode);
					while not endfile(input1) loop
						--readline (input1,line_num1);  --Read the whole line from the file
						--readline (input2,line_num2); 
						 readline (input1,line_num1);  --Read the whole line from the file
						 readline (input2,line_num2);  
								--Read the contents of the line from  the file into a variable.
								 READ (line_num1,line_content1);  
								 READ (line_num2,line_content2);  						
						for j in 1 to 8 loop		
							char1 := line_content1(j);
							char2 := line_content2(j);
							if(char1 = '0') then
								q_Input1_data(8-j) <= '0';
							else
								q_Input1_data(8-j) <= '1';
							end if;	
							if(char2 = '0') then
								q_Input2_data(8-j) <= '0';
							else 
								q_Input2_data(8-j) <= '1';
							end if;	
						end loop;	
						wait for 1 ns; --after reading each line wait for 10ns.
				  end loop;
				  file_close(input1);  --after reading all the lines close the file.	
				  file_close(input2);
		  end process;

end architecture behavior2;
