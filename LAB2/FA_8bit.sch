VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL Sum(7:0)
        SIGNAL Cin
        SIGNAL Cout
        SIGNAL Sum(3:0)
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL A(7:4)
        SIGNAL B(7:4)
        SIGNAL Sum(7:4)
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Output Sum(7:0)
        PORT Input Cin
        PORT Output Cout
        BEGIN BLOCKDEF FA_4bit
            TIMESTAMP 2025 1 25 4 23 15
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_4 FA_4bit
            PIN A(3:0) A(3:0)
            PIN B(3:0) B(3:0)
            PIN Cin Cin
            PIN Sum(3:0) Sum(3:0)
            PIN Cout XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_5 FA_4bit
            PIN A(3:0) A(7:4)
            PIN B(3:0) B(7:4)
            PIN Cin XLXN_1
            PIN Sum(3:0) Sum(7:4)
            PIN Cout Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_4 656 960 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1744 960 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1040 928 1744 928
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 400 416 624 416
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 400 512 624 512
        END BRANCH
        BEGIN BRANCH Sum(7:0)
            WIRE 784 416 1008 416
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 560 928 656 928
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2128 928 2224 928
        END BRANCH
        BEGIN BRANCH Sum(3:0)
            WIRE 1040 800 1184 800
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 496 800 656 800
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 496 864 656 864
        END BRANCH
        BEGIN BRANCH A(7:4)
            WIRE 1600 800 1744 800
        END BRANCH
        BEGIN BRANCH B(7:4)
            WIRE 1600 864 1744 864
        END BRANCH
        BEGIN BRANCH Sum(7:4)
            WIRE 2128 800 2256 800
        END BRANCH
        IOMARKER 400 416 A(7:0) R180 28
        IOMARKER 400 512 B(7:0) R180 28
        IOMARKER 1008 416 Sum(7:0) R0 28
        IOMARKER 560 928 Cin R180 28
        IOMARKER 2224 928 Cout R0 28
    END SHEET
END SCHEMATIC
