v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -770 710 -770 730 {lab=vdd}
N -770 800 -770 810 {lab=0}
N -770 790 -770 800 {lab=0}
N -650 710 -650 730 {lab=vbias}
N -650 800 -650 810 {lab=0}
N -650 790 -650 800 {lab=0}
N -580 810 -580 820 {lab=0}
N -580 800 -580 810 {lab=0}
N -580 710 -580 740 {lab=vp}
N -580 710 -570 710 {lab=vp}
N -350 980 -330 980 {lab=vbias}
N -370 960 -330 960 {lab=vp}
N -180 880 -180 910 {lab=vdd}
N -380 940 -330 940 {lab=vn}
N 0 780 0 950 {lab=out}
N -70 780 0 780 {lab=out}
N -230 780 -130 780 {lab=vn}
N -350 790 -350 940 {lab=vn}
N 0 710 0 780 {lab=out}
N -70 710 0 710 {lab=out}
N -230 710 -130 710 {lab=vn}
N -230 710 -230 780 {lab=vn}
N -130 1040 0 1040 {lab=0}
N -350 780 -350 790 {lab=vn}
N -350 780 -230 780 {lab=vn}
N -30 960 10 960 {lab=out}
N 0 960 0 980 {lab=out}
N 0 950 0 960 {lab=out}
N -180 1020 -180 1040 {lab=0}
N -180 1040 -130 1040 {lab=0}
N -750 1010 -750 1020 {lab=0}
N -750 1000 -750 1010 {lab=0}
N -750 920 -750 940 {lab=vn}
N -750 940 -660 940 {lab=vn}
N -750 1010 -660 1010 {lab=0}
N -660 940 -660 950 {lab=vn}
N -100 800 -100 820 {lab=0}
C {vsource.sym} -770 760 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} -770 710 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -770 810 0 0 {name=l2 lab=0}
C {vsource.sym} -650 760 0 0 {name=V2 value=1.2 savecurrent=false}
C {lab_pin.sym} -650 710 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -650 810 0 0 {name=l3 lab=0}
C {lab_pin.sym} -570 710 0 1 {name=p10 sig_type=std_logic lab=vp}
C {code_shown.sym} -420 230 0 0 {name=NGSPICE only_toplevel=false value=".param
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
  dc I0 0 380uA 1u
set color0=white 
set color1=black  
  plot v(out)
.endc
.end
"}
C {vsource.sym} -580 770 0 0 {name=V5 value=2.8 savecurrent=false}
C {gnd.sym} -580 820 0 0 {name=l8 lab=0}
C {iopin.sym} 10 960 0 0 {name=p5 lab=out}
C {ipin.sym} -350 980 0 0 {name=p13 lab=vbias}
C {ipin.sym} -370 960 0 0 {name=p14 lab=vp}
C {ipin.sym} -180 880 0 0 {name=p15 lab=vdd}
C {ipin.sym} -380 940 0 0 {name=p16 lab=vn}
C {gnd.sym} -180 1040 0 0 {name=l10 lab=0}
C {symbols/cap_mim_1f5fF.sym} 0 1010 0 0 {name=C6
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} -180 970 0 0 {name=x2}
C {symbols/ppolyf_u_1k.sym} -100 780 3 0 {name=R8
W=3e-6
L=21e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} -100 710 1 0 {name=C7
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {lab_pin.sym} -750 920 0 1 {name=p12 sig_type=std_logic lab=vn}
C {gnd.sym} -750 1020 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {isource.sym} -750 970 2 0 {name=I0 value=5u}
C {symbols/cap_mim_1f5fF.sym} -660 980 0 0 {name=C1
W=250e-6
L=250e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {devices/code_shown.sym} -150 400 0 0 {name=MODELS1 only_toplevel=true
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
C {gnd.sym} -100 820 0 0 {name=l1 lab=0}
