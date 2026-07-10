v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1360 -230 2160 170 {flags=graph
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
N 960 -50 980 -50 {lab=vbias}
N 940 -70 980 -70 {lab=vp}
N 1130 -150 1130 -120 {lab=vdd}
N 420 -290 420 -270 {lab=vdd}
N 420 -200 420 -190 {lab=0}
N 420 -210 420 -200 {lab=0}
N 540 -290 540 -270 {lab=vbias}
N 540 -200 540 -190 {lab=0}
N 540 -210 540 -200 {lab=0}
N 310 -130 310 -90 {lab=vdd
spice_ignore=true}
N 310 -30 310 10 {lab=#net4
spice_ignore=true}
N 310 70 310 100 {lab=0
spice_ignore=true}
N 310 -10 390 -10 {lab=#net4
spice_ignore=true}
N 450 -10 500 -10 {lab=#net5
spice_ignore=true}
N 500 -10 500 50 {lab=#net5
spice_ignore=true}
N 430 50 430 70 {lab=#net6
spice_ignore=true}
N 430 50 440 50 {lab=#net6
spice_ignore=true}
N 430 130 430 140 {lab=0
spice_ignore=true}
N 500 50 540 50 {lab=#net5
spice_ignore=true}
N 310 190 310 230 {lab=vdd
spice_ignore=true}
N 310 290 310 330 {lab=#net7
spice_ignore=true}
N 310 390 310 420 {lab=0
spice_ignore=true}
N 310 310 390 310 {lab=#net7
spice_ignore=true}
N 450 310 500 310 {lab=#net8
spice_ignore=true}
N 500 310 500 370 {lab=#net8
spice_ignore=true}
N 430 370 430 390 {lab=#net9
spice_ignore=true}
N 430 370 440 370 {lab=#net9
spice_ignore=true}
N 430 450 430 460 {lab=0
spice_ignore=true}
N 500 370 540 370 {lab=#net8
spice_ignore=true}
N 570 160 570 170 {lab=0}
N 570 150 570 160 {lab=0}
N 570 60 570 90 {lab=vp}
N 570 60 580 60 {lab=vp}
N 1130 -10 1130 10 {lab=0}
N 1280 -200 1280 -70 {lab=out}
N 1030 -200 1280 -200 {lab=out}
N 940 -90 980 -90 {lab=out}
N 1280 -70 1290 -70 {lab=out}
N 930 -200 1030 -200 {lab=out}
N 930 -200 930 -90 {lab=out}
N 930 -90 940 -90 {lab=out}
C {devices/code_shown.sym} 90 -780 0 0 {name=MODELS only_toplevel=true
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
C {iopin.sym} 1290 -70 0 0 {name=p2 lab=out}
C {ipin.sym} 960 -50 0 0 {name=p3 lab=vbias}
C {ipin.sym} 940 -70 0 0 {name=p4 lab=vp}
C {ipin.sym} 1130 -150 0 0 {name=p6 lab=vdd}
C {vsource.sym} 420 -240 0 0 {name=V1 value=3.3 savecurrent=false}
C {res.sym} 310 -60 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {lab_pin.sym} 420 -290 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} 310 100 0 0 {name=l1 lab=0
spice_ignore=true}
C {gnd.sym} 420 -190 0 0 {name=l2 lab=0}
C {vsource.sym} 540 -240 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} 540 -290 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} 540 -190 0 0 {name=l3 lab=0}
C {lab_pin.sym} 310 -130 0 0 {name=p9 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} 310 40 0 0 {name=R2
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} 420 -10 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} 470 50 3 1 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} 430 100 0 0 {name=V3 value="AC 0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} 430 140 0 0 {name=l4 lab=0
spice_ignore=true}
C {lab_pin.sym} 580 60 0 1 {name=p10 sig_type=std_logic lab=vp}
C {res.sym} 310 260 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {gnd.sym} 310 420 0 0 {name=l5 lab=0
spice_ignore=true}
C {lab_pin.sym} 310 190 0 0 {name=p11 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} 310 360 0 0 {name=R5
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} 420 310 1 0 {name=R6
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} 470 370 3 1 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} 430 420 0 0 {name=V4 value="AC -0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} 430 460 0 0 {name=l6 lab=0
spice_ignore=true}
C {code_shown.sym} 760 -730 0 0 {name=NGSPICE only_toplevel=false value=".param
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
dc V5 0 3.3 0.01
let gain = deriv(v(out))
meas dc icmr_min FIND v-sweep WHEN gain=1.01 FALL=1
meas dc icmr_max FIND v-sweep WHEN gain=0.99 FALL=last
write opamp_icmr_sil.raw
print icmr_min
print icmr_max
plot v(out) v(vp)
plot deriv(v(out))
.endc
"}
C {vsource.sym} 570 120 0 0 {name=V5 value="AC 1 DC 1.3" savecurrent=false}
C {gnd.sym} 570 170 0 0 {name=l8 lab=0}
C {gnd.sym} 1130 10 0 0 {name=l7 lab=0}
C {launcher.sym} 1160 160 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/opamp_cm_sil.raw ac"
}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 1130 -60 0 0 {name=x1}
