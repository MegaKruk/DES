----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:17:01 06/30/2018 
-- Design Name: 
-- Module Name:    syncReg - Behavioral 
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

entity syncReg is
    Port ( leftIn : in  STD_LOGIC_VECTOR (0 to 31);
			  rightIn : in  STD_LOGIC_VECTOR (0 to 31);
			  leftkeyIn : in  STD_LOGIC_VECTOR (0 to 27);
			  rightkeyIn : in  STD_LOGIC_VECTOR (0 to 27);
           clk : in  STD_LOGIC;
           leftOut : out  STD_LOGIC_VECTOR (0 to 31);
			  rightOut : out  STD_LOGIC_VECTOR (0 to 31);
			  leftkeyOut : out  STD_LOGIC_VECTOR (0 to 27);
			  rightkeyOut : out  STD_LOGIC_VECTOR (0 to 27));
end syncReg;

architecture Behavioral of syncReg is

begin
process(clk)
	begin
	if rising_edge(clk) then
		leftOut <= leftIn;
		rightOut <= rightIn;
		leftkeyOut <= leftkeyIn;
		rightkeyOut <= rightkeyIn;
	end if;
end process;

end Behavioral;

