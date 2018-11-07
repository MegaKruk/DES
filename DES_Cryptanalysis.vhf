--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : DES_Cryptanalysis.vhf
-- /___/   /\     Timestamp : 11/06/2018 15:53:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/Filip/Documents/workspace/ISE Projects/DES/DES_Cryptanalysis.vhf" -w "C:/Users/Filip/Documents/workspace/ISE Projects/DES/DES_Cryptanalysis.sch"
--Design Name: DES_Cryptanalysis
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

entity keyBuffer_MUSER_DES_Cryptanalysis is
   port ( CE        : in    std_logic; 
          Clk_50MHz : in    std_logic; 
          keyIn     : in    std_logic_vector (0 to 63); 
          keyOut    : out   std_logic_vector (0 to 63));
end keyBuffer_MUSER_DES_Cryptanalysis;

architecture BEHAVIORAL of keyBuffer_MUSER_DES_Cryptanalysis is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Feistel_MUSER_DES_Cryptanalysis is
   port ( keyIn    : in    std_logic_vector (0 to 47); 
          leftIn   : in    std_logic_vector (0 to 31); 
          rightIn  : in    std_logic_vector (0 to 31); 
          rightOut : out   std_logic_vector (0 to 31));
end Feistel_MUSER_DES_Cryptanalysis;

architecture BEHAVIORAL of Feistel_MUSER_DES_Cryptanalysis is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity DES_Decoder_MUSER_DES_Cryptanalysis is
   port ( CE         : in    std_logic; 
          ciphertext : in    std_logic_vector (0 to 63); 
          Clk_50MHz  : in    std_logic; 
          key        : in    std_logic_vector (0 to 63); 
          plaintext  : out   std_logic_vector (0 to 63));
end DES_Decoder_MUSER_DES_Cryptanalysis;

