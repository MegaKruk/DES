-- Vhdl test bench created from schematic C:\Users\Filip\Documents\workspace\ISE Projects\DES\Feistel.sch - Thu Aug 23 00:49:38 2018
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
ENTITY Feistel_Feistel_sch_tb IS
END Feistel_Feistel_sch_tb;
ARCHITECTURE behavioral OF Feistel_Feistel_sch_tb IS 

   COMPONENT Feistel
   PORT( rightIn	:	IN	STD_LOGIC_VECTOR (0 TO 31); 
          keyIn	:	IN	STD_LOGIC_VECTOR (0 TO 47); 
          leftIn	:	IN	STD_LOGIC_VECTOR (0 TO 31); 
          rightOut	:	OUT	STD_LOGIC_VECTOR (0 TO 31));
   END COMPONENT;

   SIGNAL rightIn	:	STD_LOGIC_VECTOR (0 TO 31);
   SIGNAL keyIn	:	STD_LOGIC_VECTOR (0 TO 47);
   SIGNAL leftIn	:	STD_LOGIC_VECTOR (0 TO 31);
   SIGNAL rightOut	:	STD_LOGIC_VECTOR (0 TO 31);

BEGIN

   UUT: Feistel PORT MAP(
		rightIn => rightIn, 
		keyIn => keyIn, 
		leftIn => leftIn, 
		rightOut => rightOut
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		WAIT FOR 100 ns;
		
		keyIn <=	b"000110110000001011101111111111000111000001110010";
		leftIn <= b"11001100000000001100110011111111";
		rightIn <= b"11110000101010101111000010101010";
		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
