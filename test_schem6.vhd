-- Vhdl test bench created from schematic C:\Users\Filip\Documents\workspace\ISE Projects\DES\DES_Cryptanalysis.sch - Tue Oct 23 14:34:42 2018
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
          plaintext	:	OUT	STD_LOGIC_VECTOR (0 TO 63); 
          Clk_50MHz	:	IN	STD_LOGIC; 
          keyin	:	IN	STD_LOGIC_VECTOR (0 TO 63));
   END COMPONENT;

   SIGNAL ciphertext	:	STD_LOGIC_VECTOR (0 TO 63);
   SIGNAL plaintext	:	STD_LOGIC_VECTOR (0 TO 63);
   SIGNAL Clk_50MHz	:	STD_LOGIC;
   SIGNAL keyin	:	STD_LOGIC_VECTOR (0 TO 63);

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
		plaintext => plaintext, 
		Clk_50MHz => Clk_50MHz, 
		keyin => keyin
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		ciphertext <=	x"d5d44ff720683d0d", 
							x"0000000000000000" after clock_period,
							x"d5d44ff720683d0d" after clock_period*2, 
							x"0000000000000000" after clock_period*3,
							x"d5d44ff720683d0d" after clock_period*4, 
							x"0000000000000000" after clock_period*5,
							x"d5d44ff720683d0d" after clock_period*6, 
							x"0000000000000000" after clock_period*7,
							x"d5d44ff720683d0d" after clock_period*8, 
							x"0000000000000000" after clock_period*9,
							x"d5d44ff720683d0d" after clock_period*10, 
							x"0000000000000000" after clock_period*11,
							x"d5d44ff720683d0d" after clock_period*12, 
							x"0000000000000000" after clock_period*13,
							x"d5d44ff720683d0d" after clock_period*14, 
							x"0000000000000000" after clock_period*15;
		
		keyin <= 		x"0123456789abcdef",
							x"0e329232ea6d0d73" after clock_period,
							x"0123456789abcdef" after clock_period*2,
							x"0e329232ea6d0d73" after clock_period*3,
							x"0123456789abcdef" after clock_period*4,
							x"0e329232ea6d0d73" after clock_period*5,
							x"0123456789abcdef" after clock_period*6,
							x"0e329232ea6d0d73" after clock_period*7,
							x"0123456789abcdef" after clock_period*8,
							x"0e329232ea6d0d73" after clock_period*9,
							x"0123456789abcdef" after clock_period*10,
							x"0e329232ea6d0d73" after clock_period*11,
							x"0123456789abcdef" after clock_period*12,
							x"0e329232ea6d0d73" after clock_period*13,
							x"0123456789abcdef" after clock_period*14,
							x"0e329232ea6d0d73" after clock_period*15;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
