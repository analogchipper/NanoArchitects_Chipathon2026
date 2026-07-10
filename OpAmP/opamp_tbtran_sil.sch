v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 580 -360 1380 40 {flags=graph
y1=-3.4376347
y2=-0.13756875
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
N 90 -70 110 -70 {lab=vbias}
N 70 -90 110 -90 {lab=vp}
N 260 -170 260 -140 {lab=vdd}
N -420 -310 -420 -290 {lab=vdd}
N -420 -230 -420 -210 {lab=0}
N -300 -310 -300 -290 {lab=vbias}
N -300 -230 -300 -210 {lab=0}
N -200 -200 -200 -180 {lab=0}
N -200 -290 -200 -260 {lab=vp}
N -200 -290 -190 -290 {lab=vp}
N -280 -70 -280 -50 {lab=0}
N -280 -150 -280 -130 {lab=vn}
N 420 -90 430 -90 {lab=out}
N 60 -110 110 -110 {lab=vn}
N 260 -30 260 -10 {lab=0}
N 420 -90 420 -80 {lab=out}
N 260 -10 420 -10 {lab=0}
N 420 -20 420 -10 {lab=0}
N 410 -90 420 -90 {lab=out}
C {iopin.sym} 430 -90 0 0 {name=p2 lab=out}
C {ipin.sym} 90 -70 0 0 {name=p3 lab=vbias}
C {ipin.sym} 70 -90 0 0 {name=p4 lab=vp}
C {ipin.sym} 260 -170 0 0 {name=p6 lab=vdd}
C {vsource.sym} -420 -260 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} -420 -310 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -420 -210 0 0 {name=l2 lab=0}
C {vsource.sym} -300 -260 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -300 -310 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -300 -210 0 0 {name=l3 lab=0}
C {lab_pin.sym} -190 -290 0 1 {name=p10 sig_type=std_logic lab=vp}
C {lab_pin.sym} -280 -150 0 1 {name=p12 sig_type=std_logic lab=vn}
C {code_shown.sym} -20 -590 0 0 {name=NGSPICE only_toplevel=false value=".param
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
tran 1u 30m
write opamp_tbtran_sil.raw
.endc
"}
C {vsource.sym} -200 -230 0 0 {name=V5 value="SINE(1.3 100m 1k)" savecurrent=false}
C {gnd.sym} -200 -180 0 0 {name=l8 lab=0}
C {vsource.sym} -280 -100 0 0 {name=V6 value="AC 0 DC 1.3" savecurrent=false}
C {gnd.sym} -280 -50 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {ipin.sym} 60 -110 0 0 {name=p1 lab=vn}
C {gnd.sym} 260 -10 0 0 {name=l7 lab=0}
C {devices/code_shown.sym} -640 -550 0 0 {name=MODELS only_toplevel=true
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
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 260 -80 0 0 {name=x1}
C {launcher.sym} 370 40 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/opamp_tbtran_sil.raw tran"
}
C {symbols/cap_mim_1f5fF.sym} 420 -50 0 0 {name=C1
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
