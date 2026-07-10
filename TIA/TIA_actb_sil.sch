v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 570 220 1370 620 {flags=graph
y1=2.64094
y2=5.93624
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.03
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
N -380 510 -360 510 {lab=vbias}
N -400 490 -360 490 {lab=vp}
N -210 410 -210 440 {lab=vdd}
N -890 260 -890 280 {lab=vdd}
N -890 350 -890 360 {lab=0}
N -890 340 -890 350 {lab=0}
N -770 260 -770 280 {lab=vbias}
N -770 350 -770 360 {lab=0}
N -770 340 -770 350 {lab=0}
N -1000 420 -1000 460 {lab=vdd
spice_ignore=true}
N -1000 520 -1000 560 {lab=#net4
spice_ignore=true}
N -1000 620 -1000 650 {lab=0
spice_ignore=true}
N -1000 540 -920 540 {lab=#net4
spice_ignore=true}
N -860 540 -810 540 {lab=#net5
spice_ignore=true}
N -810 540 -810 600 {lab=#net5
spice_ignore=true}
N -880 600 -880 620 {lab=#net6
spice_ignore=true}
N -880 600 -870 600 {lab=#net6
spice_ignore=true}
N -880 680 -880 690 {lab=0
spice_ignore=true}
N -810 600 -770 600 {lab=#net5
spice_ignore=true}
N -1000 740 -1000 780 {lab=vdd
spice_ignore=true}
N -1000 840 -1000 880 {lab=#net7
spice_ignore=true}
N -1000 940 -1000 970 {lab=0
spice_ignore=true}
N -1000 860 -920 860 {lab=#net7
spice_ignore=true}
N -860 860 -810 860 {lab=#net8
spice_ignore=true}
N -810 860 -810 920 {lab=#net8
spice_ignore=true}
N -880 920 -880 940 {lab=#net9
spice_ignore=true}
N -880 920 -870 920 {lab=#net9
spice_ignore=true}
N -880 1000 -880 1010 {lab=0
spice_ignore=true}
N -810 920 -770 920 {lab=#net8
spice_ignore=true}
N -740 710 -740 720 {lab=0}
N -740 700 -740 710 {lab=0}
N -740 610 -740 640 {lab=vp}
N -740 610 -730 610 {lab=vp}
N -700 1010 -700 1020 {lab=0}
N -700 1000 -700 1010 {lab=0}
N -700 920 -700 940 {lab=vn}
N -410 470 -360 470 {lab=vn}
N -700 940 -610 940 {lab=vn}
N -700 1010 -610 1010 {lab=0}
N -610 940 -610 950 {lab=vn}
N -30 310 -30 480 {lab=out}
N -100 310 -30 310 {lab=out}
N -260 310 -160 310 {lab=vn}
N -380 320 -380 470 {lab=vn}
N -30 240 -30 310 {lab=out}
N -100 240 -30 240 {lab=out}
N -260 240 -160 240 {lab=vn}
N -260 240 -260 310 {lab=vn}
N -160 570 -30 570 {lab=0}
N -380 310 -380 320 {lab=vn}
N -380 310 -260 310 {lab=vn}
N -60 490 -20 490 {lab=out}
N -30 490 -30 510 {lab=out}
N -30 480 -30 490 {lab=out}
N -210 550 -210 570 {lab=0}
N -210 570 -160 570 {lab=0}
N -130 330 -130 570 {lab=0}
C {iopin.sym} -20 490 0 0 {name=p2 lab=out}
C {ipin.sym} -380 510 0 0 {name=p3 lab=vbias}
C {ipin.sym} -400 490 0 0 {name=p4 lab=vp}
C {ipin.sym} -210 410 0 0 {name=p6 lab=vdd}
C {vsource.sym} -890 310 0 0 {name=V1 value=3.3 savecurrent=false}
C {res.sym} -1000 490 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {lab_pin.sym} -890 260 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -1000 650 0 0 {name=l1 lab=0
spice_ignore=true}
C {gnd.sym} -890 360 0 0 {name=l2 lab=0}
C {vsource.sym} -770 310 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -770 260 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -770 360 0 0 {name=l3 lab=0}
C {lab_pin.sym} -1000 420 0 0 {name=p9 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -1000 590 0 0 {name=R2
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -890 540 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -840 600 3 1 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -880 650 0 0 {name=V3 value="AC 0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -880 690 0 0 {name=l4 lab=0
spice_ignore=true}
C {lab_pin.sym} -730 610 0 1 {name=p10 sig_type=std_logic lab=vp}
C {res.sym} -1000 810 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {gnd.sym} -1000 970 0 0 {name=l5 lab=0
spice_ignore=true}
C {lab_pin.sym} -1000 740 0 0 {name=p11 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -1000 910 0 0 {name=R5
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -890 860 1 0 {name=R6
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -840 920 3 1 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -880 970 0 0 {name=V4 value="AC -0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -880 1010 0 0 {name=l6 lab=0
spice_ignore=true}
C {lab_pin.sym} -700 920 0 1 {name=p12 sig_type=std_logic lab=vn}
C {code_shown.sym} -590 -400 0 0 {name=NGSPICE only_toplevel=false value=".param
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
ac dec 101 10 10G
meas ac my_ubw WHEN vdb(out)=0
meas ac my_gain MAX vdb(out)
let gain_o=my_gain-3
meas ac f3db WHEN vdb(out)=gain_o FALL=1
write TIA_actb_sil.raw
print my_ubw
print f3db
print my_gain
plot db(v(out))
plot ph(v(out))
.endc
"}
C {vsource.sym} -740 670 0 0 {name=V5 value=2.7 savecurrent=false}
C {gnd.sym} -740 720 0 0 {name=l8 lab=0}
C {gnd.sym} -700 1020 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {ipin.sym} -410 470 0 0 {name=p1 lab=vn}
C {gnd.sym} -210 570 0 0 {name=l7 lab=0}
C {isource.sym} -700 970 2 0 {name=I0 value="DC 0 AC 1"}
C {symbols/cap_mim_1f5fF.sym} -30 540 0 0 {name=C6
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} -210 500 0 0 {name=x1}
C {symbols/ppolyf_u_1k.sym} -130 310 3 0 {name=R7
W=3e-6
L=21e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} -130 240 1 0 {name=C4
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} -610 980 0 0 {name=C1
W=250e-6
L=250e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {devices/code_shown.sym} -1250 -40 0 0 {name=MODELS1 only_toplevel=true
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
