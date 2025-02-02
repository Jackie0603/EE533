VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:0)
        SIGNAL q(71:0)
        SIGNAL XLXN_3
        SIGNAL ce
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL clk
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL clr
        SIGNAL d(71:64)
        SIGNAL d(63:48)
        SIGNAL d(47:32)
        SIGNAL d(31:16)
        SIGNAL d(15:0)
        SIGNAL q(15:0)
        SIGNAL q(31:16)
        SIGNAL q(47:32)
        SIGNAL q(63:48)
        SIGNAL q(71:64)
        PORT Input d(71:0)
        PORT Output q(71:0)
        PORT Input ce
        PORT Input clk
        PORT Input clr
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 768 832 R0
        INSTANCE XLXI_2 768 1280 R0
        INSTANCE XLXI_3 752 1664 R0
        INSTANCE XLXI_4 752 2064 R0
        INSTANCE XLXI_5 752 2448 R0
        BEGIN BRANCH d(71:0)
            WIRE 576 2608 880 2608
        END BRANCH
        BEGIN BRANCH q(71:0)
            WIRE 1184 2624 1504 2624
        END BRANCH
        IOMARKER 576 2608 d(71:0) R180 28
        IOMARKER 1504 2624 q(71:0) R0 28
        BEGIN BRANCH ce
            WIRE 352 640 544 640
            WIRE 544 640 768 640
            WIRE 544 640 544 1088
            WIRE 544 1088 768 1088
            WIRE 544 1088 544 1472
            WIRE 544 1472 752 1472
            WIRE 544 1472 544 1872
            WIRE 544 1872 752 1872
            WIRE 544 1872 544 2256
            WIRE 544 2256 752 2256
        END BRANCH
        BEGIN BRANCH clk
            WIRE 240 2304 240 2320
            WIRE 240 2320 608 2320
            WIRE 608 2320 752 2320
            WIRE 608 704 768 704
            WIRE 608 704 608 1152
            WIRE 608 1152 768 1152
            WIRE 608 1152 608 1536
            WIRE 608 1536 752 1536
            WIRE 608 1536 608 1936
            WIRE 608 1936 752 1936
            WIRE 608 1936 608 2320
        END BRANCH
        BEGIN BRANCH clr
            WIRE 240 2448 256 2448
            WIRE 256 2448 400 2448
            WIRE 400 2448 752 2448
            WIRE 400 800 768 800
            WIRE 400 800 400 1248
            WIRE 400 1248 768 1248
            WIRE 400 1248 400 1632
            WIRE 400 1632 752 1632
            WIRE 400 1632 400 2032
            WIRE 400 2032 752 2032
            WIRE 400 2032 400 2448
            WIRE 752 2416 752 2448
        END BRANCH
        IOMARKER 240 2448 clr R180 28
        IOMARKER 240 2304 clk R270 28
        IOMARKER 352 640 ce R180 28
        BEGIN BRANCH d(71:64)
            WIRE 688 576 768 576
            BEGIN DISPLAY 688 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 704 1024 768 1024
            BEGIN DISPLAY 704 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 688 1408 752 1408
            BEGIN DISPLAY 688 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 688 1808 752 1808
            BEGIN DISPLAY 688 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 688 2192 752 2192
            BEGIN DISPLAY 688 2192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1136 2192 1216 2192
            WIRE 1216 2192 1264 2192
            BEGIN DISPLAY 1216 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1136 1808 1248 1808
            BEGIN DISPLAY 1248 1808 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1136 1408 1232 1408
            BEGIN DISPLAY 1232 1408 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1152 1024 1248 1024
            BEGIN DISPLAY 1248 1024 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1152 576 1248 576
            BEGIN DISPLAY 1248 576 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
