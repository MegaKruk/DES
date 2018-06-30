----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:58:21 06/29/2018 
-- Design Name: 
-- Module Name:    expP - Behavioral 
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

entity expP  is 
port(	myinput: in std_logic_vector(0 to 31);
		myoutput: out std_logic_vector(0 to 47));
end expP;


architecture behavior of expP  is

type permArray is array(0 to 47) of integer range 0 to 47;

	constant perm: permArray :=
		(31, 0, 1, 2, 3, 4,
		  3, 4, 5, 6, 7, 8,
		  7, 8, 9,10,11,12,
		 11,12,13,14,15,16,
		 15,16,17,18,19,20,
		 19,20,21,22,23,24,
		 23,24,25,26,27,28,
		 27,28,29,30,31,0);
		 
	signal myArray : std_logic_vector(0 to 47);
	
	begin
		
		et0: for i in 0 to 47 generate
			myArray( i ) <= myinput( perm( i ) );
		end generate;
		myoutput <= myArray(0 to 47);
		
end behavior;
