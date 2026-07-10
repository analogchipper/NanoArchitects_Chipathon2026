v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 490 240 1290 640 {flags=graph
y1=1
y2=49000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5000001e+08
x2=1.25e+09
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
N 60 400 100 400 {lab=vp}
N 250 320 250 350 {lab=vdd}
N -450 180 -450 200 {lab=vdd}
N -450 270 -450 280 {lab=0}
N -450 260 -450 270 {lab=0}
N -330 180 -330 200 {lab=vbias}
N -330 270 -330 280 {lab=0}
N -330 260 -330 270 {lab=0}
N -560 340 -560 380 {lab=vdd
spice_ignore=true}
N -560 440 -560 480 {lab=#net4
spice_ignore=true}
N -560 540 -560 570 {lab=0
spice_ignore=true}
N -560 460 -480 460 {lab=#net4
spice_ignore=true}
N -420 460 -370 460 {lab=#net5
spice_ignore=true}
N -370 460 -370 520 {lab=#net5
spice_ignore=true}
N -440 520 -440 540 {lab=#net6
spice_ignore=true}
N -440 520 -430 520 {lab=#net6
spice_ignore=true}
N -440 600 -440 610 {lab=0
spice_ignore=true}
N -370 520 -330 520 {lab=#net5
spice_ignore=true}
N -560 660 -560 700 {lab=vdd
spice_ignore=true}
N -560 760 -560 800 {lab=#net7
spice_ignore=true}
N -560 860 -560 890 {lab=0
spice_ignore=true}
N -560 780 -480 780 {lab=#net7
spice_ignore=true}
N -420 780 -370 780 {lab=#net8
spice_ignore=true}
N -370 780 -370 840 {lab=#net8
spice_ignore=true}
N -440 840 -440 860 {lab=#net9
spice_ignore=true}
N -440 840 -430 840 {lab=#net9
spice_ignore=true}
N -440 920 -440 930 {lab=0
spice_ignore=true}
N -370 840 -330 840 {lab=#net8
spice_ignore=true}
N -300 630 -300 640 {lab=0}
N -300 620 -300 630 {lab=0}
N -300 530 -300 560 {lab=vp}
N -300 530 -290 530 {lab=vp}
N -260 930 -260 940 {lab=0}
N -260 920 -260 930 {lab=0}
N -260 840 -260 860 {lab=vn}
N 400 400 420 400 {lab=out}
N 50 380 100 380 {lab=vn}
N 250 460 250 480 {lab=0}
N 60 420 100 420 {lab=vbias}
N 410 400 410 410 {lab=out}
N 410 470 410 490 {lab=0}
N 280 490 410 490 {lab=0}
N 250 490 280 490 {lab=0}
N 250 480 250 490 {lab=0}
C {iopin.sym} 420 400 0 0 {name=p2 lab=out}
C {ipin.sym} 60 420 0 0 {name=p3 lab=vbias}
C {ipin.sym} 60 400 0 0 {name=p4 lab=vp}
C {ipin.sym} 250 320 0 0 {name=p6 lab=vdd}
C {vsource.sym} -450 230 0 0 {name=V1 value=3.3 savecurrent=false}
C {res.sym} -560 410 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {lab_pin.sym} -450 180 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -560 570 0 0 {name=l1 lab=0
spice_ignore=true}
C {gnd.sym} -450 280 0 0 {name=l2 lab=0}
C {vsource.sym} -330 230 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -330 180 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -330 280 0 0 {name=l3 lab=0}
C {lab_pin.sym} -560 340 0 0 {name=p9 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -560 510 0 0 {name=R2
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -450 460 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -400 520 3 1 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -440 570 0 0 {name=V3 value="AC 0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -440 610 0 0 {name=l4 lab=0
spice_ignore=true}
C {lab_pin.sym} -290 530 0 1 {name=p10 sig_type=std_logic lab=vp}
C {res.sym} -560 730 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {gnd.sym} -560 890 0 0 {name=l5 lab=0
spice_ignore=true}
C {lab_pin.sym} -560 660 0 0 {name=p11 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -560 830 0 0 {name=R5
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -450 780 1 0 {name=R6
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -400 840 3 1 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -440 890 0 0 {name=V4 value="AC -0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -440 930 0 0 {name=l6 lab=0
spice_ignore=true}
C {lab_pin.sym} -260 840 0 1 {name=p12 sig_type=std_logic lab=vn}
C {code_shown.sym} -130 -370 0 0 {name=NGSPICE only_toplevel=false value=".param
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
meas ac my_ugbw WHEN vdb(out)=0
meas ac max_gain MAX vdb(out)
write opamp_actb_sil.raw
set color0=white 
set color1=black  
plot db(v(out))
print my_ugbw
print max_gain
.endc
"}
C {devices/code_shown.sym} -1060 -310 0 0 {name=MODELS only_toplevel=true
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
C {vsource.sym} -300 590 0 0 {name=V5 value="AC 1 DC 1.3" savecurrent=false}
C {gnd.sym} -300 640 0 0 {name=l8 lab=0}
C {vsource.sym} -260 890 0 0 {name=V6 value="AC 0 DC 1.3" savecurrent=false}
C {gnd.sym} -260 940 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {ipin.sym} 50 380 0 0 {name=p1 lab=vn}
C {gnd.sym} 280 490 0 0 {name=l7 lab=0}
C {launcher.sym} 290 630 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/opamp_actb.raw tran"
}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 250 410 0 0 {name=x1}
C {symbols/cap_mim_1f5fF.sym} 410 440 0 0 {name=C1
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
