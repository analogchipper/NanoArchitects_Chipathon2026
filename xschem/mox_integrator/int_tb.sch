v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1620 120 2420 520 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
reset"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
N 1080 390 1150 390 {lab=#net1}
N 1080 430 1150 430 {lab=vp}
N 1080 475 1150 475 {lab=vbias}
N 1240 320 1240 370 {lab=vdd}
N 1240 480 1240 510 {lab=0}
N 1390 420 1420 420 {lab=out}
N 510 650 510 670 {lab=0}
N 510 670 730 670 {lab=0}
N 730 650 730 670 {lab=0}
N 590 650 590 670 {lab=0}
N 660 650 660 670 {lab=0}
N 620 670 620 740 {lab=0}
N 510 530 510 590 {lab=vbias}
N 590 530 590 590 {lab=vn}
N 660 530 660 590 {lab=vp}
N 730 530 730 590 {lab=vdd}
N 590 390 590 440 {lab=vn}
N 590 500 590 530 {lab=vn}
N 1330 210 1400 210 {lab=out}
N 1230 210 1270 210 {lab=#net1}
N 1170 210 1230 210 {lab=#net1}
N 590 440 590 500 {lab=vn}
N 1250 110 1270 110 {lab=#net1}
N 1330 110 1360 110 {lab=out}
N 1300 110 1300 160 {lab=0}
N 930 390 960 390 {lab=vn}
N 1020 390 1080 390 {lab=#net1}
N 1400 210 1400 420 {lab=out}
N 1250 110 1250 210 {lab=#net1}
N 1300 0 1320 0 {lab=reset}
N 800 530 800 590 {lab=reset}
N 800 650 800 670 {lab=0}
N 730 670 800 670 {lab=0}
N 1300 40 1300 60 {lab=reset}
N 1300 60 1300 70 {lab=reset}
N 1300 0 1300 40 {lab=reset}
N 1440 110 1440 210 {lab=out}
N 1400 210 1440 210 {lab=out}
N 1360 110 1380 110 {lab=out}
N 1380 110 1440 110 {lab=out}
N 1070 210 1170 210 {lab=#net1}
N 1070 210 1070 390 {lab=#net1}
N 1350 420 1390 420 {lab=out}
C {ipin.sym} 1080 475 0 0 {name=p1 lab=vbias}
C {ipin.sym} 1080 430 0 0 {name=p2 lab=vp}
C {ipin.sym} 930 390 0 0 {name=p3 lab=vn}
C {ipin.sym} 1240 320 0 0 {name=p4 lab=vdd}
C {iopin.sym} 1420 420 0 0 {name=p5 lab=out}
C {gnd.sym} 1240 510 0 0 {name=l1 lab=0}
C {code_shown.sym} 60 -220 0 0 {name=NGSPICE only_toplevel=false value=".param
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
+ R=2k
.options gmin=1e-9
.options rshunt=1e12
.ic v(reset)=0
.control
tran 1u 2m
set color0=white
set color1=black
plot v(out) v(reset)
write int_tb.raw
.endc

"}
C {devices/code_shown.sym} -220 410 0 0 {name=MODELS only_toplevel=true
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
C {vsource.sym} 510 620 0 0 {name=V1 value=1.2 savecurrent=false}
C {vsource.sym} 660 620 0 0 {name=V3 value=1.3 savecurrent=false}
C {vsource.sym} 730 620 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} 620 740 0 0 {name=l2 lab=0}
C {lab_pin.sym} 510 530 0 0 {name=p6 sig_type=std_logic lab=vbias}
C {lab_pin.sym} 660 530 0 0 {name=p8 sig_type=std_logic lab=vp}
C {lab_pin.sym} 730 530 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {capa.sym} 1300 210 3 0 {name=C2
m=1
value=33n
footprint=1206
device="ceramic capacitor"}
C {symbols/nfet_03v3.sym} 1300 90 3 1 {name=M1
L=0.28u
W=5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {ipin.sym} 1320 0 2 0 {name=p10 lab=reset}
C {gnd.sym} 1300 160 1 0 {name=l3 lab=0}
C {lab_pin.sym} 590 390 0 0 {name=p13 sig_type=std_logic lab=vn}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 1240 430 0 0 {name=x1}
C {res.sym} 990 390 3 0 {name=R3
value=20k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 590 620 0 0 {name=V2 value=0.8 savecurrent=false}
C {vsource.sym} 800 620 0 0 {name=B5 value="V = V(reset) > 1.65 ? (V(out) > 1.5 ? 3.3 : 0) : (V(out) > 2.5 ? 3.3 : 0)" savecurrent=false}
C {lab_pin.sym} 800 530 0 0 {name=p7 sig_type=std_logic lab=reset}
C {launcher.sym} 1510 620 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/int_tb.raw tran"
}
