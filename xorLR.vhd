----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:11:28 06/29/2018 
-- Design Name: 
-- Module Name:    xorLR - Behavioral 
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

entity xorLR is
port(	leftinput: in std_logic_vector(0 to 31);
		rightinput: in std_logic_vector(0 to 31);
		rightoutput: out std_logic_vector(0 to 31));
end xorLR;

architecture Behavioral of xorLR is


begin
		rightoutput <= leftinput xor rightinput;

end Behavioral;

