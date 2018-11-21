----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:18:46 06/29/2018 
-- Design Name: 
-- Module Name:    rotR2 - Behavioral 
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

entity rotR2 is
port(	myinput: in std_logic_vector(0 to 27);
		myoutput: out std_logic_vector(0 to 27));
end rotR2;

architecture Behavioral of rotR2 is

signal Key : std_logic_vector(0 to 27);

begin

et0: for i in 2 to 27 generate
			Key( i ) <= myinput( i - 2 );
		end generate;
		Key( 0 ) <= myinput( 26 );
		Key( 1 ) <= myinput( 27 );
		
		myoutput <= Key(0 to 27);

end Behavioral;
