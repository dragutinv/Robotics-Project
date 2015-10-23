
library IEEE;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
use IEEE.MATH_REAL.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

library std;
use std.textio.all; --include package textio.vhd

--entity declaration	
entity imgadder_test is
end imgadder_test;

--architecture definition
architecture Behavioral of imgadder_test is
constant MAX : integer := 256*256-1;
	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT imadder
	PORT(
		rstb : IN std_logic;
		clk : IN std_logic;
		a : IN std_logic_vector(7 downto 0);
		b : IN std_logic_vector(7 downto 0);          
		sum : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--Inputs
	SIGNAL rstb :  std_logic := '0';
	SIGNAL clk :  std_logic := '0';
	SIGNAL a :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL b :  std_logic_vector(7 downto 0) := (others=>'0');
--Outputs
	SIGNAL sum :  std_logic_vector(7 downto 0);
--period of clock,bit for indicating end of file.
signal endoffile : bit := '0';
signal d1,d2,intt,n : integer:=0;
signal linenumber : integer:=1;
--signal dbus: std_logic_vector(7 downto 0) := x"00";
--------------------------------------------------------------------------------------------
function CONV_STDLV8bit_2INT(ARG: std_logic_vector (7 downto 0)) 
return integer is
variable int: integer:=0;
variable tmp: std_logic_vector(7 downto 0);
begin
	int :=0;
	tmp := ARG;
	for i in 0 to 7 loop
	    if (tmp(i) ='1') then
			int := int+(2**i);
	    else 
			int := int+0;
	    end if;
	end loop;
	return int; 
end CONV_STDLV8bit_2INT;
--------------------------------------------------------------------------------------------
function CONV_INT2STDLV(ARG: INTEGER; SIZE: INTEGER) 
return STD_LOGIC_VECTOR is
variable result: STD_LOGIC_VECTOR (SIZE-1 downto 0):=x"00";
variable temp: integer:= 0;
begin
	temp := ARG;
	for i in 0 to SIZE-1 loop
	    if ((temp mod 2) = 1) then
			result(i) := '1';
	    else 
			result(i) := '0';
	    end if;
	    if temp > 0 then
			temp := temp / 2;
	    elsif (temp > integer'low) then
			temp := (temp - 1) / 2; -- simulate ASR
	    else
			temp := temp / 2; -- simulate ASR
	    end if;
	end loop;
	return result; 
end CONV_INT2STDLV;
--------------------------------------------------------------------------------------------
    constant PERIOD : time := 20 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 30 ns;

begin

-- Instantiate the Unit Under Test (UUT)
uut: imadder PORT MAP(
		rstb => rstb,
		clk => clk,
		a => a,
		b => b,
		sum => sum
	);

CLOCK: PROCESS    -- clock process for clk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                clk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                clk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
    END PROCESS;
	
tb: PROCESS
	BEGIN
		rstb <='0';
		wait for 60ns;
		rstb <='1';
		wait for 1312us; -- will wait forever
		
	END PROCESS;
	
reading : process
	file infile : text is in "C:\Users\Mita\Documents\VIBOT\Robotic Project\Mita_Playground\img.txt"; --declare input file 1987
	file infile2 : text is in "C:\Users\Mita\Documents\VIBOT\Robotic Project\Mita_Playground\img.txt"; --declare input file 1987
	variable inline,inline2 : line; --line number declaration
	variable dataread1 : real;
	begin
		wait until clk = '1' and clk'event;
		if(n < 65535) then
			if (not (endfile(infile) or endfile(infile2)) ) then --checking the "END OF FILE" is not reached.
					readline(infile, inline); 
					read(inline, dataread1);
					d1 <=integer(dataread1);
				a <= CONV_INT2STDLV(d1,8);
					readline(infile2, inline2); 
					read(inline2, dataread1);
					d2 <=integer(dataread1);
				b <= CONV_INT2STDLV(d2,8);
			else
				a<=x"00";
				b<=x"00";
			end if;
		else	
		  endoffile <='1'; --set signal to tell end of file read file is reached.
		end if;
	end process reading;

--write process @negative edge
writing : process
	file outfile : text is out "outimgvhdl.txt"; --declare output file 1987
	variable buff_out : line; --line number declaration
	begin
		wait until clk = '0' and clk'event;
		if(endoffile='0') then --if the file end is not reached.
			intt <= CONV_STDLV8bit_2INT(sum);
			if(linenumber>3) then
			write(buff_out, intt);  
			writeline(outfile, buff_out);-- write line to output_image text file.
			n <= n+1;
		  end if;	
			linenumber <= linenumber + 1;
		else
			null;
		end if;
	end process writing;

end Behavioral;

--WRITE (buf, string’("hello"));
--WRITELINE(fileptr,buf);
--WRITE (buf, bit_vector’(" 010111 "));
--WRITELINE(fileptr,buf);

--http://myfpgablog.blogspot.in/2011/12/memory-initialization-methods.html
-- constant MEM_DEPTH : integer := 2**ADDR_WIDTH;
-- type mem_type is array (0 to MEM_DEPTH-1) of signed(DATA_WIDTH-1 downto 0);
-- impure function init_mem(mif_file_name : in string) return mem_type is
    -- file mif_file : text open read_mode is mif_file_name;
    -- variable mif_line : line;
    -- variable temp_bv : bit_vector(DATA_WIDTH-1 downto 0);
    -- variable temp_mem : mem_type;
-- begin
    -- for i in mem_type'range loop
        -- readline(mif_file, mif_line);
        -- read(mif_line, temp_bv);
        -- temp_mem(i) := signed(to_stdlogicvector(temp_bv));
    -- end loop;
    -- return temp_mem;
-- end function;

-- constant mem : mem_type := init_mem("mem_init_vhd.mif");
