LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY imagetestbench_clk IS
END imagetestbench_clk;

ARCHITECTURE behavior OF imagetestbench_clk IS 


	SIGNAL clk :  std_logic := '0';
	SIGNAL fsync_in :  std_logic := '0';
	SIGNAL rsync_in :  std_logic := '0';
	SIGNAL pdata_in :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL fsync_out :  std_logic;
	SIGNAL rsync_out :  std_logic;
	SIGNAL pdata_out :  std_logic_vector(7 downto 0);
	
	SIGNAL reset : std_logic:= '0';

BEGIN

	img_read : entity work.img_testbench
	   port map (
        pclk_i    => clk,
	    reset_i	 => reset,
        fsync_i   => fsync_out,
        rsync_i   => rsync_out,		
        pdata_i   => pdata_out,	  
		cols_o	 => open,
		rows_o	 => open,
		col_o    => open,
		row_o     => open,
        fsync_o   => fsync_in,
        rsync_o   => rsync_in,
	    pdata_o   => pdata_in);

       clock_generate: process (clk)
            constant T_pw : time := 50 ns;      -- Clock period is 100ns.
        begin  -- process img
            if clk = '0' then
                clk <= '1' after T_pw, '0' after 2*T_pw;
            end if;
        end process clock_generate;
	
	  -- reset <= '1', '0' after 40 ns;

END;
