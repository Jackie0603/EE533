VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL ainitial(31:0)
        SIGNAL aafter(31:0)
        SIGNAL ainitial(27:12)
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL ainitial(11:4)
        SIGNAL XLXN_27
        SIGNAL ainitial(3)
        SIGNAL ainitial(2)
        SIGNAL ainitial(1)
        SIGNAL ainitial(0)
        SIGNAL aafter(7)
        SIGNAL aafter(6)
        SIGNAL aafter(5)
        SIGNAL aafter(4)
        SIGNAL aafter(15:8)
        SIGNAL aafter(31:16)
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL XLXN_42
        SIGNAL en
        SIGNAL aafter(3)
        SIGNAL aafter(2)
        SIGNAL aafter(1)
        SIGNAL aafter(0)
        SIGNAL XLXN_49
        SIGNAL XLXN_50
        PORT Input ainitial(31:0)
        PORT Output aafter(31:0)
        PORT Input en
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF bufe16
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 128 -44 224 -20 
            LINE N 0 -32 64 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -64 64 0 
            LINE N 128 -32 64 -64 
            LINE N 64 0 128 -32 
            LINE N 224 -32 128 -32 
            LINE N 96 -96 64 -96 
            LINE N 96 -48 96 -96 
            LINE N 0 -96 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF bufe8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 128 -44 224 -20 
            LINE N 0 -32 64 -32 
            LINE N 0 -96 64 -96 
            LINE N 64 -64 64 0 
            LINE N 128 -32 64 -64 
            LINE N 64 0 128 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 224 -32 128 -32 
            LINE N 96 -96 64 -96 
            LINE N 96 -48 96 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF bufe4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -224 64 -224 
            LINE N 224 -224 128 -224 
            LINE N 96 -288 64 -288 
            LINE N 96 -240 96 -288 
            LINE N 0 -288 64 -288 
            LINE N 64 -64 64 0 
            LINE N 128 -32 64 -64 
            LINE N 64 0 128 -32 
            LINE N 64 -128 64 -64 
            LINE N 128 -96 64 -128 
            LINE N 64 -64 128 -96 
            LINE N 64 -192 64 -128 
            LINE N 128 -160 64 -192 
            LINE N 64 -128 128 -160 
            LINE N 64 -256 64 -192 
            LINE N 128 -224 64 -256 
            LINE N 64 -192 128 -224 
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 0 -96 64 -96 
            LINE N 224 -96 128 -96 
            LINE N 0 -160 64 -160 
            LINE N 224 -160 128 -160 
            LINE N 96 -176 96 -208 
            LINE N 96 -112 96 -144 
            LINE N 96 -48 96 -80 
        END BLOCKDEF
        BEGIN BLOCK XLXI_6 bufe16
            PIN E en
            PIN I(15:0) ainitial(27:12)
            PIN O(15:0) aafter(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_7 bufe8
            PIN E en
            PIN I(7:0) ainitial(11:4)
            PIN O(7:0) aafter(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_8 bufe4
            PIN E en
            PIN I0 ainitial(3)
            PIN I1 ainitial(2)
            PIN I2 ainitial(1)
            PIN I3 ainitial(0)
            PIN O0 aafter(7)
            PIN O1 aafter(6)
            PIN O2 aafter(5)
            PIN O3 aafter(4)
        END BLOCK
        BEGIN BLOCK XLXI_9 gnd
            PIN G aafter(3)
        END BLOCK
        BEGIN BLOCK XLXI_10 gnd
            PIN G aafter(2)
        END BLOCK
        BEGIN BLOCK XLXI_11 gnd
            PIN G aafter(1)
        END BLOCK
        BEGIN BLOCK XLXI_12 gnd
            PIN G aafter(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_6 592 848 R0
        INSTANCE XLXI_7 576 1088 R0
        INSTANCE XLXI_8 576 1456 R0
        BEGIN BRANCH ainitial(31:0)
            WIRE 224 544 528 544
        END BRANCH
        BEGIN BRANCH aafter(31:0)
            WIRE 1248 560 1568 560
        END BRANCH
        BEGIN BRANCH ainitial(27:12)
            WIRE 480 816 592 816
        END BRANCH
        BEGIN BRANCH ainitial(11:4)
            WIRE 496 1056 576 1056
        END BRANCH
        BEGIN BRANCH ainitial(3)
            WIRE 512 1232 576 1232
        END BRANCH
        BEGIN BRANCH ainitial(2)
            WIRE 496 1296 576 1296
        END BRANCH
        BEGIN BRANCH ainitial(1)
            WIRE 512 1360 576 1360
        END BRANCH
        BEGIN BRANCH ainitial(0)
            WIRE 496 1424 576 1424
        END BRANCH
        BEGIN BRANCH aafter(7)
            WIRE 800 1232 864 1232
        END BRANCH
        BEGIN BRANCH aafter(6)
            WIRE 800 1296 864 1296
        END BRANCH
        BEGIN BRANCH aafter(5)
            WIRE 800 1360 848 1360
        END BRANCH
        BEGIN BRANCH aafter(4)
            WIRE 800 1424 896 1424
        END BRANCH
        BEGIN BRANCH aafter(15:8)
            WIRE 800 1056 816 1056
            WIRE 816 1056 896 1056
        END BRANCH
        BEGIN BRANCH aafter(31:16)
            WIRE 816 816 928 816
        END BRANCH
        INSTANCE XLXI_9 1024 1248 R0
        IOMARKER 224 544 ainitial(31:0) R180 28
        IOMARKER 1568 560 aafter(31:0) R0 28
        IOMARKER 240 640 en R180 28
        BEGIN BRANCH en
            WIRE 240 640 304 640
            WIRE 304 640 512 640
            WIRE 512 640 512 688
            WIRE 304 640 304 992
            WIRE 304 992 512 992
            WIRE 512 992 576 992
            WIRE 304 992 304 1168
            WIRE 304 1168 496 1168
            WIRE 496 1168 512 1168
            WIRE 512 1168 576 1168
            WIRE 496 688 496 752
            WIRE 496 752 512 752
            WIRE 512 752 592 752
            WIRE 496 688 512 688
        END BRANCH
        BEGIN BRANCH aafter(3)
            WIRE 1088 1008 1344 1008
            WIRE 1344 1008 1568 1008
            WIRE 1088 1008 1088 1104
            WIRE 1088 1104 1088 1120
        END BRANCH
        BEGIN BRANCH aafter(2)
            WIRE 1200 1104 1200 1120
            WIRE 1200 1104 1344 1104
            WIRE 1344 1104 1344 1120
            WIRE 1344 1120 1568 1120
        END BRANCH
        BEGIN BRANCH aafter(1)
            WIRE 1056 1280 1056 1360
            WIRE 1056 1280 1344 1280
            WIRE 1344 1216 1584 1216
            WIRE 1344 1216 1344 1280
        END BRANCH
        BEGIN BRANCH aafter(0)
            WIRE 1200 1328 1344 1328
            WIRE 1344 1328 1568 1328
            WIRE 1200 1328 1200 1376
        END BRANCH
        INSTANCE XLXI_10 1136 1248 R0
        INSTANCE XLXI_11 992 1488 R0
        INSTANCE XLXI_12 1136 1504 R0
    END SHEET
END SCHEMATIC
