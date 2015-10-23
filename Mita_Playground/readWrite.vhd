library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.MATH_REAL.ALL;
library std;
use std.textio.all;

entity file_handle is
end file_handle;

architecture Behavioral of file_handle is

type real_array is array(1 to 10) of real;

begin

process

variable line_var : line;
file text_var : text;
variable r : real_array;


begin         

        
   --Open the file in read mode.
   file_open(text_var,"C:\Users\Mita\Documents\VIBOT\RP_test\1.txt",read_mode);
    --run the loop 10 times to read 10 real values from the file.
    for i in 1 to 10 loop 
    --make sure its not the end of file.
    if(NOT ENDFILE(text_var)) then
     readline(text_var,line_var);   --read the current line.
      --extract the real value from the read line and store it in the variable.
     read(line_var,r(i)); 
    end if;
    end loop;
    file_close(text_var); --close the file after reading.
  
    --Write the square root values of variable 'r' to another file.
    file_open(text_var,"C:\Users\Mita\Documents\VIBOT\RP_test\3.txt",write_mode);
    --run the loop 10 times to write 10 real values to the file.
    for i in 1 to 10 loop
     -- module square root
      write(line_var,sqrt(r(i))); --sqrt is a fucntion for finding square root.
        writeline(text_var,line_var);
    end loop;
    file_close(text_var);

  wait;

end process;

end Behavioral;