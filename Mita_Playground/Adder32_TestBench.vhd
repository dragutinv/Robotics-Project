library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--this is how entity for your test bench code has to be declared.
entity testbench is
end testbench;

architecture behavior of testbench is
--signal declarations.
signal num1,num2,sum : std_logic_vector(3 downto 0) :=(others => '0');
signal carry :  std_logic:='0';


begin
--entity instantiation
UUT : entity work.rc_adder port map(num1,num2,sum,carry);
--definition of simulation process
tb : process

begin
num1<="0010";  --num1 =2
num2<="1001";  --num2 =9
wait for 2 ns;

num1<="1010";  --num1 =10
num2<="0011";   --num2 =3
wait for 2 ns;

num1<="1000";  --num1 =8
num2<="0101";  --num2 =5
wait for 2 ns;

num1<="1010";  --num1 =10
num2<="0110";  --num2 =6
--more input combinations can be given here.
wait;
end process tb;

end;
