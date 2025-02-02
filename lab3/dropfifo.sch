VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL firstword
        SIGNAL XLXN_2
        SIGNAL fifowrite
        SIGNAL clk
        SIGNAL drop_pkt
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL lastword
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14(7:0)
        SIGNAL XLXN_16(7:0)
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL fiforead
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_24
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL rst
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL XLXN_39
        SIGNAL waddr(7:0)
        SIGNAL XLXN_41(7:0)
        SIGNAL XLXN_42(7:0)
        SIGNAL XLXN_43(7:0)
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL in_fifo0(71:0)
        SIGNAL in_fifo(71:0)
        SIGNAL XLXN_51
        SIGNAL valid_data
        SIGNAL XLXN_53(7:0)
        SIGNAL XLXN_54(7:0)
        SIGNAL XLXN_55
        SIGNAL XLXN_56(7:0)
        SIGNAL raddr(7:0)
        SIGNAL out_fifo(71:0)
        PORT Input firstword
        PORT Input fifowrite
        PORT Input clk
        PORT Input drop_pkt
        PORT Input lastword
        PORT Input fiforead
        PORT Input rst
        PORT Input in_fifo(71:0)
        PORT Output valid_data
        PORT Output out_fifo(71:0)
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
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
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2025 2 1 5 28 32
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2025 2 1 4 30 43
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ram72
            TIMESTAMP 2025 2 1 7 32 33
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_4 or2
            PIN I0 XLXN_12
            PIN I1 XLXN_2
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_5 and2b1
            PIN I0 XLXN_33
            PIN I1 XLXN_13
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_6 reg9B
            PIN d(71:0) in_fifo(71:0)
            PIN ce XLXN_51
            PIN clk clk
            PIN clr rst
            PIN q(71:0) in_fifo0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 fd8ce
            PIN C clk
            PIN CE XLXN_44
            PIN CLR rst
            PIN D(7:0) waddr(7:0)
            PIN Q(7:0) XLXN_16(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 cb8cle
            PIN C clk
            PIN CE XLXN_45
            PIN CLR rst
            PIN D(7:0) XLXN_16(7:0)
            PIN L XLXN_33
            PIN CEO
            PIN Q(7:0) waddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_10 cb8ce
            PIN C clk
            PIN CE XLXN_20
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) raddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_12 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_11 comp8
            PIN A(7:0) raddr(7:0)
            PIN B(7:0) XLXN_16(7:0)
            PIN EQ XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_8 comp8
            PIN A(7:0) waddr(7:0)
            PIN B(7:0) raddr(7:0)
            PIN EQ XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_15 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_20
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_17 ram72
            PIN addra(7:0) waddr(7:0)
            PIN dina(71:0) in_fifo0(71:0)
            PIN wea XLXN_45
            PIN clka clk
            PIN addrb(7:0) raddr(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_18 and3b2
            PIN I0 XLXN_18
            PIN I1 XLXN_17
            PIN I2 fiforead
            PIN O XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_19 vcc
            PIN P XLXN_51
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 464 688 R0
        INSTANCE XLXI_2 1120 688 R0
        INSTANCE XLXI_3 464 1072 R0
        INSTANCE XLXI_4 1008 944 R0
        INSTANCE XLXI_5 1424 1056 R0
        BEGIN INSTANCE XLXI_6 2272 656 R0
        END INSTANCE
        INSTANCE XLXI_7 448 1520 R0
        INSTANCE XLXI_9 1824 1552 R0
        INSTANCE XLXI_10 1808 1952 R0
        INSTANCE XLXI_12 240 2736 R0
        BEGIN INSTANCE XLXI_11 896 2448 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 896 1968 R0
        END INSTANCE
        INSTANCE XLXI_15 1776 2432 R0
        BEGIN INSTANCE XLXI_17 2544 1264 R0
        END INSTANCE
        BEGIN BRANCH firstword
            WIRE 352 432 464 432
        END BRANCH
        IOMARKER 352 432 firstword R180 28
        BEGIN BRANCH XLXN_2
            WIRE 848 432 928 432
            WIRE 928 432 928 816
            WIRE 928 816 1008 816
        END BRANCH
        BEGIN BRANCH fifowrite
            WIRE 1040 368 1104 368
            WIRE 1104 368 1104 432
            WIRE 1104 432 1120 432
        END BRANCH
        IOMARKER 1040 368 fifowrite R180 28
        BEGIN BRANCH drop_pkt
            WIRE 160 2480 224 2480
            WIRE 224 2480 240 2480
        END BRANCH
        IOMARKER 112 2608 clk R180 28
        IOMARKER 160 2480 drop_pkt R180 28
        BEGIN BRANCH lastword
            WIRE 368 816 464 816
        END BRANCH
        IOMARKER 368 816 lastword R180 28
        BEGIN BRANCH XLXN_12
            WIRE 848 816 912 816
            WIRE 912 816 912 880
            WIRE 912 880 1008 880
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1264 848 1344 848
            WIRE 1344 848 1344 928
            WIRE 1344 928 1424 928
        END BRANCH
        BEGIN BRANCH XLXN_16(7:0)
            WIRE 832 1264 1328 1264
            WIRE 1328 1264 1328 2448
            WIRE 832 2320 896 2320
            WIRE 832 2320 832 2448
            WIRE 832 2448 1328 2448
            WIRE 1328 1168 1824 1168
            WIRE 1328 1168 1328 1248
            WIRE 1328 1248 1328 1264
        END BRANCH
        INSTANCE XLXI_18 1408 1872 R0
        BEGIN BRANCH XLXN_17
            WIRE 1280 1744 1408 1744
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1280 2224 1344 2224
            WIRE 1344 1808 1344 2224
            WIRE 1344 1808 1408 1808
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1168 1392 1408 1392
            WIRE 1408 1392 1408 1680
        END BRANCH
        IOMARKER 1168 1392 fiforead R180 28
        BEGIN BRANCH XLXN_20
            WIRE 1664 1744 1728 1744
            WIRE 1728 1744 1728 1760
            WIRE 1728 1760 1808 1760
            WIRE 1728 1760 1728 2176
            WIRE 1728 2176 1744 2176
            WIRE 1744 2176 1776 2176
        END BRANCH
        BEGIN BRANCH clk
            WIRE 112 2608 192 2608
            WIRE 192 2608 240 2608
            WIRE 192 560 464 560
            WIRE 192 560 192 688
            WIRE 192 688 192 944
            WIRE 192 944 464 944
            WIRE 192 944 192 1136
            WIRE 192 1136 192 1392
            WIRE 192 1392 448 1392
            WIRE 192 1392 192 1824
            WIRE 192 1824 192 2608
            WIRE 192 1136 1664 1136
            WIRE 1664 1136 1664 1424
            WIRE 1664 1424 1664 1440
            WIRE 1664 1440 1680 1440
            WIRE 1680 1440 1680 1552
            WIRE 1680 1552 1680 1824
            WIRE 1680 1824 1808 1824
            WIRE 1680 1824 1680 1840
            WIRE 1680 1840 1680 2304
            WIRE 1680 2304 1776 2304
            WIRE 1680 1552 2368 1552
            WIRE 2368 1552 2384 1552
            WIRE 2384 1552 2384 1728
            WIRE 2384 1728 2544 1728
            WIRE 1664 1424 1824 1424
            WIRE 1664 1136 1744 1136
            WIRE 192 688 912 688
            WIRE 912 560 912 688
            WIRE 912 560 1120 560
            WIRE 1744 560 2272 560
            WIRE 1744 560 1744 976
            WIRE 1744 976 1744 1136
            WIRE 2384 1504 2544 1504
            WIRE 2384 1504 2384 1552
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 624 2480 1120 2480
            WIRE 1120 2480 1120 2496
            WIRE 1120 2496 1632 2496
            WIRE 1360 992 1424 992
            WIRE 1360 992 1360 1072
            WIRE 1360 1072 1424 1072
            WIRE 1424 1072 1424 1296
            WIRE 1424 1296 1632 1296
            WIRE 1632 1296 1824 1296
            WIRE 1376 1296 1376 1936
            WIRE 1376 1936 1632 1936
            WIRE 1632 1936 1632 2496
            WIRE 1376 1296 1424 1296
        END BRANCH
        BEGIN BRANCH rst
            WIRE 448 1488 448 1552
            WIRE 448 1552 848 1552
            WIRE 848 1424 848 1552
            WIRE 848 1424 1296 1424
            WIRE 1296 1424 1632 1424
            WIRE 1632 1424 1632 1520
            WIRE 1632 1520 1808 1520
            WIRE 1808 1520 1824 1520
            WIRE 1296 1424 1296 1920
            WIRE 1296 1920 1632 1920
            WIRE 1632 1920 1808 1920
            WIRE 1296 1920 1296 2400
            WIRE 1296 2400 1776 2400
            WIRE 1520 1520 1632 1520
            WIRE 1808 624 2272 624
            WIRE 1808 624 1808 1520
        END BRANCH
        IOMARKER 1520 1520 rst R180 28
        BEGIN BRANCH waddr(7:0)
            WIRE 400 1264 448 1264
            WIRE 400 1264 400 1648
            WIRE 400 1648 880 1648
            WIRE 880 1648 896 1648
            WIRE 880 1056 880 1648
            WIRE 880 1056 2272 1056
            WIRE 2272 1056 2272 1168
            WIRE 2272 1168 2272 1312
            WIRE 2272 1312 2544 1312
            WIRE 2208 1168 2272 1168
            BEGIN DISPLAY 2272 1168 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 368 1152 368 1328
            WIRE 368 1328 448 1328
            WIRE 368 1152 1728 1152
            WIRE 1680 960 1728 960
            WIRE 1728 960 1728 1152
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 1504 432 1696 432
            WIRE 1696 432 1696 1360
            WIRE 1696 1360 1824 1360
            WIRE 1696 1360 1696 1584
            WIRE 1696 1584 2272 1584
            WIRE 2272 1376 2272 1584
            WIRE 2272 1376 2544 1376
        END BRANCH
        BEGIN BRANCH in_fifo0(71:0)
            WIRE 2400 960 2640 960
            WIRE 2640 960 2768 960
            WIRE 2400 960 2400 1344
            WIRE 2400 1344 2544 1344
            WIRE 2656 432 2704 432
            WIRE 2704 432 2768 432
            WIRE 2768 432 2768 960
            BEGIN DISPLAY 2704 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 2160 432 2272 432
        END BRANCH
        IOMARKER 2160 432 in_fifo(71:0) R180 28
        BEGIN BRANCH XLXN_51
            WIRE 1840 304 1840 496
            WIRE 1840 496 2272 496
        END BRANCH
        INSTANCE XLXI_19 1776 304 R0
        BEGIN BRANCH valid_data
            WIRE 2160 2176 2336 2176
        END BRANCH
        IOMARKER 2336 2176 valid_data R0 28
        BEGIN BRANCH raddr(7:0)
            WIRE 688 1840 896 1840
            WIRE 688 1840 688 1968
            WIRE 688 1968 2304 1968
            WIRE 688 1968 688 2128
            WIRE 688 2128 896 2128
            WIRE 2192 1696 2240 1696
            WIRE 2240 1696 2304 1696
            WIRE 2304 1696 2304 1968
            WIRE 2304 1536 2544 1536
            WIRE 2304 1536 2304 1696
            BEGIN DISPLAY 2240 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH out_fifo(71:0)
            WIRE 2832 1536 3072 1536
        END BRANCH
        IOMARKER 3072 1536 out_fifo(71:0) R0 28
    END SHEET
END SCHEMATIC
