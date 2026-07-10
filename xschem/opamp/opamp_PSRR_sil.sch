v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1560 370 2360 770 {flags=graph
y1=1e-35
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.5e+08
x2=8.5e+08
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
N 1150 550 1170 550 {lab=vbias}
N 1130 530 1170 530 {lab=vp}
N 1320 450 1320 480 {lab=vdd}
N 620 310 620 330 {lab=vdd}
N 620 400 620 410 {lab=0}
N 620 390 620 400 {lab=0}
N 740 310 740 330 {lab=vbias}
N 740 400 740 410 {lab=0}
N 740 390 740 400 {lab=0}
N 510 470 510 510 {lab=vdd
spice_ignore=true}
N 510 570 510 610 {lab=#net4
spice_ignore=true}
N 510 670 510 700 {lab=0
spice_ignore=true}
N 510 590 590 590 {lab=#net4
spice_ignore=true}
N 650 590 700 590 {lab=#net5
spice_ignore=true}
N 700 590 700 650 {lab=#net5
spice_ignore=true}
N 630 650 630 670 {lab=#net6
spice_ignore=true}
N 630 650 640 650 {lab=#net6
spice_ignore=true}
N 630 730 630 740 {lab=0
spice_ignore=true}
N 700 650 740 650 {lab=#net5
spice_ignore=true}
N 510 790 510 830 {lab=vdd
spice_ignore=true}
N 510 890 510 930 {lab=#net7
spice_ignore=true}
N 510 990 510 1020 {lab=0
spice_ignore=true}
N 510 910 590 910 {lab=#net7
spice_ignore=true}
N 650 910 700 910 {lab=#net8
spice_ignore=true}
N 700 910 700 970 {lab=#net8
spice_ignore=true}
N 630 970 630 990 {lab=#net9
spice_ignore=true}
N 630 970 640 970 {lab=#net9
spice_ignore=true}
N 630 1050 630 1060 {lab=0
spice_ignore=true}
N 700 970 740 970 {lab=#net8
spice_ignore=true}
N 770 760 770 770 {lab=0}
N 770 750 770 760 {lab=0}
N 770 660 770 690 {lab=vp}
N 770 660 780 660 {lab=vp}
N 810 1060 810 1070 {lab=0}
N 810 1050 810 1060 {lab=0}
N 810 970 810 990 {lab=vn}
N 1470 530 1490 530 {lab=out}
N 1120 510 1170 510 {lab=vn}
N 1320 590 1320 610 {lab=0}
C {devices/code_shown.sym} -100 -120 0 0 {name=MODELS only_toplevel=true
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
C {iopin.sym} 1490 530 0 0 {name=p2 lab=out}
C {ipin.sym} 1150 550 0 0 {name=p3 lab=vbias}
C {ipin.sym} 1130 530 0 0 {name=p4 lab=vp}
C {ipin.sym} 1320 450 0 0 {name=p6 lab=vdd}
C {vsource.sym} 620 360 0 0 {name=V1 value="DC 3.3 AC 1" savecurrent=false}
C {res.sym} 510 540 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {lab_pin.sym} 620 310 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} 510 700 0 0 {name=l1 lab=0
spice_ignore=true}
C {gnd.sym} 620 410 0 0 {name=l2 lab=0}
C {vsource.sym} 740 360 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} 740 310 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} 740 410 0 0 {name=l3 lab=0}
C {lab_pin.sym} 510 470 0 0 {name=p9 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} 510 640 0 0 {name=R2
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} 620 590 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} 670 650 3 1 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} 630 700 0 0 {name=V3 value="AC 0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} 630 740 0 0 {name=l4 lab=0
spice_ignore=true}
C {lab_pin.sym} 780 660 0 1 {name=p10 sig_type=std_logic lab=vp}
C {res.sym} 510 860 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {gnd.sym} 510 1020 0 0 {name=l5 lab=0
spice_ignore=true}
C {lab_pin.sym} 510 790 0 0 {name=p11 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} 510 960 0 0 {name=R5
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} 620 910 1 0 {name=R6
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} 670 970 3 1 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} 630 1020 0 0 {name=V4 value="AC -0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} 630 1060 0 0 {name=l6 lab=0
spice_ignore=true}
C {lab_pin.sym} 810 970 0 1 {name=p12 sig_type=std_logic lab=vn}
C {code_shown.sym} 950 -290 0 0 {name=NGSPICE only_toplevel=false value=".param
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
write opamp_PSRR_sil.raw

* The output of this specific AC sweep is your Supply Gain (Add)
let Add = db(v(out))

* Calculate True PSRR (Aol - Add). 
* Note: We hardcode your known 80 dB Aol here for this testbench.
let true_psrr = 80 - Add
set color0=white 
set color1=black  
* Plot the corrected PSRR curve 
plot true_psrr ylabel 'True PSRR (dB)' xlabel 'Frequency (Hz)' title 'Power Supply Rejection Ratio'
.endc
"}
C {vsource.sym} 770 720 0 0 {name=V5 value=1.3 savecurrent=false}
C {gnd.sym} 770 770 0 0 {name=l8 lab=0}
C {vsource.sym} 810 1020 0 0 {name=V6 value=1.3 savecurrent=false}
C {gnd.sym} 810 1070 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {ipin.sym} 1120 510 0 0 {name=p1 lab=vn}
C {gnd.sym} 1320 610 0 0 {name=l7 lab=0}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 1320 540 0 0 {name=x1}
