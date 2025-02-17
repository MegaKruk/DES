----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:27:51 06/29/2018 
-- Design Name: 
-- Module Name:    sbox_1 - Behavioral 
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

entity sbox_1  is
port(	myinput: in std_logic_vector(0 to 5);
		myoutput: out std_logic_vector(0 to 3));
end sbox_1 ;


architecture behavior of sbox_1  is
	
	signal column: unsigned(0 to 3);		
	signal row: unsigned(0 to 1);
	signal decimalOutput: unsigned(0 to 3);

	type sboxStruct is array(0 to 3, 0 to 15) of integer range 0 to 15;
	constant sbox: sboxStruct := 
		((15,1,8,14,6,11,3,4,9,7,2,13,12,0,5,10),
		 (3,13,4,7,15,2,8,14,12,0,1,10,6,9,11,5),
		 (0,14,7,11,10,4,13,1,5,8,12,6,9,3,2,15),
		 (13,8,10,1,3,15,4,2,11,6,7,12,0,5,14,9));

	begin
	
			column<=unsigned(myinput(1 to 4));
			row(0)<=myinput(0);
			row(1)<=myinput(5);
			decimalOutput<=to_unsigned(sbox(to_integer(row),to_integer(column)), decimalOutput'length);
			myoutput<=std_logic_vector(decimalOutput);

end behavior;
