library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.math_real.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity display is
    Port ( foundkey : in  STD_LOGIC_VECTOR(0 to 63);
           clk, isfound, CE : in  STD_LOGIC;
           LCD_DI : out  STD_LOGIC_VECTOR(0 to 63);
			  LCD_B2 : out STD_LOGIC_VECTOR(0 to 15)
           );
end display;

architecture Behavioral of display is

signal blank2 : STD_LOGIC_VECTOR(0 to 15) := X"FFFF";

begin

  LCD_B2 <= blank2;
  
  process(clk, isfound)
  begin
      if (rising_edge(clk)) and (isfound = '1') and (CE = '1') then
			blank2 <= X"0000";
			LCD_DI <= foundkey;
      end if;
  end process;
  
end Behavioral;

