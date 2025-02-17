----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:50:36 06/29/2018 
-- Design Name: 
-- Module Name:    IP-1 - Behavioral 
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

entity revIP  is 
port( leftinput: in std_logic_vector(0 to 31);
      rightinput: in std_logic_vector(0 to 31);
      myoutput: out std_logic_vector(0 to 63));
end revIP ;


architecture behavior of revIP  is

type permArray is array(0 to 63) of integer range 0 to 63;

  constant perm: permArray :=
      (39, 7,47,15,55,23,63,31,
		 38, 6,46,14,54,22,62,30,
		 37, 5,45,13,53,21,61,29,
		 36, 4,44,12,52,20,60,28,
		 35, 3,43,11,51,19,59,27,
		 34, 2,42,10,50,18,58,26,
		 33, 1,41, 9,49,17,57,25,
		 32, 0,40, 8,48,16,56,24);
		 
  signal myMerge : std_logic_vector(0 to 63);
  signal myArray : std_logic_vector(0 to 63);
  
  begin
    myMerge(0 to 31) <= leftinput;
	 myMerge(32 to 63) <= rightinput;
	 
    et0: for i in 0 to 63 generate
      myArray( i ) <= myMerge( perm( i ) );
    end generate;
	 
	 myoutput <= myArray(0 to 63);

end behavior;
