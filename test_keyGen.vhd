--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:16:17 08/23/2018
-- Design Name:   
-- Module Name:   C:/Users/Filip/Documents/workspace/ISE Projects/DES/test_keyGen.vhd
-- Project Name:  DES
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: keyGen
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
 
ENTITY test_keyGen IS
END test_keyGen;
 
ARCHITECTURE behavior OF test_keyGen IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT keyGen
    PORT(
         clk : IN  std_logic;
         isfound : IN  std_logic;
			msgin : IN  std_logic_vector(0 to 63);
			msgout : OUT  std_logic_vector(0 to 63);
         keyout : OUT  std_logic_vector(0 to 63)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal isfound : std_logic := '0';
	signal msgin : std_logic_vector(0 to 63);

 	--Outputs
   signal keyout : std_logic_vector(0 to 63);
	signal msgout : std_logic_vector(0 to 63);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: keyGen PORT MAP (
          clk => clk,
          isfound => isfound,
			 msgin => msgin,
			 msgout => msgout,
          keyout => keyout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- insert stimulus here 
		isfound 	<= 	'0', '1' after clk_period*130;
		msgin		<=		x"d5d44ff720683d0d", 
							x"0000000000000000" after clk_period,
							x"d5d44ff720683d0d" after clk_period*2, 
							x"0000000000000000" after clk_period*3,
							x"d5d44ff720683d0d" after clk_period*4, 
							x"0000000000000000" after clk_period*5,
							x"d5d44ff720683d0d" after clk_period*6;
      wait;
   end process;

END;
