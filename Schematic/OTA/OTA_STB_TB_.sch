v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 580 -270 580 -240 {
lab=VDD}
N 580 -120 580 -80 {
lab=GND}
N 430 -200 520 -200 {
lab=#net1}
N 420 -200 430 -200 {
lab=#net1}
N 420 -330 420 -200 {
lab=#net1}
N 420 -380 420 -360 {
lab=#net1}
N 420 -380 470 -380 {
lab=#net1}
N 550 -380 630 -380 {
lab=probe}
N 670 -180 760 -180 {
lab=#net2}
N 760 -350 760 -180 {
lab=#net2}
N 590 -540 590 -510 {
lab=GND}
N 590 -420 590 -380 {
lab=probe}
N 590 -450 590 -420 {
lab=probe}
N 420 -160 520 -160 {
lab=VICM}
N 420 -160 420 -130 {
lab=VICM}
N 420 -70 420 -30 {
lab=GND}
N 760 -90 760 -50 {
lab=GND}
N 760 -180 760 -150 {
lab=#net2}
N 860 -330 860 -300 {
lab=VDD}
N 860 -240 860 -200 {
lab=GND}
N 760 -380 760 -350 {
lab=#net2}
N 420 -360 420 -330 {
lab=#net1}
N 470 -380 490 -380 {
lab=#net1}
N 690 -380 760 -380 {
lab=#net2}
C {/foss/designs/BGR/OTA.sym} 280 -180 0 0 {name=x1}
C {vdd.sym} 580 -270 0 0 {name=l1 lab=VDD}
C {gnd.sym} 580 -80 0 0 {name=l2 lab=GND}
C {vsource.sym} 520 -380 1 1 {name=Vprobe2 value=0 savecurrent=false}
C {vsource.sym} 660 -380 3 0 {name=Vprobe1 value="dc 0 ac 1" savecurrent=false}
C {isource.sym} 590 -480 0 0 {name=iprobe1 value="dc 0 ac 1"}
C {vsource.sym} 420 -100 0 1 {name=VICM value="dc 0.45 ac 0" savecurrent=false}
C {gnd.sym} 420 -30 0 0 {name=l4 lab=GND}
C {capa.sym} 760 -120 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 760 -50 0 0 {name=l5 lab=GND}
C {vdd.sym} 860 -330 0 0 {name=l6 lab=VDD}
C {vsource.sym} 860 -270 0 1 {name=V3 value=1.65 savecurrent=false}
C {gnd.sym} 860 -200 0 0 {name=l7 lab=GND}
C {code.sym} 190 -360 0 0 {name=NGSPICE only_toplevel=false value="
.options savecurrents
.control
 let runs=2
 let run=0

 alter @Vprobe1[acmag]=1
 alter @iprobe1[acmag]=0

 dowhile run < runs

 set run =”$&run”
 ac dec 20 0.01 10G
 write OTA_STB_TB_\{$run\}.raw

 all
 alter @Vprobe1[acmag]=0
 alter @iprobe1[acmag]=1
 let run = run + 1
 end

 let ip22 = ac2.i(Vprobe2)
 let vprb1 = ac1.probe
 let mb = 1/(vprb1+ip22)-1
 let phase_mb = 180/PI*vp(mb)
 plot vdb(mb)
 plot phase_mb
 plot vdb(mb) phase_mb
 write OTA-tt.txt vdb(mb) 

 meas ac peak MAX vmag(mb) FROM=2 TO=1.5G
 let f3db = peak/sqrt(2)
 meas ac f1 WHEN vmag(mb)=f3db RISE=1
 meas ac BW WHEN vmag(mb)=f3db FALL=1
 let GBW = peak*BW
 meas ac pm_deg find phase_mb when vdb(mb)=0
 meas ac dominant_pole_f when vdb(mb)=0
 meas ac loop_gain find vdb(mb) at=0.01
 print GBW

 op
 show m : gm : gmbs : gds : vds : vdsat : vgs : vth : id
.endc"}
C {sky130_fd_pr/corner.sym} 190 -160 0 0 {name=CORNER only_toplevel=true corner=tt}
C {lab_pin.sym} 590 -380 3 0 {name=p1 sig_type=std_logic lab=probe}
C {devices/launcher.sym} 250 -220 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {lab_pin.sym} 480 -160 3 0 {name=p2 sig_type=std_logic lab=VICM}
C {gnd.sym} 590 -540 2 0 {name=l3 lab=GND}
