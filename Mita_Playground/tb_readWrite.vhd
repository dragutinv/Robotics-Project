
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity TB_FILE_READ is
end TB_FILE_READ;

architecture test of TB_FILE_READ is


component file_handle 
  generic (
           stim_file:       string  := "C:\Users\Mita\Documents\VIBOT\RP_test\PETS_176x144.yuv"
          );
  port(
       CLK              : in  std_logic;
       RST              : in  std_logic;
       Y                : out std_logic_vector(4 downto 0);
       EOG              : out std_logic
      );
end component;


signal rst:  std_logic;
signal clk:  std_logic := '0';
signal eog:  std_logic;
signal y:    std_logic_vector(4 downto 0);

begin

          
rst <= '0', '1' after 40 ns, '0' after 100 ns;    
clk <= not clk after 10 ns;


input_stim: file_handle 
  port map(
       CLK      => clk,
       RST      => rst,
       Y        => y,
       EOG      => eog
      );


end test;


