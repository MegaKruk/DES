-- Vhdl test bench created from schematic C:\Users\Filip\Documents\workspace\ISE Projects\DES\DES_Cryptanalysis.sch - Tue Aug 28 20:00:34 2018
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY DES_Cryptanalysis_DES_Cryptanalysis_sch_tb IS
END DES_Cryptanalysis_DES_Cryptanalysis_sch_tb;
ARCHITECTURE behavioral OF DES_Cryptanalysis_DES_Cryptanalysis_sch_tb IS 

   COMPONENT DES_Cryptanalysis
   PORT( plaintext	:	OUT	STD_LOGIC_VECTOR (0 TO 63); 
			 keyout	:	OUT	STD_LOGIC_VECTOR (0 TO 63); 
          ciphertext	:	IN	STD_LOGIC_VECTOR (0 TO 63); 
          Clk_50MHz	:	IN	STD_LOGIC; 
          isfound	:	IN	STD_LOGIC; 

   END COMPONENT;

   SIGNAL plaintext	:	STD_LOGIC_VECTOR (0 TO 63);
	SIGNAL keyout	:	STD_LOGIC_VECTOR (0 TO 63);
   SIGNAL ciphertext	:	STD_LOGIC_VECTOR (0 TO 63);
   SIGNAL Clk_50MHz	:	STD_LOGIC;
   SIGNAL isfound	:	STD_LOGIC;
	
	constant clock_period : time := 10 ns;

BEGIN

	clock_process :process
   BEGIN
		Clk_50MHz <= '0';
		wait for clock_period/2;
		Clk_50MHz <= '1'; 
		wait for clock_period/2;
   END PROCESS;

   UUT: DES_Cryptanalysis PORT MAP(
		plaintext => plaintext, 
		keyout => keyout, 
		ciphertext => ciphertext, 
		Clk_50MHz => Clk_50MHz, 
		isfound => isfound, 
   );

-- *** Test Bench - User Defined Section ***
   stim_process : PROCESS
   BEGIN
		--ciphertext <= x"d5d44ff720683d0d", x"0000000000000000" after clock_period*10, x"85e813540f0ab405" after clock_period*20;
		--key <= x"0123456789abcdef", x"0e329232ea6d0d73" after clock_period*10, x"133457799BBCDFF1" after clock_period*20;
		isfound <= b"0", b"1" after clock_period*10
		ciphertext <= x"0123456789abcdef";
		--expected <= x"65bcc5b391c57c02";
		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
