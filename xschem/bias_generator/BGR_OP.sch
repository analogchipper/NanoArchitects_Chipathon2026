v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 770 -570 1570 -170 {flags=graph
y1=0.79
y2=2.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="v_2.8
vref
v_0.8
v_1.3"
color="10 5 8 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N 260 420 260 430 {lab=0}
N -80 190 -70 190 {lab=vdd}
N -70 190 -70 220 {lab=vdd}
N -70 280 -70 290 {lab=0}
N 260 280 260 300 {lab=vdd}
N 300 360 320 360 {lab=Vref}
N 650 395 670 395 {lab=Vref}
N 650 330 670 330 {lab=voref}
N 590 240 930 240 {lab=voref}
N 910 360 930 360 {lab=v_2.8}
N 1020 410 1020 440 {lab=v_0.8}
N 260 440 760 440 {lab=0}
N 260 430 260 470 {lab=0}
N 1020 500 1020 520 {lab=0}
N 1020 330 1020 350 {lab=voref}
N 1020 240 1020 270 {lab=v_1.3}
N 980 340 1020 340 {lab=voref}
N 1020 430 1090 430 {lab=v_0.8}
N 1020 340 1110 340 {lab=voref}
N 1020 250 1110 250 {lab=v_1.3}
N 1020 160 1020 180 {lab=v_2.8}
N 1020 160 1090 160 {lab=v_2.8}
N 660 415 670 415 {lab=Vref}
N 930 360 960 360 {lab=v_2.8}
N 960 130 960 360 {lab=v_2.8}
N 960 130 1020 130 {lab=v_2.8}
N 1020 130 1020 160 {lab=v_2.8}
N 930 240 980 240 {lab=voref}
N 980 240 980 340 {lab=voref}
N -90 360 -80 360 {lab=vbias}
N -80 360 -80 370 {lab=vbias}
N -80 430 -80 450 {lab=0}
N 660 395 660 415 {lab=Vref}
N 670 370 670 395 {lab=Vref}
N 590 330 650 330 {lab=voref}
N 590 240 590 330 {lab=voref}
N 870 360 910 360 {lab=v_2.8}
N 760 270 760 295 {lab=vdd}
N 760 295 760 300 {lab=vdd}
C {ipin.sym} -80 190 0 0 {name=p1 lab=vdd}
C {iopin.sym} 320 360 0 0 {name=p2 lab=Vref}
C {vsource.sym} -70 250 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 260 470 0 0 {name=l2 lab=0}
C {gnd.sym} -70 290 0 0 {name=l3 lab=0}
C {lab_pin.sym} 260 280 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {code_shown.sym} 180 -600 0 0 {name=NGSPICE only_toplevel=false value="
.param
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
write BGR_OP.raw
set appendwrite
tran 1n 30u
set color0=white
set color1=black
plot v(v_2.8) v(v_1.3) v(voref) v(v_0.8)
write BGR_OP.raw
.endc
"}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 760 370 0 0 {name=x2}
C {lab_pin.sym} 650 395 0 0 {name=p7 sig_type=std_logic lab=Vref}
C {res.sym} 1020 210 0 0 {name=R1
value=30k
footprint=1206
device=resistor
m=1}
C {res.sym} 1020 300 0 0 {name=R2
value=2k
footprint=1206
device=resistor
m=1}
C {res.sym} 1020 380 0 0 {name=R3
value=8k
footprint=1206
device=resistor
m=1}
C {res.sym} 1020 470 0 0 {name=R4
value=16k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1020 520 0 0 {name=l4 lab=0}
C {lab_pin.sym} 760 270 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {iopin.sym} 1110 250 0 0 {name=p10 lab=v_1.3}
C {iopin.sym} 1110 340 0 0 {name=p11 lab=voref}
C {iopin.sym} 1090 430 0 0 {name=p12 lab=v_0.8}
C {launcher.sym} 590 -350 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/BGR_OP.raw tran"
}
C {iopin.sym} 1090 160 0 0 {name=p9 lab=v_2.8}
C {devices/code_shown.sym} -640 -120 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {GF180/xschem/Chipathon/BGR/BGR_BJT.sym} 260 360 0 0 {name=x1}
C {ipin.sym} -90 360 0 0 {name=p13 lab=vbias}
C {vsource.sym} -80 400 0 0 {name=V2 value=1 savecurrent=false}
C {gnd.sym} -80 450 0 0 {name=l1 lab=0}
