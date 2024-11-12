v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {                                            Nithin P
https://www.linkedin.com/in/nithin-purushothama-70664727b/} 600 -830 0 0 0.4 0.4 {}
T {FIRST ORDER BGR} 1095 -885 0 1 0.8 0.8 {}
N 690 -700 690 -660 {
lab=VDD}
N 1050 -700 1050 -660 {
lab=VDD}
N 690 -600 690 -540 {
lab=#net1}
N 1050 -600 1050 -540 {
lab=#net2}
N 350 -645 350 -625 {
lab=VDD}
N 350 -565 350 -545 {
lab=GND}
N 870 -80 870 -60 {
lab=GND}
N 500 -170 500 -150 {
lab=GND}
N 570 -510 730 -510 {
lab=Vb0}
N 350 -370 350 -320 {
lab=Vb0}
N 350 -320 410 -320 {
lab=Vb0}
N 410 -400 410 -320 {
lab=Vb0}
N 390 -400 410 -400 {
lab=Vb0}
N 350 -460 350 -430 {
lab=VDD}
N 870 -630 870 -470 {
lab=#net3}
N 690 -230 850 -230 {
lab=#net4}
N 540 -200 570 -200 {
lab=GND}
N 570 -200 570 -150 {
lab=GND}
N 620 -80 690 -80 {
lab=GND}
N 690 -80 870 -80 {
lab=GND}
N 1130 -80 1170 -80 {
lab=GND}
N 580 -80 620 -80 {
lab=GND}
N 690 -730 690 -700 {
lab=VDD}
N 690 -730 1030 -730 {
lab=VDD}
N 1050 -730 1050 -700 {
lab=VDD}
N 870 -650 870 -630 {
lab=#net3}
N 500 -390 690 -390 {
lab=Vbe}
N 690 -110 690 -80 {
lab=GND}
N 1050 -110 1050 -80 {
lab=GND}
N 1030 -730 1050 -730 {
lab=VDD}
N 1050 -80 1130 -80 {
lab=GND}
N 730 -510 1010 -510 {
lab=Vb0}
N 870 -630 1010 -630 {
lab=#net3}
N 730 -630 870 -630 {
lab=#net3}
N 1440 -700 1440 -660 {
lab=VDD}
N 1440 -600 1440 -540 {
lab=#net5}
N 1440 -730 1440 -700 {
lab=VDD}
N 1420 -730 1440 -730 {
lab=VDD}
N 1050 -730 1420 -730 {
lab=VDD}
N 1010 -630 1400 -630 {
lab=#net3}
N 1010 -510 1400 -510 {
lab=Vb0}
N 1440 -480 1440 -310 {
lab=Vref}
N 1440 -250 1440 -80 {
lab=GND}
N 1250 -80 1440 -80 {
lab=GND}
N 1440 -370 1510 -370 {
lab=Vref}
N 570 -150 570 -80 {
lab=GND}
N 570 -80 580 -80 {
lab=GND}
N 500 -80 570 -80 {
lab=GND}
N 500 -150 500 -80 {
lab=GND}
N 500 -330 500 -230 {
lab=Vbe}
N 500 -390 500 -330 {
lab=Vbe}
N 1050 -390 1250 -390 {
lab=Vbe2}
N 1170 -80 1250 -80 {
lab=GND}
N 1170 -200 1210 -200 {
lab=GND}
N 1170 -200 1170 -80 {
lab=GND}
N 1250 -260 1250 -230 {
lab=Vben}
N 1250 -280 1250 -260 {
lab=Vben}
N 1250 -390 1250 -340 {
lab=Vbe2}
N 1250 -170 1250 -80 {
lab=GND}
N 690 -390 690 -330 {
lab=Vbe}
N 690 -130 690 -110 {
lab=GND}
N 690 -270 690 -190 {
lab=#net4}
N 850 -320 850 -230 {
lab=#net4}
N 1050 -390 1050 -330 {
lab=Vbe2}
N 1050 -480 1050 -390 {
lab=Vbe2}
N 1050 -270 1050 -230 {
lab=#net6}
N 890 -320 890 -230 {
lab=#net6}
N 890 -230 1050 -230 {
lab=#net6}
N 1050 -230 1050 -190 {
lab=#net6}
N 1050 -130 1050 -110 {
lab=GND}
N 870 -730 870 -710 {
lab=VDD}
N 870 -80 1050 -80 {
lab=GND}
N 350 -230 350 -220 {
lab=GND}
N 350 -240 350 -230 {
lab=GND}
N 350 -320 350 -300 {
lab=Vb0}
N 690 -480 690 -390 {
lab=Vbe}
C {vsource.sym} 350 -595 0 0 {name=V1 value=1.65 savecurrent=false}
C {vdd.sym} 350 -645 0 0 {name=l3 lab=VDD}
C {gnd.sym} 350 -545 0 0 {name=l4 lab=GND}
C {vdd.sym} 870 -730 0 0 {name=l1 lab=VDD}
C {code_shown.sym} 10 -665 0 0 {name=NGSPICE only_toplevel=false value="
.option wnflag=1
.option savecurrents
.option gmin=0.2u
.temp 27
.control
save all
write First-order-BGR-try.raw
plot Vref
set appendwrite
op
write First-order-BGR-try.raw
**tran 1m 10m 1m
dc temp -40 125 1
**dc V1 0 3 0.1
.endc
"}
C {sky130_fd_pr/corner.sym} 30 -335 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 105 -195 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {ngspice_probe.sym} 850 -630 0 1 {name=r6}
C {gnd.sym} 870 -60 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/pnp_05v5.sym} 1230 -200 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=8
spiceprefix=X
}
C {ngspice_probe.sym} 1050 -390 0 0 {name=r2
value=49660}
C {lab_pin.sym} 500 -390 0 0 {name=p5 sig_type=std_logic lab=Vbe
value=49660}
C {lab_pin.sym} 1250 -260 0 0 {name=p6 sig_type=std_logic lab=Vben}
C {ngspice_probe.sym} 690 -570 0 1 {name=r4}
C {ngspice_probe.sym} 1050 -570 0 0 {name=r5}
C {lab_pin.sym} 1250 -390 0 1 {name=p3 sig_type=std_logic lab=Vbe2
value=49660}
C {ngspice_probe.sym} 690 -390 0 1 {name=r1}
C {sky130_fd_pr/pnp_05v5.sym} 520 -200 0 1 {name=Q3
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {lab_pin.sym} 570 -510 0 0 {name=p2 sig_type=std_logic lab=Vb0}
C {res.sym} 1250 -310 0 1 {name=R7
value= 13718.87
footprint=1206
device=resistor
m=1}
C {vdd.sym} 350 -460 0 0 {name=l2 lab=VDD}
C {gnd.sym} 350 -220 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 410 -360 0 1 {name=p1 sig_type=std_logic lab=Vb0}
C {/foss/designs/BGR/OTA.sym} 870 -80 3 0 {name=x1}
C {vdd.sym} 810 -380 3 0 {name=l7 lab=VDD}
C {capa.sym} 870 -680 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {ngspice_probe.sym} 1050 -230 0 0 {name=r15}
C {gnd.sym} 930 -380 3 0 {name=l10 lab=GND}
C {ngspice_probe.sym} 690 -230 0 1 {name=r8}
C {ngspice_probe.sym} 1440 -570 0 0 {name=r9}
C {res.sym} 1440 -280 0 1 {name=R10
value=68724.61
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1510 -370 0 1 {name=p4 sig_type=std_logic lab=Vref
value=49660}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 710 -510 0 1 {name=M1
W=5.0575
L=2
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
C {res.sym} 1050 -300 0 1 {name=R3
value=63579.04
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 1030 -510 0 0 {name=M2
W=5.0575
L=2
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 1030 -630 0 0 {name=M3
W=5.0575
L=2
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 710 -630 0 1 {name=M4
W=5.0575
L=2
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 370 -400 0 1 {name=M5
W=1.264
L=2
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
C {isource.sym} 350 -270 0 0 {name=I0 value=9.821u}
C {res.sym} 690 -300 0 1 {name=R11
value=63579.04
footprint=1206
device=resistor
m=1}
C {res.sym} 690 -160 0 1 {name=R12
value=63579.04
footprint=1206
device=resistor
m=1}
C {res.sym} 1050 -160 0 1 {name=R13
value=63579.04
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 1420 -630 0 0 {name=M6
W=5.0575
L=2
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 1420 -510 0 0 {name=M7
W=5.0575
L=2
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
C {title.sym} 420 -30 0 0 {name=l8 author="Nithin P"}
