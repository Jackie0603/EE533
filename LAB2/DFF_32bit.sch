VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Q(31:0)
        SIGNAL QQ(31:0)
        SIGNAL CE
        SIGNAL C
        SIGNAL R
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL Q(31:16)
        SIGNAL Q(15:0)
        SIGNAL QQ(15:0)
        SIGNAL QQ(31:16)
        PORT Input Q(31:0)
        PORT Output QQ(31:0)
        PORT Input CE
        PORT Input C
        PORT Input R
        BEGIN BLOCKDEF fd16re
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 320 -268 384 -244 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd16re
            PIN C C
            PIN CE CE
            PIN D(15:0) Q(31:16)
            PIN R R
            PIN Q(15:0) QQ(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16re
            PIN C C
            PIN CE CE
            PIN D(15:0) Q(15:0)
            PIN R R
            PIN Q(15:0) QQ(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 544 1088 R0
        INSTANCE XLXI_2 544 1600 R0
        BEGIN BRANCH Q(31:0)
            WIRE 1552 912 1872 912
        END BRANCH
        BEGIN BRANCH QQ(31:0)
            WIRE 1520 1264 1888 1264
        END BRANCH
        IOMARKER 1552 912 Q(31:0) R180 28
        IOMARKER 1888 1264 QQ(31:0) R0 28
        BEGIN BRANCH CE
            WIRE 192 1120 256 1120
            WIRE 256 1120 432 1120
            WIRE 432 1120 432 1408
            WIRE 432 1408 544 1408
            WIRE 256 896 544 896
            WIRE 256 896 256 1120
        END BRANCH
        BEGIN BRANCH C
            WIRE 208 1216 288 1216
            WIRE 288 1216 448 1216
            WIRE 288 1216 288 1472
            WIRE 288 1472 544 1472
            WIRE 288 960 544 960
            WIRE 288 960 288 1216
        END BRANCH
        BEGIN BRANCH R
            WIRE 224 1312 336 1312
            WIRE 336 1312 448 1312
            WIRE 336 1312 336 1568
            WIRE 336 1568 544 1568
            WIRE 336 1056 544 1056
            WIRE 336 1056 336 1312
        END BRANCH
        IOMARKER 192 1120 CE R180 28
        IOMARKER 208 1216 C R180 28
        IOMARKER 224 1312 R R180 28
        BEGIN BRANCH Q(31:16)
            WIRE 432 832 544 832
        END BRANCH
        BEGIN BRANCH Q(15:0)
            WIRE 528 1248 544 1248
            WIRE 528 1248 528 1344
            WIRE 528 1344 544 1344
        END BRANCH
        BEGIN BRANCH QQ(15:0)
            WIRE 928 1344 1024 1344
        END BRANCH
        BEGIN BRANCH QQ(31:16)
            WIRE 928 832 1040 832
        END BRANCH
    END SHEET
END SCHEMATIC
