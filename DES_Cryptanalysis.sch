<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="plaintext(0:63)" />
        <signal name="Clk_50MHz" />
        <signal name="msgout(0:63)">
        </signal>
        <signal name="XLXN_4(0:63)" />
        <signal name="ciphertext(0:63)" />
        <signal name="XLXN_8(0:63)" />
        <signal name="XLXN_9" />
        <signal name="XLXN_11" />
        <signal name="isfound" />
        <signal name="XLXN_13(0:63)" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="keyout(0:63)" />
        <signal name="XLXN_18(0:63)" />
        <signal name="XLXN_19" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24(0:63)" />
        <signal name="XLXN_25(0:63)" />
        <signal name="XLXN_26(0:63)" />
        <signal name="expected(0:63)" />
        <signal name="foundkey(0:63)" />
        <signal name="XLXN_30(0:63)" />
        <signal name="XLXN_31(0:63)" />
        <port polarity="Output" name="plaintext(0:63)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="ciphertext(0:63)" />
        <port polarity="Output" name="isfound" />
        <port polarity="Output" name="keyout(0:63)" />
        <port polarity="Input" name="expected(0:63)" />
        <port polarity="Output" name="foundkey(0:63)" />
        <blockdef name="DES_Decoder">
            <timestamp>2018-6-30T11:17:5</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
        </blockdef>
        <blockdef name="keyGen">
            <timestamp>2018-10-30T18:23:25</timestamp>
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="320" />
        </blockdef>
        <blockdef name="keyBuffer">
            <timestamp>2018-8-27T14:23:52</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="cmpPT">
            <timestamp>2018-11-5T23:10:46</timestamp>
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
            <rect width="304" x="64" y="-256" height="384" />
        </blockdef>
        <block symbolname="DES_Decoder" name="XLXI_20">
            <blockpin signalname="msgout(0:63)" name="ciphertext(0:63)" />
            <blockpin signalname="XLXN_25(0:63)" name="key(0:63)" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="plaintext(0:63)" name="plaintext(0:63)" />
        </block>
        <block symbolname="keyGen" name="XLXI_34">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="isfound" name="isfound" />
            <blockpin signalname="ciphertext(0:63)" name="msgin(0:63)" />
            <blockpin signalname="msgout(0:63)" name="msgout(0:63)" />
            <blockpin signalname="XLXN_25(0:63)" name="keyout(0:63)" />
        </block>
        <block symbolname="keyBuffer" name="XLXI_37">
            <blockpin signalname="XLXN_25(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="keyout(0:63)" name="keyOut(0:63)" />
        </block>
        <block symbolname="cmpPT" name="XLXI_38">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="plaintext(0:63)" name="plaintext(0:63)" />
            <blockpin signalname="expected(0:63)" name="expected(0:63)" />
            <blockpin signalname="keyout(0:63)" name="keyin(0:63)" />
            <blockpin signalname="isfound" name="isfound" />
            <blockpin signalname="foundkey(0:63)" name="keyout(0:63)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="plaintext(0:63)">
            <wire x2="2352" y1="288" y2="288" x1="2304" />
            <wire x2="2416" y1="288" y2="288" x1="2352" />
            <wire x2="2352" y1="288" y2="352" x1="2352" />
            <wire x2="2848" y1="352" y2="352" x1="2352" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="864" y1="416" y2="416" x1="816" />
            <wire x2="864" y1="416" y2="576" x1="864" />
            <wire x2="1312" y1="576" y2="576" x1="864" />
            <wire x2="864" y1="576" y2="1280" x1="864" />
            <wire x2="1888" y1="1280" y2="1280" x1="864" />
            <wire x2="1856" y1="416" y2="416" x1="864" />
            <wire x2="864" y1="240" y2="416" x1="864" />
            <wire x2="2688" y1="240" y2="240" x1="864" />
            <wire x2="2688" y1="240" y2="288" x1="2688" />
            <wire x2="2848" y1="288" y2="288" x1="2688" />
        </branch>
        <instance x="1856" y="448" name="XLXI_20" orien="R0">
        </instance>
        <branch name="msgout(0:63)">
            <wire x2="1776" y1="832" y2="832" x1="1696" />
            <wire x2="1856" y1="288" y2="288" x1="1776" />
            <wire x2="1776" y1="288" y2="816" x1="1776" />
            <wire x2="1776" y1="816" y2="832" x1="1776" />
        </branch>
        <branch name="ciphertext(0:63)">
            <wire x2="1296" y1="832" y2="832" x1="816" />
            <wire x2="1312" y1="832" y2="832" x1="1296" />
        </branch>
        <instance x="1312" y="672" name="XLXI_34" orien="R0">
        </instance>
        <iomarker fontsize="28" x="816" y="832" name="ciphertext(0:63)" orien="R180" />
        <iomarker fontsize="28" x="816" y="416" name="Clk_50MHz" orien="R180" />
        <instance x="1888" y="1312" name="XLXI_37" orien="R0">
        </instance>
        <branch name="isfound">
            <wire x2="1312" y1="704" y2="704" x1="1232" />
            <wire x2="1232" y1="704" y2="928" x1="1232" />
            <wire x2="3312" y1="928" y2="928" x1="1232" />
            <wire x2="3312" y1="544" y2="544" x1="3280" />
            <wire x2="3312" y1="544" y2="688" x1="3312" />
            <wire x2="3312" y1="688" y2="928" x1="3312" />
            <wire x2="3440" y1="544" y2="544" x1="3312" />
        </branch>
        <branch name="keyout(0:63)">
            <wire x2="2400" y1="1216" y2="1216" x1="2272" />
            <wire x2="2528" y1="1216" y2="1216" x1="2400" />
            <wire x2="2848" y1="480" y2="480" x1="2400" />
            <wire x2="2400" y1="480" y2="1216" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1216" name="keyout(0:63)" orien="R0" />
        <branch name="XLXN_25(0:63)">
            <wire x2="1760" y1="576" y2="576" x1="1696" />
            <wire x2="1760" y1="576" y2="1216" x1="1760" />
            <wire x2="1888" y1="1216" y2="1216" x1="1760" />
            <wire x2="1760" y1="352" y2="576" x1="1760" />
            <wire x2="1856" y1="352" y2="352" x1="1760" />
        </branch>
        <branch name="expected(0:63)">
            <wire x2="2384" y1="1024" y2="1024" x1="816" />
            <wire x2="2384" y1="416" y2="1024" x1="2384" />
            <wire x2="2848" y1="416" y2="416" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="816" y="1024" name="expected(0:63)" orien="R180" />
        <branch name="foundkey(0:63)">
            <wire x2="3440" y1="480" y2="480" x1="3280" />
        </branch>
        <iomarker fontsize="28" x="3440" y="480" name="foundkey(0:63)" orien="R0" />
        <iomarker fontsize="28" x="2416" y="288" name="plaintext(0:63)" orien="R0" />
        <iomarker fontsize="28" x="3440" y="544" name="isfound" orien="R0" />
        <instance x="2848" y="512" name="XLXI_38" orien="R0">
        </instance>
    </sheet>
</drawing>