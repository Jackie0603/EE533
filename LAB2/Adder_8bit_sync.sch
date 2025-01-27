VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2(7:0)
        SIGNAL XLXN_3
        SIGNAL XLXN_4(7:0)
        SIGNAL XLXN_5
        SIGNAL XLXN_6(7:0)
        SIGNAL CE
        SIGNAL C
        SIGNAL CLR
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL A(7:0)
        SIGNAL Cin
        SIGNAL Cout
        SIGNAL Sum(7:0)
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL B(7:0)
        PORT Input CE
        PORT Input C
        PORT Input CLR
        PORT Input A(7:0)
        PORT Input Cin
        PORT Output Cout
        PORT Output Sum(7:0)
        PORT Input B(7:0)
        BEGIN BLOCKDEF FA_8bit
            TIMESTAMP 2025 1 25 4 29 19
            RECTANGLE N 64 52 64 76 
            LINE N 64 64 64 64 
            RECTANGLE N 64 116 64 140 
            LINE N 64 128 64 128 
            LINE N 64 192 64 192 
            RECTANGLE N 320 52 320 76 
            LINE N 320 64 320 64 
            LINE N 320 128 320 128 
            RECTANGLE N 64 0 320 192 
        END BLOCKDEF
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
        BEGIN BLOCK XLXI_1 FA_8bit
            PIN A(7:0) XLXN_6(7:0)
            PIN B(7:0) XLXN_2(7:0)
            PIN Cin XLXN_3
            PIN Sum(7:0) XLXN_4(7:0)
            PIN Cout XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_2 fd8ce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D(7:0) A(7:0)
            PIN Q(7:0) XLXN_6(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd8ce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D(7:0) B(7:0)
            PIN Q(7:0) XLXN_2(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd8ce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D(7:0) XLXN_4(7:0)
            PIN Q(7:0) Sum(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 fdce
            PIN C C
            PIN CE CE
            PIN CLR
            PIN D Cin
            PIN Q XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_6 fdce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D XLXN_5
            PIN Q Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1440 1184 R0
        END INSTANCE
        INSTANCE XLXI_2 560 1120 R0
        INSTANCE XLXI_4 2208 1104 R0
        INSTANCE XLXI_5 512 1920 R0
        INSTANCE XLXI_6 2192 1600 R0
        BEGIN BRANCH XLXN_2(7:0)
            WIRE 976 1264 1488 1264
            WIRE 1488 1264 1488 1312
            WIRE 1488 1312 1504 1312
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 896 1664 1504 1664
            WIRE 1504 1376 1504 1664
        END BRANCH
        BEGIN BRANCH XLXN_4(7:0)
            WIRE 1760 1248 1984 1248
            WIRE 1984 848 1984 1248
            WIRE 1984 848 2208 848
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1760 1312 1968 1312
            WIRE 1968 1312 1968 1344
            WIRE 1968 1344 2192 1344
        END BRANCH
        BEGIN BRANCH XLXN_6(7:0)
            WIRE 944 864 1216 864
            WIRE 1216 864 1216 1248
            WIRE 1216 1248 1504 1248
        END BRANCH
        BEGIN BRANCH CE
            WIRE 480 1296 496 1296
            WIRE 496 1296 496 1328
            WIRE 496 1328 592 1328
            WIRE 480 1296 480 1728
            WIRE 480 1728 512 1728
            WIRE 496 752 496 928
            WIRE 496 928 560 928
            WIRE 496 928 496 1296
            WIRE 496 752 1520 752
            WIRE 1264 720 1520 720
            WIRE 1520 720 1616 720
            WIRE 1616 720 1616 896
            WIRE 1616 896 1616 912
            WIRE 1616 912 2208 912
            WIRE 1616 896 1904 896
            WIRE 1904 896 1904 1408
            WIRE 1904 1408 2192 1408
            WIRE 1520 720 1520 752
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 464 1488 592 1488
            WIRE 464 1488 464 2048
            WIRE 464 2048 1296 2048
            WIRE 528 640 528 1088
            WIRE 528 1088 560 1088
            WIRE 528 640 1296 640
            WIRE 1296 640 1296 1920
            WIRE 1296 1920 1536 1920
            WIRE 1536 1920 1536 1936
            WIRE 1536 1936 1536 1952
            WIRE 1536 1936 2192 1936
            WIRE 1296 1920 1296 2048
            WIRE 608 1888 608 1952
            WIRE 608 1952 1536 1952
            WIRE 1232 1920 1296 1920
            WIRE 2112 1216 2112 1760
            WIRE 2112 1760 2192 1760
            WIRE 2192 1760 2192 1936
            WIRE 2112 1216 2208 1216
            WIRE 2192 1568 2192 1760
            WIRE 2208 1072 2208 1216
        END BRANCH
        IOMARKER 1248 1856 C R180 28
        IOMARKER 1232 1920 CLR R180 28
        IOMARKER 1264 720 CE R180 28
        BEGIN BRANCH C
            WIRE 448 1792 512 1792
            WIRE 448 1792 448 1968
            WIRE 448 1968 992 1968
            WIRE 528 1392 592 1392
            WIRE 528 1392 528 1504
            WIRE 528 1504 992 1504
            WIRE 992 1504 992 1792
            WIRE 992 1792 1392 1792
            WIRE 1392 1792 1392 1856
            WIRE 1392 1856 1520 1856
            WIRE 992 1792 992 1968
            WIRE 544 768 544 992
            WIRE 544 992 560 992
            WIRE 544 768 1392 768
            WIRE 1392 768 1392 1792
            WIRE 1248 1856 1392 1856
            WIRE 1520 1472 1520 1856
            WIRE 1520 1472 1808 1472
            WIRE 1808 1472 2192 1472
            WIRE 1808 976 2208 976
            WIRE 1808 976 1808 1472
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 304 864 560 864
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 240 1664 512 1664
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2576 1344 2768 1344
        END BRANCH
        BEGIN BRANCH Sum(7:0)
            WIRE 2592 848 2736 848
        END BRANCH
        IOMARKER 304 864 A(7:0) R180 28
        INSTANCE XLXI_3 592 1520 R0
        BEGIN BRANCH B(7:0)
            WIRE 336 1184 560 1184
            WIRE 560 1184 560 1264
            WIRE 560 1264 592 1264
        END BRANCH
        IOMARKER 336 1184 B(7:0) R180 28
        IOMARKER 240 1664 Cin R180 28
        IOMARKER 2768 1344 Cout R0 28
        IOMARKER 2736 848 Sum(7:0) R0 28
    END SHEET
END SCHEMATIC
