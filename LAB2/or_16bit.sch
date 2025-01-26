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
        SIGNAL O(15:8)
        SIGNAL O(7:0)
        SIGNAL A(15:8)
        SIGNAL B(15:8)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        PORT Input A(15:0)
        PORT Input B(15:0)
        PORT Output O(15:0)
        BEGIN BLOCKDEF or_8bit
            TIMESTAMP 2025 1 25 17 11 0
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 or_8bit
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN O(7:0) O(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_2 or_8bit
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN O(7:0) O(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 272 800 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 272 992 R0
        END INSTANCE
        BEGIN BRANCH A(15:0)
            WIRE 192 272 496 272
        END BRANCH
        BEGIN BRANCH B(15:0)
            WIRE 192 416 512 416
        END BRANCH
        BEGIN BRANCH O(15:0)
            WIRE 688 352 720 352
            WIRE 720 352 736 352
            WIRE 736 352 896 352
        END BRANCH
        BEGIN BRANCH O(15:8)
            WIRE 656 704 832 704
        END BRANCH
        BEGIN BRANCH O(7:0)
            WIRE 656 896 784 896
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 160 704 272 704
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 144 768 272 768
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 160 896 272 896
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 160 960 272 960
        END BRANCH
        IOMARKER 192 272 A(15:0) R180 28
        IOMARKER 192 416 B(15:0) R180 28
        IOMARKER 896 352 O(15:0) R0 28
    END SHEET
END SCHEMATIC
