v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 50 920 50 980 {lab=vbias}
N 50 1040 50 1070 {lab=0}
N 140 1040 140 1060 {lab=0}
N 140 920 140 980 {lab=vdd}
N -60 920 -60 990 {lab=vref}
N -60 1050 -60 1070 {lab=0}
N -340 930 -340 980 {lab=vn}
N -340 1040 -340 1060 {lab=0}
N 470 1050 470 1070 {lab=0}
N 475 845 475 895 {lab=vdd}
N 600 960 620 960 {lab=out}
N 335 1025 385 1025 {lab=vbias}
N 315 980 385 980 {lab=vref}
N 335 940 380 940 {lab=vn}
N 380 940 385 940 {lab=vn}
C {gnd.sym} 470 1070 0 0 {name=l1 lab=0}
C {iopin.sym} 620 960 0 0 {name=p5 lab=out
}
C {ipin.sym} 50 920 0 0 {name=p6 lab=vbias}
C {vsource.sym} 50 1010 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} 50 1070 0 0 {name=l2 lab=0}
C {ipin.sym} 140 920 0 0 {name=p7 lab=vdd}
C {vsource.sym} 140 1010 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 140 1060 0 0 {name=l3 lab=0}
C {ipin.sym} -60 920 0 0 {name=p8 lab=vref}
C {vsource.sym} -60 1020 0 0 {name=V3 value=1.65 savecurrent=false}
C {gnd.sym} -60 1070 0 0 {name=l4 lab=0}
C {vsource.sym} -340 1010 0 0 {name=Vtia value="pulse(2.0 1.3 0 1m 1m 10u 2m)" savecurrent=false}
C {gnd.sym} -340 1060 0 0 {name=l7 lab=0}
C {ipin.sym} -340 930 0 0 {name=p12 lab=vn}
C {devices/code_shown.sym} -750 530 0 0 {name=MODELS only_toplevel=true
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
C {code_shown.sym} -290 -100 0 0 {name=NGSPICE2 only_toplevel=false value=".param
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
.dc Vtia 2.0 1.3 -0.01
.control
  run
  set color0=white
  set color1=black
  plot vn out 
.endc
"}
C {GF180/xschem/Chipathon/Comparator/comp.sym} 135 1035 0 0 {name=x2}
C {lab_pin.sym} 335 940 0 0 {name=p1 sig_type=std_logic lab=vn}
C {lab_pin.sym} 315 980 0 0 {name=p9 sig_type=std_logic lab=vref}
C {lab_pin.sym} 335 1025 0 0 {name=p2 sig_type=std_logic lab=vbias}
C {lab_pin.sym} 475 845 0 0 {name=p3 sig_type=std_logic lab=vdd}
