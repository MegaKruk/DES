-- Vhdl test bench created from schematic C:\Users\Filip\Documents\workspace\ISE Projects\DES\DES_Cryptanalysis.sch - Sun Aug 26 16:03:52 2018
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
   PORT( Clk_50MHz	:	IN	STD_LOGIC; 
          LCD	:	OUT	STD_LOGIC_VECTOR (63 DOWNTO 0);
			 keyaftercmp	:	OUT	STD_LOGIC_VECTOR (63 DOWNTO 0); 
          reset	:	IN	STD_LOGIC; 
          ciphertext	:	IN	STD_LOGIC_VECTOR (0 TO 63); 
          expected	:	IN	STD_LOGIC_VECTOR (0 TO 63); 
          LCD_D	:	INOUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          LCD_E	:	OUT	STD_LOGIC; 
          LCD_RW	:	OUT	STD_LOGIC; 
          LCD_RS	:	OUT	STD_LOGIC; 
          SF_CE	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Clk_50MHz	:	STD_LOGIC;
   SIGNAL LCD	:	STD_LOGIC_VECTOR (63 DOWNTO 0);
	SIGNAL keyaftercmp	:	STD_LOGIC_VECTOR (63 DOWNTO 0);
   SIGNAL reset	:	STD_LOGIC;
   SIGNAL ciphertext	:	STD_LOGIC_VECTOR (0 TO 63);
   SIGNAL expected	:	STD_LOGIC_VECTOR (0 TO 63);
   SIGNAL LCD_D	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL LCD_E	:	STD_LOGIC;
   SIGNAL LCD_RW	:	STD_LOGIC;
   SIGNAL LCD_RS	:	STD_LOGIC;
   SIGNAL SF_CE	:	STD_LOGIC;

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
		Clk_50MHz => Clk_50MHz, 
		LCD => LCD, 
		keyaftercmp => keyaftercmp,
		reset => reset, 
		ciphertext => ciphertext, 
		expected => expected, 
		LCD_D => LCD_D, 
		LCD_E => LCD_E, 
		LCD_RW => LCD_RW, 
		LCD_RS => LCD_RS, 
		SF_CE => SF_CE
   );
	
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		
		ciphertext	<= x"0123456789abcdef"; 
		expected		<= x"65bcc5b391c57c02";
		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
