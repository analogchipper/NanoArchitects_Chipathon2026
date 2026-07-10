v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 300 -10 1100 390 {flags=graph
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
N -190 280 -170 280 {lab=vbias}
N -210 260 -170 260 {lab=vp}
N -20 180 -20 210 {lab=#net1}
N -700 40 -700 60 {lab=vdd}
N -700 120 -700 140 {lab=0}
N -580 40 -580 60 {lab=vbias}
N -580 120 -580 140 {lab=0}
N -480 150 -480 170 {lab=0}
N -480 60 -480 90 {lab=vp}
N -480 60 -470 60 {lab=vp}
N -560 280 -560 300 {lab=0}
N -560 200 -560 220 {lab=vn}
N 140 260 150 260 {lab=out}
N -220 240 -170 240 {lab=vn}
N -20 320 -20 340 {lab=0}
N 140 260 140 270 {lab=out}
N -20 340 140 340 {lab=0}
N 140 330 140 340 {lab=0}
N 130 260 140 260 {lab=out}
N -50 100 -20 100 {lab=vdd}
N -20 100 -20 120 {lab=vdd}
C {iopin.sym} 150 260 0 0 {name=p2 lab=out}
C {ipin.sym} -190 280 0 0 {name=p3 lab=vbias}
C {ipin.sym} -210 260 0 0 {name=p4 lab=vp}
C {ipin.sym} -50 100 0 0 {name=p6 lab=vdd}
C {vsource.sym} -700 90 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} -700 40 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -700 140 0 0 {name=l2 lab=0}
C {vsource.sym} -580 90 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -580 40 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -580 140 0 0 {name=l3 lab=0}
C {lab_pin.sym} -470 60 0 1 {name=p10 sig_type=std_logic lab=vp}
C {lab_pin.sym} -560 200 0 1 {name=p12 sig_type=std_logic lab=vn}
C {code_shown.sym} -400 -400 0 0 {name=NGSPICE only_toplevel=false value=".param
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
op
print i(v3)
write opamp_icon_sil.raw
.endc
"}
C {vsource.sym} -480 120 0 0 {name=V5 value=1.3 savecurrent=false}
C {gnd.sym} -480 170 0 0 {name=l8 lab=0}
C {vsource.sym} -560 250 0 0 {name=V6 value=1.3 savecurrent=false}
C {gnd.sym} -560 300 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {ipin.sym} -220 240 0 0 {name=p1 lab=vn}
C {gnd.sym} -20 340 0 0 {name=l7 lab=0}
C {devices/code_shown.sym} -920 -200 0 0 {name=MODELS only_toplevel=true
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
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} -20 270 0 0 {name=x1}
C {launcher.sym} 90 390 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/opamp_tbtran_sil.raw tran"
}
C {symbols/cap_mim_1f5fF.sym} 140 300 0 0 {name=C1
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {vsource.sym} -20 150 0 0 {name=V3 value=0 savecurrent=false}
