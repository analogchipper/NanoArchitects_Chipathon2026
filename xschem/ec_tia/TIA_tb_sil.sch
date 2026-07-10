v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 770 -250 1570 150 {flags=graph
y1=0.0047
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
N -350 -310 -350 -290 {lab=vdd}
N -350 -220 -350 -210 {lab=0}
N -350 -230 -350 -220 {lab=0}
N -230 -310 -230 -290 {lab=vbias}
N -230 -220 -230 -210 {lab=0}
N -230 -230 -230 -220 {lab=0}
N -460 -150 -460 -110 {lab=vdd
spice_ignore=true}
N -460 -50 -460 -10 {lab=#net4
spice_ignore=true}
N -460 50 -460 80 {lab=0
spice_ignore=true}
N -460 -30 -380 -30 {lab=#net4
spice_ignore=true}
N -320 -30 -270 -30 {lab=#net5
spice_ignore=true}
N -270 -30 -270 30 {lab=#net5
spice_ignore=true}
N -340 30 -340 50 {lab=#net6
spice_ignore=true}
N -340 30 -330 30 {lab=#net6
spice_ignore=true}
N -340 110 -340 120 {lab=0
spice_ignore=true}
N -270 30 -230 30 {lab=#net5
spice_ignore=true}
N -460 170 -460 210 {lab=vdd
spice_ignore=true}
N -460 270 -460 310 {lab=#net7
spice_ignore=true}
N -460 370 -460 400 {lab=0
spice_ignore=true}
N -460 290 -380 290 {lab=#net7
spice_ignore=true}
N -320 290 -270 290 {lab=#net8
spice_ignore=true}
N -270 290 -270 350 {lab=#net8
spice_ignore=true}
N -340 350 -340 370 {lab=#net9
spice_ignore=true}
N -340 350 -330 350 {lab=#net9
spice_ignore=true}
N -340 430 -340 440 {lab=0
spice_ignore=true}
N -270 350 -230 350 {lab=#net8
spice_ignore=true}
N -200 140 -200 150 {lab=0}
N -200 130 -200 140 {lab=0}
N -200 40 -200 70 {lab=vp}
N -200 40 -190 40 {lab=vp}
N -160 440 -160 450 {lab=0}
N -160 430 -160 440 {lab=0}
N -160 350 -160 370 {lab=vn}
N -160 370 -70 370 {lab=vn}
N -160 440 -70 440 {lab=0}
N -70 370 -70 380 {lab=vn}
N 210 0 230 0 {lab=vbias}
N 190 -20 230 -20 {lab=vp}
N 380 -100 380 -70 {lab=vdd}
N 180 -40 230 -40 {lab=vn}
N 560 -200 560 -30 {lab=out}
N 490 -200 560 -200 {lab=out}
N 330 -200 430 -200 {lab=vn}
N 210 -190 210 -40 {lab=vn}
N 560 -270 560 -200 {lab=out}
N 490 -270 560 -270 {lab=out}
N 330 -270 430 -270 {lab=vn}
N 330 -270 330 -200 {lab=vn}
N 430 60 560 60 {lab=0}
N 210 -200 210 -190 {lab=vn}
N 210 -200 330 -200 {lab=vn}
N 530 -20 570 -20 {lab=out}
N 560 -20 560 0 {lab=out}
N 560 -30 560 -20 {lab=out}
N 380 40 380 60 {lab=0}
N 380 60 430 60 {lab=0}
N 460 -180 460 60 {lab=0}
C {vsource.sym} -350 -260 0 0 {name=V1 value=3.3 savecurrent=false}
C {res.sym} -460 -80 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {lab_pin.sym} -350 -310 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -460 80 0 0 {name=l1 lab=0
spice_ignore=true}
C {gnd.sym} -350 -210 0 0 {name=l2 lab=0}
C {vsource.sym} -230 -260 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -230 -310 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -230 -210 0 0 {name=l3 lab=0}
C {lab_pin.sym} -460 -150 0 0 {name=p9 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -460 20 0 0 {name=R2
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -350 -30 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -300 30 3 1 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -340 80 0 0 {name=V3 value="AC 0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -340 120 0 0 {name=l4 lab=0
spice_ignore=true}
C {lab_pin.sym} -190 40 0 1 {name=p10 sig_type=std_logic lab=vp}
C {res.sym} -460 240 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {gnd.sym} -460 400 0 0 {name=l5 lab=0
spice_ignore=true}
C {lab_pin.sym} -460 170 0 0 {name=p11 sig_type=std_logic lab=vdd
spice_ignore=true}
C {res.sym} -460 340 0 0 {name=R5
value=0.5k
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {res.sym} -350 290 1 0 {name=R6
value=1M
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa-2.sym} -300 350 3 1 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {vsource.sym} -340 400 0 0 {name=V4 value="AC -0.5" savecurrent=false
spice_ignore=true}
C {gnd.sym} -340 440 0 0 {name=l6 lab=0
spice_ignore=true}
C {lab_pin.sym} -160 350 0 1 {name=p12 sig_type=std_logic lab=vn}
C {code_shown.sym} -20 -610 0 0 {name=NGSPICE only_toplevel=false value=".param
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
write TIA_tb_sil.raw
.endc
"}
C {vsource.sym} -200 100 0 0 {name=V5 value=2 savecurrent=false}
C {gnd.sym} -200 150 0 0 {name=l8 lab=0}
C {gnd.sym} -160 450 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {isource.sym} -160 400 2 0 {name=I0 value="DC 0 AC 1"}
C {devices/code_shown.sym} -600 -590 0 0 {name=MODELS1 only_toplevel=true
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
C {symbols/cap_mim_1f5fF.sym} -70 410 0 0 {name=C5
W=250e-6
L=250e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {iopin.sym} 570 -20 0 0 {name=p2 lab=out}
C {ipin.sym} 210 0 0 0 {name=p3 lab=vbias}
C {ipin.sym} 190 -20 0 0 {name=p4 lab=vp}
C {ipin.sym} 380 -100 0 0 {name=p6 lab=vdd}
C {ipin.sym} 180 -40 0 0 {name=p1 lab=vn}
C {gnd.sym} 380 60 0 0 {name=l7 lab=0}
C {symbols/cap_mim_1f5fF.sym} 560 30 0 0 {name=C6
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 380 -10 0 0 {name=x1}
C {symbols/ppolyf_u_1k.sym} 460 -200 3 0 {name=R7
W=3e-6
L=15e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 460 -270 1 0 {name=C4
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {launcher.sym} 620 180 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/TIA_tb_sil.raw tran"
}
