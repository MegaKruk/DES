----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:44:22 06/29/2018 
-- Design Name: 
-- Module Name:    IP - Behavioral 
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

entity IP is
    Port ( myinput : in  STD_LOGIC_VECTOR (0 to 63);
      rightoutput : out  STD_LOGIC_VECTOR (0 to 31);
      leftoutput : out  STD_LOGIC_VECTOR (0 to 31));
end IP;

architecture behavior of IP  is

type permArray is array(0 to 63) of integer range 0 to 63;

	constant perm: permArray :=
		(57,49,41,33,25,17, 9,1,
		 59,51,43,35,27,19,11,3,
		 61,53,45,37,29,21,13,5,
		 63,55,47,39,31,23,15,7,
		 56,48,40,32,24,16, 8,0,
		 58,50,42,34,26,18,10,2,
		 60,52,44,36,28,20,12,4,
		 62,54,46,38,30,22,14,6);
		 
	signal myArray : std_logic_vector(0 to 63);
	
	begin
		
		et0: for i in 0 to 63 generate
			myArray( i ) <= myinput( perm( i ) );
		end generate;
		leftoutput <= myArray(0 to 31);
		rightoutput <= myArray(32 to 63);

end behavior;
