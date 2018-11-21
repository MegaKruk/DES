--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : keyBuffer_drc.vhf
-- /___/   /\     Timestamp : 11/06/2018 13:58:50
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan3e -flat -suppress -vhdl keyBuffer_drc.vhf -w "C:/Users/Filip/Documents/workspace/ISE Projects/DES/keyBuffer.sch"
--Design Name: keyBuffer
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

entity keyBuffer is
   port ( CE        : in    std_logic; 
          Clk_50MHz : in    std_logic; 
          keyIn     : in    std_logic_vector (0 to 63); 
          keyOut    : out   std_logic_vector (0 to 63));
end keyBuffer;

architecture BEHAVIORAL of keyBuffer is
   signal XLXN_4    : std_logic_vector (0 to 63);
   signal XLXN_5    : std_logic_vector (0 to 63);
   signal XLXN_6    : std_logic_vector (0 to 63);
   signal XLXN_9    : std_logic_vector (0 to 63);
   signal XLXN_10   : std_logic_vector (0 to 63);
   signal XLXN_11   : std_logic_vector (0 to 63);
   signal XLXN_13   : std_logic_vector (0 to 63);
   signal XLXN_14   : std_logic_vector (0 to 63);
   signal XLXN_15   : std_logic_vector (0 to 63);
   signal XLXN_16   : std_logic_vector (0 to 63);
   signal XLXN_17   : std_logic_vector (0 to 63);
   signal XLXN_18   : std_logic_vector (0 to 63);
   signal XLXN_20   : std_logic_vector (0 to 63);
   signal XLXN_21   : std_logic_vector (0 to 63);
   signal XLXN_56   : std_logic_vector (0 to 63);
   component keySyncReg
      port ( clk    : in    std_logic; 
             keyIn  : in    std_logic_vector (0 to 63); 
             keyOut : out   std_logic_vector (0 to 63); 
             CE     : in    std_logic);
   end component;
   
begin
   XLXI_1 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>keyIn(0 to 63),
                keyOut(0 to 63)=>XLXN_4(0 to 63));
   
   XLXI_2 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_4(0 to 63),
                keyOut(0 to 63)=>XLXN_5(0 to 63));
   
   XLXI_4 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_5(0 to 63),
                keyOut(0 to 63)=>XLXN_6(0 to 63));
   
   XLXI_5 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_6(0 to 63),
                keyOut(0 to 63)=>XLXN_9(0 to 63));
   
   XLXI_6 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_9(0 to 63),
                keyOut(0 to 63)=>XLXN_10(0 to 63));
   
   XLXI_7 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_10(0 to 63),
                keyOut(0 to 63)=>XLXN_11(0 to 63));
   
   XLXI_8 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_11(0 to 63),
                keyOut(0 to 63)=>XLXN_13(0 to 63));
   
   XLXI_9 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_13(0 to 63),
                keyOut(0 to 63)=>XLXN_14(0 to 63));
   
   XLXI_10 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_14(0 to 63),
                keyOut(0 to 63)=>XLXN_15(0 to 63));
   
   XLXI_12 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_15(0 to 63),
                keyOut(0 to 63)=>XLXN_16(0 to 63));
   
   XLXI_13 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_16(0 to 63),
                keyOut(0 to 63)=>XLXN_17(0 to 63));
   
   XLXI_14 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_17(0 to 63),
                keyOut(0 to 63)=>XLXN_18(0 to 63));
   
   XLXI_15 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_20(0 to 63),
                keyOut(0 to 63)=>XLXN_21(0 to 63));
   
   XLXI_16 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_21(0 to 63),
                keyOut(0 to 63)=>XLXN_56(0 to 63));
   
   XLXI_18 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_18(0 to 63),
                keyOut(0 to 63)=>XLXN_20(0 to 63));
   
   XLXI_19 : keySyncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_56(0 to 63),
                keyOut(0 to 63)=>keyOut(0 to 63));
   
end BEHAVIORAL;


