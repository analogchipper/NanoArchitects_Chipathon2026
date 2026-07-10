v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 720 180 1520 580 {flags=graph
y1=1e-35
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.6541307e+08
x2=8.3458693e+08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="7 4"
node="vp
out"}
N 260 360 280 360 {lab=vbias}
N 240 340 280 340 {lab=vp}
N 480 260 480 290 {lab=vdd}
N -220 120 -220 140 {lab=vdd}
N -220 210 -220 220 {lab=0}
N -220 200 -220 210 {lab=0}
N -100 120 -100 140 {lab=vbias}
N -100 210 -100 220 {lab=0}
N -100 200 -100 210 {lab=0}
N -330 280 -330 320 {lab=vdd
spice_ignore=true}
N -330 380 -330 420 {lab=#net4
spice_ignore=true}
N -330 480 -330 510 {lab=0
spice_ignore=true}
N -330 400 -250 400 {lab=#net4
spice_ignore=true}
N -190 400 -140 400 {lab=#net5
spice_ignore=true}
N -140 400 -140 460 {lab=#net5
spice_ignore=true}
N -210 460 -210 480 {lab=#net6
spice_ignore=true}
N -210 460 -200 460 {lab=#net6
spice_ignore=true}
N -210 540 -210 550 {lab=0
spice_ignore=true}
N -140 460 -100 460 {lab=#net5
spice_ignore=true}
N -330 600 -330 640 {lab=vdd
spice_ignore=true}
N -330 700 -330 740 {lab=#net7
spice_ignore=true}
N -330 800 -330 830 {lab=0
spice_ignore=true}
N -330 720 -250 720 {lab=#net7
spice_ignore=true}
N -190 720 -140 720 {lab=#net8
spice_ignore=true}
N -140 720 -140 780 {lab=#net8
spice_ignore=true}
N -210 780 -210 800 {lab=#net9
spice_ignore=true}
N -210 780 -200 780 {lab=#net9
spice_ignore=true}
N -210 860 -210 870 {lab=0
spice_ignore=true}
N -140 780 -100 780 {lab=#net8
spice_ignore=true}
N -70 570 -70 580 {lab=0}
N -70 560 -70 570 {lab=0}
N -70 470 -70 500 {lab=vp}
N -70 470 -60 470 {lab=vp}
N -30 870 -30 880 {lab=0}
N -30 860 -30 870 {lab=0}
N -30 780 -30 800 {lab=vn}
N 630 340 650 340 {lab=out}
N 230 320 280 320 {lab=vn}
N 480 410 480 430 {lab=0}
N 640 340 640 360 {lab=out}
N 480 420 610 420 {lab=0}
N 610 420 640 420 {lab=0}
N 480 400 480 410 {lab=0}
N 280 360 330 360 {lab=vbias}
N 280 340 330 340 {lab=vp}
N 280 320 330 320 {lab=vn}
C {iopin.sym} 650 340 0 0 {name=p2 lab=out}
C {ipin.sym} 260 360 0 0 {name=p3 lab=vbias}
C {ipin.sym} 240 340 0 0 {name=p4 lab=vp}
C {ipin.sym} 480 260 0 0 {name=p6 lab=vdd}
C {vsource.sym} -220 170 0 0 {name=V1 value=3.3 savecurrent=false}
C {res.sym} -330 350 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {lab_pin.sym} -220 120 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -330 510 0 0 {name=l1 lab=0
spice_ignore=true}
C {gnd.sym} -220 220 0 0 {name=l2 lab=0}
C {vsource.sym} -100 170 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -100 120 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -100 220 0 0 {name=l3 lab=0}
C {lab_pin.sym} -330 280 0 0 {name=p9 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -330 450 0 0 {name=R2
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -220 400 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -170 460 3 1 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -210 510 0 0 {name=V3 value="AC 0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -210 550 0 0 {name=l4 lab=0
spice_ignore=true}
C {lab_pin.sym} -60 470 0 1 {name=p10 sig_type=std_logic lab=vp}
C {res.sym} -330 670 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {gnd.sym} -330 830 0 0 {name=l5 lab=0
spice_ignore=true}
C {lab_pin.sym} -330 600 0 0 {name=p11 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -330 770 0 0 {name=R5
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -220 720 1 0 {name=R6
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -170 780 3 1 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -210 830 0 0 {name=V4 value="AC -0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -210 870 0 0 {name=l6 lab=0
spice_ignore=true}
C {lab_pin.sym} -30 780 0 1 {name=p12 sig_type=std_logic lab=vn}
C {code_shown.sym} 130 -250 0 0 {name=NGSPICE only_toplevel=false value=".param
+ w1=80u     
+ l1=6u
+ w2=26u     
+ l2=1u
+ w3=78u   
+ l3=0.7u
+ w4=60u     
+ l4=4u
+ w5=60u    
+ l5=4u
+ w6=26u     
+ l6=1u
+ w7=72u  
+ l7=0.3u

.control
save all
ac dec 101 10 1G
meas ac cmrr FIND vdb(out) AT=95.4Meg
print cmrr
let Acm= 80.3 - cmrr
print Acm
write opamp_cm_sil.raw
.endc
"}
C {vsource.sym} -70 530 0 0 {name=V5 value="AC 1 DC 1.3" savecurrent=false}
C {gnd.sym} -70 580 0 0 {name=l8 lab=0}
C {vsource.sym} -30 830 0 0 {name=V6 value="AC 1 DC 1.3" savecurrent=false}
C {gnd.sym} -30 880 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {ipin.sym} 230 320 0 0 {name=p1 lab=vn}
C {gnd.sym} 480 430 0 0 {name=l7 lab=0}
C {launcher.sym} 510 600 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/opamp_cm_sil.raw ac"
}
C {devices/code_shown.sym} -560 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 480 350 0 0 {name=x1}
C {symbols/cap_mim_1f5fF.sym} 640 390 0 0 {name=C1
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
