----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:50:00 08/27/2018 
-- Design Name: 
-- Module Name:    keySyncReg - Behavioral 
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

entity keySyncReg is
	Port ( keyIn : in  STD_LOGIC_VECTOR (0 to 63);
           clk : in  STD_LOGIC;
           keyOut : out  STD_LOGIC_VECTOR (0 to 63));
end keySyncReg;

architecture Behavioral of keySyncReg is

begin

process(clk)
	begin
	if rising_edge(clk) then
		keyOut <= keyIn;
	end if;
end process;

end Behavioral;

