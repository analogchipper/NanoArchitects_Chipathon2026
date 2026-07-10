v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1040 70 1840 470 {flags=graph
y1=0.78944444
y2=1.6694444
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
N -70 240 -70 260 {lab=vdd}
N -70 330 -70 340 {lab=0}
N -70 320 -70 330 {lab=0}
N 50 240 50 260 {lab=vbias}
N 50 330 50 340 {lab=0}
N 50 320 50 330 {lab=0}
N -180 400 -180 440 {lab=vdd
spice_ignore=true}
N -180 500 -180 540 {lab=#net4
spice_ignore=true}
N -180 600 -180 630 {lab=0
spice_ignore=true}
N -180 520 -100 520 {lab=#net4
spice_ignore=true}
N -40 520 10 520 {lab=#net5
spice_ignore=true}
N 10 520 10 580 {lab=#net5
spice_ignore=true}
N -60 580 -60 600 {lab=#net6
spice_ignore=true}
N -60 580 -50 580 {lab=#net6
spice_ignore=true}
N -60 660 -60 670 {lab=0
spice_ignore=true}
N 10 580 50 580 {lab=#net5
spice_ignore=true}
N -180 720 -180 760 {lab=vdd
spice_ignore=true}
N -180 820 -180 860 {lab=#net7
spice_ignore=true}
N -180 920 -180 950 {lab=0
spice_ignore=true}
N -180 840 -100 840 {lab=#net7
spice_ignore=true}
N -40 840 10 840 {lab=#net8
spice_ignore=true}
N 10 840 10 900 {lab=#net8
spice_ignore=true}
N -60 900 -60 920 {lab=#net9
spice_ignore=true}
N -60 900 -50 900 {lab=#net9
spice_ignore=true}
N -60 980 -60 990 {lab=0
spice_ignore=true}
N 10 900 50 900 {lab=#net8
spice_ignore=true}
N 80 690 80 700 {lab=0}
N 80 680 80 690 {lab=0}
N 80 590 80 620 {lab=vp}
N 80 590 90 590 {lab=vp}
N 120 990 120 1000 {lab=0}
N 120 980 120 990 {lab=0}
N 120 900 120 920 {lab=vn}
N 120 920 210 920 {lab=vn}
N 120 990 210 990 {lab=0}
N 210 920 210 930 {lab=vn}
N 540 400 560 400 {lab=vbias}
N 520 380 560 380 {lab=vp}
N 710 300 710 330 {lab=vdd}
N 510 360 560 360 {lab=vn}
N 890 200 890 370 {lab=out}
N 820 200 890 200 {lab=out}
N 660 200 760 200 {lab=vn}
N 540 210 540 360 {lab=vn}
N 890 130 890 200 {lab=out}
N 820 130 890 130 {lab=out}
N 660 130 760 130 {lab=vn}
N 660 130 660 200 {lab=vn}
N 760 460 890 460 {lab=0}
N 540 200 540 210 {lab=vn}
N 540 200 660 200 {lab=vn}
N 860 380 900 380 {lab=out}
N 890 380 890 400 {lab=out}
N 890 370 890 380 {lab=out}
N 710 440 710 460 {lab=0}
N 710 460 760 460 {lab=0}
N 790 220 790 460 {lab=0}
C {vsource.sym} -70 290 0 0 {name=V1 value=3.3 savecurrent=false}
C {res.sym} -180 470 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {lab_pin.sym} -70 240 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -180 630 0 0 {name=l1 lab=0
spice_ignore=true}
C {gnd.sym} -70 340 0 0 {name=l2 lab=0}
C {vsource.sym} 50 290 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} 50 240 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} 50 340 0 0 {name=l3 lab=0}
C {lab_pin.sym} -180 400 0 0 {name=p9 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -180 570 0 0 {name=R2
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -70 520 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -20 580 3 1 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -60 630 0 0 {name=V3 value="AC 0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -60 670 0 0 {name=l4 lab=0
spice_ignore=true}
C {lab_pin.sym} 90 590 0 1 {name=p10 sig_type=std_logic lab=vp}
C {res.sym} -180 790 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {gnd.sym} -180 950 0 0 {name=l5 lab=0
spice_ignore=true}
C {lab_pin.sym} -180 720 0 0 {name=p11 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -180 890 0 0 {name=R5
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -70 840 1 0 {name=R6
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -20 900 3 1 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -60 950 0 0 {name=V4 value="AC -0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -60 990 0 0 {name=l6 lab=0
spice_ignore=true}
C {lab_pin.sym} 120 900 0 1 {name=p12 sig_type=std_logic lab=vn}
C {code_shown.sym} 270 -570 0 0 {name=NGSPICE only_toplevel=false value=".param
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
set color0=white
set color1=black

dc I0 0 380u 1u
setplot dc1
plot v(out) title 'DC Sweep: 0 to 360uA (Headroom Check)'

tran 100n 100u
setplot tran1
plot v(out) vn title 'Transient Response: 100uA Step'

noise v(out) I0 dec 100 0.1 4Meg
setplot noise1
plot inoise_spectrum xlog ylog title 'Input Referred Noise Spectrum'
setplot noise2
print inoise_total

write TIA_PVT_sil.raw
.endc
"}
C {vsource.sym} 80 650 0 0 {name=V5 value=2.7 savecurrent=false}
C {gnd.sym} 80 700 0 0 {name=l8 lab=0}
C {gnd.sym} 120 1000 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {isource.sym} 120 950 2 1 {name=I0 value="DC 0 AC 1 PWL(0 200n 10u 200n 40u 380u 70u 380u 100u 200n)"}
C {launcher.sym} 1090 540 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/TIA_PVT_sil.raw tran"
}
C {symbols/cap_mim_1f5fF.sym} 210 960 0 0 {name=C1
W=250e-6
L=250e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {iopin.sym} 900 380 0 0 {name=p2 lab=out}
C {ipin.sym} 540 400 0 0 {name=p3 lab=vbias}
C {ipin.sym} 520 380 0 0 {name=p4 lab=vp}
C {ipin.sym} 710 300 0 0 {name=p6 lab=vdd}
C {ipin.sym} 510 360 0 0 {name=p1 lab=vn}
C {gnd.sym} 710 460 0 0 {name=l7 lab=0}
C {symbols/cap_mim_1f5fF.sym} 890 430 0 0 {name=C6
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 710 390 0 0 {name=x1}
C {symbols/ppolyf_u_1k.sym} 790 200 3 0 {name=R7
W=3e-6
L=21e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 790 130 1 0 {name=C4
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {devices/code_shown.sym} -370 -270 0 0 {name=MODELS1 only_toplevel=true
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
