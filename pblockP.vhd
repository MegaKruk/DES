----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:14:06 06/29/2018 
-- Design Name: 
-- Module Name:    pblockP - Behavioral 
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

entity pblockP  is 
port( myinput: in std_logic_vector(0 to 31);
      myoutput: out std_logic_vector(0 to 31));
end pblockP ;


architecture behavior of pblockP  is

type permArray is array(0 to 31) of integer range 0 to 31;

  constant perm: permArray :=
        (15, 6,19,20,
			28,11,27,16,
			 0,14,22,25,
			 4,17,30, 9,
			 1, 7,23,13,
			31,26, 2, 8,
			18,12,29, 5,
			21,10, 3,24);
		 
  signal myArray : std_logic_vector(0 to 31);
  
  begin
    et0: for i in 0 to 31 generate
      myArray( i ) <= myinput( perm( i ) );
    end generate;
	 
	 myoutput <= myArray(0 to 31);

end behavior;
