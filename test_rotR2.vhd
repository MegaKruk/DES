--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:10:40 08/23/2018
-- Design Name:   
-- Module Name:   C:/Users/Filip/Documents/workspace/ISE Projects/DES/test_rotR2.vhd
-- Project Name:  DES
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rotR2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_rotR2 IS
END test_rotR2;
 
ARCHITECTURE behavior OF test_rotR2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rotR2
    PORT(
         myinput : IN  std_logic_vector(0 to 27);
         myoutput : OUT  std_logic_vector(0 to 27)
        );
    END COMPONENT;
    

   --Inputs
   signal myinput : std_logic_vector(0 to 27) := (others => '0');

 	--Outputs
   signal myoutput : std_logic_vector(0 to 27);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rotR2 PORT MAP (
          myinput => myinput,
          myoutput => myoutput
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		myinput  <= x"100F000", x"000000A" after 100 ns;
		
      wait;
   end process;

END;
