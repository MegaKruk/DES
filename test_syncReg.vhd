--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:56:56 08/22/2018
-- Design Name:   
-- Module Name:   C:/Users/Filip/Documents/workspace/ISE Projects/DES/test_syncReg.vhd
-- Project Name:  DES
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: syncReg
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
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

ENTITY test_syncReg IS
END test_syncReg;
 
ARCHITECTURE behavior OF test_syncReg IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT syncReg
    PORT(
         leftIn : IN  std_logic_vector(0 to 31);
         rightIn : IN  std_logic_vector(0 to 31);
         leftkeyIn : IN  std_logic_vector(0 to 27);
         rightkeyIn : IN  std_logic_vector(0 to 27);
         clk, CE : IN  std_logic;
         leftOut : OUT  std_logic_vector(0 to 31);
         rightOut : OUT  std_logic_vector(0 to 31);
         leftkeyOut : OUT  std_logic_vector(0 to 27);
         rightkeyOut : OUT  std_logic_vector(0 to 27)
        );
    END COMPONENT;
    

   --Inputs
   signal leftIn : std_logic_vector(0 to 31) := (others => '0');
   signal rightIn : std_logic_vector(0 to 31) := (others => '0');
   signal leftkeyIn : std_logic_vector(0 to 27) := (others => '0');
   signal rightkeyIn : std_logic_vector(0 to 27) := (others => '0');
   signal clk : std_logic := '0';
	signal CE : std_logic := '0';

 	--Outputs
   signal leftOut : std_logic_vector(0 to 31);
   signal rightOut : std_logic_vector(0 to 31);
   signal leftkeyOut : std_logic_vector(0 to 27);
   signal rightkeyOut : std_logic_vector(0 to 27);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: syncReg PORT MAP (
          leftIn => leftIn,
          rightIn => rightIn,
          leftkeyIn => leftkeyIn,
          rightkeyIn => rightkeyIn,
          clk => clk,
			 CE => CE,
          leftOut => leftOut,
          rightOut => rightOut,
          leftkeyOut => leftkeyOut,
          rightkeyOut => rightkeyOut
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
      wait for clk_period*10; 
		CE <=				'1' after clk_period;
		
		leftIn <=		x"01010101", 
							x"00000000" after clk_period,
							x"01010101" after clk_period*2, 
							x"00000000" after clk_period*3;
							
		rightIn <=		x"10101010", 
							x"ffffffff" after clk_period,
							x"10101010" after clk_period*2, 
							x"ffffffff" after clk_period*3;
		
		leftkeyIn <=	x"0123456",
							x"0000000" after clk_period,
							x"0123456" after clk_period*2,
							x"0000000" after clk_period*3;
		
		rightkeyIn <=	x"fedcba9",
							x"1111111" after clk_period,
							x"fedcba9" after clk_period*2,
							x"1111111" after clk_period*3;

      wait;
   end process;

END;
