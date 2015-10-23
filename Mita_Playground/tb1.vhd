LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use STD.textio.all; 

ENTITY read_file IS
END read_file;
 
ARCHITECTURE beha OF read_file IS 
	signal  bin_value : std_logic_vector(3 downto 0):="0000";
BEGIN
	
   --Read process
	process  
      file file_pointer : text;
		variable line_content : string(1 to 4);
      variable line_num : line;
		variable j : integer := 0;
		variable char : character:='0'; 
   begin
      file_open(file_pointer,"C:\Users\Mita\Documents\VIBOT\RP_test\PETS_176x144.yuv",READ_MODE);
        --sim.dat
      while not endfile(file_pointer) loop --till the end of file is reached continue.
      readline (file_pointer,line_num);  --Read the whole line from the file

     READ (line_num,line_content);  
		--For each character in the line convert it to binary value.
		--And then store it in a signal named 'bin_value'.
		for j in 1 to 4 loop		
			char := line_content(j);
			if(char = '0') then
				bin_value(4-j) <= '0';
			else
				bin_value(4-j) <= '1';
			end if;	
		end loop;	
		wait for 10 ns; --after reading each line wait for 10ns.
      end loop;
      file_close(file_pointer);  --after reading all the lines close the file.	
		wait;
    end process;

end beha;
