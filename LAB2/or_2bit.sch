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
        SIGNAL A(0)
        SIGNAL B(0)
        SIGNAL O(0)
        PORT Input A(1:0)
        PORT Input B(1:0)
        PORT Output O(1:0)
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 or2
            PIN I0 B(1)
            PIN I1 A(1)
            PIN O O(1)
        END BLOCK
        BEGIN BLOCK XLXI_2 or2
            PIN I0 B(0)
            PIN I1 A(0)
            PIN O O(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 432 848 R0
        INSTANCE XLXI_2 432 1056 R0
        BEGIN BRANCH A(1:0)
            WIRE 256 512 464 512
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 256 592 448 592
        END BRANCH
        BEGIN BRANCH O(1:0)
            WIRE 560 560 576 560
            WIRE 576 560 704 560
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 304 720 432 720
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 304 784 432 784
        END BRANCH
        BEGIN BRANCH O(1)
            WIRE 688 752 800 752
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 304 928 432 928
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 304 992 432 992
        END BRANCH
        BEGIN BRANCH O(0)
            WIRE 688 960 832 960
        END BRANCH
        IOMARKER 256 512 A(1:0) R180 28
        IOMARKER 256 592 B(1:0) R180 28
        IOMARKER 704 560 O(1:0) R0 28
    END SHEET
END SCHEMATIC
