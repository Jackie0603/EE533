VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A
        SIGNAL B
        SIGNAL Cin
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL Sum
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL Cout
        PORT Input A
        PORT Input B
        PORT Input Cin
        PORT Output Sum
        PORT Output Cout
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF and3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF or4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 192 -160 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -208 48 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and3b2
            PIN I0 Cin
            PIN I1 B
            PIN I2 A
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_2 and3b2
            PIN I0 Cin
            PIN I1 A
            PIN I2 B
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_3 and3b2
            PIN I0 B
            PIN I1 A
            PIN I2 Cin
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_4 and3
            PIN I0 Cin
            PIN I1 A
            PIN I2 B
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_5 or4
            PIN I0 XLXN_16
            PIN I1 XLXN_15
            PIN I2 XLXN_14
            PIN I3 XLXN_13
            PIN O Sum
        END BLOCK
        BEGIN BLOCK XLXI_6 or3
            PIN I0 XLXN_25
            PIN I1 XLXN_24
            PIN I2 XLXN_23
            PIN O Cout
        END BLOCK
        BEGIN BLOCK XLXI_7 and2
            PIN I0 A
            PIN I1 B
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_8 and2
            PIN I0 Cin
            PIN I1 B
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_9 and2
            PIN I0 Cin
            PIN I1 A
            PIN O XLXN_25
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 544 800 R0
        INSTANCE XLXI_2 528 1120 R0
        INSTANCE XLXI_3 528 1392 R0
        INSTANCE XLXI_4 528 1696 R0
        BEGIN BRANCH A
            WIRE 336 608 416 608
            WIRE 416 608 544 608
            WIRE 416 608 416 992
            WIRE 416 992 528 992
            WIRE 416 992 416 1264
            WIRE 416 1264 528 1264
            WIRE 416 1264 416 1568
            WIRE 416 1568 528 1568
            WIRE 416 1568 416 1808
            WIRE 416 1808 512 1808
            WIRE 416 1808 416 2112
            WIRE 416 2112 512 2112
        END BRANCH
        IOMARKER 336 608 A R180 28
        BEGIN BRANCH B
            WIRE 336 672 480 672
            WIRE 480 672 544 672
            WIRE 480 672 480 928
            WIRE 480 928 528 928
            WIRE 480 928 480 1328
            WIRE 480 1328 528 1328
            WIRE 480 1328 480 1504
            WIRE 480 1504 512 1504
            WIRE 512 1504 528 1504
            WIRE 480 1504 480 1728
            WIRE 480 1728 480 1744
            WIRE 480 1744 512 1744
            WIRE 480 1744 480 1936
            WIRE 480 1936 512 1936
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 336 736 368 736
            WIRE 368 736 544 736
            WIRE 368 736 368 1056
            WIRE 368 1056 528 1056
            WIRE 368 1056 368 1200
            WIRE 368 1200 528 1200
            WIRE 368 1200 368 1632
            WIRE 368 1632 528 1632
            WIRE 368 1632 368 2000
            WIRE 368 2000 368 2176
            WIRE 368 2176 512 2176
            WIRE 368 2000 512 2000
        END BRANCH
        IOMARKER 336 672 B R180 28
        IOMARKER 336 736 Cin R180 28
        INSTANCE XLXI_5 1168 1280 R0
        BEGIN BRANCH XLXN_13
            WIRE 800 672 1168 672
            WIRE 1168 672 1168 1024
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 784 992 976 992
            WIRE 976 992 976 1088
            WIRE 976 1088 1168 1088
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 784 1264 976 1264
            WIRE 976 1152 976 1264
            WIRE 976 1152 1168 1152
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 784 1568 1168 1568
            WIRE 1168 1216 1168 1568
        END BRANCH
        BEGIN BRANCH Sum
            WIRE 1424 1120 1792 1120
        END BRANCH
        IOMARKER 1792 1120 Sum R0 28
        INSTANCE XLXI_7 512 1872 R0
        INSTANCE XLXI_8 512 2064 R0
        INSTANCE XLXI_9 512 2240 R0
        BEGIN BRANCH XLXN_23
            WIRE 768 1776 1168 1776
            WIRE 1168 1776 1168 1904
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 768 2144 1168 2144
            WIRE 1168 2032 1168 2144
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 768 1968 1168 1968
        END BRANCH
        INSTANCE XLXI_6 1168 2096 R0
        BEGIN BRANCH Cout
            WIRE 1424 1968 1760 1968
        END BRANCH
        IOMARKER 1760 1968 Cout R0 28
    END SHEET
END SCHEMATIC
