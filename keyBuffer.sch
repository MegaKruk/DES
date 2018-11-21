<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="keyIn(0:63)" />
        <signal name="XLXN_4(0:63)" />
        <signal name="XLXN_5(0:63)" />
        <signal name="XLXN_6(0:63)" />
        <signal name="XLXN_9(0:63)" />
        <signal name="XLXN_10(0:63)" />
        <signal name="XLXN_11(0:63)" />
        <signal name="XLXN_13(0:63)" />
        <signal name="XLXN_14(0:63)" />
        <signal name="XLXN_15(0:63)" />
        <signal name="XLXN_16(0:63)" />
        <signal name="XLXN_17(0:63)" />
        <signal name="XLXN_18(0:63)" />
        <signal name="XLXN_20(0:63)" />
        <signal name="XLXN_21(0:63)" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_56(0:63)" />
        <signal name="keyOut(0:63)" />
        <signal name="CE" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <port polarity="Input" name="keyIn(0:63)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="keyOut(0:63)" />
        <port polarity="Input" name="CE" />
        <blockdef name="keySyncReg">
            <timestamp>2018-11-6T12:50:54</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <block symbolname="keySyncReg" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="keyIn(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_4(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_4(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_5(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_5(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_6(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_5">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_6(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_9(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_6">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_9(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_10(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_7">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_10(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_11(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_8">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_11(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_13(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_9">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_13(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_14(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_10">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_14(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_15(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_12">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_15(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_16(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_13">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_16(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_17(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_14">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_17(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_18(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_15">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_20(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_21(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_16">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_21(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_56(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_18">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_18(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="XLXN_20(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
        <block symbolname="keySyncReg" name="XLXI_19">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_56(0:63)" name="keyIn(0:63)" />
            <blockpin signalname="keyOut(0:63)" name="keyOut(0:63)" />
            <blockpin signalname="CE" name="CE" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="352" y="272" name="XLXI_1" orien="R0">
        </instance>
        <branch name="keyIn(0:63)">
            <wire x2="336" y1="240" y2="240" x1="192" />
            <wire x2="352" y1="240" y2="240" x1="336" />
        </branch>
        <instance x="832" y="272" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1312" y="272" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1776" y="272" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2240" y="272" name="XLXI_6" orien="R0">
        </instance>
        <instance x="2704" y="272" name="XLXI_7" orien="R0">
        </instance>
        <instance x="352" y="736" name="XLXI_8" orien="R0">
        </instance>
        <instance x="832" y="736" name="XLXI_9" orien="R0">
        </instance>
        <instance x="1312" y="736" name="XLXI_10" orien="R0">
        </instance>
        <instance x="1792" y="736" name="XLXI_12" orien="R0">
        </instance>
        <instance x="2288" y="736" name="XLXI_13" orien="R0">
        </instance>
        <instance x="2800" y="736" name="XLXI_14" orien="R0">
        </instance>
        <instance x="1792" y="1040" name="XLXI_15" orien="R0">
        </instance>
        <instance x="2288" y="1040" name="XLXI_16" orien="R0">
        </instance>
        <iomarker fontsize="28" x="192" y="240" name="keyIn(0:63)" orien="R180" />
        <branch name="XLXN_4(0:63)">
            <wire x2="784" y1="176" y2="176" x1="736" />
            <wire x2="784" y1="176" y2="240" x1="784" />
            <wire x2="832" y1="240" y2="240" x1="784" />
        </branch>
        <branch name="XLXN_5(0:63)">
            <wire x2="1264" y1="176" y2="176" x1="1216" />
            <wire x2="1264" y1="176" y2="240" x1="1264" />
            <wire x2="1312" y1="240" y2="240" x1="1264" />
        </branch>
        <branch name="XLXN_6(0:63)">
            <wire x2="1728" y1="176" y2="176" x1="1696" />
            <wire x2="1728" y1="176" y2="240" x1="1728" />
            <wire x2="1776" y1="240" y2="240" x1="1728" />
        </branch>
        <branch name="XLXN_9(0:63)">
            <wire x2="2192" y1="176" y2="176" x1="2160" />
            <wire x2="2192" y1="176" y2="240" x1="2192" />
            <wire x2="2240" y1="240" y2="240" x1="2192" />
        </branch>
        <branch name="XLXN_10(0:63)">
            <wire x2="2656" y1="176" y2="176" x1="2624" />
            <wire x2="2656" y1="176" y2="240" x1="2656" />
            <wire x2="2704" y1="240" y2="240" x1="2656" />
        </branch>
        <branch name="XLXN_11(0:63)">
            <wire x2="320" y1="432" y2="704" x1="320" />
            <wire x2="352" y1="704" y2="704" x1="320" />
            <wire x2="2768" y1="432" y2="432" x1="320" />
            <wire x2="3168" y1="432" y2="432" x1="2768" />
            <wire x2="3168" y1="176" y2="176" x1="3088" />
            <wire x2="3168" y1="176" y2="432" x1="3168" />
        </branch>
        <branch name="XLXN_13(0:63)">
            <wire x2="784" y1="640" y2="640" x1="736" />
            <wire x2="784" y1="640" y2="704" x1="784" />
            <wire x2="832" y1="704" y2="704" x1="784" />
        </branch>
        <branch name="XLXN_14(0:63)">
            <wire x2="1264" y1="640" y2="640" x1="1216" />
            <wire x2="1264" y1="640" y2="704" x1="1264" />
            <wire x2="1312" y1="704" y2="704" x1="1264" />
        </branch>
        <branch name="XLXN_15(0:63)">
            <wire x2="1744" y1="640" y2="640" x1="1696" />
            <wire x2="1744" y1="640" y2="704" x1="1744" />
            <wire x2="1792" y1="704" y2="704" x1="1744" />
        </branch>
        <branch name="XLXN_16(0:63)">
            <wire x2="2224" y1="640" y2="640" x1="2176" />
            <wire x2="2224" y1="640" y2="704" x1="2224" />
            <wire x2="2288" y1="704" y2="704" x1="2224" />
        </branch>
        <branch name="XLXN_17(0:63)">
            <wire x2="2688" y1="640" y2="640" x1="2672" />
            <wire x2="2736" y1="640" y2="640" x1="2688" />
            <wire x2="2736" y1="640" y2="704" x1="2736" />
            <wire x2="2800" y1="704" y2="704" x1="2736" />
        </branch>
        <branch name="XLXN_21(0:63)">
            <wire x2="2224" y1="944" y2="944" x1="2176" />
            <wire x2="2224" y1="944" y2="1008" x1="2224" />
            <wire x2="2288" y1="1008" y2="1008" x1="2224" />
        </branch>
        <branch name="XLXN_20(0:63)">
            <wire x2="1744" y1="944" y2="944" x1="1696" />
            <wire x2="1744" y1="944" y2="1008" x1="1744" />
            <wire x2="1776" y1="1008" y2="1008" x1="1744" />
            <wire x2="1792" y1="1008" y2="1008" x1="1776" />
        </branch>
        <branch name="XLXN_18(0:63)">
            <wire x2="3264" y1="816" y2="816" x1="1088" />
            <wire x2="1088" y1="816" y2="1008" x1="1088" />
            <wire x2="1296" y1="1008" y2="1008" x1="1088" />
            <wire x2="1312" y1="1008" y2="1008" x1="1296" />
            <wire x2="3200" y1="640" y2="640" x1="3184" />
            <wire x2="3264" y1="640" y2="640" x1="3200" />
            <wire x2="3264" y1="640" y2="816" x1="3264" />
        </branch>
        <instance x="1312" y="1040" name="XLXI_18" orien="R0">
        </instance>
        <iomarker fontsize="28" x="192" y="176" name="Clk_50MHz" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="224" y1="176" y2="176" x1="192" />
            <wire x2="336" y1="176" y2="176" x1="224" />
            <wire x2="352" y1="176" y2="176" x1="336" />
            <wire x2="224" y1="176" y2="368" x1="224" />
            <wire x2="352" y1="368" y2="368" x1="224" />
            <wire x2="816" y1="368" y2="368" x1="352" />
            <wire x2="1296" y1="368" y2="368" x1="816" />
            <wire x2="1760" y1="368" y2="368" x1="1296" />
            <wire x2="2224" y1="368" y2="368" x1="1760" />
            <wire x2="2240" y1="368" y2="368" x1="2224" />
            <wire x2="2688" y1="368" y2="368" x1="2240" />
            <wire x2="2688" y1="368" y2="624" x1="2688" />
            <wire x2="2736" y1="624" y2="624" x1="2688" />
            <wire x2="2768" y1="624" y2="624" x1="2736" />
            <wire x2="2768" y1="624" y2="640" x1="2768" />
            <wire x2="2800" y1="640" y2="640" x1="2768" />
            <wire x2="2768" y1="640" y2="944" x1="2768" />
            <wire x2="2800" y1="944" y2="944" x1="2768" />
            <wire x2="2224" y1="368" y2="416" x1="2224" />
            <wire x2="2272" y1="416" y2="416" x1="2224" />
            <wire x2="2272" y1="416" y2="640" x1="2272" />
            <wire x2="2288" y1="640" y2="640" x1="2272" />
            <wire x2="2272" y1="640" y2="944" x1="2272" />
            <wire x2="2288" y1="944" y2="944" x1="2272" />
            <wire x2="1760" y1="368" y2="640" x1="1760" />
            <wire x2="1792" y1="640" y2="640" x1="1760" />
            <wire x2="1760" y1="640" y2="944" x1="1760" />
            <wire x2="1792" y1="944" y2="944" x1="1760" />
            <wire x2="1296" y1="368" y2="640" x1="1296" />
            <wire x2="1312" y1="640" y2="640" x1="1296" />
            <wire x2="1296" y1="640" y2="944" x1="1296" />
            <wire x2="1312" y1="944" y2="944" x1="1296" />
            <wire x2="816" y1="368" y2="640" x1="816" />
            <wire x2="832" y1="640" y2="640" x1="816" />
            <wire x2="224" y1="368" y2="640" x1="224" />
            <wire x2="352" y1="640" y2="640" x1="224" />
            <wire x2="816" y1="176" y2="368" x1="816" />
            <wire x2="832" y1="176" y2="176" x1="816" />
            <wire x2="1296" y1="176" y2="368" x1="1296" />
            <wire x2="1312" y1="176" y2="176" x1="1296" />
            <wire x2="1760" y1="176" y2="368" x1="1760" />
            <wire x2="1776" y1="176" y2="176" x1="1760" />
            <wire x2="2224" y1="176" y2="368" x1="2224" />
            <wire x2="2240" y1="176" y2="176" x1="2224" />
            <wire x2="2688" y1="176" y2="368" x1="2688" />
            <wire x2="2704" y1="176" y2="176" x1="2688" />
        </branch>
        <instance x="2800" y="1040" name="XLXI_19" orien="R0">
        </instance>
        <branch name="XLXN_56(0:63)">
            <wire x2="2736" y1="944" y2="944" x1="2672" />
            <wire x2="2736" y1="944" y2="1008" x1="2736" />
            <wire x2="2800" y1="1008" y2="1008" x1="2736" />
        </branch>
        <branch name="keyOut(0:63)">
            <wire x2="3200" y1="944" y2="944" x1="3184" />
            <wire x2="3296" y1="944" y2="944" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3296" y="944" name="keyOut(0:63)" orien="R0" />
        <branch name="CE">
            <wire x2="288" y1="304" y2="304" x1="96" />
            <wire x2="336" y1="304" y2="304" x1="288" />
            <wire x2="352" y1="304" y2="304" x1="336" />
            <wire x2="288" y1="304" y2="400" x1="288" />
            <wire x2="800" y1="400" y2="400" x1="288" />
            <wire x2="1280" y1="400" y2="400" x1="800" />
            <wire x2="1744" y1="400" y2="400" x1="1280" />
            <wire x2="2208" y1="400" y2="400" x1="1744" />
            <wire x2="2672" y1="400" y2="400" x1="2208" />
            <wire x2="288" y1="400" y2="768" x1="288" />
            <wire x2="352" y1="768" y2="768" x1="288" />
            <wire x2="288" y1="768" y2="864" x1="288" />
            <wire x2="800" y1="864" y2="864" x1="288" />
            <wire x2="1280" y1="864" y2="864" x1="800" />
            <wire x2="1776" y1="864" y2="864" x1="1280" />
            <wire x2="2240" y1="864" y2="864" x1="1776" />
            <wire x2="2752" y1="864" y2="864" x1="2240" />
            <wire x2="288" y1="864" y2="1072" x1="288" />
            <wire x2="1200" y1="1072" y2="1072" x1="288" />
            <wire x2="1312" y1="1072" y2="1072" x1="1200" />
            <wire x2="1200" y1="1072" y2="1168" x1="1200" />
            <wire x2="1760" y1="1168" y2="1168" x1="1200" />
            <wire x2="2256" y1="1168" y2="1168" x1="1760" />
            <wire x2="2752" y1="1168" y2="1168" x1="2256" />
            <wire x2="800" y1="304" y2="400" x1="800" />
            <wire x2="832" y1="304" y2="304" x1="800" />
            <wire x2="800" y1="768" y2="864" x1="800" />
            <wire x2="832" y1="768" y2="768" x1="800" />
            <wire x2="1280" y1="304" y2="400" x1="1280" />
            <wire x2="1312" y1="304" y2="304" x1="1280" />
            <wire x2="1280" y1="768" y2="864" x1="1280" />
            <wire x2="1312" y1="768" y2="768" x1="1280" />
            <wire x2="1744" y1="304" y2="400" x1="1744" />
            <wire x2="1776" y1="304" y2="304" x1="1744" />
            <wire x2="1760" y1="1072" y2="1168" x1="1760" />
            <wire x2="1792" y1="1072" y2="1072" x1="1760" />
            <wire x2="1776" y1="768" y2="864" x1="1776" />
            <wire x2="1792" y1="768" y2="768" x1="1776" />
            <wire x2="2208" y1="304" y2="400" x1="2208" />
            <wire x2="2240" y1="304" y2="304" x1="2208" />
            <wire x2="2240" y1="768" y2="864" x1="2240" />
            <wire x2="2288" y1="768" y2="768" x1="2240" />
            <wire x2="2256" y1="1072" y2="1168" x1="2256" />
            <wire x2="2288" y1="1072" y2="1072" x1="2256" />
            <wire x2="2672" y1="304" y2="400" x1="2672" />
            <wire x2="2704" y1="304" y2="304" x1="2672" />
            <wire x2="2752" y1="768" y2="864" x1="2752" />
            <wire x2="2800" y1="768" y2="768" x1="2752" />
            <wire x2="2752" y1="1072" y2="1168" x1="2752" />
            <wire x2="2800" y1="1072" y2="1072" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="96" y="304" name="CE" orien="R180" />
    </sheet>
</drawing>