-- Vhdl test bench created from schematic C:\Users\Filip\Documents\workspace\ISE Projects\DES\DES_Cryptanalysis.sch - Tue Oct 23 14:03:38 2018
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
   PORT( ciphertext	:	IN	STD_LOGIC_VECTOR (0 TO 63); 
          isfound	:	IN	STD_LOGIC; 
          Clk_50MHz	:	IN	STD_LOGIC; 
          plaintext	:	OUT	STD_LOGIC_VECTOR (0 TO 63); 
          keyout	:	OUT	STD_LOGIC_VECTOR (0 TO 63));
   END COMPONENT;

   SIGNAL ciphertext	:	STD_LOGIC_VECTOR (0 TO 63);
   SIGNAL isfound	:	STD_LOGIC;
   SIGNAL Clk_50MHz	:	STD_LOGIC;
   SIGNAL plaintext	:	STD_LOGIC_VECTOR (0 TO 63);
   SIGNAL keyout	:	STD_LOGIC_VECTOR (0 TO 63);
	
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
		ciphertext => ciphertext, 
		isfound => isfound, 
		Clk_50MHz => Clk_50MHz, 
		plaintext => plaintext, 
		keyout => keyout
   );

-- *** Test Bench - User Defined Section ***
   stim_process : PROCESS
   BEGIN
		isfound <= '0', '1' after clock_period*20;
		ciphertext <= x"0123456789abcdef";
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
