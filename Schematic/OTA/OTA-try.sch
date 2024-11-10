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
gm/id M7=20} -230 -630 0 0 0.4 0.4 {}
N 380 -80 540 -80 {
lab=#net1}
N 340 -50 340 -20 {
lab=GND}
N 340 -20 580 -20 {
lab=GND}
N 580 -50 580 -20 {
lab=GND}
N 340 -240 340 -110 {
lab=#net1}
N 580 -240 580 -110 {
lab=Vdiff}
N 340 -350 340 -300 {
lab=#net2}
N 340 -350 580 -350 {
lab=#net2}
N 580 -350 580 -300 {
lab=#net2}
N 440 -160 440 -80 {
lab=#net1}
N 340 -160 440 -160 {
lab=#net1}
N 620 -270 660 -270 {
lab=plus}
N 260 -270 300 -270 {
lab=minus}
N 460 -420 460 -350 {
lab=#net2}
N 170 -450 420 -450 {
lab=#net3}
N 130 -520 130 -480 {
lab=VDD}
N 130 -520 460 -520 {
lab=VDD}
N 460 -520 460 -480 {
lab=VDD}
N 130 -380 200 -380 {
lab=#net3}
N 200 -450 200 -380 {
lab=#net3}
N 580 -20 870 -20 {
lab=GND}
N 660 -80 830 -80 {
lab=Vdiff}
N 660 -160 660 -80 {
lab=Vdiff}
N 580 -190 660 -190 {
lab=Vdiff}
N 420 -450 820 -450 {
lab=#net3}
N 870 -520 870 -480 {
lab=VDD}
N 460 -520 860 -520 {
lab=VDD}
N 870 -420 870 -110 {
lab=Vout}
N 860 -520 870 -520 {
lab=VDD}
N 580 -20 580 -0 {
lab=GND}
N 120 20 120 40 {
lab=GND}
N 830 -190 870 -190 {
lab=Vout}
N 750 -190 770 -190 {
lab=#net4}
N 660 -190 690 -190 {
lab=Vdiff}
N 660 -190 660 -160 {
lab=Vdiff}
N 30 -190 30 -170 {
lab=GND}
N 30 -270 30 -250 {
lab=VDD}
N 1030 -190 1030 -150 {
lab=Vout}
N 870 -190 1030 -190 {
lab=Vout}
N 870 -20 1030 -20 {
lab=GND}
N 1030 -90 1030 -20 {
lab=GND}
N 130 -420 130 -380 {
lab=#net3}
N 130 -380 130 -340 {
lab=#net3}
N 130 -280 130 -250 {
lab=GND}
N 60 -40 120 -40 {
lab=#net5}
N 120 -40 170 -40 {
lab=#net5}
N 170 -120 170 -100 {
lab=plus}
N 60 -120 60 -100 {
lab=minus}
N 820 -450 830 -450 {
lab=#net3}
N 870 -50 870 -20 {
lab=GND}
N 110 -310 110 -270 {
lab=GND}
N 110 -270 130 -270 {
lab=GND}
N 720 -170 720 -20 {
lab=GND}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 360 -80 0 1 {name=M3
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 320 -270 0 0 {name=M1
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
C {gnd.sym} 580 0 0 0 {name=l1 lab=GND}
C {vdd.sym} 460 -520 0 0 {name=l3 lab=VDD}
C {vsource.sym} 120 -10 0 0 {name=V1 value=0.45 savecurrent=false}
C {gnd.sym} 120 40 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 260 -270 0 0 {name=p2 sig_type=std_logic lab=minus}
C {lab_pin.sym} 170 -120 0 1 {name=p3 sig_type=std_logic lab=plus}
C {lab_pin.sym} 660 -270 0 1 {name=p4 sig_type=std_logic lab=plus}
C {vsource.sym} 30 -220 0 0 {name=V3 value=1.65 savecurrent=false}
C {gnd.sym} 30 -170 0 0 {name=l6 lab=GND}
C {vdd.sym} 30 -270 0 0 {name=l7 lab=VDD}
C {code_shown.sym} -230 -490 0 0 {name=NGSPICE only_toplevel=false value="
.option wnflag=1
.option savecurrents
.temp 27
.control
save all
write OTA-try.raw
set appendwrite
op
write OTA-try.raw
**tran 1m 10m 1m
ac dec 20 1 1e8
**dc temp -50 150 1
.endc
"}
C {devices/launcher.sym} -180 -200 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/corner.sym} -210 -130 0 0 {name=CORNER only_toplevel=true corner=tt}
C {ngspice_probe.sym} 340 -190 0 1 {name=r7}
C {ngspice_probe.sym} 580 -190 0 1 {name=r2}
C {ngspice_probe.sym} 460 -350 0 1 {name=r3}
C {ngspice_probe.sym} 300 -450 0 1 {name=r4}
C {ngspice_probe.sym} 870 -270 0 1 {name=r5}
C {capa.sym} 1030 -120 2 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 580 -170 0 0 {name=p6 sig_type=std_logic lab=Vdiff}
C {gnd.sym} 130 -250 0 0 {name=l2 lab=GND}
C {vsource.sym} 170 -70 0 0 {name=V4 value="0 ac 1" savecurrent=false}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 560 -80 0 0 {name=M4
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 600 -270 0 1 {name=M2
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
C {sky130_fd_pr/pfet3_01v8.sym} 440 -450 0 0 {name=M0
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
C {sky130_fd_pr/pfet3_01v8.sym} 150 -450 0 1 {name=M5
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
C {sky130_fd_pr/pfet3_01v8.sym} 850 -450 0 0 {name=M6
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
C {ngspice_probe.sym} 750 -190 1 1 {name=r6}
C {vsource.sym} 60 -70 2 1 {name=V2 value="0 ac 1" savecurrent=false}
C {lab_pin.sym} 60 -120 0 0 {name=p1 sig_type=std_logic lab=minus}
C {lab_pin.sym} 1030 -190 0 1 {name=p5 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/nfet3_01v8.sym} 850 -80 0 0 {name=M7
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
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 130 -310 0 0 {name=R12
W=1.5
L=13.945
model=res_xhigh_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 720 -190 3 0 {name=R1
W=1.5
L=2.53
model=res_xhigh_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} 800 -190 3 0 {name=C1 model=cap_mim_m3_2 W=6 L=5 MF=31 spiceprefix=X }
