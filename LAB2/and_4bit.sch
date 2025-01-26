VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL O(3:0)
        SIGNAL A(3:2)
        SIGNAL B(3:2)
        SIGNAL A(1:0)
        SIGNAL B(1:0)
        SIGNAL O(1:0)
        SIGNAL O(3:2)
        PORT Input A(3:0)
        PORT Input B(3:0)
        PORT Output O(3:0)
        BEGIN BLOCKDEF and_2bit
            TIMESTAMP 2025 1 25 16 38 32
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and_2bit
            PIN A(1:0) A(3:2)
            PIN B(1:0) B(3:2)
            PIN O(1:0) O(3:2)
        END BLOCK
        BEGIN BLOCK XLXI_2 and_2bit
            PIN A(1:0) A(1:0)
            PIN B(1:0) B(1:0)
            PIN O(1:0) O(1:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 544 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 544 1120 R0
        END INSTANCE
        BEGIN BRANCH A(3:0)
            WIRE 304 304 624 304
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 288 448 592 448
        END BRANCH
        BEGIN BRANCH O(3:0)
            WIRE 784 400 1072 400
        END BRANCH
        BEGIN BRANCH A(3:2)
            WIRE 384 752 544 752
        END BRANCH
        BEGIN BRANCH B(3:2)
            WIRE 384 816 544 816
        END BRANCH
        BEGIN BRANCH A(1:0)
            WIRE 416 1024 544 1024
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 384 1088 416 1088
            WIRE 416 1088 544 1088
        END BRANCH
        BEGIN BRANCH O(1:0)
            WIRE 928 1024 1040 1024
        END BRANCH
        BEGIN BRANCH O(3:2)
            WIRE 928 752 1072 752
        END BRANCH
        IOMARKER 304 304 A(3:0) R180 28
        IOMARKER 288 448 B(3:0) R180 28
        IOMARKER 1072 400 O(3:0) R0 28
    END SHEET
END SCHEMATIC
