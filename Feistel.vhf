--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Feistel.vhf
-- /___/   /\     Timestamp : 06/30/2018 13:17:58
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/Filicz/Documents/workspace/ISE Projects/DES/Feistel.vhf" -w "C:/Users/Filicz/Documents/workspace/ISE Projects/DES/Feistel.sch"
--Design Name: Feistel
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Feistel is
   port ( keyIn    : in    std_logic_vector (0 to 47); 
          leftIn   : in    std_logic_vector (0 to 31); 
          rightIn  : in    std_logic_vector (0 to 31); 
          rightOut : out   std_logic_vector (0 to 31));
end Feistel;

architecture BEHAVIORAL of Feistel is
   signal XLXN_4   : std_logic_vector (0 to 47);
   signal XLXN_6   : std_logic_vector (0 to 47);
   signal XLXN_7   : std_logic_vector (0 to 31);
   signal XLXN_9   : std_logic_vector (0 to 31);
   component expP
      port ( myinput  : in    std_logic_vector (0 to 31); 
             myoutput : out   std_logic_vector (0 to 47));
   end component;
   
   component xor48
      port ( myinput  : in    std_logic_vector (0 to 47); 
             key      : in    std_logic_vector (0 to 47); 
             myoutput : out   std_logic_vector (0 to 47));
   end component;
   
   component sboxes
      port ( myinput  : in    std_logic_vector (0 to 47); 
             myoutput : out   std_logic_vector (0 to 31));
   end component;
   
   component pblockP
      port ( myinput  : in    std_logic_vector (0 to 31); 
             myoutput : out   std_logic_vector (0 to 31));
   end component;
   
   component xorLR
      port ( leftinput   : in    std_logic_vector (0 to 31); 
             rightinput  : in    std_logic_vector (0 to 31); 
             rightoutput : out   std_logic_vector (0 to 31));
   end component;
   
begin
   XLXI_2 : expP
      port map (myinput(0 to 31)=>rightIn(0 to 31),
                myoutput(0 to 47)=>XLXN_4(0 to 47));
   
   XLXI_3 : xor48
      port map (key(0 to 47)=>keyIn(0 to 47),
                myinput(0 to 47)=>XLXN_4(0 to 47),
                myoutput(0 to 47)=>XLXN_6(0 to 47));
   
   XLXI_4 : sboxes
      port map (myinput(0 to 47)=>XLXN_6(0 to 47),
                myoutput(0 to 31)=>XLXN_7(0 to 31));
   
   XLXI_5 : pblockP
      port map (myinput(0 to 31)=>XLXN_7(0 to 31),
                myoutput(0 to 31)=>XLXN_9(0 to 31));
   
   XLXI_7 : xorLR
      port map (leftinput(0 to 31)=>leftIn(0 to 31),
                rightinput(0 to 31)=>XLXN_9(0 to 31),
                rightoutput(0 to 31)=>rightOut(0 to 31));
   
end BEHAVIORAL;


