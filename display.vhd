----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:50:40 08/26/2018 
-- Design Name: 
-- Module Name:    display - Behavioral 
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

entity display is
    Port ( isfound : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           foundkey : in  STD_LOGIC_VECTOR (0 to 63);
			  LCD : out  STD_LOGIC_VECTOR (0 to 63));
end display;

architecture Behavioral of display is

begin

process(clk)
	begin
	if (rising_edge(clk)) and (isfound = '1') then
		LCD <= foundkey;
	end if;
end process;

end Behavioral;