architecture BEHAVIORAL of DES_Decoder_MUSER_DES_Cryptanalysis is
   signal XLXN_20    : std_logic_vector (0 to 31);
   signal XLXN_107   : std_logic_vector (0 to 47);
   signal XLXN_108   : std_logic_vector (0 to 31);
   signal XLXN_112   : std_logic_vector (0 to 27);
   signal XLXN_113   : std_logic_vector (0 to 27);
   signal XLXN_116   : std_logic_vector (0 to 27);
   signal XLXN_117   : std_logic_vector (0 to 27);
   signal XLXN_118   : std_logic_vector (0 to 31);
   signal XLXN_120   : std_logic_vector (0 to 27);
   signal XLXN_121   : std_logic_vector (0 to 27);
   signal XLXN_122   : std_logic_vector (0 to 31);
   signal XLXN_123   : std_logic_vector (0 to 31);
   signal XLXN_125   : std_logic_vector (0 to 47);
   signal XLXN_129   : std_logic_vector (0 to 31);
   signal XLXN_130   : std_logic_vector (0 to 27);
   signal XLXN_131   : std_logic_vector (0 to 27);
   signal XLXN_132   : std_logic_vector (0 to 31);
   signal XLXN_133   : std_logic_vector (0 to 31);
   signal XLXN_134   : std_logic_vector (0 to 27);
   signal XLXN_135   : std_logic_vector (0 to 27);
   signal XLXN_138   : std_logic_vector (0 to 47);
   signal XLXN_169   : std_logic_vector (0 to 31);
   signal XLXN_170   : std_logic_vector (0 to 31);
   signal XLXN_171   : std_logic_vector (0 to 27);
   signal XLXN_172   : std_logic_vector (0 to 27);
   signal XLXN_173   : std_logic_vector (0 to 47);
   signal XLXN_175   : std_logic_vector (0 to 31);
   signal XLXN_176   : std_logic_vector (0 to 27);
   signal XLXN_177   : std_logic_vector (0 to 27);
   signal XLXN_178   : std_logic_vector (0 to 31);
   signal XLXN_179   : std_logic_vector (0 to 31);
   signal XLXN_180   : std_logic_vector (0 to 27);
   signal XLXN_181   : std_logic_vector (0 to 27);
   signal XLXN_182   : std_logic_vector (0 to 47);
   signal XLXN_184   : std_logic_vector (0 to 31);
   signal XLXN_185   : std_logic_vector (0 to 27);
   signal XLXN_186   : std_logic_vector (0 to 27);
   signal XLXN_187   : std_logic_vector (0 to 31);
   signal XLXN_188   : std_logic_vector (0 to 31);
   signal XLXN_189   : std_logic_vector (0 to 27);
   signal XLXN_190   : std_logic_vector (0 to 27);
   signal XLXN_191   : std_logic_vector (0 to 47);
   signal XLXN_196   : std_logic_vector (0 to 31);
   signal XLXN_197   : std_logic_vector (0 to 31);
   signal XLXN_198   : std_logic_vector (0 to 27);
   signal XLXN_199   : std_logic_vector (0 to 27);
   signal XLXN_200   : std_logic_vector (0 to 47);
   signal XLXN_202   : std_logic_vector (0 to 31);
   signal XLXN_203   : std_logic_vector (0 to 27);
   signal XLXN_204   : std_logic_vector (0 to 27);
   signal XLXN_205   : std_logic_vector (0 to 31);
   signal XLXN_206   : std_logic_vector (0 to 31);
   signal XLXN_207   : std_logic_vector (0 to 27);
   signal XLXN_208   : std_logic_vector (0 to 27);
   signal XLXN_209   : std_logic_vector (0 to 47);
   signal XLXN_211   : std_logic_vector (0 to 31);
   signal XLXN_212   : std_logic_vector (0 to 27);
   signal XLXN_213   : std_logic_vector (0 to 27);
   signal XLXN_214   : std_logic_vector (0 to 31);
   signal XLXN_215   : std_logic_vector (0 to 31);
   signal XLXN_216   : std_logic_vector (0 to 27);
   signal XLXN_217   : std_logic_vector (0 to 27);
   signal XLXN_218   : std_logic_vector (0 to 47);
   signal XLXN_220   : std_logic_vector (0 to 31);
   signal XLXN_221   : std_logic_vector (0 to 27);
   signal XLXN_222   : std_logic_vector (0 to 27);
   signal XLXN_223   : std_logic_vector (0 to 31);
   signal XLXN_224   : std_logic_vector (0 to 31);
   signal XLXN_225   : std_logic_vector (0 to 27);
   signal XLXN_226   : std_logic_vector (0 to 27);
   signal XLXN_227   : std_logic_vector (0 to 47);
   signal XLXN_229   : std_logic_vector (0 to 31);
   signal XLXN_230   : std_logic_vector (0 to 27);
   signal XLXN_231   : std_logic_vector (0 to 27);
   signal XLXN_244   : std_logic_vector (0 to 31);
   signal XLXN_245   : std_logic_vector (0 to 31);
   signal XLXN_246   : std_logic_vector (0 to 27);
   signal XLXN_247   : std_logic_vector (0 to 27);
   signal XLXN_248   : std_logic_vector (0 to 47);
   signal XLXN_269   : std_logic_vector (0 to 31);
   signal XLXN_270   : std_logic_vector (0 to 31);
   signal XLXN_271   : std_logic_vector (0 to 27);
   signal XLXN_272   : std_logic_vector (0 to 27);
   signal XLXN_273   : std_logic_vector (0 to 47);
   signal XLXN_280   : std_logic_vector (0 to 27);
   signal XLXN_284   : std_logic_vector (0 to 27);
   signal XLXN_285   : std_logic_vector (0 to 31);
   signal XLXN_286   : std_logic_vector (0 to 31);
   signal XLXN_287   : std_logic_vector (0 to 31);
   signal XLXN_288   : std_logic_vector (0 to 27);
   signal XLXN_289   : std_logic_vector (0 to 27);
   signal XLXN_290   : std_logic_vector (0 to 47);
   signal XLXN_292   : std_logic_vector (0 to 27);
   signal XLXN_293   : std_logic_vector (0 to 27);
   signal XLXN_294   : std_logic_vector (0 to 31);
   signal XLXN_295   : std_logic_vector (0 to 31);
   signal XLXN_296   : std_logic_vector (0 to 31);
   signal XLXN_297   : std_logic_vector (0 to 27);
   signal XLXN_298   : std_logic_vector (0 to 27);
   signal XLXN_299   : std_logic_vector (0 to 47);
   signal XLXN_301   : std_logic_vector (0 to 27);
   signal XLXN_302   : std_logic_vector (0 to 27);
   signal XLXN_303   : std_logic_vector (0 to 31);
   signal XLXN_305   : std_logic_vector (0 to 31);
   signal XLXN_306   : std_logic_vector (0 to 27);
   signal XLXN_307   : std_logic_vector (0 to 27);
   signal XLXN_308   : std_logic_vector (0 to 47);
   signal XLXN_310   : std_logic_vector (0 to 27);
   signal XLXN_311   : std_logic_vector (0 to 27);
   signal XLXN_312   : std_logic_vector (0 to 31);
   signal XLXN_314   : std_logic_vector (0 to 31);
   signal XLXN_317   : std_logic_vector (0 to 47);
   signal XLXN_322   : std_logic_vector (0 to 27);
   signal XLXN_323   : std_logic_vector (0 to 27);
   signal XLXN_326   : std_logic_vector (0 to 27);
   signal XLXN_330   : std_logic_vector (0 to 27);
   signal XLXN_332   : std_logic_vector (0 to 31);
   signal XLXN_334   : std_logic_vector (0 to 27);
   signal XLXN_337   : std_logic_vector (0 to 27);
   signal XLXN_342   : std_logic_vector (0 to 31);
   signal XLXN_350   : std_logic_vector (0 to 27);
   signal XLXN_352   : std_logic_vector (0 to 27);
   signal XLXN_359   : std_logic_vector (0 to 31);
   signal XLXN_363   : std_logic_vector (0 to 31);
   signal XLXN_387   : std_logic_vector (0 to 31);
   signal XLXN_389   : std_logic_vector (0 to 31);
   signal XLXN_390   : std_logic_vector (0 to 31);
   signal XLXN_391   : std_logic_vector (0 to 31);
   component IP
      port ( myinput     : in    std_logic_vector (0 to 63); 
             rightoutput : out   std_logic_vector (0 to 31); 
             leftoutput  : out   std_logic_vector (0 to 31));
   end component;
   
   component Feistel_MUSER_DES_Cryptanalysis
      port ( rightIn  : in    std_logic_vector (0 to 31); 
             keyIn    : in    std_logic_vector (0 to 47); 
             leftIn   : in    std_logic_vector (0 to 31); 
             rightOut : out   std_logic_vector (0 to 31));
   end component;
   
   component PC1
      port ( myinput     : in    std_logic_vector (0 to 63); 
             rightoutput : out   std_logic_vector (0 to 27); 
             leftoutput  : out   std_logic_vector (0 to 27));
   end component;
   
   component PC2
      port ( rightinput : in    std_logic_vector (0 to 27); 
             leftinput  : in    std_logic_vector (0 to 27); 
             myoutput   : out   std_logic_vector (0 to 47));
   end component;
   
   component syncReg
      port ( clk         : in    std_logic; 
             leftIn      : in    std_logic_vector (0 to 31); 
             rightIn     : in    std_logic_vector (0 to 31); 
             leftkeyIn   : in    std_logic_vector (0 to 27); 
             rightkeyIn  : in    std_logic_vector (0 to 27); 
             leftOut     : out   std_logic_vector (0 to 31); 
             rightOut    : out   std_logic_vector (0 to 31); 
             leftkeyOut  : out   std_logic_vector (0 to 27); 
             rightkeyOut : out   std_logic_vector (0 to 27); 
             CE          : in    std_logic);
   end component;
   
   component rotR1
      port ( myinput  : in    std_logic_vector (0 to 27); 
             myoutput : out   std_logic_vector (0 to 27));
   end component;
   
   component rotR2
      port ( myinput  : in    std_logic_vector (0 to 27); 
             myoutput : out   std_logic_vector (0 to 27));
   end component;
   
   component revIP
      port ( leftinput  : in    std_logic_vector (0 to 31); 
             rightinput : in    std_logic_vector (0 to 31); 
             myoutput   : out   std_logic_vector (0 to 63));
   end component;
   
