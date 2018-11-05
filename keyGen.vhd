----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:55:28 08/23/2018 
-- Design Name: 
-- Module Name:    keyGen - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity keyGen is
Port ( clk : in  STD_LOGIC;
		isfound : in STD_LOGIC;
		msgin : in  STD_LOGIC_VECTOR (0 to 63);
		msgout : out  STD_LOGIC_VECTOR (0 to 63);
		keyout : out  STD_LOGIC_VECTOR (0 to 63));
end keyGen;

architecture Behavioral of keyGen is

signal I : STD_LOGIC_VECTOR(0 to 55) := x"00000000000000";

begin
process(clk)
	begin
	if (rising_edge(clk)) and (isfound /= '1') and (I <= x"ffffffffffffff") then
		keyout <= I(0 to 6) & b"0" & I(7 to 13) & b"0" & I(14 to 20) & b"0" & I(21 to 27) & b"0" & I(28 to 34) & b"0" & I(35 to 41) & b"0" & I(42 to 48) & b"0" & I(49 to 55) & b"0";
		msgout <= msgin;
		I <= std_logic_vector( unsigned(I) + 1 );
	end if;
end process;

end Behavioral;

