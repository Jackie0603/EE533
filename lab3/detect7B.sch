VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL hwregA(63:0)
        SIGNAL pipe1(71:0)
        BEGIN SIGNAL pipe0(71:0)
        END SIGNAL
        SIGNAL ce
        SIGNAL clk
        SIGNAL XLXN_8
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL XLXN_11(111:0)
        SIGNAL hwregA(62:56)
        SIGNAL hwregA(55:0)
        SIGNAL mrst
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL match_en
        SIGNAL match
        PORT Input hwregA(63:0)
        PORT Input pipe1(71:0)
        PORT Input ce
        PORT Input clk
        PORT Input mrst
        PORT Input match_en
        PORT Output match
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2025 2 1 5 28 32
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2025 2 1 4 45 1
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2025 2 1 5 28 19
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 reg9B
            PIN d(71:0) pipe1(71:0)
            PIN ce ce
            PIN clk clk
            PIN clr XLXN_19
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_11(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 wordmatch
            PIN datain(111:0) XLXN_11(111:0)
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN match XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_5 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_20
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_6 fdce
            PIN C clk
            PIN CE XLXN_17
            PIN CLR XLXN_19
            PIN D XLXN_17
            PIN Q match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 544 896 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 528 1472 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1184 1408 R0
        END INSTANCE
        INSTANCE XLXI_4 1632 1824 R0
        INSTANCE XLXI_5 1824 1360 R0
        INSTANCE XLXI_6 2256 1488 R0
        BEGIN BRANCH hwregA(63:0)
            WIRE 320 448 624 448
        END BRANCH
        BEGIN BRANCH pipe1(71:0)
            WIRE 320 672 544 672
        END BRANCH
        BEGIN BRANCH pipe0(71:0)
            WIRE 928 672 1136 672
            BEGIN DISPLAY 1136 672 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 416 736 544 736
        END BRANCH
        BEGIN BRANCH clk
            WIRE 384 800 480 800
            WIRE 480 800 528 800
            WIRE 528 800 544 800
            WIRE 480 800 480 960
            WIRE 480 960 1632 960
            WIRE 1632 960 1632 1360
            WIRE 1632 1360 2256 1360
            WIRE 480 960 480 1696
            WIRE 480 1696 1424 1696
            WIRE 1424 1696 1632 1696
        END BRANCH
        BEGIN BRANCH pipe0(47:0)
            WIRE 288 1376 528 1376
            BEGIN DISPLAY 288 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 192 1440 528 1440
            BEGIN DISPLAY 192 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_11(111:0)
            WIRE 912 1376 1040 1376
            WIRE 1040 1248 1040 1376
            WIRE 1040 1248 1184 1248
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 1168 1376 1184 1376
            WIRE 1168 1376 1168 1584
            BEGIN DISPLAY 1168 1584 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1056 1312 1184 1312
            WIRE 1056 1312 1056 1568
            BEGIN DISPLAY 1056 1568 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH mrst
            WIRE 1504 1568 1632 1568
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 2080 1232 2112 1232
            WIRE 2112 1232 2256 1232
            WIRE 2112 1232 2112 1296
            WIRE 2112 1296 2256 1296
        END BRANCH
        IOMARKER 320 448 hwregA(63:0) R180 28
        IOMARKER 320 672 pipe1(71:0) R180 28
        IOMARKER 384 800 clk R180 28
        IOMARKER 416 736 ce R180 28
        BEGIN BRANCH XLXN_19
            WIRE 416 864 544 864
            WIRE 416 864 416 1824
            WIRE 416 1824 2256 1824
            WIRE 2016 1568 2256 1568
            WIRE 2256 1568 2256 1824
            WIRE 2256 1456 2256 1568
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1568 1248 1696 1248
            WIRE 1696 1168 1696 1248
            WIRE 1696 1168 1824 1168
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1808 992 1808 1232
            WIRE 1808 1232 1824 1232
        END BRANCH
        IOMARKER 1808 992 match_en R270 28
        BEGIN BRANCH match
            WIRE 1776 1296 1824 1296
            WIRE 1776 1296 1776 1472
            WIRE 1776 1472 2672 1472
            WIRE 2640 1232 2672 1232
            WIRE 2672 1232 2768 1232
            WIRE 2672 1232 2672 1472
        END BRANCH
        IOMARKER 1504 1568 mrst R180 28
        IOMARKER 2768 1232 match R0 28
    END SHEET
END SCHEMATIC
