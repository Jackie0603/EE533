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
        SIGNAL O(3:2)
        SIGNAL A(1:0)
        SIGNAL B(1:0)
        SIGNAL O(1:0)
        PORT Input A(3:0)
        PORT Input B(3:0)
        PORT Output O(3:0)
        BEGIN BLOCKDEF or_2bit
            TIMESTAMP 2025 1 25 16 59 16
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 or_2bit
            PIN A(1:0) A(3:2)
            PIN B(1:0) B(3:2)
            PIN O(1:0) O(3:2)
        END BLOCK
        BEGIN BLOCK XLXI_2 or_2bit
            PIN A(1:0) A(1:0)
            PIN B(1:0) B(1:0)
            PIN O(1:0) O(1:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 352 752 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 352 976 R0
        END INSTANCE
        BEGIN BRANCH A(3:0)
            WIRE 192 256 432 256
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 208 368 464 368
        END BRANCH
        BEGIN BRANCH O(3:0)
            WIRE 688 320 976 320
        END BRANCH
        IOMARKER 208 368 B(3:0) R180 28
        IOMARKER 192 256 A(3:0) R180 28
        IOMARKER 976 320 O(3:0) R0 28
        BEGIN BRANCH A(3:2)
            WIRE 256 656 352 656
        END BRANCH
        BEGIN BRANCH B(3:2)
            WIRE 240 720 352 720
        END BRANCH
        BEGIN BRANCH O(3:2)
            WIRE 736 656 864 656
        END BRANCH
        BEGIN BRANCH A(1:0)
            WIRE 256 880 336 880
            WIRE 336 880 352 880
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 240 944 352 944
        END BRANCH
        BEGIN BRANCH O(1:0)
            WIRE 736 880 864 880
        END BRANCH
    END SHEET
END SCHEMATIC
