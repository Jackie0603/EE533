VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(15:0)
        SIGNAL B(15:0)
        SIGNAL O(15:0)
        SIGNAL A(15:8)
        SIGNAL B(15:8)
        SIGNAL O(7:0)
        SIGNAL O(15:8)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        PORT Input A(15:0)
        PORT Input B(15:0)
        PORT Output O(15:0)
        BEGIN BLOCKDEF and_8bit
            TIMESTAMP 2025 1 25 16 47 28
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and_8bit
            PIN B(7:0) A(15:8)
            PIN A(7:0) B(15:8)
            PIN O(7:0) O(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_2 and_8bit
            PIN B(7:0) A(7:0)
            PIN A(7:0) B(7:0)
            PIN O(7:0) O(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 512 800 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 512 1040 R0
        END INSTANCE
        BEGIN BRANCH A(15:0)
            WIRE 288 480 496 480
        END BRANCH
        BEGIN BRANCH B(15:0)
            WIRE 288 528 512 528
        END BRANCH
        BEGIN BRANCH O(15:0)
            WIRE 672 512 912 512
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 384 704 512 704
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 400 768 512 768
        END BRANCH
        BEGIN BRANCH O(7:0)
            WIRE 896 944 992 944
        END BRANCH
        BEGIN BRANCH O(15:8)
            WIRE 896 704 992 704
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 416 944 512 944
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 416 1008 512 1008
        END BRANCH
        IOMARKER 288 480 A(15:0) R180 28
        IOMARKER 288 528 B(15:0) R180 28
        IOMARKER 912 512 O(15:0) R0 28
    END SHEET
END SCHEMATIC
