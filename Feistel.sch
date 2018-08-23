<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="rightIn(0:31)" />
        <signal name="XLXN_4(0:47)" />
        <signal name="keyIn(0:47)" />
        <signal name="XLXN_6(0:47)" />
        <signal name="XLXN_7(0:31)" />
        <signal name="XLXN_9(0:31)" />
        <signal name="leftIn(0:31)" />
        <signal name="rightOut(0:31)" />
        <port polarity="Input" name="rightIn(0:31)" />
        <port polarity="Input" name="keyIn(0:47)" />
        <port polarity="Input" name="leftIn(0:31)" />
        <port polarity="Output" name="rightOut(0:31)" />
        <blockdef name="expP">
            <timestamp>2018-6-29T21:49:4</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="xor48">
            <timestamp>2018-6-29T21:52:32</timestamp>
            <rect width="320" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
        </blockdef>
        <blockdef name="sboxes">
            <timestamp>2018-6-29T21:57:56</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="pblockP">
            <timestamp>2018-6-29T21:49:9</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="xorLR">
            <timestamp>2018-6-29T21:52:40</timestamp>
            <rect width="336" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
        </blockdef>
        <block symbolname="expP" name="XLXI_2">
            <blockpin signalname="rightIn(0:31)" name="myinput(0:31)" />
            <blockpin signalname="XLXN_4(0:47)" name="myoutput(0:47)" />
        </block>
        <block symbolname="xor48" name="XLXI_3">
            <blockpin signalname="XLXN_4(0:47)" name="myinput(0:47)" />
            <blockpin signalname="keyIn(0:47)" name="key(0:47)" />
            <blockpin signalname="XLXN_6(0:47)" name="myoutput(0:47)" />
        </block>
        <block symbolname="sboxes" name="XLXI_4">
            <blockpin signalname="XLXN_6(0:47)" name="myinput(0:47)" />
            <blockpin signalname="XLXN_7(0:31)" name="myoutput(0:31)" />
        </block>
        <block symbolname="pblockP" name="XLXI_5">
            <blockpin signalname="XLXN_7(0:31)" name="myinput(0:31)" />
            <blockpin signalname="XLXN_9(0:31)" name="myoutput(0:31)" />
        </block>
        <block symbolname="xorLR" name="XLXI_7">
            <blockpin signalname="leftIn(0:31)" name="leftinput(0:31)" />
            <blockpin signalname="XLXN_9(0:31)" name="rightinput(0:31)" />
            <blockpin signalname="rightOut(0:31)" name="rightoutput(0:31)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="rightIn(0:31)">
            <wire x2="304" y1="320" y2="320" x1="240" />
            <wire x2="320" y1="320" y2="320" x1="304" />
        </branch>
        <instance x="320" y="352" name="XLXI_2" orien="R0">
        </instance>
        <instance x="848" y="416" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_4(0:47)">
            <wire x2="848" y1="320" y2="320" x1="768" />
        </branch>
        <branch name="keyIn(0:47)">
            <wire x2="832" y1="384" y2="384" x1="224" />
            <wire x2="848" y1="384" y2="384" x1="832" />
        </branch>
        <instance x="1376" y="352" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_6(0:47)">
            <wire x2="1376" y1="320" y2="320" x1="1296" />
        </branch>
        <instance x="1904" y="352" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_7(0:31)">
            <wire x2="1904" y1="320" y2="320" x1="1824" />
        </branch>
        <branch name="XLXN_9(0:31)">
            <wire x2="2432" y1="320" y2="320" x1="2352" />
        </branch>
        <instance x="2432" y="352" name="XLXI_7" orien="R0">
        </instance>
        <branch name="leftIn(0:31)">
            <wire x2="2384" y1="448" y2="448" x1="224" />
            <wire x2="2416" y1="256" y2="256" x1="2384" />
            <wire x2="2432" y1="256" y2="256" x1="2416" />
            <wire x2="2384" y1="256" y2="384" x1="2384" />
            <wire x2="2384" y1="384" y2="448" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="224" y="448" name="leftIn(0:31)" orien="R180" />
        <iomarker fontsize="28" x="224" y="384" name="keyIn(0:47)" orien="R180" />
        <iomarker fontsize="28" x="240" y="320" name="rightIn(0:31)" orien="R180" />
        <branch name="rightOut(0:31)">
            <wire x2="2912" y1="256" y2="256" x1="2896" />
            <wire x2="2960" y1="256" y2="256" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2960" y="256" name="rightOut(0:31)" orien="R0" />
    </sheet>
</drawing>