--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:14:29 08/26/2018
-- Design Name:   
-- Module Name:   C:/Users/Filip/Documents/workspace/ISE Projects/DES/test_display.vhd
-- Project Name:  DES
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: display
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
 
ENTITY test_display IS
END test_display;
 
ARCHITECTURE behavior OF test_display IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT display
    PORT(
         isfound : IN  std_logic;
         clk : IN  std_logic;
         foundkey : IN  std_logic_vector(0 to 63);
         LCD : OUT  std_logic_vector(0 to 63)
        );
    END COMPONENT;
    

   --Inputs
   signal isfound : std_logic := '0';
   signal clk : std_logic := '0';
   signal foundkey : std_logic_vector(0 to 63) := (others => '0');

 	--Outputs
   signal LCD : std_logic_vector(0 to 63);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: display PORT MAP (
          isfound => isfound,
          clk => clk,
          foundkey => foundkey,
          LCD => LCD
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      -- insert stimulus here 
		foundkey <=	x"0000000000000001",
						x"0000000000000002" after clk_period,
						x"0000000000000003" after clk_period*2,
						x"0000000000000004" after clk_period*3;
							
		isfound <= '0', '1' after clk_period*3;

      wait;
   end process;

END;
