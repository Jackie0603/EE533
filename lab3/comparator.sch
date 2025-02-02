VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
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
        SIGNAL amask(6)
        SIGNAL amask(5)
        SIGNAL amask(4)
        SIGNAL amask(3)
        SIGNAL amask(2)
        SIGNAL amask(1)
        SIGNAL amask(0)
        SIGNAL a(55:48)
        SIGNAL b(55:48)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL XLXN_30
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        SIGNAL match
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Input amask(6:0)
        PORT Output match
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2025 2 1 4 30 43
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_5 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_6 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_8 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_1
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_9 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_2
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_10 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_3
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_11 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_4
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_7
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_13 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_5
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_6
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_15 and7
            PIN I0 XLXN_14
            PIN I1 XLXN_13
            PIN I2 XLXN_12
            PIN I3 XLXN_11
            PIN I4 XLXN_10
            PIN I5 XLXN_9
            PIN I6 XLXN_8
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 480 944 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 480 1344 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 480 1728 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 480 2128 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1408 944 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1408 1360 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1408 1744 R0
        END INSTANCE
        INSTANCE XLXI_8 976 848 R0
        INSTANCE XLXI_9 960 1248 R0
        INSTANCE XLXI_10 960 1632 R0
        INSTANCE XLXI_11 960 2032 R0
        INSTANCE XLXI_12 2032 1264 R0
        INSTANCE XLXI_13 2032 1648 R0
        INSTANCE XLXI_14 2032 848 R0
        INSTANCE XLXI_15 2640 1520 R0
        BEGIN BRANCH XLXN_1
            WIRE 864 720 976 720
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 864 1120 960 1120
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 864 1504 960 1504
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 864 1904 960 1904
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1792 1520 2032 1520
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1792 720 2032 720
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1792 1136 2032 1136
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1232 752 1312 752
            WIRE 1312 448 1312 752
            WIRE 1312 448 2640 448
            WIRE 2640 448 2640 1072
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1216 1152 1296 1152
            WIRE 1296 1152 1296 1312
            WIRE 1296 1312 2352 1312
            WIRE 2352 1136 2352 1312
            WIRE 2352 1136 2640 1136
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1216 1536 1264 1536
            WIRE 1264 1328 1264 1536
            WIRE 1264 1328 2368 1328
            WIRE 2368 1200 2368 1328
            WIRE 2368 1200 2640 1200
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1216 1936 1920 1936
            WIRE 1920 1264 1920 1936
            WIRE 1920 1264 2640 1264
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 2288 752 2464 752
            WIRE 2464 752 2464 1328
            WIRE 2464 1328 2640 1328
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 2288 1168 2448 1168
            WIRE 2448 1168 2448 1392
            WIRE 2448 1392 2640 1392
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 2288 1552 2640 1552
            WIRE 2640 1456 2640 1552
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 896 784 976 784
            BEGIN DISPLAY 896 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 880 1184 896 1184
            WIRE 896 1184 960 1184
            BEGIN DISPLAY 896 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 880 1568 912 1568
            WIRE 912 1568 960 1568
            BEGIN DISPLAY 912 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 880 1968 896 1968
            WIRE 896 1968 960 1968
            BEGIN DISPLAY 896 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 1872 784 1936 784
            WIRE 1936 784 2032 784
            BEGIN DISPLAY 1936 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 1856 1200 1904 1200
            WIRE 1904 1200 2032 1200
            BEGIN DISPLAY 1904 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 1840 1584 1936 1584
            WIRE 1936 1584 2032 1584
            BEGIN DISPLAY 1936 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(55:48)
            WIRE 240 624 320 624
            WIRE 320 624 480 624
            BEGIN DISPLAY 320 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 240 816 304 816
            WIRE 304 816 480 816
            BEGIN DISPLAY 304 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 272 1024 320 1024
            WIRE 320 1024 336 1024
            WIRE 336 1024 480 1024
            BEGIN DISPLAY 336 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 272 1216 320 1216
            WIRE 320 1216 480 1216
            BEGIN DISPLAY 320 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 256 1408 304 1408
            WIRE 304 1408 480 1408
            BEGIN DISPLAY 304 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 256 1600 304 1600
            WIRE 304 1600 464 1600
            WIRE 464 1600 480 1600
            BEGIN DISPLAY 304 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 288 1808 320 1808
            WIRE 320 1808 480 1808
            BEGIN DISPLAY 320 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 272 2000 320 2000
            WIRE 320 2000 448 2000
            WIRE 448 2000 464 2000
            WIRE 464 2000 480 2000
            BEGIN DISPLAY 320 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1328 624 1392 624
            WIRE 1392 624 1408 624
            BEGIN DISPLAY 1328 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1328 816 1408 816
            BEGIN DISPLAY 1328 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1312 1040 1392 1040
            WIRE 1392 1040 1408 1040
            BEGIN DISPLAY 1312 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1328 1232 1408 1232
            BEGIN DISPLAY 1328 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1328 1424 1408 1424
            BEGIN DISPLAY 1328 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1312 1616 1392 1616
            WIRE 1392 1616 1408 1616
            BEGIN DISPLAY 1312 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(55:0)
            WIRE 256 192 592 192
        END BRANCH
        BEGIN BRANCH b(55:0)
            WIRE 256 304 592 304
        END BRANCH
        IOMARKER 256 192 a(55:0) R180 28
        IOMARKER 256 304 b(55:0) R180 28
        IOMARKER 1136 256 amask(6:0) R0 28
        BEGIN BRANCH amask(6:0)
            WIRE 784 256 1136 256
        END BRANCH
        BEGIN BRANCH match
            WIRE 2896 1264 2992 1264
        END BRANCH
        IOMARKER 2992 1264 match R0 28
    END SHEET
END SCHEMATIC
