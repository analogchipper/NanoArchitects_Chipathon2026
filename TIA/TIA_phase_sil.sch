v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -360 -20 -360 0 {lab=vdd}
N -360 70 -360 80 {lab=0}
N -360 60 -360 70 {lab=0}
N -240 -20 -240 0 {lab=vbias}
N -240 70 -240 80 {lab=0}
N -240 60 -240 70 {lab=0}
N -140 90 -140 100 {lab=0}
N -140 80 -140 90 {lab=0}
N -140 -10 -140 20 {lab=vp}
N -140 -10 -130 -10 {lab=vp}
N 240 260 260 260 {lab=vbias}
N 220 240 260 240 {lab=vp}
N 410 160 410 190 {lab=vdd}
N 560 240 580 240 {lab=out}
N 210 220 260 220 {lab=#net1}
N 410 310 410 330 {lab=0}
N 400 70 470 70 {lab=out}
N 240 70 340 70 {lab=#net2}
N 570 240 570 260 {lab=out}
N 470 10 470 70 {lab=out}
N 240 10 340 10 {lab=#net2}
N 240 10 240 70 {lab=#net2}
N -80 360 -80 370 {lab=0}
N -80 350 -80 360 {lab=0}
N -80 270 -80 290 {lab=vn}
N 240 70 240 120 {lab=#net2}
N 240 180 240 220 {lab=#net1}
N 120 220 130 220 {lab=vn}
N 130 220 150 220 {lab=vn}
N 130 90 150 90 {lab=0}
N 210 90 240 90 {lab=#net2}
N 470 320 570 320 {lab=0}
N 410 320 470 320 {lab=0}
N 410 300 410 310 {lab=0}
N 370 90 370 320 {lab=0}
N 370 320 410 320 {lab=0}
N 400 10 470 10 {lab=out}
N 470 70 560 70 {lab=out}
N 560 70 560 240 {lab=out}
C {vsource.sym} -360 30 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} -360 -20 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -360 80 0 0 {name=l2 lab=0}
C {vsource.sym} -240 30 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -240 -20 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -240 80 0 0 {name=l3 lab=0}
C {lab_pin.sym} -130 -10 0 1 {name=p10 sig_type=std_logic lab=vp}
C {code_shown.sym} -110 -690 0 0 {name=NGSPICE only_toplevel=false value=".param
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
write TIA_phase_sil.raw
.endc
"}
C {vsource.sym} -140 50 0 0 {name=V5 value=2 savecurrent=false}
C {gnd.sym} -140 100 0 0 {name=l8 lab=0}
C {iopin.sym} 580 240 0 0 {name=p2 lab=out}
C {ipin.sym} 240 260 0 0 {name=p3 lab=vbias}
C {ipin.sym} 220 240 0 0 {name=p4 lab=vp}
C {ipin.sym} 410 160 0 0 {name=p6 lab=vdd}
C {ipin.sym} 120 220 0 0 {name=p1 lab=vn}
C {gnd.sym} 410 330 0 0 {name=l7 lab=0}
C {lab_pin.sym} -80 270 0 1 {name=p12 sig_type=std_logic lab=vn}
C {gnd.sym} -80 370 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {capa-2.sym} 180 220 3 0 {name=C6
m=1
value=1T
footprint=1206
device=polarized_capacitor}
C {ind.sym} 240 150 0 0 {name=L10
m=1
value=1T
footprint=1206
device=inductor}
C {vsource.sym} -80 320 0 0 {name=V6 value="DC 0 AC 1" savecurrent=false}
C {capa-2.sym} 180 90 1 0 {name=C1
m=1
value=100p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 130 90 1 0 {name=l11 lab=0
value="AC -0.5 DC 1.1"}
C {devices/code_shown.sym} -970 -320 0 0 {name=MODELS1 only_toplevel=true
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
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 410 250 0 0 {name=x1}
C {symbols/ppolyf_u_1k.sym} 370 70 3 0 {name=R7
W=3e-6
L=15e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 370 10 1 0 {name=C2
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 570 290 0 0 {name=C3
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
