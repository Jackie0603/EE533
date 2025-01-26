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
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL Cin
        SIGNAL Sum(7:0)
        SIGNAL A(15:8)
        SIGNAL B(15:8)
        SIGNAL Sum(15:8)
        SIGNAL A(23:16)
        SIGNAL B(23:16)
        SIGNAL Sum(23:16)
        SIGNAL A(31:24)
        SIGNAL B(31:24)
        SIGNAL Sum(31:24)
        SIGNAL Cout
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL Sum(31:0)
        PORT Input Cin
        PORT Output Cout
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output Sum(31:0)
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
        BEGIN BLOCK XLXI_1 FA_8bit
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN Cin Cin
            PIN Sum(7:0) Sum(7:0)
            PIN Cout XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 FA_8bit
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN Cin XLXN_1
            PIN Sum(7:0) Sum(15:8)
            PIN Cout XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_3 FA_8bit
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN Cin XLXN_2
            PIN Sum(7:0) Sum(23:16)
            PIN Cout XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 FA_8bit
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN Cin XLXN_3
            PIN Sum(7:0) Sum(31:24)
            PIN Cout Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 336 640 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1008 640 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1664 640 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 2272 640 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 656 768 864 768
            WIRE 864 768 864 832
            WIRE 864 832 1072 832
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1328 768 1520 768
            WIRE 1520 768 1520 832
            WIRE 1520 832 1728 832
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1984 768 2160 768
            WIRE 2160 768 2160 832
            WIRE 2160 832 2336 832
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 208 704 400 704
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 208 768 400 768
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 208 832 400 832
        END BRANCH
        BEGIN BRANCH Sum(7:0)
            WIRE 656 704 768 704
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 976 704 1072 704
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 976 768 1072 768
        END BRANCH
        BEGIN BRANCH Sum(15:8)
            WIRE 1328 704 1424 704
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 1648 704 1728 704
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 1648 768 1728 768
        END BRANCH
        BEGIN BRANCH Sum(23:16)
            WIRE 1984 704 2112 704
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 2256 704 2336 704
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 2256 768 2336 768
        END BRANCH
        BEGIN BRANCH Sum(31:24)
            WIRE 2592 704 2704 704
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2592 768 2704 768
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 144 368 368 368
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 144 448 368 448
        END BRANCH
        BEGIN BRANCH Sum(31:0)
            WIRE 528 400 752 400
        END BRANCH
        IOMARKER 144 368 A(31:0) R180 28
        IOMARKER 144 448 B(31:0) R180 28
        IOMARKER 752 400 Sum(31:0) R0 28
        IOMARKER 208 832 Cin R180 28
        IOMARKER 2704 768 Cout R0 28
    END SHEET
END SCHEMATIC
