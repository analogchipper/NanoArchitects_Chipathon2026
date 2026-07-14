v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1090 -620 1890 -220 {flags=graph
y1=1.3
y2=2.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0005
x2=0.0095
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=7
node=mox_out}
B 2 2725 -1925 3525 -1525 {flags=graph
y1=0.58
y2=0.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0005
x2=0.0095
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=7
node=ec_out}
B 2 2725 -1485 3525 -1085 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0005
x2=0.0095
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=1
node=comp_out}
T {Electrochemical Sensor Channel} 420 -1700 0 0 1 1 {}
T {Sensor Input= 100uA ( Load =100pF)} 170 -1210 0 0 0.6 0.6 {}
T {TIA: Current to Voltage
ec_out = V_2.8 - (I * Rf)} 880 -1190 0 0 0.6 0.6 {}
T {BandGap Reference with Multiple Bias} -990 -900 0 0 0.6 0.6 {}
T {Integrator: Voltage Ramp Measurement} 260 -130 0 0 0.6 0.6 {}
T {Buffer Op-Amp to provide stable bias} -450 -170 0 0 0.6 0.6 {}
T {Behavioural switch acting as MCU
Ramp measurement = Time taken for 1.5<mox_out<2.5 } 1060 -790 0 0 0.6 0.6 {}
T {Buffer Op Amp to Drive External ADC
} 1340 -1170 0 0 0.6 0.6 {}
T {Comparator to check alarming concentration} 1950 -1160 0 0 0.6 0.6 {}
N 150 -1590 150 -1570 {lab=vdd}
N 150 -1500 150 -1490 {lab=0}
N 150 -1510 150 -1500 {lab=0}
N 920 -1340 970 -1340 {lab=vn}
N 1240 -1490 1240 -1320 {lab=#net1}
N 1170 -1490 1240 -1490 {lab=#net1}
N 1010 -1490 1110 -1490 {lab=vn}
N 940 -1490 940 -1340 {lab=vn}
N 1240 -1560 1240 -1490 {lab=#net1}
N 1170 -1560 1240 -1560 {lab=#net1}
N 1010 -1560 1110 -1560 {lab=vn}
N 1010 -1560 1010 -1490 {lab=vn}
N 1210 -1310 1250 -1310 {lab=#net1}
N 1240 -1320 1240 -1310 {lab=#net1}
N 500 -1280 500 -1270 {lab=0}
N 500 -1290 500 -1280 {lab=0}
N 500 -1370 500 -1350 {lab=vn}
N 500 -1350 590 -1350 {lab=vn}
N 500 -1280 590 -1280 {lab=0}
N 590 -1350 590 -1340 {lab=vn}
N 1140 -1470 1140 -1450 {lab=0}
N -1070 -1020 -1070 -1010 {lab=0}
N -1070 -1160 -1070 -1140 {lab=vdd}
N -1030 -1080 -1010 -1080 {lab=Vref}
N -420 -1080 -400 -1080 {lab=v_2.8}
N -310 -1030 -310 -1000 {lab=v_0.8}
N -1070 -970 -570 -970 {lab=0}
N -1070 -1010 -1070 -970 {lab=0}
N -310 -940 -310 -920 {lab=0}
N -310 -1110 -310 -1090 {lab=voref}
N -310 -1200 -310 -1170 {lab=v_1.3}
N -350 -1100 -310 -1100 {lab=voref}
N -310 -1010 -240 -1010 {lab=v_0.8}
N -310 -1100 -220 -1100 {lab=voref}
N -310 -1190 -220 -1190 {lab=v_1.3}
N -310 -1280 -310 -1260 {lab=v_2.8}
N -310 -1280 -240 -1280 {lab=v_2.8}
N -670 -1025 -660 -1025 {lab=Vref}
N -400 -1080 -370 -1080 {lab=v_2.8}
N -370 -1310 -370 -1080 {lab=v_2.8}
N -370 -1310 -310 -1310 {lab=v_2.8}
N -310 -1310 -310 -1280 {lab=v_2.8}
N -400 -1200 -350 -1200 {lab=voref}
N -350 -1200 -350 -1100 {lab=voref}
N -670 -1045 -670 -1025 {lab=Vref}
N 990 -800 990 -740 {lab=reset}
N 990 -680 990 -660 {lab=0}
N 490 -300 560 -300 {lab=#net2}
N 860 -270 890 -270 {lab=mox_out}
N 800 -480 870 -480 {lab=mox_out}
N 700 -480 740 -480 {lab=#net2}
N 530 -480 640 -480 {lab=#net2}
N 640 -480 700 -480 {lab=#net2}
N 720 -580 740 -580 {lab=#net2}
N 800 -580 830 -580 {lab=mox_out}
N 770 -580 770 -530 {lab=0}
N 430 -300 490 -300 {lab=#net2}
N 870 -480 870 -270 {lab=mox_out}
N 720 -580 720 -480 {lab=#net2}
N 770 -690 790 -690 {lab=reset}
N 770 -650 770 -630 {lab=reset}
N 770 -630 770 -620 {lab=reset}
N 770 -690 770 -650 {lab=reset}
N 910 -580 910 -480 {lab=mox_out}
N 870 -480 910 -480 {lab=mox_out}
N 830 -580 850 -580 {lab=mox_out}
N 850 -580 910 -580 {lab=mox_out}
N 150 -1610 150 -1590 {lab=vdd}
N 335 -300 355 -300 {lab=#net3}
N 165 -300 205 -300 {lab=#net3}
N 870 -1300 880 -1300 {lab=v_2.8}
N 950 -1255 970 -1255 {lab=voref}
N 860 -1255 880 -1255 {lab=voref}
N 940 -1300 970 -1300 {lab=v_2.8}
N 300 -260 340 -260 {lab=v_1.3}
N 400 -260 490 -260 {lab=v_1.3}
N 490 -215 520 -215 {lab=voref}
N 580 -215 620 -215 {lab=voref}
N 860 -1300 870 -1300 {lab=v_2.8}
N 880 -1300 940 -1300 {lab=v_2.8}
N 880 -1255 950 -1255 {lab=voref}
N 520 -215 580 -215 {lab=voref}
N 340 -260 400 -260 {lab=v_1.3}
N 275 -300 335 -300 {lab=#net3}
N 355 -300 375 -300 {lab=#net3}
N -180 -280 -120 -280 {lab=v_0.8}
N -120 -280 -110 -280 {lab=v_0.8}
N -130 -320 -110 -320 {lab=#net3}
N 205 -300 275 -300 {lab=#net3}
N -140 -235 -110 -235 {lab=voref}
N -140 -235 -140 -220 {lab=voref}
N -190 -320 -130 -320 {lab=#net3}
N -190 -400 -190 -320 {lab=#net3}
N 820 -270 860 -270 {lab=mox_out}
N 560 -300 620 -300 {lab=#net2}
N 160 -300 165 -300 {lab=#net3}
N 90 -290 160 -290 {lab=#net3}
N 160 -300 160 -290 {lab=#net3}
N -190 -400 105 -400 {lab=#net3}
N 105 -400 105 -290 {lab=#net3}
N 490 -260 615 -260 {lab=v_1.3}
N 615 -260 620 -260 {lab=v_1.3}
N 530 -480 530 -300 {lab=#net2}
N 940 -1490 1010 -1490 {lab=vn}
N -570 -1000 -570 -970 {lab=0}
N -670 -1070 -670 -1045 {lab=Vref}
N -670 -1070 -660 -1070 {lab=Vref}
N -680 -1045 -670 -1045 {lab=Vref}
N -700 -1200 -700 -1110 {lab=voref}
N -700 -1200 -400 -1200 {lab=voref}
N -460 -1080 -420 -1080 {lab=v_2.8}
N 710 -190 710 -180 {lab=0}
N 710 -370 710 -330 {lab=vdd}
N -20 -370 -20 -350 {lab=vdd}
N -570 -1170 -570 -1140 {lab=vdd}
N 1060 -1390 1060 -1370 {lab=vdd}
N 1060 -1230 1060 -1220 {lab=0}
N -20 -210 -20 -200 {lab=0}
N 1170 -1310 1210 -1310 {lab=#net1}
N -700 -1110 -660 -1110 {lab=voref}
N 1460 -1310 1520 -1310 {lab=#net1}
N 1520 -1310 1530 -1310 {lab=#net1}
N 1510 -1350 1530 -1350 {lab=ec_out}
N 1500 -1265 1530 -1265 {lab=voref}
N 1500 -1265 1500 -1250 {lab=voref}
N 1450 -1350 1510 -1350 {lab=ec_out}
N 1450 -1430 1450 -1350 {lab=ec_out}
N 1450 -1430 1745 -1430 {lab=ec_out}
N 1745 -1430 1745 -1320 {lab=ec_out}
N 1620 -1400 1620 -1380 {lab=vdd}
N 1620 -1240 1620 -1230 {lab=0}
N 1730 -1320 1740 -1320 {lab=ec_out}
N 1740 -1320 1750 -1320 {lab=ec_out}
N 1750 -1320 1770 -1320 {lab=ec_out}
N 1250 -1310 1460 -1310 {lab=#net1}
N -290 -1230 -270 -1230 {lab=0}
N -290 -1140 -270 -1140 {lab=0}
N -290 -1060 -270 -1060 {lab=0}
N -290 -970 -270 -970 {lab=0}
N 2555 -1460 2555 -1440 {lab=comp_ref}
N 2555 -1370 2555 -1360 {lab=0}
N 2555 -1380 2555 -1370 {lab=0}
N 2555 -1480 2555 -1460 {lab=comp_ref}
N 2100 -1240 2140 -1240 {lab=voref}
N 2105 -1285 2140 -1285 {lab=comp_ref}
N 2105 -1325 2140 -1325 {lab=ec_out}
N 2230 -1400 2230 -1370 {lab=vdd}
N 2230 -1405 2230 -1400 {lab=vdd}
N 2225 -1215 2225 -1195 {lab=0}
N 2355 -1305 2370 -1305 {lab=comp_out}
C {vsource.sym} 150 -1540 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 150 -1490 0 0 {name=l2 lab=0}
C {code_shown.sym} -320 -2060 0 0 {name=NGSPICE only_toplevel=false value=".param
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
.nodeset v(net3)=0.8 v(net2)=0.8
.control
op
write ECMOX_tran.raw
set appendwrite
tran 1n 1m
write ECMOX_tran.raw
.endc
"}
C {iopin.sym} 1770 -1320 0 0 {name=p5 lab=ec_out}
C {ipin.sym} 920 -1340 0 0 {name=p16 lab=vn}
C {gnd.sym} 1060 -1220 0 0 {name=l10 lab=0}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 1060 -1300 0 0 {name=x2}
C {symbols/ppolyf_u_1k.sym} 1140 -1490 3 0 {name=R8
W=3e-6
L=21e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 1140 -1560 1 0 {name=C7
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {lab_pin.sym} 500 -1370 0 1 {name=p12 sig_type=std_logic lab=vn}
C {gnd.sym} 500 -1270 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {isource.sym} 500 -1320 2 0 {name=I0 value=360u}
C {symbols/cap_mim_1f5fF.sym} 590 -1310 0 0 {name=C1
W=250e-6
L=250e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {devices/code_shown.sym} -1010 -1850 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {gnd.sym} 1140 -1450 0 0 {name=l1 lab=0}
C {iopin.sym} -1010 -1080 0 0 {name=p2 lab=Vref}
C {gnd.sym} -1070 -970 0 0 {name=l4 lab=0}
C {lab_pin.sym} -1070 -1160 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} -570 -1070 0 0 {name=x1}
C {lab_pin.sym} -680 -1045 0 0 {name=p9 sig_type=std_logic lab=Vref}
C {gnd.sym} -310 -920 0 0 {name=l5 lab=0}
C {lab_pin.sym} -570 -1170 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {iopin.sym} -220 -1190 0 0 {name=p17 lab=v_1.3}
C {iopin.sym} -220 -1100 0 0 {name=p18 lab=voref}
C {iopin.sym} -240 -1010 0 0 {name=p19 lab=v_0.8}
C {iopin.sym} -240 -1280 0 0 {name=p20 lab=v_2.8}
C {GF180/xschem/Chipathon/BGR/BGR_BJT.sym} -1070 -1080 0 0 {name=x3}
C {lab_pin.sym} 860 -1300 0 0 {name=p8 sig_type=std_logic lab=v_2.8}
C {gnd.sym} 990 -660 0 0 {name=l3 lab=0}
C {vsource.sym} 990 -710 0 0 {name=B5 value="V = V(reset) > 1.65 ? (V(mox_out) > 1.5 ? 3.3 : 0) : (V(mox_out) > 2.5 ? 3.3 : 0)" savecurrent=false}
C {lab_pin.sym} 990 -800 0 0 {name=p23 sig_type=std_logic lab=reset}
C {iopin.sym} 890 -270 0 0 {name=p24 lab=mox_out}
C {gnd.sym} 710 -180 0 0 {name=l6 lab=0}
C {capa.sym} 770 -480 3 0 {name=C2
m=1
value=33n
footprint=1206
device="ceramic capacitor"}
C {symbols/nfet_03v3.sym} 770 -600 3 1 {name=M1
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
C {ipin.sym} 790 -690 2 0 {name=p25 lab=reset}
C {gnd.sym} 770 -530 1 0 {name=l7 lab=0}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 710 -260 0 0 {name=x4}
C {res.sym} 405 -300 3 0 {name=R5
value=2k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -180 -280 0 0 {name=p21 sig_type=std_logic lab=v_0.8}
C {launcher.sym} 2665 -755 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/ECMOX_tran.raw tran"
}
C {lab_pin.sym} 860 -1255 0 0 {name=p13 sig_type=std_logic lab=voref}
C {lab_pin.sym} 300 -260 0 0 {name=p14 sig_type=std_logic lab=v_1.3}
C {ipin.sym} 150 -1610 0 0 {name=p26 lab=vdd}
C {lab_pin.sym} 1060 -1390 0 0 {name=p15 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 710 -370 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 490 -215 0 0 {name=p10 sig_type=std_logic lab=voref}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} -20 -280 0 0 {name="x5"}
C {lab_pin.sym} -20 -370 0 0 {name=p22 sig_type=std_logic lab=vdd}
C {gnd.sym} -20 -200 0 0 {name=l8 lab=0}
C {lab_pin.sym} -140 -220 0 0 {name=p27 sig_type=std_logic lab=voref}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 1620 -1310 0 0 {name=x6}
C {lab_pin.sym} 1620 -1400 0 0 {name=p29 sig_type=std_logic lab=vdd}
C {gnd.sym} 1620 -1230 0 0 {name=l11 lab=0}
C {lab_pin.sym} 1500 -1250 0 0 {name=p30 sig_type=std_logic lab=voref}
C {symbols/ppolyf_u_1k.sym} -310 -1230 0 1 {name=R6
W=1e-6
L=10e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -310 -1140 0 1 {name=R1
W=1e-6
L=0.68e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -310 -1060 0 1 {name=R2
W=1e-6
L=2.7e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -310 -970 0 1 {name=R3
W=1e-6
L=5.6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {gnd.sym} -270 -1230 0 0 {name=l12 lab=0}
C {gnd.sym} -270 -1140 0 0 {name=l13 lab=0}
C {gnd.sym} -270 -1060 0 0 {name=l14 lab=0}
C {gnd.sym} -270 -970 0 0 {name=l15 lab=0}
C {GF180/xschem/Chipathon/Comparator/comp.sym} 1890 -1230 0 0 {name=x7}
C {vsource.sym} 2555 -1410 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 2555 -1360 0 0 {name=l16 lab=0}
C {ipin.sym} 2555 -1480 0 0 {name=p1 lab=comp_ref}
C {lab_pin.sym} 2100 -1240 0 0 {name=p4 sig_type=std_logic lab=voref}
C {lab_pin.sym} 2105 -1285 0 0 {name=p6 sig_type=std_logic lab=comp_ref}
C {lab_pin.sym} 2105 -1325 0 0 {name=p28 sig_type=std_logic lab=ec_out}
C {lab_pin.sym} 2230 -1405 0 0 {name=p31 sig_type=std_logic lab=vdd}
C {gnd.sym} 2225 -1195 0 0 {name=l17 lab=0}
C {iopin.sym} 2370 -1305 0 0 {name=p32 lab=comp_out}
