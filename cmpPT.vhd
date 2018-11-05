----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:19:38 08/23/2018 
-- Design Name: 
-- Module Name:    cmpPT - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cmpPT is
	 Port ( plaintext : in  STD_LOGIC_VECTOR (0 to 63);
		expected : in  STD_LOGIC_VECTOR (0 to 63);
		keyin : in  STD_LOGIC_VECTOR (0 to 63);
		clk : in  STD_LOGIC;
		isfound : out  STD_LOGIC;
		keyout : out  STD_LOGIC_VECTOR (0 to 63));
end cmpPT;

architecture Behavioral of cmpPT is

signal foundcheck : STD_LOGIC := '0';

begin

isfound <= foundcheck; 

process(clk)
	begin
	if (plaintext = expected) and (rising_edge(clk)) and (foundcheck /= '1') then
		foundcheck <= '1';
		keyout <= keyin;
	end if;
end process;

end Behavioral;

