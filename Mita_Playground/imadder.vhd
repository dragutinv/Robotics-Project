
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

entity imadder is
port(rstb,clk:in std_logic; a,b: in std_logic_vector(7 downto 0); sum: out std_logic_vector(7 downto 0));
end imadder;

architecture Behavioral of imadder is

begin
	process(clk,rstb) begin
		if(clk'event and clk='0') then
			if(rstb='0') then
				sum <= x"00";
			else	
				sum <= a+b;
			end if;
		end if;	
	end process;
	
end Behavioral;

