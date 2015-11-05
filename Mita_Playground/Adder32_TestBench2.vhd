library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


--this is how entity for your test bench code has to be declared.
entity testbench2 is
end testbench2;

architecture behavior of testbench2 is
--signal declarations.
signal num1,num2,sum : std_logic_vector(3 downto 0) :=(others => '0');
signal carry :  std_logic:='0';


begin
--entity instantiation
UUT : entity work.rc_adder port map(num1,num2,sum,carry);
--definition of simulation process
tb : process

	file input1,input2 : text;
	variable line_content1,line_content2 : string(1 to 7);
    variable line_num1,line_num2 : line;
	variable j : integer := 0;
	variable char1,char2 : character:='0'; 
		
	begin
	    --Open the file in read mode.
	   file_open(input1,"C:\Users\Mita\Documents\VIBOT\RP_test\input1.txt",read_mode);
	   file_open(input2,"C:\Users\Mita\Documents\VIBOT\RP_test\input2.txt",read_mode);
		--run the loop 10 times to read 10 real values from the file.
	  while not endfile(input1) loop --till the end of file is reached continue.
		 readline (input1,line_num1);  --Read the whole line from the file
		 readline (input2,line_num2);  
		--Read the contents of the line from  the file into a variable.
		 READ (line_num1,line_content1);  
		 READ (line_num2,line_content2);  
		--For each character in the line convert it to binary value.
		--And then store it in a signal named 'bin_value'.
		for j in 1 to 7 loop		
			char1 := line_content1(j);
			char2 := line_content2(j);
			if(char1 = '0') then
				num1(4-j) <= '0';
			else
				num1(4-j) <= '1';
			end if;	
			if(char2 = '0') then
				num2(4-j) <= '0';
			else
				num2(4-j) <= '1';
			end if;	
		end loop;	
		wait for 2 ns; --after reading each line wait for 10ns.
      end loop;
      file_close(input1);  --after reading all the lines close the file.	
      file_close(input2);
	
	  wait;
end process tb;

end;
