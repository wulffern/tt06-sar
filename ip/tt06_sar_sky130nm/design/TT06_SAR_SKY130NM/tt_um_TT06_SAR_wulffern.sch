v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {8-bit successive approximation register analog-to-digital-converter} 70 -1030 0 0 0.8 0.8 {}
T {Power decoupling} 360 -700 0 0 0.4 0.4 {}
T {# Signal interface
uio_out[0]  : When the output DFFs sample SAR output. If it does not come, then clock is too fast
uo_out[7:0] : Digital output. Two's complement
ui_in[0]    : Enable ADC. Useful to measure current consumption  
clk         : Clock, ~ 4 MHz} 70 -960 0 0 0.4 0.4 {}
T {Output capture} 680 -610 0 0 0.4 0.4 {}
T {SAR core} 1190 -590 0 0 0.4 0.4 {}
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
N 1360 -920 1400 -920 {
lab=uio_out[7:1]}
N 1360 -820 1410 -820 {
lab=uio_oe[7:1]}
N 1270 -820 1300 -820 {
lab=TIE_L2}
N 1270 -920 1300 -920 {
lab=TIE_L1}
N 1190 -820 1210 -820 {
lab=TIE_L}
N 1190 -920 1190 -820 {
lab=TIE_L}
N 1190 -920 1210 -920 {
lab=TIE_L}
N 130 -690 340 -690 {
lab=VPWR}
N 340 -690 340 -670 {
lab=VPWR}
N 340 -610 340 -90 {
lab=VGND}
N 120 -90 340 -90 {
lab=VGND}
N 590 -780 630 -780 {
lab=VPWR}
N 630 -780 650 -780 {
lab=VPWR}
N 650 -780 650 -760 {
lab=VPWR}
N 650 -780 750 -780 {
lab=VPWR}
N 750 -780 1010 -780 {
lab=VPWR}
N 750 -700 1010 -700 {
lab=VGND}
N 650 -700 750 -700 {
lab=VGND}
N 650 -720 650 -700 {
lab=VGND}
N 930 -740 970 -740 {
lab=DONE}
N 1050 -740 1090 -740 {
lab=uio_out[0]}
N 790 -740 830 -740 {
lab=uio_oe[0]}
N 230 -520 230 -510 {
lab=clk}
N 130 -520 230 -520 {
lab=clk}
N 940 -160 940 -120 {
lab=VGND}
N 940 -250 940 -220 {
lab=CK_SAMPLE_BSSW}
N 940 -250 1090 -250 {
lab=CK_SAMPLE_BSSW}
N 230 -450 230 -410 {
lab=VGND}
N 240 -200 240 -160 {
lab=VGND}
N 240 -300 240 -260 {
lab=#net1}
C {devices/ipin.sym} 130 -690 0 0 {name=p1 lab=VPWR}
C {devices/ipin.sym} 120 -90 0 0 {name=p2 lab=VGND}
C {devices/ipin.sym} 130 -240 0 0 {name=p3 lab=ui_in[7:0]}
C {devices/opin.sym} 1510 -660 0 0 {name=p4 lab=uo_out[7:0]}
C {devices/ipin.sym} 1700 -880 0 0 {name=p5 lab=uio_in[7:0]}
C {devices/opin.sym} 1500 -920 0 0 {name=p6 lab=uio_out[7:0]}
C {devices/opin.sym} 1500 -820 0 0 {name=p7 lab=uio_oe[7:0]}
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
C {sky130_fd_pr/res_generic_m4.sym} 1330 -820 1 0 {name=R1[7:1]
W=0.3
L=0.3
model=res_generic_m4
mult=1}
C {sky130_fd_pr/res_generic_m4.sym} 1330 -920 1 0 {name=R2[7:1]
W=0.3
L=0.3
model=res_generic_m4
mult=1}
C {devices/lab_wire.sym} 600 -80 0 0 {name=p55 sig_type=std_logic lab=TIE_L}
C {sky130_fd_pr/res_generic_m4.sym} 1240 -920 1 0 {name=R3
W=0.3
L=0.3
model=res_generic_m4
mult=1}
C {sky130_fd_pr/res_generic_m4.sym} 1240 -820 1 0 {name=R4
W=0.3
L=0.3
model=res_generic_m4
mult=1}
C {devices/lab_wire.sym} 1190 -865 0 0 {name=p56 sig_type=std_logic lab=TIE_L}
C {devices/lab_wire.sym} 1290 -920 0 0 {name=p57 sig_type=std_logic lab=TIE_L1}
C {devices/lab_wire.sym} 1295 -820 0 0 {name=p58 sig_type=std_logic lab=TIE_L2}
C {sky130_fd_pr/cap_mim_m3_1.sym} 340 -640 0 0 {name=C2[8:0] model=cap_mim_m3_1 W=18 L=18 MF=1 spiceprefix=X}
C {SUN_TR_SKY130NM/SUNTR_BFX1_CV.sym} 970 -740 0 0 {name=x3 }
C {SUN_TR_SKY130NM/SUNTR_TIEH_CV.sym} 750 -700 0 0 {name=x4 }
C {SUN_TR_SKY130NM/SUNTR_TAPCELLB_CV.sym} 650 -740 0 0 {name=x5 }
C {devices/lab_wire.sym} 590 -780 0 0 {name=p59 sig_type=std_logic lab=VPWR}
C {devices/lab_wire.sym} 930 -740 0 0 {name=p60 sig_type=std_logic lab=DONE}
C {devices/lab_wire.sym} 1400 -920 0 0 {name=p61 sig_type=std_logic lab=uio_out[7:1]}
C {devices/lab_wire.sym} 1410 -820 0 0 {name=p62 sig_type=std_logic lab=uio_oe[7:1]}
C {devices/lab_wire.sym} 830 -740 0 0 {name=p63 sig_type=std_logic lab=uio_oe[0]}
C {devices/lab_wire.sym} 1090 -740 0 0 {name=p64 sig_type=std_logic lab=uio_out[0]}
C {devices/lab_wire.sym} 930 -700 0 0 {name=p65 sig_type=std_logic lab=VGND
}
C {sky130_fd_pr/diode.sym} 940 -190 0 0 {name=D1
model=diode_pw2nd_05v5
area=2.025e11
pj=1.8e6
}
C {devices/lab_wire.sym} 940 -120 0 1 {name=p66 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/diode.sym} 230 -480 0 0 {name=D2
model=diode_pw2nd_05v5
area=2.025e11
pj=1.8e6
}
C {devices/lab_wire.sym} 230 -410 0 1 {name=p67 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/diode.sym} 240 -230 0 0 {name=D3
model=diode_pw2nd_05v5
area=2.025e11
pj=1.8e6
}
C {devices/lab_wire.sym} 240 -160 0 1 {name=p68 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 240 -300 0 1 {name=p69 sig_type=std_logic lab=ui_in[0]}
