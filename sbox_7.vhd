----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:39:52 06/29/2018 
-- Design Name: 
-- Module Name:    sbox_7 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sbox_7  is
port(	myinput: in std_logic_vector(0 to 5);
		myoutput: out std_logic_vector(0 to 3));
end sbox_7 ;


architecture behavior of sbox_7  is
	
	signal column: unsigned(0 to 3);		
	signal row: unsigned(0 to 1);
	signal decimalOutput: unsigned(0 to 3);

	type sboxStruct is array(0 to 3, 0 to 15) of integer range 0 to 15;
	constant sbox: sboxStruct := 
		((13,2,8,4,6,15,11,1,10,9,3,14,5,0,12,7),
		 (1,15,13,8,10,3,7,4,12,5,6,11,0,14,9,2),
		 (7,11,4,1,9,12,14,2,0,6,10,13,15,3,5,8),
		 (2,1,14,7,4,10,8,13,15,12,9,0,3,5,6,11));

	begin
	
			column<=unsigned(myinput(1 to 4));
			row(0)<=myinput(0);
			row(1)<=myinput(5);
			decimalOutput<=to_unsigned(sbox(to_integer(row),to_integer(column)), decimalOutput'length);
			myoutput<=std_logic_vector(decimalOutput);

end behavior;