begin
   XLXI_1 : IP
      port map (myinput(0 to 63)=>ciphertext(0 to 63),
                leftoutput(0 to 31)=>XLXN_20(0 to 31),
                rightoutput(0 to 31)=>XLXN_118(0 to 31));
   
   XLXI_2 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_107(0 to 47),
                leftIn(0 to 31)=>XLXN_20(0 to 31),
                rightIn(0 to 31)=>XLXN_118(0 to 31),
                rightOut(0 to 31)=>XLXN_108(0 to 31));
   
   XLXI_6 : PC1
      port map (myinput(0 to 63)=>key(0 to 63),
                leftoutput(0 to 27)=>XLXN_113(0 to 27),
                rightoutput(0 to 27)=>XLXN_112(0 to 27));
   
   XLXI_11 : PC2
      port map (leftinput(0 to 27)=>XLXN_113(0 to 27),
                rightinput(0 to 27)=>XLXN_112(0 to 27),
                myoutput(0 to 47)=>XLXN_107(0 to 47));
   
   XLXI_12 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_118(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_117(0 to 27),
                rightIn(0 to 31)=>XLXN_108(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_116(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_121(0 to 27),
                leftOut(0 to 31)=>XLXN_123(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_120(0 to 27),
                rightOut(0 to 31)=>XLXN_122(0 to 31));
   
   XLXI_13 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_125(0 to 47),
                leftIn(0 to 31)=>XLXN_123(0 to 31),
                rightIn(0 to 31)=>XLXN_122(0 to 31),
                rightOut(0 to 31)=>XLXN_129(0 to 31));
   
   XLXI_14 : rotR1
      port map (myinput(0 to 27)=>XLXN_112(0 to 27),
                myoutput(0 to 27)=>XLXN_116(0 to 27));
   
   XLXI_15 : rotR1
      port map (myinput(0 to 27)=>XLXN_113(0 to 27),
                myoutput(0 to 27)=>XLXN_117(0 to 27));
   
   XLXI_16 : PC2
      port map (leftinput(0 to 27)=>XLXN_121(0 to 27),
                rightinput(0 to 27)=>XLXN_120(0 to 27),
                myoutput(0 to 47)=>XLXN_125(0 to 47));
   
   XLXI_17 : rotR2
      port map (myinput(0 to 27)=>XLXN_120(0 to 27),
                myoutput(0 to 27)=>XLXN_130(0 to 27));
   
   XLXI_18 : rotR2
      port map (myinput(0 to 27)=>XLXN_121(0 to 27),
                myoutput(0 to 27)=>XLXN_131(0 to 27));
   
   XLXI_19 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_122(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_131(0 to 27),
                rightIn(0 to 31)=>XLXN_129(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_130(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_134(0 to 27),
                leftOut(0 to 31)=>XLXN_133(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_135(0 to 27),
                rightOut(0 to 31)=>XLXN_132(0 to 31));
   
   XLXI_20 : PC2
      port map (leftinput(0 to 27)=>XLXN_134(0 to 27),
                rightinput(0 to 27)=>XLXN_135(0 to 27),
                myoutput(0 to 47)=>XLXN_138(0 to 47));
   
   XLXI_21 : rotR2
      port map (myinput(0 to 27)=>XLXN_135(0 to 27),
                myoutput(0 to 27)=>XLXN_177(0 to 27));
   
   XLXI_22 : rotR2
      port map (myinput(0 to 27)=>XLXN_134(0 to 27),
                myoutput(0 to 27)=>XLXN_176(0 to 27));
   
   XLXI_23 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_138(0 to 47),
                leftIn(0 to 31)=>XLXN_133(0 to 31),
                rightIn(0 to 31)=>XLXN_132(0 to 31),
                rightOut(0 to 31)=>XLXN_175(0 to 31));
   
   XLXI_43 : rotR2
      port map (myinput(0 to 27)=>XLXN_172(0 to 27),
                myoutput(0 to 27)=>XLXN_186(0 to 27));
   
   XLXI_44 : rotR2
      port map (myinput(0 to 27)=>XLXN_171(0 to 27),
                myoutput(0 to 27)=>XLXN_185(0 to 27));
   
   XLXI_45 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_173(0 to 47),
                leftIn(0 to 31)=>XLXN_170(0 to 31),
                rightIn(0 to 31)=>XLXN_169(0 to 31),
                rightOut(0 to 31)=>XLXN_184(0 to 31));
   
   XLXI_46 : PC2
      port map (leftinput(0 to 27)=>XLXN_171(0 to 27),
                rightinput(0 to 27)=>XLXN_172(0 to 27),
                myoutput(0 to 47)=>XLXN_173(0 to 47));
   
   XLXI_47 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_132(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_176(0 to 27),
                rightIn(0 to 31)=>XLXN_175(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_177(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_171(0 to 27),
                leftOut(0 to 31)=>XLXN_170(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_172(0 to 27),
                rightOut(0 to 31)=>XLXN_169(0 to 31));
   
   XLXI_48 : rotR2
      port map (myinput(0 to 27)=>XLXN_181(0 to 27),
                myoutput(0 to 27)=>XLXN_326(0 to 27));
   
   XLXI_49 : rotR2
      port map (myinput(0 to 27)=>XLXN_180(0 to 27),
                myoutput(0 to 27)=>XLXN_330(0 to 27));
   
   XLXI_50 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_182(0 to 47),
                leftIn(0 to 31)=>XLXN_179(0 to 31),
                rightIn(0 to 31)=>XLXN_178(0 to 31),
                rightOut(0 to 31)=>XLXN_332(0 to 31));
   
   XLXI_51 : PC2
      port map (leftinput(0 to 27)=>XLXN_180(0 to 27),
                rightinput(0 to 27)=>XLXN_181(0 to 27),
                myoutput(0 to 47)=>XLXN_182(0 to 47));
   
   XLXI_52 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_169(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_185(0 to 27),
                rightIn(0 to 31)=>XLXN_184(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_186(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_180(0 to 27),
                leftOut(0 to 31)=>XLXN_179(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_181(0 to 27),
                rightOut(0 to 31)=>XLXN_178(0 to 31));
   
   XLXI_53 : rotR2
      port map (myinput(0 to 27)=>XLXN_190(0 to 27),
                myoutput(0 to 27)=>XLXN_204(0 to 27));
   
   XLXI_54 : rotR2
      port map (myinput(0 to 27)=>XLXN_189(0 to 27),
                myoutput(0 to 27)=>XLXN_203(0 to 27));
   
   XLXI_55 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_191(0 to 47),
                leftIn(0 to 31)=>XLXN_188(0 to 31),
                rightIn(0 to 31)=>XLXN_187(0 to 31),
                rightOut(0 to 31)=>XLXN_202(0 to 31));
   
   XLXI_56 : PC2
      port map (leftinput(0 to 27)=>XLXN_189(0 to 27),
                rightinput(0 to 27)=>XLXN_190(0 to 27),
                myoutput(0 to 47)=>XLXN_191(0 to 47));
   
   XLXI_57 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_178(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_330(0 to 27),
                rightIn(0 to 31)=>XLXN_332(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_326(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_189(0 to 27),
                leftOut(0 to 31)=>XLXN_188(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_190(0 to 27),
                rightOut(0 to 31)=>XLXN_187(0 to 31));
   
   XLXI_58 : rotR2
      port map (myinput(0 to 27)=>XLXN_199(0 to 27),
                myoutput(0 to 27)=>XLXN_213(0 to 27));
   
   XLXI_59 : rotR2
      port map (myinput(0 to 27)=>XLXN_198(0 to 27),
                myoutput(0 to 27)=>XLXN_212(0 to 27));
   
   XLXI_60 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_200(0 to 47),
                leftIn(0 to 31)=>XLXN_197(0 to 31),
                rightIn(0 to 31)=>XLXN_196(0 to 31),
                rightOut(0 to 31)=>XLXN_211(0 to 31));
   
   XLXI_61 : PC2
      port map (leftinput(0 to 27)=>XLXN_198(0 to 27),
                rightinput(0 to 27)=>XLXN_199(0 to 27),
                myoutput(0 to 47)=>XLXN_200(0 to 47));
   
   XLXI_62 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_187(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_203(0 to 27),
                rightIn(0 to 31)=>XLXN_202(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_204(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_198(0 to 27),
                leftOut(0 to 31)=>XLXN_197(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_199(0 to 27),
                rightOut(0 to 31)=>XLXN_196(0 to 31));
   
   XLXI_65 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_209(0 to 47),
                leftIn(0 to 31)=>XLXN_206(0 to 31),
                rightIn(0 to 31)=>XLXN_205(0 to 31),
                rightOut(0 to 31)=>XLXN_220(0 to 31));
   
   XLXI_66 : PC2
      port map (leftinput(0 to 27)=>XLXN_207(0 to 27),
                rightinput(0 to 27)=>XLXN_208(0 to 27),
                myoutput(0 to 47)=>XLXN_209(0 to 47));
   
   XLXI_67 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_196(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_212(0 to 27),
                rightIn(0 to 31)=>XLXN_211(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_213(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_207(0 to 27),
                leftOut(0 to 31)=>XLXN_206(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_208(0 to 27),
                rightOut(0 to 31)=>XLXN_205(0 to 31));
   
   XLXI_70 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_218(0 to 47),
                leftIn(0 to 31)=>XLXN_215(0 to 31),
                rightIn(0 to 31)=>XLXN_214(0 to 31),
                rightOut(0 to 31)=>XLXN_229(0 to 31));
   
   XLXI_71 : PC2
      port map (leftinput(0 to 27)=>XLXN_216(0 to 27),
                rightinput(0 to 27)=>XLXN_217(0 to 27),
                myoutput(0 to 47)=>XLXN_218(0 to 47));
   
   XLXI_72 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_205(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_221(0 to 27),
                rightIn(0 to 31)=>XLXN_220(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_222(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_216(0 to 27),
                leftOut(0 to 31)=>XLXN_215(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_217(0 to 27),
                rightOut(0 to 31)=>XLXN_214(0 to 31));
   
   XLXI_75 : rotR2
      port map (myinput(0 to 27)=>XLXN_226(0 to 27),
                myoutput(0 to 27)=>XLXN_334(0 to 27));
   
   XLXI_76 : rotR2
      port map (myinput(0 to 27)=>XLXN_225(0 to 27),
                myoutput(0 to 27)=>XLXN_337(0 to 27));
   
   XLXI_77 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_227(0 to 47),
                leftIn(0 to 31)=>XLXN_224(0 to 31),
                rightIn(0 to 31)=>XLXN_223(0 to 31),
                rightOut(0 to 31)=>XLXN_342(0 to 31));
   
   XLXI_78 : PC2
      port map (leftinput(0 to 27)=>XLXN_225(0 to 27),
                rightinput(0 to 27)=>XLXN_226(0 to 27),
                myoutput(0 to 47)=>XLXN_227(0 to 47));
   
   XLXI_79 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_214(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_230(0 to 27),
                rightIn(0 to 31)=>XLXN_229(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_231(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_225(0 to 27),
                leftOut(0 to 31)=>XLXN_224(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_226(0 to 27),
                rightOut(0 to 31)=>XLXN_223(0 to 31));
   
   XLXI_80 : rotR1
      port map (myinput(0 to 27)=>XLXN_208(0 to 27),
                myoutput(0 to 27)=>XLXN_222(0 to 27));
   
   XLXI_81 : rotR1
      port map (myinput(0 to 27)=>XLXN_207(0 to 27),
                myoutput(0 to 27)=>XLXN_221(0 to 27));
   
   XLXI_82 : rotR2
      port map (myinput(0 to 27)=>XLXN_217(0 to 27),
                myoutput(0 to 27)=>XLXN_231(0 to 27));
   
   XLXI_83 : rotR2
      port map (myinput(0 to 27)=>XLXN_216(0 to 27),
                myoutput(0 to 27)=>XLXN_230(0 to 27));
   
   XLXI_89 : rotR2
      port map (myinput(0 to 27)=>XLXN_247(0 to 27),
                myoutput(0 to 27)=>XLXN_280(0 to 27));
   
   XLXI_90 : rotR2
      port map (myinput(0 to 27)=>XLXN_246(0 to 27),
                myoutput(0 to 27)=>XLXN_284(0 to 27));
   
   XLXI_91 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_248(0 to 47),
                leftIn(0 to 31)=>XLXN_245(0 to 31),
                rightIn(0 to 31)=>XLXN_244(0 to 31),
                rightOut(0 to 31)=>XLXN_285(0 to 31));
   
   XLXI_92 : PC2
      port map (leftinput(0 to 27)=>XLXN_246(0 to 27),
                rightinput(0 to 27)=>XLXN_247(0 to 27),
                myoutput(0 to 47)=>XLXN_248(0 to 47));
   
   XLXI_93 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_223(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_337(0 to 27),
                rightIn(0 to 31)=>XLXN_342(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_334(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_246(0 to 27),
                leftOut(0 to 31)=>XLXN_245(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_247(0 to 27),
                rightOut(0 to 31)=>XLXN_244(0 to 31));
   
   XLXI_104 : rotR2
      port map (myinput(0 to 27)=>XLXN_272(0 to 27),
                myoutput(0 to 27)=>XLXN_292(0 to 27));
   
   XLXI_105 : rotR2
      port map (myinput(0 to 27)=>XLXN_271(0 to 27),
                myoutput(0 to 27)=>XLXN_293(0 to 27));
   
   XLXI_106 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_273(0 to 47),
                leftIn(0 to 31)=>XLXN_270(0 to 31),
                rightIn(0 to 31)=>XLXN_269(0 to 31),
                rightOut(0 to 31)=>XLXN_294(0 to 31));
   
   XLXI_107 : PC2
      port map (leftinput(0 to 27)=>XLXN_271(0 to 27),
                rightinput(0 to 27)=>XLXN_272(0 to 27),
                myoutput(0 to 47)=>XLXN_273(0 to 47));
   
   XLXI_108 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_244(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_284(0 to 27),
                rightIn(0 to 31)=>XLXN_285(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_280(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_271(0 to 27),
                leftOut(0 to 31)=>XLXN_270(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_272(0 to 27),
                rightOut(0 to 31)=>XLXN_269(0 to 31));
   
   XLXI_109 : rotR2
      port map (myinput(0 to 27)=>XLXN_289(0 to 27),
                myoutput(0 to 27)=>XLXN_301(0 to 27));
   
   XLXI_110 : rotR2
      port map (myinput(0 to 27)=>XLXN_288(0 to 27),
                myoutput(0 to 27)=>XLXN_302(0 to 27));
   
   XLXI_111 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_290(0 to 47),
                leftIn(0 to 31)=>XLXN_287(0 to 31),
                rightIn(0 to 31)=>XLXN_286(0 to 31),
                rightOut(0 to 31)=>XLXN_303(0 to 31));
   
   XLXI_112 : PC2
      port map (leftinput(0 to 27)=>XLXN_288(0 to 27),
                rightinput(0 to 27)=>XLXN_289(0 to 27),
                myoutput(0 to 47)=>XLXN_290(0 to 47));
   
   XLXI_113 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_269(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_293(0 to 27),
                rightIn(0 to 31)=>XLXN_294(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_292(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_288(0 to 27),
                leftOut(0 to 31)=>XLXN_287(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_289(0 to 27),
                rightOut(0 to 31)=>XLXN_286(0 to 31));
   
   XLXI_114 : rotR2
      port map (myinput(0 to 27)=>XLXN_298(0 to 27),
                myoutput(0 to 27)=>XLXN_310(0 to 27));
   
   XLXI_115 : rotR2
      port map (myinput(0 to 27)=>XLXN_297(0 to 27),
                myoutput(0 to 27)=>XLXN_311(0 to 27));
   
   XLXI_116 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_299(0 to 47),
                leftIn(0 to 31)=>XLXN_296(0 to 31),
                rightIn(0 to 31)=>XLXN_295(0 to 31),
                rightOut(0 to 31)=>XLXN_312(0 to 31));
   
   XLXI_117 : PC2
      port map (leftinput(0 to 27)=>XLXN_297(0 to 27),
                rightinput(0 to 27)=>XLXN_298(0 to 27),
                myoutput(0 to 47)=>XLXN_299(0 to 47));
   
   XLXI_118 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_286(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_302(0 to 27),
                rightIn(0 to 31)=>XLXN_303(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_301(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_297(0 to 27),
                leftOut(0 to 31)=>XLXN_296(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_298(0 to 27),
                rightOut(0 to 31)=>XLXN_295(0 to 31));
   
   XLXI_121 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_308(0 to 47),
                leftIn(0 to 31)=>XLXN_305(0 to 31),
                rightIn(0 to 31)=>XLXN_363(0 to 31),
                rightOut(0 to 31)=>XLXN_359(0 to 31));
   
   XLXI_122 : PC2
      port map (leftinput(0 to 27)=>XLXN_306(0 to 27),
                rightinput(0 to 27)=>XLXN_307(0 to 27),
                myoutput(0 to 47)=>XLXN_308(0 to 47));
   
   XLXI_123 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_295(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_311(0 to 27),
                rightIn(0 to 31)=>XLXN_312(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_310(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_306(0 to 27),
                leftOut(0 to 31)=>XLXN_305(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_307(0 to 27),
                rightOut(0 to 31)=>XLXN_363(0 to 31));
   
   XLXI_124 : rotR1
      port map (myinput(0 to 27)=>XLXN_307(0 to 27),
                myoutput(0 to 27)=>XLXN_350(0 to 27));
   
   XLXI_125 : rotR1
      port map (myinput(0 to 27)=>XLXN_306(0 to 27),
                myoutput(0 to 27)=>XLXN_352(0 to 27));
   
   XLXI_128 : Feistel_MUSER_DES_Cryptanalysis
      port map (keyIn(0 to 47)=>XLXN_317(0 to 47),
                leftIn(0 to 31)=>XLXN_314(0 to 31),
                rightIn(0 to 31)=>XLXN_387(0 to 31),
                rightOut(0 to 31)=>XLXN_389(0 to 31));
   
   XLXI_129 : PC2
      port map (leftinput(0 to 27)=>XLXN_322(0 to 27),
                rightinput(0 to 27)=>XLXN_323(0 to 27),
                myoutput(0 to 47)=>XLXN_317(0 to 47));
   
   XLXI_130 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_363(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_352(0 to 27),
                rightIn(0 to 31)=>XLXN_359(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_350(0 to 27),
                leftkeyOut(0 to 27)=>XLXN_322(0 to 27),
                leftOut(0 to 31)=>XLXN_314(0 to 31),
                rightkeyOut(0 to 27)=>XLXN_323(0 to 27),
                rightOut(0 to 31)=>XLXN_387(0 to 31));
   
   XLXI_135 : syncReg
      port map (CE=>CE,
                clk=>Clk_50MHz,
                leftIn(0 to 31)=>XLXN_389(0 to 31),
                leftkeyIn(0 to 27)=>XLXN_322(0 to 27),
                rightIn(0 to 31)=>XLXN_387(0 to 31),
                rightkeyIn(0 to 27)=>XLXN_323(0 to 27),
                leftkeyOut=>open,
                leftOut(0 to 31)=>XLXN_390(0 to 31),
                rightkeyOut=>open,
                rightOut(0 to 31)=>XLXN_391(0 to 31));
   
   XLXI_136 : revIP
      port map (leftinput(0 to 31)=>XLXN_390(0 to 31),
                rightinput(0 to 31)=>XLXN_391(0 to 31),
                myoutput(0 to 63)=>plaintext(0 to 63));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity DES_Cryptanalysis is
   port ( Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          Reset     : in    std_logic; 
          datardy1  : out   std_logic; 
          datardy2  : out   std_logic; 
          isfound   : out   std_logic; 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          led4      : out   std_logic; 
          led5      : out   std_logic; 
          led6      : out   std_logic; 
          led7      : out   std_logic; 
          SF_CE     : out   std_logic; 
          typing    : out   std_logic; 
          LCD_D     : inout std_logic_vector (3 downto 0));
end DES_Cryptanalysis;

architecture BEHAVIORAL of DES_Cryptanalysis is
   attribute BOX_TYPE   : string ;
   signal keyout         : std_logic_vector (0 to 63);
   signal plaintext      : std_logic_vector (0 to 63);
   signal XLXN_57        : std_logic_vector (0 to 63);
   signal XLXN_64        : std_logic_vector (0 to 63);
   signal XLXN_65        : std_logic_vector (0 to 63);
   signal XLXN_72        : std_logic;
   signal XLXN_73        : std_logic;
   signal XLXN_76        : std_logic;
   signal XLXN_77        : std_logic_vector (7 downto 0);
   signal XLXN_99        : std_logic_vector (0 to 15);
   signal XLXN_100       : std_logic_vector (0 to 63);
   signal XLXN_101       : std_logic_vector (15 downto 0);
   signal XLXN_102       : std_logic_vector (63 downto 0);
   signal XLXN_107       : std_logic;
   signal XLXN_109       : std_logic_vector (0 to 63);
   signal XLXN_111       : std_logic_vector (0 to 63);
   signal datardy1_DUMMY : std_logic;
   signal datardy2_DUMMY : std_logic;
   signal isfound_DUMMY  : std_logic;
   component DES_Decoder_MUSER_DES_Cryptanalysis
      port ( ciphertext : in    std_logic_vector (0 to 63); 
             key        : in    std_logic_vector (0 to 63); 
             CE         : in    std_logic; 
             Clk_50MHz  : in    std_logic; 
             plaintext  : out   std_logic_vector (0 to 63));
   end component;
   
   component cmpPT
      port ( clk       : in    std_logic; 
             plaintext : in    std_logic_vector (0 to 63); 
             expected  : in    std_logic_vector (0 to 63); 
             keyin     : in    std_logic_vector (0 to 63); 
             isfound   : out   std_logic; 
             keyout    : out   std_logic_vector (0 to 63); 
             CE        : in    std_logic);
   end component;
   
   component LCD2x64
      port ( Line1     : in    std_logic_vector (63 downto 0); 
             Blank1    : in    std_logic_vector (15 downto 0); 
             Line2     : in    std_logic_vector (63 downto 0); 
             Blank2    : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic; 
             Reset     : in    std_logic; 
             Clk_50MHz : in    std_logic);
   end component;
   
   component keyBuffer_MUSER_DES_Cryptanalysis
      port ( keyIn     : in    std_logic_vector (0 to 63); 
             Clk_50MHz : in    std_logic; 
             CE        : in    std_logic; 
             keyOut    : out   std_logic_vector (0 to 63));
   end component;
   
   component keyGen
      port ( clk     : in    std_logic; 
             CE      : in    std_logic; 
             isfound : in    std_logic; 
             msgin   : in    std_logic_vector (0 to 63); 
             msgout  : out   std_logic_vector (0 to 63); 
             keyout  : out   std_logic_vector (0 to 63));
   end component;
   
   component display
      port ( clk      : in    std_logic; 
             isfound  : in    std_logic; 
             CE       : in    std_logic; 
             foundkey : in    std_logic_vector (0 to 63); 
             LCD_DI   : out   std_logic_vector (0 to 63); 
             LCD_B2   : out   std_logic_vector (0 to 15));
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component inputModule
      port ( KbdE0      : in    std_logic; 
             KbdF0      : in    std_logic; 
             KbdDataRdy : in    std_logic; 
             clk        : in    std_logic; 
             stop       : in    std_logic; 
             KbdDO      : in    std_logic_vector (0 to 7); 
             typing     : out   std_logic; 
             datardy1   : out   std_logic; 
             datardy2   : out   std_logic; 
             led4       : out   std_logic; 
             led5       : out   std_logic; 
             led6       : out   std_logic; 
             led7       : out   std_logic; 
             LCD_DI     : out   std_logic_vector (0 to 63); 
             LCD_B1     : out   std_logic_vector (0 to 15); 
             ciphertext : out   std_logic_vector (0 to 63); 
             expected   : out   std_logic_vector (0 to 63));
   end component;
   
begin
   datardy1 <= datardy1_DUMMY;
   datardy2 <= datardy2_DUMMY;
   isfound <= isfound_DUMMY;
   XLXI_20 : DES_Decoder_MUSER_DES_Cryptanalysis
      port map (CE=>XLXN_107,
                ciphertext(0 to 63)=>XLXN_65(0 to 63),
                Clk_50MHz=>Clk_50MHz,
                key(0 to 63)=>XLXN_64(0 to 63),
                plaintext(0 to 63)=>plaintext(0 to 63));
   
   XLXI_38 : cmpPT
      port map (CE=>XLXN_107,
                clk=>Clk_50MHz,
                expected(0 to 63)=>XLXN_111(0 to 63),
                keyin(0 to 63)=>keyout(0 to 63),
                plaintext(0 to 63)=>plaintext(0 to 63),
                isfound=>isfound_DUMMY,
                keyout(0 to 63)=>XLXN_57(0 to 63));
   
   XLXI_40 : LCD2x64
      port map (Blank1(15 downto 0)=>XLXN_101(15 downto 0),
                Blank2(15 downto 0)=>XLXN_99(0 to 15),
                Clk_50MHz=>Clk_50MHz,
                Line1(63 downto 0)=>XLXN_102(63 downto 0),
                Line2(63 downto 0)=>XLXN_100(0 to 63),
                Reset=>Reset,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_44 : keyBuffer_MUSER_DES_Cryptanalysis
      port map (CE=>XLXN_107,
                Clk_50MHz=>Clk_50MHz,
                keyIn(0 to 63)=>XLXN_64(0 to 63),
                keyOut(0 to 63)=>keyout(0 to 63));
   
   XLXI_46 : keyGen
      port map (CE=>XLXN_107,
                clk=>Clk_50MHz,
                isfound=>isfound_DUMMY,
                msgin(0 to 63)=>XLXN_109(0 to 63),
                keyout(0 to 63)=>XLXN_64(0 to 63),
                msgout(0 to 63)=>XLXN_65(0 to 63));
   
   XLXI_48 : display
      port map (CE=>XLXN_107,
                clk=>Clk_50MHz,
                foundkey(0 to 63)=>XLXN_57(0 to 63),
                isfound=>isfound_DUMMY,
                LCD_B2(0 to 15)=>XLXN_99(0 to 15),
                LCD_DI(0 to 63)=>XLXN_100(0 to 63));
   
   XLXI_50 : AND2
      port map (I0=>datardy2_DUMMY,
                I1=>datardy1_DUMMY,
                O=>XLXN_107);
   
   XLXI_51 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_77(7 downto 0),
                DO_Rdy=>XLXN_76,
                E0=>XLXN_72,
                F0=>XLXN_73);
   
   XLXI_52 : inputModule
      port map (clk=>Clk_50MHz,
                KbdDataRdy=>XLXN_76,
                KbdDO(0 to 7)=>XLXN_77(7 downto 0),
                KbdE0=>XLXN_72,
                KbdF0=>XLXN_73,
                stop=>XLXN_107,
                ciphertext(0 to 63)=>XLXN_109(0 to 63),
                datardy1=>datardy1_DUMMY,
                datardy2=>datardy2_DUMMY,
                expected(0 to 63)=>XLXN_111(0 to 63),
                LCD_B1(0 to 15)=>XLXN_101(15 downto 0),
                LCD_DI(0 to 63)=>XLXN_102(63 downto 0),
                led4=>led4,
                led5=>led5,
                led6=>led6,
                led7=>led7,
                typing=>typing);
   
end BEHAVIORAL;


