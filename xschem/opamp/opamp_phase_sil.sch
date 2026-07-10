v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1450 690 2250 1090 {flags=graph
y1=0.004
y2=0.014
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
N 1020 850 1060 850 {lab=vp}
N 1210 770 1210 800 {lab=vdd}
N 510 630 510 650 {lab=vdd}
N 510 720 510 730 {lab=0}
N 510 710 510 720 {lab=0}
N 630 630 630 650 {lab=vbias}
N 630 720 630 730 {lab=0}
N 630 710 630 720 {lab=0}
N 400 790 400 830 {lab=vdd
spice_ignore=true}
N 400 890 400 930 {lab=#net4
spice_ignore=true}
N 400 990 400 1020 {lab=0
spice_ignore=true}
N 400 910 480 910 {lab=#net4
spice_ignore=true}
N 540 910 590 910 {lab=#net5
spice_ignore=true}
N 590 910 590 970 {lab=#net5
spice_ignore=true}
N 520 970 520 990 {lab=#net6
spice_ignore=true}
N 520 970 530 970 {lab=#net6
spice_ignore=true}
N 520 1050 520 1060 {lab=0
spice_ignore=true}
N 590 970 630 970 {lab=#net5
spice_ignore=true}
N 400 1110 400 1150 {lab=vdd
spice_ignore=true}
N 400 1210 400 1250 {lab=#net7
spice_ignore=true}
N 400 1310 400 1340 {lab=0
spice_ignore=true}
N 400 1230 480 1230 {lab=#net7
spice_ignore=true}
N 540 1230 590 1230 {lab=#net8
spice_ignore=true}
N 590 1230 590 1290 {lab=#net8
spice_ignore=true}
N 520 1290 520 1310 {lab=#net9
spice_ignore=true}
N 520 1290 530 1290 {lab=#net9
spice_ignore=true}
N 520 1370 520 1380 {lab=0
spice_ignore=true}
N 590 1290 630 1290 {lab=#net8
spice_ignore=true}
N 660 1080 660 1090 {lab=0}
N 660 1070 660 1080 {lab=0}
N 660 980 660 1010 {lab=vp}
N 660 980 670 980 {lab=vp}
N 700 1380 700 1390 {lab=0}
N 700 1370 700 1380 {lab=0}
N 700 1290 700 1310 {lab=vn}
N 1360 850 1380 850 {lab=out}
N 1010 830 1060 830 {lab=vn}
N 1210 920 1210 940 {lab=0}
N 1020 870 1060 870 {lab=vbias}
N 1370 850 1370 880 {lab=out}
N 1240 940 1370 940 {lab=0}
N 1210 910 1210 920 {lab=0}
N 1210 940 1240 940 {lab=0}
C {iopin.sym} 1380 850 0 0 {name=p2 lab=out}
C {ipin.sym} 1020 870 0 0 {name=p3 lab=vbias}
C {ipin.sym} 1020 850 0 0 {name=p4 lab=vp}
C {ipin.sym} 1210 770 0 0 {name=p6 lab=vdd}
C {vsource.sym} 510 680 0 0 {name=V1 value=3.3 savecurrent=false}
C {res.sym} 400 860 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {lab_pin.sym} 510 630 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} 400 1020 0 0 {name=l1 lab=0
spice_ignore=true}
C {gnd.sym} 510 730 0 0 {name=l2 lab=0}
C {vsource.sym} 630 680 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} 630 630 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} 630 730 0 0 {name=l3 lab=0}
C {lab_pin.sym} 400 790 0 0 {name=p9 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} 400 960 0 0 {name=R2
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} 510 910 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} 560 970 3 1 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} 520 1020 0 0 {name=V3 value="AC 0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} 520 1060 0 0 {name=l4 lab=0
spice_ignore=true}
C {lab_pin.sym} 670 980 0 1 {name=p10 sig_type=std_logic lab=vp}
C {res.sym} 400 1180 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {gnd.sym} 400 1340 0 0 {name=l5 lab=0
spice_ignore=true}
C {lab_pin.sym} 400 1110 0 0 {name=p11 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} 400 1280 0 0 {name=R5
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} 510 1230 1 0 {name=R6
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} 560 1290 3 1 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} 520 1340 0 0 {name=V4 value="AC -0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} 520 1380 0 0 {name=l6 lab=0
spice_ignore=true}
C {lab_pin.sym} 700 1290 0 1 {name=p12 sig_type=std_logic lab=vn}
C {code_shown.sym} 850 130 0 0 {name=NGSPICE only_toplevel=false value=".param
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
set color0=white 
set color1=black 
plot db(v(out))
plot ph(v(out))
meas ac my_ugbw WHEN vdb(out)=0
meas ac ph_out FIND vp(out) AT=my_ugbw
let ph_opamp= 180/PI * ph_out
let ph_final=180 + ph_opamp
print ph_final
write opamp_phase_sil.raw
.endc
"}
C {vsource.sym} 660 1040 0 0 {name=V5 value="AC 1 DC 1.3" savecurrent=false}
C {gnd.sym} 660 1090 0 0 {name=l8 lab=0}
C {vsource.sym} 700 1340 0 0 {name=V6 value="AC 0 DC 1.3" savecurrent=false}
C {gnd.sym} 700 1390 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {ipin.sym} 1010 830 0 0 {name=p1 lab=vn}
C {gnd.sym} 1210 940 0 0 {name=l7 lab=0}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 1210 860 0 0 {name=x1}
C {launcher.sym} 1240 1060 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/opamp_phase_sil.raw ac"
}
C {devices/code_shown.sym} 110 320 0 0 {name=MODELS1 only_toplevel=true
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
C {symbols/cap_mim_1f5fF.sym} 1370 910 0 0 {name=C1
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
