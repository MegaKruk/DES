--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:35:19 08/23/2018
-- Design Name:   
-- Module Name:   C:/Users/Filip/Documents/workspace/ISE Projects/DES/test_cmpPT.vhd
-- Project Name:  DES
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cmpPT
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
 
ENTITY test_cmpPT IS
END test_cmpPT;
 
ARCHITECTURE behavior OF test_cmpPT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cmpPT
    PORT(
         plaintext : in  STD_LOGIC_VECTOR (0 to 63);
			expected : in  STD_LOGIC_VECTOR (0 to 63);
			keyin : in  STD_LOGIC_VECTOR (0 to 63);
			clk : in  STD_LOGIC;
			isfound : out  STD_LOGIC;
			keyout : out  STD_LOGIC_VECTOR (0 to 63)
        );
    END COMPONENT;
    

   --Inputs
   signal plaintext : std_logic_vector(0 to 63) := (others => '0');
   signal expected : std_logic_vector(0 to 63) := (others => '0');
	signal keyin : std_logic_vector(0 to 63) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal isfound : std_logic;
	signal keyout : std_logic_vector(0 to 63);
	
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cmpPT PORT MAP (
          plaintext => plaintext,
          expected => expected,
			 keyin => keyin,
          clk => clk,
          isfound => isfound,
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
		expected <=		x"0123456789abcdef";
		
		keyin <=			x"0000000000000000",
							x"0000000000000002" after clk_period,
							x"0000000000000004" after clk_period*2,
							x"0000000000000006" after clk_period*3,
							x"0000000000000008" after clk_period*4;
							
		plaintext <=	x"ffffffffffffffff",
							x"1212121212121212" after clk_period,
							x"0123456789abcdef" after clk_period*2,
							x"0000000000000000" after clk_period*3,
							x"0123456789abcdef" after clk_period*4;
							
      wait;
   end process;

END;
