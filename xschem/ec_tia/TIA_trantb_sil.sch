v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1150 140 1950 540 {flags=graph
y1=1.1
y2=2.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
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
N -100 120 -100 140 {lab=vdd}
N -100 210 -100 220 {lab=0}
N -100 200 -100 210 {lab=0}
N 20 120 20 140 {lab=vbias}
N 20 210 20 220 {lab=0}
N 20 200 20 210 {lab=0}
N -210 280 -210 320 {lab=vdd
spice_ignore=true}
N -210 380 -210 420 {lab=#net4
spice_ignore=true}
N -210 480 -210 510 {lab=0
spice_ignore=true}
N -210 400 -130 400 {lab=#net4
spice_ignore=true}
N -70 400 -20 400 {lab=#net5
spice_ignore=true}
N -20 400 -20 460 {lab=#net5
spice_ignore=true}
N -90 460 -90 480 {lab=#net6
spice_ignore=true}
N -90 460 -80 460 {lab=#net6
spice_ignore=true}
N -90 540 -90 550 {lab=0
spice_ignore=true}
N -20 460 20 460 {lab=#net5
spice_ignore=true}
N -210 600 -210 640 {lab=vdd
spice_ignore=true}
N -210 700 -210 740 {lab=#net7
spice_ignore=true}
N -210 800 -210 830 {lab=0
spice_ignore=true}
N -210 720 -130 720 {lab=#net7
spice_ignore=true}
N -70 720 -20 720 {lab=#net8
spice_ignore=true}
N -20 720 -20 780 {lab=#net8
spice_ignore=true}
N -90 780 -90 800 {lab=#net9
spice_ignore=true}
N -90 780 -80 780 {lab=#net9
spice_ignore=true}
N -90 860 -90 870 {lab=0
spice_ignore=true}
N -20 780 20 780 {lab=#net8
spice_ignore=true}
N 50 570 50 580 {lab=0}
N 50 560 50 570 {lab=0}
N 50 470 50 500 {lab=vp}
N 50 470 60 470 {lab=vp}
N 90 870 90 880 {lab=0}
N 90 860 90 870 {lab=0}
N 90 780 90 800 {lab=vn}
N 90 800 180 800 {lab=vn}
N 90 870 180 870 {lab=0}
N 180 800 180 810 {lab=vn}
N 530 440 550 440 {lab=vbias}
N 510 420 550 420 {lab=vp}
N 700 340 700 370 {lab=vdd}
N 500 400 550 400 {lab=vn}
N 880 240 880 410 {lab=out}
N 810 240 880 240 {lab=out}
N 650 240 750 240 {lab=vn}
N 530 250 530 400 {lab=vn}
N 880 170 880 240 {lab=out}
N 810 170 880 170 {lab=out}
N 650 170 750 170 {lab=vn}
N 650 170 650 240 {lab=vn}
N 750 500 880 500 {lab=0}
N 530 240 530 250 {lab=vn}
N 530 240 650 240 {lab=vn}
N 850 420 890 420 {lab=out}
N 880 420 880 440 {lab=out}
N 880 410 880 420 {lab=out}
N 700 480 700 500 {lab=0}
N 700 500 750 500 {lab=0}
N 780 260 780 500 {lab=0}
C {vsource.sym} -100 170 0 0 {name=V1 value=3.3 savecurrent=false}
C {res.sym} -210 350 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {lab_pin.sym} -100 120 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -210 510 0 0 {name=l1 lab=0
spice_ignore=true}
C {gnd.sym} -100 220 0 0 {name=l2 lab=0}
C {vsource.sym} 20 170 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} 20 120 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} 20 220 0 0 {name=l3 lab=0}
C {lab_pin.sym} -210 280 0 0 {name=p9 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -210 450 0 0 {name=R2
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -100 400 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -50 460 3 1 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -90 510 0 0 {name=V3 value="AC 0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -90 550 0 0 {name=l4 lab=0
spice_ignore=true}
C {lab_pin.sym} 60 470 0 1 {name=p10 sig_type=std_logic lab=vp}
C {res.sym} -210 670 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {gnd.sym} -210 830 0 0 {name=l5 lab=0
spice_ignore=true}
C {lab_pin.sym} -210 600 0 0 {name=p11 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -210 770 0 0 {name=R5
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -100 720 1 0 {name=R6
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -50 780 3 1 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -90 830 0 0 {name=V4 value="AC -0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -90 870 0 0 {name=l6 lab=0
spice_ignore=true}
C {lab_pin.sym} 90 780 0 1 {name=p12 sig_type=std_logic lab=vn}
C {code_shown.sym} 230 -180 0 0 {name=NGSPICE only_toplevel=false value=".param
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
tran 10n 100u
write TIA_trantb_sil.raw
.endc
"}
C {vsource.sym} 50 530 0 0 {name=V5 value=2.7 savecurrent=false}
C {gnd.sym} 50 580 0 0 {name=l8 lab=0}
C {gnd.sym} 90 880 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {isource.sym} 90 830 2 1 {name=I0 value="PWL(0 200n 10u 200n 40u 380u 70u 380u 100u 200n)"}
C {launcher.sym} 660 590 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/TIA_trantb_sil.raw tran"
}
C {devices/code_shown.sym} -320 -90 0 0 {name=MODELS1 only_toplevel=true
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
C {iopin.sym} 890 420 0 0 {name=p2 lab=out}
C {ipin.sym} 530 440 0 0 {name=p3 lab=vbias}
C {ipin.sym} 510 420 0 0 {name=p4 lab=vp}
C {ipin.sym} 700 340 0 0 {name=p6 lab=vdd}
C {ipin.sym} 500 400 0 0 {name=p1 lab=vn}
C {gnd.sym} 700 500 0 0 {name=l7 lab=0}
C {symbols/cap_mim_1f5fF.sym} 880 470 0 0 {name=C6
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 700 430 0 0 {name=x1}
C {symbols/ppolyf_u_1k.sym} 780 240 3 0 {name=R7
W=3e-6
L=90e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 780 170 1 0 {name=C4
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 180 840 0 0 {name=C5
W=250e-6
L=250e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
