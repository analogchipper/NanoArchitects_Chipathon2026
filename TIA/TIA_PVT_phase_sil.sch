v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 740 -500 1540 -100 {flags=graph
y1=0.01
y2=0.02
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
N -400 -520 -400 -500 {lab=vdd}
N -400 -430 -400 -420 {lab=0}
N -400 -440 -400 -430 {lab=0}
N -280 -520 -280 -500 {lab=vbias}
N -280 -430 -280 -420 {lab=0}
N -280 -440 -280 -430 {lab=0}
N -510 -360 -510 -320 {lab=vdd
spice_ignore=true}
N -510 -260 -510 -220 {lab=#net4
spice_ignore=true}
N -510 -160 -510 -130 {lab=0
spice_ignore=true}
N -510 -240 -430 -240 {lab=#net4
spice_ignore=true}
N -370 -240 -320 -240 {lab=#net5
spice_ignore=true}
N -320 -240 -320 -180 {lab=#net5
spice_ignore=true}
N -390 -180 -390 -160 {lab=#net6
spice_ignore=true}
N -390 -180 -380 -180 {lab=#net6
spice_ignore=true}
N -390 -100 -390 -90 {lab=0
spice_ignore=true}
N -320 -180 -280 -180 {lab=#net5
spice_ignore=true}
N -510 -40 -510 0 {lab=vdd
spice_ignore=true}
N -510 60 -510 100 {lab=#net7
spice_ignore=true}
N -510 160 -510 190 {lab=0
spice_ignore=true}
N -510 80 -430 80 {lab=#net7
spice_ignore=true}
N -370 80 -320 80 {lab=#net8
spice_ignore=true}
N -320 80 -320 140 {lab=#net8
spice_ignore=true}
N -390 140 -390 160 {lab=#net9
spice_ignore=true}
N -390 140 -380 140 {lab=#net9
spice_ignore=true}
N -390 220 -390 230 {lab=0
spice_ignore=true}
N -320 140 -280 140 {lab=#net8
spice_ignore=true}
N -250 -70 -250 -60 {lab=0}
N -250 -80 -250 -70 {lab=0}
N -250 -170 -250 -140 {lab=vp}
N -250 -170 -240 -170 {lab=vp}
N -190 200 -190 210 {lab=0}
N -190 190 -190 200 {lab=0}
N -190 110 -190 130 {lab=vn}
N 190 -300 210 -300 {lab=vbias}
N 170 -320 210 -320 {lab=vp}
N 360 -400 360 -370 {lab=vdd}
N 510 -320 530 -320 {lab=out}
N 160 -340 210 -340 {lab=#net1}
N 360 -250 360 -230 {lab=0}
N 350 -490 420 -490 {lab=out}
N 190 -490 290 -490 {lab=#net2}
N 520 -320 520 -300 {lab=out}
N 420 -550 420 -490 {lab=out}
N 190 -550 290 -550 {lab=#net2}
N 190 -550 190 -490 {lab=#net2}
N 190 -490 190 -440 {lab=#net2}
N 190 -380 190 -340 {lab=#net1}
N 70 -340 80 -340 {lab=vn}
N 80 -340 100 -340 {lab=vn}
N 80 -470 100 -470 {lab=0}
N 160 -470 190 -470 {lab=#net2}
N 420 -240 520 -240 {lab=0}
N 360 -240 420 -240 {lab=0}
N 360 -260 360 -250 {lab=0}
N 320 -470 320 -240 {lab=0}
N 320 -240 360 -240 {lab=0}
N 350 -550 420 -550 {lab=out}
N 420 -490 510 -490 {lab=out}
N 510 -490 510 -320 {lab=out}
C {vsource.sym} -400 -470 0 0 {name=V1 value=3.3 savecurrent=false}
C {res.sym} -510 -290 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {lab_pin.sym} -400 -520 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -510 -130 0 0 {name=l1 lab=0
spice_ignore=true}
C {gnd.sym} -400 -420 0 0 {name=l2 lab=0}
C {vsource.sym} -280 -470 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -280 -520 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -280 -420 0 0 {name=l3 lab=0}
C {lab_pin.sym} -510 -360 0 0 {name=p9 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -510 -190 0 0 {name=R2
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -400 -240 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -350 -180 3 1 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -390 -130 0 0 {name=V3 value="AC 0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -390 -90 0 0 {name=l4 lab=0
spice_ignore=true}
C {lab_pin.sym} -240 -170 0 1 {name=p10 sig_type=std_logic lab=vp}
C {res.sym} -510 30 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {gnd.sym} -510 190 0 0 {name=l5 lab=0
spice_ignore=true}
C {lab_pin.sym} -510 -40 0 0 {name=p11 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -510 130 0 0 {name=R5
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -400 80 1 0 {name=R6
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -350 140 3 1 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -390 190 0 0 {name=V4 value="AC -0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -390 230 0 0 {name=l6 lab=0
spice_ignore=true}
C {code_shown.sym} -90 -1270 0 0 {name=NGSPICE only_toplevel=false value=".param
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
ac dec 101 10 1G

* Plot the Loop Gain at the return node
plot db(v(net2))
plot ph(v(net2))

* Calculate Phase Margin using net2
meas ac my_ugbw WHEN vdb(net2)=0
meas ac ph_out FIND vp(net2) AT=my_ugbw
let ph_opamp= 180/PI * ph_out
print ph_opamp
write TIA_PVT_phase_sil.raw
.endc
"}
C {vsource.sym} -250 -110 0 0 {name=V5 value=2 savecurrent=false}
C {gnd.sym} -250 -60 0 0 {name=l8 lab=0}
C {lab_pin.sym} -190 110 0 1 {name=p12 sig_type=std_logic lab=vn}
C {gnd.sym} -190 210 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {vsource.sym} -190 160 0 0 {name=V6 value="DC 0 AC 1" savecurrent=false}
C {devices/code_shown.sym} -670 -990 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice fs
.lib $::180MCU_MODELS/smbb000149.ngspice fs
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {launcher.sym} 780 -30 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/TIA_PVT_phase_sil.raw tran"
}
C {iopin.sym} 530 -320 0 0 {name=p2 lab=out}
C {ipin.sym} 190 -300 0 0 {name=p3 lab=vbias}
C {ipin.sym} 170 -320 0 0 {name=p4 lab=vp}
C {ipin.sym} 360 -400 0 0 {name=p6 lab=vdd}
C {ipin.sym} 70 -340 0 0 {name=p1 lab=vn}
C {gnd.sym} 360 -230 0 0 {name=l7 lab=0}
C {capa-2.sym} 130 -340 3 0 {name=C6
m=1
value=1T
footprint=1206
device=polarized_capacitor}
C {ind.sym} 190 -410 0 0 {name=L10
m=1
value=1T
footprint=1206
device=inductor}
C {capa-2.sym} 130 -470 1 0 {name=C1
m=1
value=100p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 80 -470 1 0 {name=l11 lab=0
value="AC -0.5 DC 1.1"}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 360 -310 0 0 {name=x1}
C {symbols/ppolyf_u_1k.sym} 320 -490 3 0 {name=R7
W=3e-6
L=15e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 320 -550 1 0 {name=C4
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 520 -270 0 0 {name=C5
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
