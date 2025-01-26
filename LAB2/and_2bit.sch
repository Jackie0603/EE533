VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(1:0)
        SIGNAL B(1:0)
        SIGNAL O(1:0)
        SIGNAL A(1)
        SIGNAL B(1)
        SIGNAL O(1)
        SIGNAL O(0)
        SIGNAL A(0)
        SIGNAL B(0)
        PORT Input A(1:0)
        PORT Input B(1:0)
        PORT Output O(1:0)
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2
            PIN I0 B(1)
            PIN I1 A(1)
            PIN O O(1)
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B(0)
            PIN I1 A(0)
            PIN O O(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 544 912 R0
        INSTANCE XLXI_2 544 1104 R0
        BEGIN BRANCH A(1:0)
            WIRE 208 432 496 432
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 208 512 496 512
        END BRANCH
        BEGIN BRANCH O(1:0)
            WIRE 672 464 912 464
        END BRANCH
        IOMARKER 208 432 A(1:0) R180 28
        IOMARKER 208 512 B(1:0) R180 28
        IOMARKER 912 464 O(1:0) R0 28
        BEGIN BRANCH A(1)
            WIRE 480 784 544 784
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 480 848 544 848
        END BRANCH
        BEGIN BRANCH O(1)
            WIRE 800 816 848 816
        END BRANCH
        BEGIN BRANCH O(0)
            WIRE 800 1008 848 1008
            WIRE 848 1008 896 1008
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 480 976 528 976
            WIRE 528 976 544 976
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 480 1040 544 1040
        END BRANCH
    END SHEET
END SCHEMATIC
