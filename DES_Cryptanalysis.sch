<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="plaintext(0:63)" />
        <signal name="isfound" />
        <signal name="keyout(0:63)" />
        <signal name="Reset" />
        <signal name="LCD_D(3:0)" />
        <signal name="LCD_E" />
        <signal name="LCD_RW" />
        <signal name="LCD_RS" />
        <signal name="SF_CE" />
        <signal name="XLXN_57(0:63)" />
        <signal name="XLXN_59(0:15)" />
        <signal name="XLXN_61" />
        <signal name="XLXN_63(0:63)" />
        <signal name="XLXN_64(0:63)" />
        <signal name="XLXN_65(0:63)" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77(7:0)" />
        <signal name="XLXN_78" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="typing" />
        <signal name="led4" />
        <signal name="led5" />
        <signal name="led6" />
        <signal name="led7" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99(0:15)" />
        <signal name="XLXN_100(0:63)" />
        <signal name="XLXN_101(15:0)" />
        <signal name="XLXN_102(63:0)" />
        <signal name="XLXN_103" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <signal name="XLXN_107" />
        <signal name="XLXN_109(0:63)" />
        <signal name="XLXN_110" />
        <signal name="XLXN_111(0:63)" />
        <signal name="datardy1" />
        <signal name="XLXN_113" />
        <signal name="XLXN_115" />
        <signal name="datardy2" />
        <signal name="XLXN_117" />
        <signal name="XLXN_118" />
        <signal name="XLXN_119" />
        <signal name="XLXN_120" />
        <signal name="XLXN_121" />
        <port polarity="Output" name="isfound" />
        <port polarity="Input" name="Reset" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Input" name="XLXN_78" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="typing" />
        <port polarity="Output" name="led4" />
        <port polarity="Output" name="led5" />
        <port polarity="Output" name="led6" />
        <port polarity="Output" name="led7" />
        <port polarity="Output" name="datardy1" />
        <port polarity="Output" name="datardy2" />
        <blockdef name="DES_Decoder">
            <timestamp>2018-11-6T13:37:50</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
        </blockdef>
        <blockdef name="keyGen">
            <timestamp>2018-11-6T13:1:57</timestamp>
            <line x2="0" y1="288" y2="288" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="448" />
        </blockdef>
        <blockdef name="cmpPT">
            <timestamp>2018-11-6T12:44:39</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="304" x="64" y="-256" height="448" />
        </blockdef>
        <blockdef name="LCD2x64">
            <timestamp>2008-9-19T11:22:46</timestamp>
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="304" x="64" y="-320" height="384" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
        </blockdef>
        <blockdef name="keyBuffer">
            <timestamp>2018-11-6T12:59:53</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="display">
            <timestamp>2018-11-6T14:29:19</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:35</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="inputModule">
            <timestamp>2018-11-6T14:39:47</timestamp>
            <rect width="64" x="320" y="788" height="24" />
            <line x2="384" y1="800" y2="800" x1="320" />
            <rect width="64" x="320" y="852" height="24" />
            <line x2="384" y1="864" y2="864" x1="320" />
            <line x2="0" y1="736" y2="736" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <line x2="384" y1="352" y2="352" x1="320" />
            <line x2="384" y1="416" y2="416" x1="320" />
            <rect width="64" x="320" y="468" height="24" />
            <line x2="384" y1="480" y2="480" x1="320" />
            <rect width="64" x="320" y="596" height="24" />
            <line x2="384" y1="608" y2="608" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="256" x="64" y="-128" height="1024" />
        </blockdef>
        <block symbolname="DES_Decoder" name="XLXI_20">
            <blockpin signalname="XLXN_65(0:63)" name="ciphertext(0:63)" />
            <blockpin signalname="XLXN_64(0:63)" name="key(0:63)" />
            <blockpin signalname="XLXN_107" name="CE" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="plaintext(0:63)" name="plaintext(0:63)" />
        </block>
        <block symbolname="cmpPT" name="XLXI_38">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="plaintext(0:63)" name="plaintext(0:63)" />
            <blockpin signalname="XLXN_111(0:63)" name="expected(0:63)" />
            <blockpin signalname="keyout(0:63)" name="keyin(0:63)" />
            <blockpin signalname="isfound" name="isfound" />
            <blockpin signalname="XLXN_57(0:63)" name="keyout(0:63)" />
            <blockpin signalname="XLXN_107" name="CE" />
        </block>
        <block symbolname="LCD2x64" name="XLXI_40">
            <blockpin signalname="XLXN_102(63:0)" name="Line1(63:0)" />
            <blockpin signalname="XLXN_101(15:0)" name="Blank1(15:0)" />
            <blockpin signalname="XLXN_100(0:63)" name="Line2(63:0)" />
            <blockpin signalname="XLXN_99(0:15)" name="Blank2(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
        </block>
        <block symbolname="keyBuffer" name="XLXI_44">
            <blockpin signalname="XLXN_64(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_107" name="CE" />
            <blockpin signalname="keyout(0:63)" name="keyOut(0:63)" />
        </block>
        <block symbolname="keyGen" name="XLXI_46">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_107" name="CE" />
            <blockpin signalname="isfound" name="isfound" />
            <blockpin signalname="XLXN_109(0:63)" name="msgin(0:63)" />
            <blockpin signalname="XLXN_65(0:63)" name="msgout(0:63)" />
            <blockpin signalname="XLXN_64(0:63)" name="keyout(0:63)" />
        </block>
        <block symbolname="display" name="XLXI_48">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="isfound" name="isfound" />
            <blockpin signalname="XLXN_107" name="CE" />
            <blockpin signalname="XLXN_57(0:63)" name="foundkey(0:63)" />
            <blockpin signalname="XLXN_100(0:63)" name="LCD_DI(0:63)" />
            <blockpin signalname="XLXN_99(0:15)" name="LCD_B2(0:15)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_51">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_72" name="E0" />
            <blockpin signalname="XLXN_73" name="F0" />
            <blockpin signalname="XLXN_76" name="DO_Rdy" />
            <blockpin signalname="XLXN_77(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="inputModule" name="XLXI_52">
            <blockpin signalname="XLXN_72" name="KbdE0" />
            <blockpin signalname="XLXN_73" name="KbdF0" />
            <blockpin signalname="XLXN_76" name="KbdDataRdy" />
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_107" name="stop" />
            <blockpin signalname="XLXN_77(7:0)" name="KbdDO(0:7)" />
            <blockpin signalname="typing" name="typing" />
            <blockpin signalname="datardy1" name="datardy1" />
            <blockpin signalname="datardy2" name="datardy2" />
            <blockpin signalname="led4" name="led4" />
            <blockpin signalname="led5" name="led5" />
            <blockpin signalname="led6" name="led6" />
            <blockpin signalname="led7" name="led7" />
            <blockpin signalname="XLXN_102(63:0)" name="LCD_DI(0:63)" />
            <blockpin signalname="XLXN_101(15:0)" name="LCD_B1(0:15)" />
            <blockpin signalname="XLXN_109(0:63)" name="ciphertext(0:63)" />
            <blockpin signalname="XLXN_111(0:63)" name="expected(0:63)" />
        </block>
        <block symbolname="and2" name="XLXI_50">
            <blockpin signalname="datardy2" name="I0" />
            <blockpin signalname="datardy1" name="I1" />
            <blockpin signalname="XLXN_107" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="plaintext(0:63)">
            <wire x2="2848" y1="352" y2="352" x1="2432" />
        </branch>
        <iomarker fontsize="28" x="816" y="416" name="Clk_50MHz" orien="R180" />
        <branch name="keyout(0:63)">
            <wire x2="2400" y1="1216" y2="1216" x1="2272" />
            <wire x2="2848" y1="480" y2="480" x1="2400" />
            <wire x2="2400" y1="480" y2="1216" x1="2400" />
        </branch>
        <instance x="2848" y="512" name="XLXI_38" orien="R0">
        </instance>
        <instance x="4624" y="656" name="XLXI_40" orien="R0">
        </instance>
        <branch name="isfound">
            <wire x2="1248" y1="464" y2="704" x1="1248" />
            <wire x2="1312" y1="704" y2="704" x1="1248" />
            <wire x2="1872" y1="464" y2="464" x1="1248" />
            <wire x2="1872" y1="464" y2="928" x1="1872" />
            <wire x2="3312" y1="928" y2="928" x1="1872" />
            <wire x2="3312" y1="544" y2="544" x1="3280" />
            <wire x2="3488" y1="544" y2="544" x1="3312" />
            <wire x2="3552" y1="544" y2="544" x1="3488" />
            <wire x2="3312" y1="544" y2="928" x1="3312" />
            <wire x2="3488" y1="448" y2="544" x1="3488" />
            <wire x2="3936" y1="448" y2="448" x1="3488" />
            <wire x2="3936" y1="384" y2="448" x1="3936" />
            <wire x2="4016" y1="384" y2="384" x1="3936" />
        </branch>
        <branch name="Reset">
            <wire x2="4624" y1="624" y2="624" x1="4352" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="5088" y1="560" y2="560" x1="5056" />
        </branch>
        <iomarker fontsize="28" x="5088" y="560" name="LCD_D(3:0)" orien="R0" />
        <branch name="LCD_E">
            <wire x2="5088" y1="368" y2="368" x1="5056" />
        </branch>
        <iomarker fontsize="28" x="5088" y="368" name="LCD_E" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="5088" y1="496" y2="496" x1="5056" />
        </branch>
        <iomarker fontsize="28" x="5088" y="496" name="LCD_RW" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="5088" y1="432" y2="432" x1="5056" />
        </branch>
        <iomarker fontsize="28" x="5088" y="432" name="LCD_RS" orien="R0" />
        <branch name="SF_CE">
            <wire x2="5088" y1="624" y2="624" x1="5056" />
        </branch>
        <iomarker fontsize="28" x="5088" y="624" name="SF_CE" orien="R0" />
        <iomarker fontsize="28" x="3552" y="544" name="isfound" orien="R0" />
        <instance x="1888" y="1376" name="XLXI_44" orien="R0">
        </instance>
        <instance x="1312" y="672" name="XLXI_46" orien="R0">
        </instance>
        <instance x="4016" y="544" name="XLXI_48" orien="R0">
        </instance>
        <branch name="XLXN_57(0:63)">
            <wire x2="3712" y1="480" y2="480" x1="3280" />
            <wire x2="3712" y1="480" y2="512" x1="3712" />
            <wire x2="4016" y1="512" y2="512" x1="3712" />
        </branch>
        <instance x="1984" y="576" name="XLXI_20" orien="R0">
        </instance>
        <branch name="XLXN_64(0:63)">
            <wire x2="1840" y1="576" y2="576" x1="1696" />
            <wire x2="1840" y1="576" y2="1216" x1="1840" />
            <wire x2="1888" y1="1216" y2="1216" x1="1840" />
            <wire x2="1840" y1="416" y2="576" x1="1840" />
            <wire x2="1984" y1="416" y2="416" x1="1840" />
        </branch>
        <branch name="XLXN_65(0:63)">
            <wire x2="1824" y1="832" y2="832" x1="1696" />
            <wire x2="1824" y1="352" y2="832" x1="1824" />
            <wire x2="1984" y1="352" y2="352" x1="1824" />
        </branch>
        <instance x="800" y="1728" name="XLXI_52" orien="R0">
        </instance>
        <instance x="304" y="1920" name="XLXI_51" orien="R0">
        </instance>
        <branch name="XLXN_72">
            <wire x2="800" y1="1760" y2="1760" x1="688" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="768" y1="1824" y2="1824" x1="688" />
            <wire x2="800" y1="1824" y2="1824" x1="768" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="800" y1="1888" y2="1888" x1="688" />
        </branch>
        <branch name="XLXN_77(7:0)">
            <wire x2="736" y1="1696" y2="1696" x1="688" />
            <wire x2="736" y1="1696" y2="1952" x1="736" />
            <wire x2="800" y1="1952" y2="1952" x1="736" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="304" y1="1824" y2="1824" x1="224" />
            <wire x2="224" y1="1824" y2="1888" x1="224" />
            <wire x2="304" y1="1888" y2="1888" x1="224" />
            <wire x2="224" y1="1888" y2="2064" x1="224" />
            <wire x2="784" y1="2064" y2="2064" x1="224" />
            <wire x2="784" y1="1488" y2="1632" x1="784" />
            <wire x2="800" y1="1632" y2="1632" x1="784" />
            <wire x2="784" y1="1632" y2="2064" x1="784" />
            <wire x2="864" y1="1488" y2="1488" x1="784" />
            <wire x2="3936" y1="1488" y2="1488" x1="864" />
            <wire x2="864" y1="416" y2="416" x1="816" />
            <wire x2="864" y1="416" y2="576" x1="864" />
            <wire x2="1312" y1="576" y2="576" x1="864" />
            <wire x2="864" y1="576" y2="1280" x1="864" />
            <wire x2="1888" y1="1280" y2="1280" x1="864" />
            <wire x2="864" y1="1280" y2="1488" x1="864" />
            <wire x2="1776" y1="416" y2="416" x1="864" />
            <wire x2="1776" y1="416" y2="544" x1="1776" />
            <wire x2="1984" y1="544" y2="544" x1="1776" />
            <wire x2="864" y1="240" y2="416" x1="864" />
            <wire x2="2688" y1="240" y2="240" x1="864" />
            <wire x2="2688" y1="240" y2="288" x1="2688" />
            <wire x2="2848" y1="288" y2="288" x1="2688" />
            <wire x2="3296" y1="240" y2="240" x1="2688" />
            <wire x2="3296" y1="240" y2="320" x1="3296" />
            <wire x2="4016" y1="320" y2="320" x1="3296" />
            <wire x2="3936" y1="688" y2="1488" x1="3936" />
            <wire x2="4624" y1="688" y2="688" x1="3936" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="304" y1="1696" y2="1696" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="1696" name="PS2_Clk" orien="R180" />
        <branch name="PS2_Data">
            <wire x2="304" y1="1760" y2="1760" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="1760" name="PS2_Data" orien="R180" />
        <branch name="typing">
            <wire x2="1216" y1="1760" y2="1760" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1760" name="typing" orien="R0" />
        <branch name="led4">
            <wire x2="1216" y1="1952" y2="1952" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1952" name="led4" orien="R0" />
        <branch name="led5">
            <wire x2="1216" y1="2016" y2="2016" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1216" y="2016" name="led5" orien="R0" />
        <branch name="led6">
            <wire x2="1216" y1="2080" y2="2080" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1216" y="2080" name="led6" orien="R0" />
        <branch name="led7">
            <wire x2="1216" y1="2144" y2="2144" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1216" y="2144" name="led7" orien="R0" />
        <iomarker fontsize="28" x="4352" y="624" name="Reset" orien="R180" />
        <branch name="XLXN_99(0:15)">
            <wire x2="4544" y1="512" y2="512" x1="4464" />
            <wire x2="4544" y1="512" y2="560" x1="4544" />
            <wire x2="4624" y1="560" y2="560" x1="4544" />
        </branch>
        <branch name="XLXN_100(0:63)">
            <wire x2="4544" y1="320" y2="320" x1="4464" />
            <wire x2="4544" y1="320" y2="496" x1="4544" />
            <wire x2="4624" y1="496" y2="496" x1="4544" />
        </branch>
        <instance x="1376" y="1952" name="XLXI_50" orien="R0" />
        <branch name="XLXN_101(15:0)">
            <wire x2="1200" y1="2336" y2="2336" x1="1184" />
            <wire x2="4608" y1="2336" y2="2336" x1="1200" />
            <wire x2="4624" y1="432" y2="432" x1="4608" />
            <wire x2="4608" y1="432" y2="464" x1="4608" />
            <wire x2="4608" y1="464" y2="2336" x1="4608" />
        </branch>
        <branch name="XLXN_102(63:0)">
            <wire x2="4592" y1="2208" y2="2208" x1="1184" />
            <wire x2="4624" y1="368" y2="368" x1="4592" />
            <wire x2="4592" y1="368" y2="720" x1="4592" />
            <wire x2="4592" y1="720" y2="2208" x1="4592" />
        </branch>
        <branch name="XLXN_107">
            <wire x2="800" y1="2464" y2="2464" x1="736" />
            <wire x2="736" y1="2464" y2="2704" x1="736" />
            <wire x2="1712" y1="2704" y2="2704" x1="736" />
            <wire x2="1312" y1="960" y2="960" x1="1264" />
            <wire x2="1264" y1="960" y2="1344" x1="1264" />
            <wire x2="1712" y1="1344" y2="1344" x1="1264" />
            <wire x2="1888" y1="1344" y2="1344" x1="1712" />
            <wire x2="1712" y1="1344" y2="1856" x1="1712" />
            <wire x2="1712" y1="1856" y2="2704" x1="1712" />
            <wire x2="2288" y1="1856" y2="1856" x1="1712" />
            <wire x2="4000" y1="1856" y2="1856" x1="2288" />
            <wire x2="1712" y1="1856" y2="1856" x1="1632" />
            <wire x2="1952" y1="1008" y2="1008" x1="1712" />
            <wire x2="1712" y1="1008" y2="1344" x1="1712" />
            <wire x2="1984" y1="480" y2="480" x1="1952" />
            <wire x2="1952" y1="480" y2="1008" x1="1952" />
            <wire x2="2288" y1="608" y2="1856" x1="2288" />
            <wire x2="2848" y1="608" y2="608" x1="2288" />
            <wire x2="4000" y1="448" y2="1856" x1="4000" />
            <wire x2="4016" y1="448" y2="448" x1="4000" />
        </branch>
        <branch name="XLXN_109(0:63)">
            <wire x2="1680" y1="2528" y2="2528" x1="1184" />
            <wire x2="1280" y1="832" y2="1312" x1="1280" />
            <wire x2="1680" y1="1312" y2="1312" x1="1280" />
            <wire x2="1680" y1="1312" y2="1808" x1="1680" />
            <wire x2="1680" y1="1808" y2="2528" x1="1680" />
            <wire x2="1312" y1="832" y2="832" x1="1280" />
        </branch>
        <branch name="XLXN_111(0:63)">
            <wire x2="2480" y1="2592" y2="2592" x1="1184" />
            <wire x2="2480" y1="416" y2="2592" x1="2480" />
            <wire x2="2848" y1="416" y2="416" x1="2480" />
        </branch>
        <branch name="datardy1">
            <wire x2="1360" y1="1824" y2="1824" x1="1184" />
            <wire x2="1376" y1="1824" y2="1824" x1="1360" />
            <wire x2="1440" y1="1728" y2="1728" x1="1360" />
            <wire x2="1360" y1="1728" y2="1824" x1="1360" />
        </branch>
        <branch name="datardy2">
            <wire x2="1344" y1="1888" y2="1888" x1="1184" />
            <wire x2="1360" y1="1888" y2="1888" x1="1344" />
            <wire x2="1376" y1="1888" y2="1888" x1="1360" />
            <wire x2="1360" y1="1888" y2="2000" x1="1360" />
            <wire x2="1440" y1="2000" y2="2000" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1440" y="1728" name="datardy1" orien="R0" />
        <iomarker fontsize="28" x="1440" y="2000" name="datardy2" orien="R0" />
    </sheet>
</drawing>