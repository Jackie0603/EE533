VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL O(7:0)
        SIGNAL A(7:4)
        SIGNAL B(7:4)
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL O(3:0)
        SIGNAL O(7:4)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        PORT Output O(7:0)
        PORT Input A(7:0)
        PORT Input B(7:0)
        BEGIN BLOCKDEF or_4bit
            TIMESTAMP 2025 1 25 17 5 30
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 or_4bit
            PIN A(3:0) A(7:4)
            PIN B(3:0) B(7:4)
            PIN O(3:0) O(7:4)
        END BLOCK
        BEGIN BLOCK XLXI_2 or_4bit
            PIN A(3:0) A(3:0)
            PIN B(3:0) B(3:0)
            PIN O(3:0) O(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 304 752 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 320 1024 R0
        END INSTANCE
        BEGIN BRANCH O(7:0)
            WIRE 672 384 880 384
        END BRANCH
        BEGIN BRANCH A(7:4)
            WIRE 192 656 304 656
        END BRANCH
        BEGIN BRANCH B(7:4)
            WIRE 192 720 304 720
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 208 928 320 928
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 208 992 320 992
        END BRANCH
        BEGIN BRANCH O(3:0)
            WIRE 704 928 800 928
        END BRANCH
        BEGIN BRANCH O(7:4)
            WIRE 688 656 800 656
        END BRANCH
        IOMARKER 880 384 O(7:0) R0 28
        BEGIN BRANCH A(7:0)
            WIRE 224 288 448 288
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 208 416 224 416
            WIRE 224 416 400 416
        END BRANCH
        IOMARKER 224 288 A(7:0) R180 28
        IOMARKER 208 416 B(7:0) R180 28
    END SHEET
END SCHEMATIC
