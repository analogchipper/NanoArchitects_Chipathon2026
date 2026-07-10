v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 830 370 1630 770 {flags=graph
y1=1.172
y2=2.052
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00012623927
x2=-2.6239272e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="7 4"
node="out
vn"}
N -110 310 -110 330 {lab=vdd}
N -110 400 -110 410 {lab=0}
N -110 390 -110 400 {lab=0}
N 10 310 10 330 {lab=vbias}
N 10 400 10 410 {lab=0}
N 10 390 10 400 {lab=0}
N 80 410 80 420 {lab=0}
N 80 400 80 410 {lab=0}
N 80 310 80 340 {lab=vp}
N 80 310 90 310 {lab=vp}
N 310 580 330 580 {lab=vbias}
N 290 560 330 560 {lab=vp}
N 480 480 480 510 {lab=vdd}
N 280 540 330 540 {lab=vn}
N 660 380 660 550 {lab=out}
N 590 380 660 380 {lab=out}
N 430 380 530 380 {lab=vn}
N 310 390 310 540 {lab=vn}
N 660 310 660 380 {lab=out}
N 590 310 660 310 {lab=out}
N 430 310 530 310 {lab=vn}
N 430 310 430 380 {lab=vn}
N 530 640 660 640 {lab=0}
N 310 380 310 390 {lab=vn}
N 310 380 430 380 {lab=vn}
N 630 560 670 560 {lab=out}
N 660 560 660 580 {lab=out}
N 660 550 660 560 {lab=out}
N 480 620 480 640 {lab=0}
N 480 640 530 640 {lab=0}
N 560 400 560 640 {lab=0}
N -90 610 -90 620 {lab=0}
N -90 600 -90 610 {lab=0}
N -90 520 -90 540 {lab=vn}
N -90 540 0 540 {lab=vn}
N -90 610 0 610 {lab=0}
N 0 540 0 550 {lab=vn}
C {vsource.sym} -110 360 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} -110 310 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -110 410 0 0 {name=l2 lab=0}
C {vsource.sym} 10 360 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} 10 310 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} 10 410 0 0 {name=l3 lab=0}
C {lab_pin.sym} 90 310 0 1 {name=p10 sig_type=std_logic lab=vp}
C {code_shown.sym} 200 -230 0 0 {name=NGSPICE only_toplevel=false value=".param
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
dc I0 0 400u 1u
write TIA_dc_sil.raw
plot v(out)
plot deriv(v(out))
.endc
"}
C {vsource.sym} 80 370 0 0 {name=V5 value=2.7 savecurrent=false}
C {gnd.sym} 80 420 0 0 {name=l8 lab=0}
C {launcher.sym} 650 780 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/TIA_dc.raw ac"
}
C {iopin.sym} 670 560 0 0 {name=p5 lab=out}
C {ipin.sym} 310 580 0 0 {name=p13 lab=vbias}
C {ipin.sym} 290 560 0 0 {name=p14 lab=vp}
C {ipin.sym} 480 480 0 0 {name=p15 lab=vdd}
C {ipin.sym} 280 540 0 0 {name=p16 lab=vn}
C {gnd.sym} 480 640 0 0 {name=l10 lab=0}
C {symbols/cap_mim_1f5fF.sym} 660 610 0 0 {name=C6
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 480 570 0 0 {name=x2}
C {symbols/ppolyf_u_1k.sym} 560 380 3 0 {name=R8
W=3e-6
L=90e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 560 310 1 0 {name=C7
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {lab_pin.sym} -90 520 0 1 {name=p12 sig_type=std_logic lab=vn}
C {gnd.sym} -90 620 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {isource.sym} -90 570 2 0 {name=I0 value="DC 0 AC 1"}
C {symbols/cap_mim_1f5fF.sym} 0 580 0 0 {name=C1
W=250e-6
L=250e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {devices/code_shown.sym} -630 -110 0 0 {name=MODELS1 only_toplevel=true
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
