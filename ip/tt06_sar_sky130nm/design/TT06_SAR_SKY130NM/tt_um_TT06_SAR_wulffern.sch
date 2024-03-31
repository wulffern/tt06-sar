v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {8-bit successive approximation register analog-to-digital-converter} 170 -830 0 0 0.8 0.8 {}
T {Unused Ports} 1510 -1030 0 0 0.4 0.4 {}
T {Power decoupling} 360 -700 0 0 0.4 0.4 {}
N 1090 -550 1130 -550 {
lab=ua[1]}
N 1090 -530 1130 -530 {
lab=ua[0]}
N 600 -460 640 -460 {
lab=D<7>}
N 600 -440 640 -440 {
lab=D<6>}
N 600 -420 640 -420 {
lab=D<5>}
N 600 -400 640 -400 {
lab=D<4>}
N 600 -380 640 -380 {
lab=D<3>}
N 600 -360 640 -360 {
lab=D<2>}
N 600 -340 640 -340 {
lab=D<1>}
N 600 -320 640 -320 {
lab=D<0>}
N 600 -480 640 -480 {
lab=EN}
N 600 -500 640 -500 {
lab=CK_SAMPLE_BSSW}
N 600 -520 640 -520 {
lab=CK_SAMPLE}
N 600 -540 640 -540 {
lab=ui_in[0]}
N 600 -560 640 -560 {
lab=clk}
N 600 -300 640 -300 {
lab=uo_out[7]}
N 600 -280 640 -280 {
lab=uo_out[6]}
N 600 -260 640 -260 {
lab=uo_out[5]}
N 600 -240 640 -240 {
lab=uo_out[4]}
N 600 -220 640 -220 {
lab=uo_out[3]}
N 600 -200 640 -200 {
lab=uo_out[2]}
N 600 -180 640 -180 {
lab=uo_out[1]}
N 600 -160 640 -160 {
lab=uo_out[0]}
N 600 -140 640 -140 {
lab=DONE}
N 600 -120 640 -120 {
lab=VPWR}
N 600 -100 640 -100 {
lab=VGND}
N 1090 -450 1130 -450 {
lab=D<7>}
N 1090 -430 1130 -430 {
lab=D<6>}
N 1090 -410 1130 -410 {
lab=D<5>}
N 1090 -390 1130 -390 {
lab=D<4>}
N 1090 -370 1130 -370 {
lab=D<3>}
N 1090 -350 1130 -350 {
lab=D<2>}
N 1090 -330 1130 -330 {
lab=D<1>}
N 1090 -310 1130 -310 {
lab=D<0>}
N 1090 -470 1130 -470 {
lab=DONE}
N 1090 -290 1130 -290 {
lab=EN}
N 1090 -250 1130 -250 {
lab=CK_SAMPLE_BSSW}
N 1090 -270 1130 -270 {
lab=CK_SAMPLE}
N 1090 -230 1130 -230 {
lab=VPWR}
N 1090 -210 1130 -210 {
lab=VPWR}
N 1090 -190 1130 -190 {
lab=VGND}
N 1090 -510 1130 -510 {
lab=SARN}
N 1090 -490 1130 -490 {
lab=SARP}
N 600 -80 640 -80 {
lab=TIE_L}
N 1200 -1030 1240 -1030 {
lab=uio_out[7:1]}
N 1200 -930 1250 -930 {
lab=uio_oe[7:1]}
N 1110 -930 1140 -930 {
lab=TIE_L2}
N 1110 -1030 1140 -1030 {
lab=TIE_L1}
N 1030 -930 1050 -930 {
lab=TIE_L}
N 1030 -1030 1030 -930 {
lab=TIE_L}
N 1030 -1030 1050 -1030 {
lab=TIE_L}
N 130 -690 340 -690 {
lab=VPWR}
N 340 -690 340 -670 {
lab=VPWR}
N 340 -610 340 -90 {
lab=VGND}
N 120 -90 340 -90 {
lab=VGND}
N 420 -1020 460 -1020 {
lab=VPWR}
N 460 -1020 480 -1020 {
lab=VPWR}
N 480 -1020 480 -1000 {
lab=VPWR}
N 480 -1020 580 -1020 {
lab=VPWR}
N 580 -1020 840 -1020 {
lab=VPWR}
N 580 -940 840 -940 {
lab=DONE}
N 480 -940 580 -940 {
lab=DONE}
N 480 -960 480 -940 {
lab=DONE}
N 760 -980 800 -980 {
lab=DONE}
N 880 -980 920 -980 {
lab=uio_out[0]}
N 620 -980 660 -980 {
lab=uio_oe[0]}
C {devices/ipin.sym} 130 -690 0 0 {name=p1 lab=VPWR}
C {devices/ipin.sym} 120 -90 0 0 {name=p2 lab=VGND}
C {devices/ipin.sym} 130 -240 0 0 {name=p3 lab=ui_in[7:0]}
C {devices/opin.sym} 1510 -660 0 0 {name=p4 lab=uo_out[7:0]}
C {devices/ipin.sym} 1540 -990 0 0 {name=p5 lab=uio_in[7:0]}
C {devices/opin.sym} 1340 -1030 0 0 {name=p6 lab=uio_out[7:0]}
C {devices/opin.sym} 1340 -930 0 0 {name=p7 lab=uio_oe[7:0]}
C {devices/iopin.sym} 130 -600 2 0 {name=p8 lab=ua[7:0]}
C {devices/ipin.sym} 130 -560 0 0 {name=p9 lab=ena}
C {devices/ipin.sym} 130 -520 0 0 {name=p10 lab=clk}
C {devices/ipin.sym} 130 -480 0 0 {name=p11 lab=rst_n}
C {SUN_SAR9B_SKY130NM/SUNSAR_SAR8B_CV.sym} 1150 -550 0 0 {name=x1 }
C {devices/lab_wire.sym} 600 -460 0 0 {name=p12 sig_type=std_logic lab=D<7>}
C {devices/lab_wire.sym} 600 -440 0 0 {name=p13 sig_type=std_logic lab=D<6>}
C {devices/lab_wire.sym} 600 -420 0 0 {name=p14 sig_type=std_logic lab=D<5>}
C {devices/lab_wire.sym} 600 -400 0 0 {name=p15 sig_type=std_logic lab=D<4>}
C {devices/lab_wire.sym} 600 -380 0 0 {name=p16 sig_type=std_logic lab=D<3>}
C {devices/lab_wire.sym} 600 -360 0 0 {name=p17 sig_type=std_logic lab=D<2>}
C {devices/lab_wire.sym} 600 -340 0 0 {name=p18 sig_type=std_logic lab=D<1>}
C {devices/lab_wire.sym} 600 -320 0 0 {name=p19 sig_type=std_logic lab=D<0>}
C {devices/lab_wire.sym} 600 -480 0 0 {name=p20 sig_type=std_logic lab=EN}
C {devices/lab_wire.sym} 600 -500 0 0 {name=p21 sig_type=std_logic lab=CK_SAMPLE_BSSW}
C {devices/lab_wire.sym} 600 -520 0 0 {name=p22 sig_type=std_logic lab=CK_SAMPLE}
C {devices/lab_wire.sym} 600 -540 0 0 {name=p23 sig_type=std_logic lab=ui_in[0]}
C {devices/lab_wire.sym} 600 -560 0 0 {name=p24 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 600 -300 0 0 {name=p25 sig_type=std_logic lab=uo_out[7]}
C {devices/lab_wire.sym} 600 -280 0 0 {name=p26 sig_type=std_logic lab=uo_out[6]}
C {devices/lab_wire.sym} 600 -260 0 0 {name=p27 sig_type=std_logic lab=uo_out[5]}
C {devices/lab_wire.sym} 600 -240 0 0 {name=p28 sig_type=std_logic lab=uo_out[4]}
C {devices/lab_wire.sym} 600 -220 0 0 {name=p29 sig_type=std_logic lab=uo_out[3]}
C {devices/lab_wire.sym} 600 -200 0 0 {name=p30 sig_type=std_logic lab=uo_out[2]}
C {devices/lab_wire.sym} 600 -180 0 0 {name=p31 sig_type=std_logic lab=uo_out[1]}
C {devices/lab_wire.sym} 600 -160 0 0 {name=p32 sig_type=std_logic lab=uo_out[0]}
C {devices/lab_wire.sym} 600 -140 0 0 {name=p33 sig_type=std_logic lab=DONE}
C {devices/lab_wire.sym} 600 -120 0 0 {name=p34 sig_type=std_logic lab=VPWR}
C {devices/lab_wire.sym} 600 -100 0 0 {name=p35 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 1090 -450 0 0 {name=p36 sig_type=std_logic lab=D<7>}
C {devices/lab_wire.sym} 1090 -430 0 0 {name=p37 sig_type=std_logic lab=D<6>}
C {devices/lab_wire.sym} 1090 -410 0 0 {name=p38 sig_type=std_logic lab=D<5>}
C {devices/lab_wire.sym} 1090 -390 0 0 {name=p39 sig_type=std_logic lab=D<4>}
C {devices/lab_wire.sym} 1090 -370 0 0 {name=p40 sig_type=std_logic lab=D<3>}
C {devices/lab_wire.sym} 1090 -350 0 0 {name=p41 sig_type=std_logic lab=D<2>}
C {devices/lab_wire.sym} 1090 -330 0 0 {name=p42 sig_type=std_logic lab=D<1>}
C {devices/lab_wire.sym} 1090 -310 0 0 {name=p43 sig_type=std_logic lab=D<0>}
C {devices/lab_wire.sym} 1090 -470 0 0 {name=p44 sig_type=std_logic lab=DONE}
C {devices/lab_wire.sym} 1090 -290 0 0 {name=p45 sig_type=std_logic lab=EN}
C {devices/lab_wire.sym} 1090 -250 0 0 {name=p46 sig_type=std_logic lab=CK_SAMPLE_BSSW}
C {devices/lab_wire.sym} 1090 -270 0 0 {name=p47 sig_type=std_logic lab=CK_SAMPLE}
C {devices/lab_wire.sym} 1090 -230 0 0 {name=p48 sig_type=std_logic lab=VPWR}
C {devices/lab_wire.sym} 1090 -210 0 0 {name=p49 sig_type=std_logic lab=VPWR}
C {devices/lab_wire.sym} 1090 -190 0 0 {name=p50 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 1090 -550 0 0 {name=p51 sig_type=std_logic lab=ua[1]}
C {devices/lab_wire.sym} 1090 -530 0 0 {name=p52 sig_type=std_logic lab=ua[0]}
C {cborder/border_s.sym} 1260 -160 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"
name=C1[8:0]}
C {devices/lab_wire.sym} 1090 -510 0 0 {name=p53 sig_type=std_logic lab=SARN}
C {devices/lab_wire.sym} 1090 -490 0 0 {name=p54 sig_type=std_logic lab=SARP}
C {SUN_SAR9B_SKY130NM/SUNSAR_CAPT8B_CV.sym} 660 -560 0 0 {name=x2 }
C {sky130_fd_pr/res_generic_m4.sym} 1170 -930 1 0 {name=R1[7:1]
W=0.3
L=0.3
model=res_generic_m4
mult=1}
C {sky130_fd_pr/res_generic_m4.sym} 1170 -1030 1 0 {name=R2[7:1]
W=0.3
L=0.3
model=res_generic_m4
mult=1}
C {devices/lab_wire.sym} 600 -80 0 0 {name=p55 sig_type=std_logic lab=TIE_L}
C {sky130_fd_pr/res_generic_m4.sym} 1080 -1030 1 0 {name=R3
W=0.3
L=0.3
model=res_generic_m4
mult=1}
C {sky130_fd_pr/res_generic_m4.sym} 1080 -930 1 0 {name=R4
W=0.3
L=0.3
model=res_generic_m4
mult=1}
C {devices/lab_wire.sym} 1030 -975 0 0 {name=p56 sig_type=std_logic lab=TIE_L}
C {devices/lab_wire.sym} 1130 -1030 0 0 {name=p57 sig_type=std_logic lab=TIE_L1}
C {devices/lab_wire.sym} 1135 -930 0 0 {name=p58 sig_type=std_logic lab=TIE_L2}
C {sky130_fd_pr/cap_mim_m3_1.sym} 340 -640 0 0 {name=C2[8:0] model=cap_mim_m3_1 W=18 L=18 MF=1 spiceprefix=X}
C {SUN_TR_SKY130NM/SUNTR_BFX1_CV.sym} 800 -980 0 0 {name=x3 }
C {SUN_TR_SKY130NM/SUNTR_TIEH_CV.sym} 580 -940 0 0 {name=x4 }
C {SUN_TR_SKY130NM/SUNTR_TAPCELLB_CV.sym} 480 -980 0 0 {name=x5 }
C {devices/lab_wire.sym} 420 -1020 0 0 {name=p59 sig_type=std_logic lab=VPWR}
C {devices/lab_wire.sym} 760 -980 0 0 {name=p60 sig_type=std_logic lab=DONE}
C {devices/lab_wire.sym} 1240 -1030 0 0 {name=p61 sig_type=std_logic lab=uio_out[7:1]}
C {devices/lab_wire.sym} 1250 -930 0 0 {name=p62 sig_type=std_logic lab=uio_oe[7:1]}
C {devices/lab_wire.sym} 660 -980 0 0 {name=p63 sig_type=std_logic lab=uio_oe[0]}
C {devices/lab_wire.sym} 920 -980 0 0 {name=p64 sig_type=std_logic lab=uio_out[0]}
C {devices/lab_wire.sym} 760 -940 0 0 {name=p65 sig_type=std_logic lab=VGND
}
