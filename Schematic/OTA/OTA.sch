v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {gm/id M1,M2=8
gm/id M0,M5,M6=4
gm/id M3,M4=7.5
gm/id M7=20} 30 -420 0 0 0.4 0.4 {}
T {NAMO VADAKKUMNATHAN} 500 -720 0 0 0.5 0.5 {}
T {Nithin P
https://www.linkedin.com/in/nithin-purushothama-70664727b/} 330 -670 0 0 0.4 0.4 {}
N 540 -160 700 -160 {
lab=#net1}
N 500 -130 500 -100 {
lab=GND}
N 500 -100 740 -100 {
lab=GND}
N 740 -130 740 -100 {
lab=GND}
N 500 -320 500 -190 {
lab=#net1}
N 740 -320 740 -190 {
lab=Vdiff}
N 500 -430 500 -380 {
lab=#net2}
N 500 -430 740 -430 {
lab=#net2}
N 740 -430 740 -380 {
lab=#net2}
N 600 -240 600 -160 {
lab=#net1}
N 500 -240 600 -240 {
lab=#net1}
N 780 -350 820 -350 {
lab=plus}
N 420 -350 460 -350 {
lab=minus}
N 620 -500 620 -430 {
lab=#net2}
N 330 -530 580 -530 {
lab=#net3}
N 290 -600 290 -560 {
lab=VDD}
N 290 -600 620 -600 {
lab=VDD}
N 620 -600 620 -560 {
lab=VDD}
N 290 -460 360 -460 {
lab=#net3}
N 360 -530 360 -460 {
lab=#net3}
N 740 -100 1030 -100 {
lab=GND}
N 820 -160 990 -160 {
lab=Vdiff}
N 820 -240 820 -160 {
lab=Vdiff}
N 740 -270 820 -270 {
lab=Vdiff}
N 580 -530 980 -530 {
lab=#net3}
N 1030 -600 1030 -560 {
lab=VDD}
N 620 -600 1020 -600 {
lab=VDD}
N 1030 -500 1030 -190 {
lab=vout}
N 1020 -600 1030 -600 {
lab=VDD}
N 820 -270 850 -270 {
lab=Vdiff}
N 820 -270 820 -240 {
lab=Vdiff}
N 290 -500 290 -460 {
lab=#net3}
N 290 -460 290 -420 {
lab=#net3}
N 290 -250 290 -220 {
lab=GND}
N 980 -530 990 -530 {
lab=#net3}
N 1030 -130 1030 -100 {
lab=GND}
N 300 -100 500 -100 {
lab=GND}
N 290 -420 290 -310 {
lab=#net3}
N 290 -220 290 -100 {
lab=GND}
N 290 -100 300 -100 {
lab=GND}
N 250 -280 270 -280 {
lab=GND}
N 250 -280 250 -100 {
lab=GND}
N 250 -100 290 -100 {
lab=GND}
N 140 -600 290 -600 {
lab=VDD}
N 140 -100 250 -100 {
lab=GND}
N 1030 -330 1160 -330 {
lab=vout}
N 890 -250 890 -100 {
lab=GND}
N 1000 -270 1030 -270 {
lab=vout}
N 990 -270 1000 -270 {
lab=vout}
N 920 -270 930 -270 {
lab=#net4}
N 850 -270 860 -270 {
lab=Vdiff}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 520 -160 0 1 {name=M3
W=0.96
L=1.75
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 480 -350 0 0 {name=M1
W=6.493
L=1.75
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {ngspice_probe.sym} 500 -270 0 1 {name=r7}
C {ngspice_probe.sym} 740 -270 0 1 {name=r2}
C {ngspice_probe.sym} 620 -430 0 1 {name=r3}
C {ngspice_probe.sym} 460 -530 0 1 {name=r4}
C {ngspice_probe.sym} 1030 -350 0 1 {name=r5}
C {lab_pin.sym} 740 -250 0 0 {name=p6 sig_type=std_logic lab=Vdiff}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 720 -160 0 0 {name=M4
W=0.96
L=1.75
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 760 -350 0 1 {name=M2
W=6.493
L=1.75
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 600 -530 0 0 {name=M0
W=1.7
L=1.25
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 310 -530 0 1 {name=M5
W=1.7
L=1.25
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1010 -530 0 0 {name=M6
W=1.7
L=1.25
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1010 -160 0 0 {name=M7
W=5.94
L=0.5
body=GND
nf=5
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 290 -280 0 0 {name=R12
W=1.5
L=13.945
model=res_xhigh_po_1p41
spiceprefix=X
 mult=1}
C {title.sym} 160 -40 0 0 {name=l1 author="Nithin P"}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 890 -270 3 0 {name=R1
W=1.5
L=2.53
model=res_xhigh_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} 960 -270 3 0 {name=C1 model=cap_mim_m3_2 W=6 L=5 MF=31 spiceprefix=X }
C {ipin.sym} 140 -600 0 0 {name=p1 lab=VDD}
C {ipin.sym} 140 -100 0 0 {name=p2 lab=GND}
C {ipin.sym} 420 -350 0 0 {name=p3 lab=minus}
C {ipin.sym} 820 -350 0 1 {name=p4 lab=plus}
C {opin.sym} 1160 -330 0 0 {name=p5 lab=vout}
