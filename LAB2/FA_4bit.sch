VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Cout0_1
        SIGNAL Cout1_2
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL Sum(3:0)
        SIGNAL A(1)
        SIGNAL Cin
        SIGNAL A(0)
        SIGNAL B(0)
        SIGNAL Sum(0)
        SIGNAL Cout2_3
        SIGNAL Cout
        SIGNAL B(1)
        SIGNAL Sum(1)
        SIGNAL A(2)
        SIGNAL B(2)
        SIGNAL Sum(2)
        SIGNAL A(3)
        SIGNAL B(3)
        SIGNAL Sum(3)
        PORT Input A(3:0)
        PORT Input B(3:0)
        PORT Output Sum(3:0)
        PORT Input Cin
        PORT Output Cout
        BEGIN BLOCKDEF FA_Sch
            TIMESTAMP 2025 1 24 20 32 31
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 FA_Sch
            PIN A A(1)
            PIN B B(1)
            PIN Cin Cout0_1
            PIN Sum Sum(1)
            PIN Cout Cout1_2
        END BLOCK
        BEGIN BLOCK XLXI_1 FA_Sch
            PIN A A(0)
            PIN B B(0)
            PIN Cin Cin
            PIN Sum Sum(0)
            PIN Cout Cout0_1
        END BLOCK
        BEGIN BLOCK XLXI_3 FA_Sch
            PIN A A(2)
            PIN B B(2)
            PIN Cin Cout1_2
            PIN Sum Sum(2)
            PIN Cout Cout2_3
        END BLOCK
        BEGIN BLOCK XLXI_4 FA_Sch
            PIN A A(3)
            PIN B B(3)
            PIN Cin Cout2_3
            PIN Sum Sum(3)
            PIN Cout Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 1072 672 R0
        END INSTANCE
        BEGIN BRANCH Cout0_1
            WIRE 864 640 1056 640
            WIRE 1056 640 1072 640
        END BRANCH
        BEGIN BRANCH Cout1_2
            WIRE 1456 640 1472 640
            WIRE 1472 640 1632 640
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 272 176 512 176
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 272 240 512 240
        END BRANCH
        IOMARKER 272 176 A(3:0) R180 28
        IOMARKER 272 240 B(3:0) R180 28
        BEGIN BRANCH Sum(3:0)
            WIRE 672 176 960 176
        END BRANCH
        IOMARKER 960 176 Sum(3:0) R0 28
        BEGIN BRANCH A(1)
            WIRE 1024 512 1072 512
        END BRANCH
        BEGIN INSTANCE XLXI_1 480 672 R0
        END INSTANCE
        BEGIN BRANCH Cin
            WIRE 448 640 464 640
            WIRE 464 640 480 640
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 416 512 480 512
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 416 576 480 576
        END BRANCH
        BEGIN BRANCH Sum(0)
            WIRE 864 512 912 512
        END BRANCH
        IOMARKER 448 640 Cin R180 28
        BEGIN INSTANCE XLXI_3 1632 672 R0
        END INSTANCE
        BEGIN BRANCH Cout2_3
            WIRE 2016 640 2032 640
            WIRE 2032 640 2304 640
        END BRANCH
        BEGIN INSTANCE XLXI_4 2304 672 R0
        END INSTANCE
        BEGIN BRANCH Cout
            WIRE 2688 640 2720 640
        END BRANCH
        IOMARKER 2720 640 Cout R0 28
        BEGIN BRANCH B(1)
            WIRE 1024 576 1072 576
        END BRANCH
        BEGIN BRANCH Sum(1)
            WIRE 1456 512 1504 512
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 1584 512 1632 512
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 1584 576 1632 576
        END BRANCH
        BEGIN BRANCH Sum(2)
            WIRE 2016 512 2112 512
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 2256 512 2304 512
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 2256 576 2304 576
        END BRANCH
        BEGIN BRANCH Sum(3)
            WIRE 2688 512 2768 512
        END BRANCH
    END SHEET
END SCHEMATIC
