v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 900 500 1700 900 {flags=graph
y1=2.404
y2=3.284
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00012623927
x2=-2.6239272e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="7 4"
node="out
vn"}
N -220 450 -220 470 {lab=vdd}
N -220 540 -220 550 {lab=0}
N -220 530 -220 540 {lab=0}
N -100 450 -100 470 {lab=vbias}
N -100 540 -100 550 {lab=0}
N -100 530 -100 540 {lab=0}
N -330 610 -330 650 {lab=vdd
spice_ignore=true}
N -330 710 -330 750 {lab=#net4
spice_ignore=true}
N -330 810 -330 840 {lab=0
spice_ignore=true}
N -330 730 -250 730 {lab=#net4
spice_ignore=true}
N -190 730 -140 730 {lab=#net5
spice_ignore=true}
N -140 730 -140 790 {lab=#net5
spice_ignore=true}
N -210 790 -210 810 {lab=#net6
spice_ignore=true}
N -210 790 -200 790 {lab=#net6
spice_ignore=true}
N -210 870 -210 880 {lab=0
spice_ignore=true}
N -140 790 -100 790 {lab=#net5
spice_ignore=true}
N -330 930 -330 970 {lab=vdd
spice_ignore=true}
N -330 1030 -330 1070 {lab=#net7
spice_ignore=true}
N -330 1130 -330 1160 {lab=0
spice_ignore=true}
N -330 1050 -250 1050 {lab=#net7
spice_ignore=true}
N -190 1050 -140 1050 {lab=#net8
spice_ignore=true}
N -140 1050 -140 1110 {lab=#net8
spice_ignore=true}
N -210 1110 -210 1130 {lab=#net9
spice_ignore=true}
N -210 1110 -200 1110 {lab=#net9
spice_ignore=true}
N -210 1190 -210 1200 {lab=0
spice_ignore=true}
N -140 1110 -100 1110 {lab=#net8
spice_ignore=true}
N -70 900 -70 910 {lab=0}
N -70 890 -70 900 {lab=0}
N -70 800 -70 830 {lab=vp}
N -70 800 -60 800 {lab=vp}
N -30 1200 -30 1210 {lab=0}
N -30 1190 -30 1200 {lab=0}
N -30 1110 -30 1130 {lab=vn}
N -30 1130 60 1130 {lab=vn}
N -30 1200 60 1200 {lab=0}
N 60 1130 60 1140 {lab=vn}
N 390 760 410 760 {lab=vbias}
N 370 740 410 740 {lab=vp}
N 560 660 560 690 {lab=vdd}
N 360 720 410 720 {lab=vn}
N 740 560 740 730 {lab=out}
N 670 560 740 560 {lab=out}
N 510 560 610 560 {lab=vn}
N 390 570 390 720 {lab=vn}
N 740 490 740 560 {lab=out}
N 670 490 740 490 {lab=out}
N 510 490 610 490 {lab=vn}
N 510 490 510 560 {lab=vn}
N 610 820 740 820 {lab=0}
N 390 560 390 570 {lab=vn}
N 390 560 510 560 {lab=vn}
N 710 740 750 740 {lab=out}
N 740 740 740 760 {lab=out}
N 740 730 740 740 {lab=out}
N 560 800 560 820 {lab=0}
N 560 820 610 820 {lab=0}
N 640 580 640 820 {lab=0}
C {vsource.sym} -220 500 0 0 {name=V1 value=3.3 savecurrent=false}
C {res.sym} -330 680 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {lab_pin.sym} -220 450 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -330 840 0 0 {name=l1 lab=0
spice_ignore=true}
C {gnd.sym} -220 550 0 0 {name=l2 lab=0}
C {vsource.sym} -100 500 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -100 450 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -100 550 0 0 {name=l3 lab=0}
C {lab_pin.sym} -330 610 0 0 {name=p9 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -330 780 0 0 {name=R2
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -220 730 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -170 790 3 1 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -210 840 0 0 {name=V3 value="AC 0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -210 880 0 0 {name=l4 lab=0
spice_ignore=true}
C {lab_pin.sym} -60 800 0 1 {name=p10 sig_type=std_logic lab=vp}
C {res.sym} -330 1000 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {gnd.sym} -330 1160 0 0 {name=l5 lab=0
spice_ignore=true}
C {lab_pin.sym} -330 930 0 0 {name=p11 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -330 1100 0 0 {name=R5
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -220 1050 1 0 {name=R6
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -170 1110 3 1 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -210 1160 0 0 {name=V4 value="AC -0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -210 1200 0 0 {name=l6 lab=0
spice_ignore=true}
C {lab_pin.sym} -30 1110 0 1 {name=p12 sig_type=std_logic lab=vn}
C {code_shown.sym} 90 -90 0 0 {name=NGSPICE only_toplevel=false value=".param
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
noise v(out) I0 dec 100 0.1 1k
write TIA_noise_sil.raw
set color0=white 
set color1=black 
setplot noise1
plot onoise_spectrum xlog ylog
plot inoise_spectrum xlog ylog
setplot noise2
print onoise_total
print inoise_total
.endc
"}
C {vsource.sym} -70 860 0 0 {name=V5 value=2.8 savecurrent=false}
C {gnd.sym} -70 910 0 0 {name=l8 lab=0}
C {gnd.sym} -30 1210 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {isource.sym} -30 1160 2 1 {name=I0 value="DC 0 AC 1"}
C {launcher.sym} 960 960 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/TIA_noise_sil.raw ac"
}
C {devices/code_shown.sym} -550 120 0 0 {name=MODELS1 only_toplevel=true
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
C {iopin.sym} 750 740 0 0 {name=p2 lab=out}
C {ipin.sym} 390 760 0 0 {name=p3 lab=vbias}
C {ipin.sym} 370 740 0 0 {name=p4 lab=vp}
C {ipin.sym} 560 660 0 0 {name=p6 lab=vdd}
C {ipin.sym} 360 720 0 0 {name=p1 lab=vn}
C {gnd.sym} 560 820 0 0 {name=l7 lab=0}
C {symbols/cap_mim_1f5fF.sym} 740 790 0 0 {name=C6
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 560 750 0 0 {name=x1}
C {symbols/ppolyf_u_1k.sym} 640 560 3 0 {name=R7
W=3e-6
L=21e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 640 490 1 0 {name=C4
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 60 1170 0 0 {name=C5
W=250e-6
L=250e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
