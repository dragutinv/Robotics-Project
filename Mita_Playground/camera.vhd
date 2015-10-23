ENTITY camera IS
 GENERIC( 
     CONSTANT filec: IN STRING := "C:/Users/Mita/Documents/VIBOT/RP_test/image.hex" ; -- Hex-image file name
     SIGNAL clk: OUT STD_LOGIC ; -- Clock
     SIGNAL n_hs: OUT STD_LOGIC ; -- Horizontal sync
     SIGNAL n_vs: OUT STD_LOGIC ; -- Vertical sync
     SIGNAL dv: OUT STD_LOGIC ); -- Data valid
END camera;
-------------------------------------------------------------------------------
ARCHITECTURE behav OF camera IS
 SIGNAL clkx: STD_LOGIC := '0';
 FILE image: hex_image_file IS IN filec; -- File open
BEGIN
 ---- Clock generator -------------------------------------------------------------------------
 pclk: PROCESS
 BEGIN
 WAIT FOR tclk;
 clkx <= NOT(clkx);
 clk <= clkx;
 END PROCESS;
 ---- Camera simulation -----------------------------------------------------------------------
 pcamera: PROCESS (clkx)
 VARIABLE cnt1: INTEGER := 0 ; -- horizontal sync counter
 VARIABLE cnt2: INTEGER := 0 ; -- vertical sync counter
 VARIABLE cnt3: INTEGER := 0 ; -- horizontal sync counter inside vertical sync

 BEGIN
 
 IF clkx = '0' THEN
     IF cnt1=0 AND cnt2=0 THEN -- Data process time, no vertical or horizontal syncs
         IF not (ENDFILE (image)) THEN
            READ (image,chr1); -- First character is read
             IF (chr1 = CR) THEN -- if CR-LF detected, horizontal sync must be generated
                 READ (image,chr2); -- Second carachter is read. It must be Line Feed
                 vdat <= (OTHERS => '0'); -- Data is cleared
                 cnt1 := ths; -- Horizontal sync time
                 n_hs <= '0'; -- Horizontal sync
                 n_vs <= '1'; -- Vertical sync
                 dv <= '0'; -- Data no valid
             ELSIF chr1 = '*' THEN -- if '*' detected, vertical sync must be generated
                 vdat <= (OTHERS => '0'); -- Data is cleared
                 cnt2 := tvs; -- Vertical sync time
                 cnt3 := tlin; -- Line time for vertical sync
                 n_vs <= '0'; -- Vertical sync
                 dv <= '0'; -- Data no valid
             ELSE -- Hex data
                chr2hex(chr1,hex_nib); -- First character is converted to STD_LOGIC
                hex2std(hex_nib,idat(7 DOWNTO 4));
                 READ (image,chr2); -- Second carachter is read and converted to STD_LOGIC
                 chr2hex(chr2,hex_nib);
                 hex2std(hex_nib,idat(3 DOWNTO 0));
                 vdat <= idat; -- Data out
                 n_hs <= '1'; -- No horizontal sync
                 n_vs <= '1'; -- No vertical sync
                 dv <= '1'; -- Data valid
             END IF;
         ELSE -- If end of file is reached
             ASSERT (false)
             REPORT "File end reached..."; -- Console message
             n_hs <= '1'; -- No horizontal sync
             n_vs <= '0'; -- Vertical sync
             dv <= '0'; -- Data no valid
         END IF;
     END IF;
 IF cnt1>0 THEN -- Horizontal sync generation
     n_hs <= '0';
    n_vs <= '1';
     cnt1 := cnt1-1; -- Clock count for horizontal sync time
 ELSE
    n_hs <= '1';
 END IF;
 
 IF cnt2>0 THEN -- Vertical sync generation
     n_vs <= '0';
     cnt2 := cnt2-1; -- Clock count for vertical sync time
    cnt3 := cnt3-1; -- Clock count for horizontal sync time inside vertical sync
 ELSE
    n_vs <= '1';
 END IF;
 
 IF cnt3=0 AND cnt2>0 THEN -- Horizontal sync generation inside vertical sync
     n_hs <= '0';
     cnt1 := ths-1;
     cnt3 := tlin+ths;
 END IF;
 END IF;
 END PROCESS;
END behav;