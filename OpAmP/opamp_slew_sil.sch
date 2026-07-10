v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 570 80 1370 480 {flags=graph
y1=-0.00039
y2=3.3
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
N 80 370 100 370 {lab=vbias}
N 60 350 100 350 {lab=vp}
N 250 270 250 300 {lab=vdd}
N -430 130 -430 150 {lab=vdd}
N -430 210 -430 230 {lab=0}
N -310 130 -310 150 {lab=vbias}
N -310 210 -310 230 {lab=0}
N -210 240 -210 260 {lab=0}
N -210 150 -210 180 {lab=vp}
N -210 150 -200 150 {lab=vp}
N 410 350 420 350 {lab=out}
N 50 330 100 330 {lab=out}
N 250 410 250 430 {lab=0}
N 410 350 410 360 {lab=out}
N 250 430 410 430 {lab=0}
N 410 420 410 430 {lab=0}
N 400 350 410 350 {lab=out}
N 410 240 410 350 {lab=out}
N 80 240 410 240 {lab=out}
N 80 240 80 330 {lab=out}
C {iopin.sym} 420 350 0 0 {name=p2 lab=out}
C {ipin.sym} 80 370 0 0 {name=p3 lab=vbias}
C {ipin.sym} 60 350 0 0 {name=p4 lab=vp}
C {ipin.sym} 250 270 0 0 {name=p6 lab=vdd}
C {vsource.sym} -430 180 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} -430 130 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -430 230 0 0 {name=l2 lab=0}
C {vsource.sym} -310 180 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -310 130 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -310 230 0 0 {name=l3 lab=0}
C {lab_pin.sym} -200 150 0 1 {name=p10 sig_type=std_logic lab=vp}
C {code_shown.sym} 80 -610 0 0 {name=NGSPICE only_toplevel=false value=".param
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

tran 1n 15u

meas tran t1_rise WHEN v(out)=0.7 RISE=1
meas tran t2_rise WHEN v(out)=2.3 RISE=1
let trise = t2_rise - t1_rise
let sr_rise = (2.3 - 0.7) / trise
let sr_rise_Vus = sr_rise / 1e6
print sr_rise_Vus

meas tran t1_fall WHEN v(out)=2.3 FALL=1
meas tran t2_fall WHEN v(out)=0.7 FALL=1
let tfall = t2_fall - t1_fall
let sr_fall = (2.3 - 0.7) / tfall
let sr_fall_Vus = sr_fall / 1e6
print sr_fall_Vus

plot v(vp) v(out)
write opamp_slew_sil.raw
.endc
"}
C {vsource.sym} -210 210 0 0 {name=V5 value="PULSE(0.5 2.5 10n 1n 1n 5u 10u)" savecurrent=false}
C {gnd.sym} -210 260 0 0 {name=l8 lab=0}
C {ipin.sym} 50 330 0 0 {name=p1 lab=vn}
C {gnd.sym} 250 430 0 0 {name=l7 lab=0}
C {devices/code_shown.sym} -650 -110 0 0 {name=MODELS only_toplevel=true
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
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 250 360 0 0 {name=x1}
C {launcher.sym} 360 480 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/opamp_tbtran_sil.raw tran"
}
C {symbols/cap_mim_1f5fF.sym} 410 390 0 0 {name=C1
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
