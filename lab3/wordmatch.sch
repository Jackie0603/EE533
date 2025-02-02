VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL datain(111:0)
        SIGNAL XLXN_2(55:0)
        SIGNAL XLXN_3(55:0)
        SIGNAL XLXN_7(55:0)
        SIGNAL datacomp(55:0)
        SIGNAL wildcard(6:0)
        SIGNAL match
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL datain(87:32)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        PORT Input datain(111:0)
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        PORT Output match
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2025 2 1 4 43 45
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_9 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_10 or8
            PIN I0 XLXN_14
            PIN I1 XLXN_15
            PIN I2 XLXN_16
            PIN I3 XLXN_17
            PIN I4 XLXN_18
            PIN I5 XLXN_19
            PIN I6 XLXN_20
            PIN I7 XLXN_21
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 688 752 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 688 1008 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 688 1264 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 688 1520 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 688 1776 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 688 2032 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 688 2288 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 688 2544 R0
        END INSTANCE
        BEGIN BRANCH datain(111:0)
            WIRE 464 352 704 352
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 240 720 496 720
            WIRE 496 720 512 720
            WIRE 512 720 560 720
            WIRE 560 720 688 720
            WIRE 560 720 560 976
            WIRE 560 976 560 1024
            WIRE 560 1024 560 1232
            WIRE 560 1232 560 1488
            WIRE 560 1488 560 1744
            WIRE 560 1744 560 2000
            WIRE 560 2000 560 2256
            WIRE 560 2256 560 2512
            WIRE 560 2512 688 2512
            WIRE 560 2256 688 2256
            WIRE 560 2000 688 2000
            WIRE 560 1744 688 1744
            WIRE 560 1488 688 1488
            WIRE 560 1232 688 1232
            WIRE 560 976 688 976
        END BRANCH
        BEGIN BRANCH datacomp(55:0)
            WIRE 352 592 416 592
            WIRE 416 592 688 592
            WIRE 416 592 416 848
            WIRE 416 848 656 848
            WIRE 656 848 672 848
            WIRE 672 848 688 848
            WIRE 416 848 416 1104
            WIRE 416 1104 672 1104
            WIRE 672 1104 688 1104
            WIRE 416 1104 416 1360
            WIRE 416 1360 688 1360
            WIRE 416 1360 416 1616
            WIRE 416 1616 688 1616
            WIRE 416 1616 416 1872
            WIRE 416 1872 688 1872
            WIRE 416 1872 416 2128
            WIRE 416 2128 688 2128
            WIRE 416 2128 416 2352
            WIRE 416 2352 416 2368
            WIRE 416 2368 416 2384
            WIRE 416 2384 688 2384
        END BRANCH
        IOMARKER 352 592 datacomp(55:0) R180 28
        IOMARKER 240 720 wildcard(6:0) R180 28
        IOMARKER 464 352 datain(111:0) R180 28
        INSTANCE XLXI_10 1488 1808 R0
        BEGIN BRANCH match
            WIRE 1744 1520 1936 1520
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 1072 2384 1488 2384
            WIRE 1488 1744 1488 2384
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1072 2128 1280 2128
            WIRE 1280 1680 1280 2128
            WIRE 1280 1680 1488 1680
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1072 1872 1264 1872
            WIRE 1264 1616 1264 1872
            WIRE 1264 1616 1488 1616
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1072 1616 1248 1616
            WIRE 1248 1552 1248 1616
            WIRE 1248 1552 1488 1552
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1072 1360 1280 1360
            WIRE 1280 1360 1280 1488
            WIRE 1280 1488 1488 1488
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1072 1104 1296 1104
            WIRE 1296 1104 1296 1424
            WIRE 1296 1424 1488 1424
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1072 848 1312 848
            WIRE 1312 848 1312 1360
            WIRE 1312 1360 1488 1360
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 1072 592 1488 592
            WIRE 1488 592 1488 1296
        END BRANCH
        IOMARKER 1936 1520 match R0 28
        BEGIN BRANCH datain(55:0)
            WIRE 576 656 688 656
            BEGIN DISPLAY 576 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 608 912 672 912
            WIRE 672 912 688 912
            BEGIN DISPLAY 608 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 592 1168 688 1168
            BEGIN DISPLAY 592 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 592 1424 688 1424
            BEGIN DISPLAY 592 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 608 1680 688 1680
            BEGIN DISPLAY 608 1680 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 608 1936 688 1936
            BEGIN DISPLAY 608 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 608 2192 688 2192
            BEGIN DISPLAY 608 2192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 592 2448 688 2448
            BEGIN DISPLAY 592 2448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
