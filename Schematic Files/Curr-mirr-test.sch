v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 650 -480 810 -480 {
lab=Vb0}
N 650 -580 810 -580 {
lab=pt}
N 610 -550 610 -510 {
lab=#net1}
N 850 -550 850 -510 {
lab=#net2}
N 610 -650 610 -610 {
lab=VDD}
N 610 -650 850 -650 {
lab=VDD}
N 850 -650 850 -610 {
lab=VDD}
N 610 -450 610 -430 {
lab=ct}
N 850 -450 850 -430 {
lab=pt}
N 690 -530 690 -480 {
lab=Vb0}
N 610 -430 610 -400 {
lab=ct}
N 850 -430 850 -400 {
lab=pt}
N 400 -640 400 -610 {
lab=VDD}
N 400 -650 400 -640 {
lab=VDD}
N 400 -650 610 -650 {
lab=VDD}
N 400 -550 400 -500 {
lab=Vb0}
N 400 -500 440 -500 {
lab=Vb0}
N 470 -580 470 -500 {
lab=Vb0}
N 400 -500 400 -470 {
lab=Vb0}
N 750 -580 750 -440 {
lab=pt}
N 440 -580 470 -580 {
lab=Vb0}
N 440 -500 470 -500 {
lab=Vb0}
N 650 -290 810 -290 {
lab=Vb1}
N 650 -180 810 -180 {
lab=ct}
N 610 -400 610 -320 {
lab=ct}
N 850 -400 850 -320 {
lab=pt}
N 610 -150 610 -120 {
lab=GND}
N 610 -260 610 -210 {
lab=#net3}
N 850 -260 850 -210 {
lab=#net4}
N 700 -370 700 -180 {
lab=ct}
N 400 -250 400 -210 {
lab=Vb1}
N 400 -150 400 -120 {
lab=GND}
N 320 -180 360 -180 {
lab=Vb1}
N 320 -230 320 -180 {
lab=Vb1}
N 320 -230 400 -230 {
lab=Vb1}
N 780 -330 780 -290 {
lab=Vb1}
N 610 -370 700 -370 {
lab=ct}
N 850 -150 850 -120 {
lab=GND}
N 750 -440 750 -420 {
lab=pt}
N 750 -420 850 -420 {
lab=pt}
N 610 -120 850 -120 {
lab=GND}
N 400 -120 610 -120 {
lab=GND}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 630 -580 0 1 {name=M4
W=3.703
L=1.5
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
C {vdd.sym} 730 -650 0 0 {name=l2 lab=VDD}
C {vsource.sym} 215 -600 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 215 -570 0 0 {name=l3 lab=GND}
C {vdd.sym} 215 -630 0 0 {name=l4 lab=VDD}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 420 -580 0 1 {name=M5
W=0.92
L=1.5
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
C {isource.sym} 400 -440 0 0 {name=I0 value=10u}
C {gnd.sym} 400 -410 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 470 -530 0 1 {name=p1 sig_type=std_logic lab=Vb0}
C {lab_pin.sym} 690 -530 2 1 {name=p2 sig_type=std_logic lab=Vb0}
C {sky130_fd_pr/corner.sym} 180 -450 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} 20 -450 0 0 {name=Ngspice only_toplevel=false value="
.option wnflag=1
.option savecurrents
.temp 25 **You can vary the temperature at which you calculate your Operating point
.control
save all
write  Curr-mirr-test.raw
set appendwrite
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm] 
save @m.xm2.msky130_fd_pr__pfet_01v8_lvt[gm] 
save @m.xm3.msky130_fd_pr__pfet_01v8_lvt[gm] 
save @m.xm4.msky130_fd_pr__pfet_01v8_lvt[gm] 
save @m.xm5.msky130_fd_pr__pfet_01v8_lvt[gm] 
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id] 
save @m.xm2.msky130_fd_pr__pfet_01v8_lvt[id] 
save @m.xm3.msky130_fd_pr__pfet_01v8_lvt[id] 
save @m.xm4.msky130_fd_pr__pfet_01v8_lvt[id] 
save @m.xm5.msky130_fd_pr__pfet_01v8_lvt[id] 
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgg] 
save @m.xm2.msky130_fd_pr__pfet_01v8_lvt[cgg] 
save @m.xm3.msky130_fd_pr__pfet_01v8_lvt[cgg] 
save @m.xm4.msky130_fd_pr__pfet_01v8_lvt[cgg] 
save @m.xm5.msky130_fd_pr__pfet_01v8_lvt[cgg] 
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgs] 
save @m.xm2.msky130_fd_pr__pfet_01v8_lvt[cgs] 
save @m.xm3.msky130_fd_pr__pfet_01v8_lvt[cgs] 
save @m.xm4.msky130_fd_pr__pfet_01v8_lvt[cgs] 
save @m.xm5.msky130_fd_pr__pfet_01v8_lvt[cgs] 
save @m.xm6.msky130_fd_pr__nfet_01v8_lvt[gm] 
save @m.xm7.msky130_fd_pr__nfet_01v8_lvt[gm] 
save @m.xm8.msky130_fd_pr__nfet_01v8_lvt[gm] 
save @m.xm9.msky130_fd_pr__nfet_01v8_lvt[gm] 
save @m.xm10.msky130_fd_pr__nfet_01v8_lvt[gm] 
save @m.xm6.msky130_fd_pr__nfet_01v8_lvt[id] 
save @m.xm7.msky130_fd_pr__nfet_01v8_lvt[id] 
save @m.xm8.msky130_fd_pr__nfet_01v8_lvt[id] 
save @m.xm9.msky130_fd_pr__nfet_01v8_lvt[id] 
save @m.xm10.msky130_fd_pr__nfet_01v8_lvt[id] 
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[cgg] 
save @m.xm2.msky130_fd_pr__nfet_01v8_lvt[cgg] 
save @m.xm3.msky130_fd_pr__nfet_01v8_lvt[cgg] 
save @m.xm4.msky130_fd_pr__nfet_01v8_lvt[cgg] 
save @m.xm5.msky130_fd_pr__nfet_01v8_lvt[cgg] 
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[cgs] 
save @m.xm2.msky130_fd_pr__nfet_01v8_lvt[cgs] 
save @m.xm3.msky130_fd_pr__nfet_01v8_lvt[cgs] 
save @m.xm4.msky130_fd_pr__nfet_01v8_lvt[cgs] 
save @m.xm5.msky130_fd_pr__nfet_01v8_lvt[cgs]
op
write Curr-mirr-test.raw
** ac dec 20 1 1e8 
dc V2 1.5 3.3 1m
**tran 1m 100m 1m
.endc "}
C {ngspice_probe.sym} 470 -550 0 0 {name=r1}
C {ngspice_probe.sym} 720 -480 0 0 {name=r3}
C {ngspice_probe.sym} 850 -530 0 0 {name=r4}
C {ngspice_probe.sym} 610 -530 0 0 {name=r5}
C {devices/launcher.sym} 100 -510 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 830 -480 0 0 {name=M1
W=3.703
L=1.5
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 830 -580 0 0 {name=M2
W=3.703
L=1.5
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 630 -480 0 1 {name=M3
W=3.703
L=1.5
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
C {ngspice_probe.sym} 730 -580 0 0 {name=r2}
C {ngspice_probe.sym} 700 -370 0 0 {name=r6}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 630 -290 0 1 {name=M6
W=4
L=1.5
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
C {gnd.sym} 610 -120 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 780 -330 2 1 {name=p3 sig_type=std_logic lab=Vb1}
C {vdd.sym} 400 -310 0 0 {name=l7 lab=VDD}
C {isource.sym} 400 -280 0 0 {name=I1 value=10u}
C {lab_pin.sym} 320 -230 2 1 {name=p4 sig_type=std_logic lab=Vb1}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 630 -180 0 1 {name=M7
W=4
L=1.5
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 830 -180 0 0 {name=M8
W=4
L=1.5
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 830 -290 0 0 {name=M9
W=4
L=1.5
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 380 -180 0 0 {name=M10
W=1
L=1.5
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
C {lab_pin.sym} 610 -400 2 1 {name=p5 sig_type=std_logic lab=ct}
C {lab_pin.sym} 850 -390 2 0 {name=p6 sig_type=std_logic lab=pt}
C {devices/launcher.sym} 100 -300 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {ngspice_probe.sym} 610 -230 0 0 {name=r7}
C {ngspice_probe.sym} 850 -230 0 1 {name=r8}
