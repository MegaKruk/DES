library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.math_real.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity inputModule is
    Port ( KbdDO : in  STD_LOGIC_VECTOR(0 to 7);
           KbdE0, KbdF0, KbdDataRdy, clk, stop : in  STD_LOGIC;
           typing, datardy1, datardy2, led4, led5, led6, led7: out  STD_LOGIC;
           LCD_DI, ciphertext, expected : out  STD_LOGIC_VECTOR(0 to 63);
			  LCD_B1 : out STD_LOGIC_VECTOR(0 to 15)
           );
end inputModule;

architecture Behavioral of inputModule is

signal buff : STD_LOGIC_VECTOR(0 to 63) := X"0000000000000000";
signal buff2 : STD_LOGIC_VECTOR(0 to 63) := X"0000000000000000";
signal blank1 : STD_LOGIC_VECTOR(0 to 15) := X"FFFF";
--signal blank2 : STD_LOGIC_VECTOR(0 to 15) := X"FFFF";
signal buffin : STD_LOGIC_VECTOR(0 to 3) := X"0";
signal ctr: STD_LOGIC_VECTOR(0 to 5) := b"000000";
signal WE: STD_LOGIC := '0'; 

begin

  LCD_B1 <= blank1;
  --LCD_B2 <= blank2;
  
  process( KbdDO, KbdE0, KbdF0, KbdDataRdy )
  begin
  case KbdDataRdy & KbdF0 & KbdE0 & KbdDO is
      when "100" & X"45" => -- "0"
		  buffin(0 to 3) <= X"0";
        WE <= '1';
        
      when "100" & X"16" => -- "1"
		  buffin(0 to 3) <= X"1";
        WE <= '1';
        
		when "100" & X"1E" => -- "2"
		  buffin(0 to 3) <= X"2";
        WE <= '1';
        
		when "100" & X"26" => -- "3"
		  buffin(0 to 3) <= X"3";
        WE <= '1';
        
		when "100" & X"25" => -- "4"
		  buffin(0 to 3) <= X"4";
        WE <= '1';
        
		when "100" & X"2E" => -- "5"
		  buffin(0 to 3) <= X"5";
		  WE <= '1';
        
		when "100" & X"36" => -- "6"
		  buffin(0 to 3) <= X"6";
		  WE <= '1';
        
		when "100" & X"3D" => -- "7"
		  buffin(0 to 3) <= X"7";
		  WE <= '1';
        
		when "100" & X"3E" => -- "8"
		  buffin(0 to 3) <= X"8";
		  WE <= '1';
        
		when "100" & X"46" => -- "9"
		  buffin(0 to 3) <= X"9";
		  WE <= '1';
        
		when "100" & X"1C" => -- "A"
		  buffin(0 to 3) <= X"A";
		  WE <= '1';
        
		when "100" & X"32" => -- "B"
		  buffin(0 to 3) <= X"B";
		  WE <= '1';
        
		when "100" & X"21" => -- "C"
		  buffin(0 to 3) <= X"C";
		  WE <= '1';
        
		when "100" & X"23" => -- "D"
		  buffin(0 to 3) <= X"D";
		  WE <= '1';
        
		when "100" & X"24" => -- "E"
		  buffin(0 to 3) <= X"E";
		  WE <= '1';
        
		when "100" & X"2B" => -- "F"
		  buffin(0 to 3) <= X"F";
        WE <= '1';

      when others =>
        buffin(0 to 3) <= X"0"; 
        WE <= '0';
	end case;
  end process;
  
  process(clk)
  begin
      if (rising_edge(clk)) and (stop /= '1') then
			if (WE = '1') and (ctr < b"010000") then
				blank1 <= std_logic_vector(unsigned(blank1) - 2**to_integer(unsigned(ctr)));
				buff(0 to 63) <= buff(4 to 63) & buffin(0 to 3);
				ctr <= std_logic_vector(unsigned(ctr) + 1);
				
			elsif (WE = '1') and (ctr >= b"010000") then
				blank1 <= std_logic_vector(unsigned(blank1) - 2**to_integer(unsigned(ctr) - 16));
				buff2(0 to 63) <= buff2(4 to 63) & buffin(0 to 3);
				ctr <= std_logic_vector(unsigned(ctr) + 1);
				
			elsif (WE = '0') and (ctr = b"010000") then
					LCD_DI <= buff;
					ciphertext <= buff;
					datardy1 <= '1';
					typing <= '0';
					led4 <= buff(63);
					led5 <= buff(62);
					led6 <= buff(61);
					led7 <= buff(60);
					blank1 <= X"FFFF";
					
			elsif (WE = '0') and (ctr = b"100000") then
					LCD_DI <= buff2;
					expected <= buff2;
					datardy2 <= '1';
					typing <= '0';
					led4 <= buff2(63);
					led5 <= buff2(62);
					led6 <= buff2(61);
					led7 <= buff2(60);
					
			elsif (WE = '0') and (ctr < b"010000") then
					LCD_DI <= buff;
					typing <= '1'; 
					datardy1 <= '0';
					datardy2 <= '0';
					led4 <= buff(63);
					led5 <= buff(62);
					led6 <= buff(61);
					led7 <= buff(60);
			
			elsif (WE = '0') and (ctr > b"010000") and (ctr < b"100000") then
					LCD_DI <= buff2;
					typing <= '1'; 
					datardy1 <= '1';
					datardy2 <= '0';
					led4 <= buff2(63);
					led5 <= buff2(62);
					led6 <= buff2(61);
					led7 <= buff2(60);
			else
					led4 <= '0';
					led5 <= '0';
					led6 <= '0';
					led7 <= '0';
			end if;
      end if;
  end process;
  
end Behavioral;
