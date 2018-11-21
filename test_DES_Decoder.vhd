-- Vhdl test bench created from schematic C:\Users\Filicz\Documents\workspace\ISE Projects\DES\DES_Decoder.sch - Sat Jun 30 13:15:17 2018
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
ENTITY DES_Decoder_DES_Decoder_sch_tb IS
END DES_Decoder_DES_Decoder_sch_tb;
ARCHITECTURE behavioral OF DES_Decoder_DES_Decoder_sch_tb IS 

   COMPONENT DES_Decoder
   PORT( ciphertext	:	IN	STD_LOGIC_VECTOR (0 TO 63); 
          key	:	IN	STD_LOGIC_VECTOR (0 TO 63); 
          Clk_50MHz, CE	:	IN	STD_LOGIC; 
          plaintext	:	OUT	STD_LOGIC_VECTOR (0 TO 63));
   END COMPONENT;

   SIGNAL ciphertext	:	STD_LOGIC_VECTOR (0 TO 63);
   SIGNAL key	:	STD_LOGIC_VECTOR (0 TO 63);
   SIGNAL Clk_50MHz	:	STD_LOGIC;
	SIGNAL CE	:	STD_LOGIC;
   SIGNAL plaintext	:	STD_LOGIC_VECTOR (0 TO 63);
	
	constant clock_period : time := 10 ns;

BEGIN

	clock_process :process
   BEGIN
		Clk_50MHz <= '0';
		wait for clock_period/2;
		Clk_50MHz <= '1';
		wait for clock_period/2;
   END PROCESS;

   UUT: DES_Decoder PORT MAP(
		key => key, 
		Clk_50MHz => Clk_50MHz, 
		CE => CE,
		ciphertext => ciphertext, 
		plaintext => plaintext
   );

-- *** Test Bench - User Defined Section ***
   stim_process : PROCESS
   BEGIN
		CE <=				'0',
							'1' after clock_period;
		--ciphertext <= x"d5d44ff720683d0d", x"0000000000000000" after clock_period*10, x"85e813540f0ab405" after clock_period*20;
		--key <= x"0123456789abcdef", x"0e329232ea6d0d73" after clock_period*10, x"133457799BBCDFF1" after clock_period*20;
		
		
		ciphertext <=	x"0123456789abcdef"; 
--							x"0000000000000000" after clock_period,
--							x"d5d44ff720683d0d" after clock_period*2, 
--							x"0000000000000000" after clock_period*3,
--							x"d5d44ff720683d0d" after clock_period*4, 
--							x"0000000000000000" after clock_period*5,
--							x"d5d44ff720683d0d" after clock_period*6, 
--							x"0000000000000000" after clock_period*7,
--							x"d5d44ff720683d0d" after clock_period*8, 
--							x"0000000000000000" after clock_period*9,
--							x"d5d44ff720683d0d" after clock_period*10, 
--							x"0000000000000000" after clock_period*11,
--							x"d5d44ff720683d0d" after clock_period*12, 
--							x"0000000000000000" after clock_period*13,
--							x"d5d44ff720683d0d" after clock_period*14, 
--							x"0000000000000000" after clock_period*15;
		
		key <= 			x"0000000000000000",
							x"0000000000000002" after clock_period,
							x"0000000000000004" after clock_period*2,
							x"0000000000000006" after clock_period*3,
							x"0000000000000008" after clock_period*4,
							x"000000000000000a" after clock_period*5;
--							x"0123456789abcdef" after clock_period*6,
--							x"0e329232ea6d0d73" after clock_period*7,
--							x"0123456789abcdef" after clock_period*8,
--							x"0e329232ea6d0d73" after clock_period*9,
--							x"0123456789abcdef" after clock_period*10,
--							x"0e329232ea6d0d73" after clock_period*11,
--							x"0123456789abcdef" after clock_period*12,
--							x"0e329232ea6d0d73" after clock_period*13,
--							x"0123456789abcdef" after clock_period*14,
--							x"0e329232ea6d0d73" after clock_period*15;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
