ENTITY monitor IS
 GENERIC( CONSTANT file_name: IN STRING := "C:/Users/Mita/Documents/VIBOT/RP_test/image.hex" ) ; -- Target Hex-video file name
 PORT( SIGNAL vdat: IN STD_LOGIC_VECTOR (7 DOWNTO 0) ; -- Data input
 SIGNAL clk: IN STD_LOGIC := '0' ; -- Clock input
 SIGNAL n_hs: IN STD_LOGIC := '1' ; -- Horizontal sync input
 SIGNAL n_vs: IN STD_LOGIC := '1' ; -- Vertical sync input
 SIGNAL dv: IN STD_LOGIC := '0') ; -- Data valid input signal
END monitor;
-------------------------------------------------------------------------------
ARCHITECTURE behav OF monitor IS
 FILE imagen: hex_image_file IS OUT filem; -- File open
BEGIN
 pm1: PROCESS (clk) ---- Data valid writing process
 VARIABLE nib: STD_LOGIC_VECTOR (3 DOWNTO 0);
 VARIABLE hex_nib: hex;
 VARIABLE chr: CHARACTER;
 BEGIN
 IF clk='1' THEN -- Signals are sampled at rising edge
 IF dv = '1' THEN -- if the data is valid
 nib := vdat(7 DOWNTO 4); -- data is converted to hex and written into file
 std2hex(nib,hex_nib);
 hex2chr(hex_nib,chr);
 WRITE(file_name,chr);
 std2hex(vdat(3 DOWNTO 0),hex_nib);
 hex2chr(hex_nib,chr);
 WRITE(file_name,chr);
 END IF;
 END IF;
 END PROCESS;
 pm2: PROCESS (n_hs) ---- Horizontal sync pulse
 BEGIN
 IF (n_hs'EVENT AND n_hs='0' AND n_vs='1') THEN -- CR-LF are written into file
 WRITE(file_name,CR);
 WRITE(file_name,LF);
 END IF;
 END PROCESS;
 pm3: PROCESS (n_vs) ---- Vertical sync pulse
 BEGIN
 IF (n_vs'EVENT AND n_vs='0') THEN -- an asterisc is written into file
 WRITE(file_name,'*');
 END IF;
 END PROCESS;
END;