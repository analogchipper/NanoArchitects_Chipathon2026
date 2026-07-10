v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -90 700 -90 720 {lab=vdd}
N -90 790 -90 800 {lab=0}
N -90 780 -90 790 {lab=0}
N 30 700 30 720 {lab=vbias}
N 30 790 30 800 {lab=0}
N 30 780 30 790 {lab=0}
N 100 800 100 810 {lab=0}
N 100 790 100 800 {lab=0}
N 100 700 100 730 {lab=vp}
N 100 700 110 700 {lab=vp}
N 330 970 350 970 {lab=vbias}
N 310 950 350 950 {lab=vp}
N 500 870 500 900 {lab=vdd}
N 300 930 350 930 {lab=vn}
N 680 770 680 940 {lab=out}
N 610 770 680 770 {lab=out}
N 450 770 550 770 {lab=vn}
N 330 780 330 930 {lab=vn}
N 680 700 680 770 {lab=out}
N 610 700 680 700 {lab=out}
N 450 700 550 700 {lab=vn}
N 450 700 450 770 {lab=vn}
N 550 1030 680 1030 {lab=0}
N 330 770 330 780 {lab=vn}
N 330 770 450 770 {lab=vn}
N 650 950 690 950 {lab=out}
N 680 950 680 970 {lab=out}
N 680 940 680 950 {lab=out}
N 500 1010 500 1030 {lab=0}
N 500 1030 550 1030 {lab=0}
N 580 790 580 1030 {lab=0}
N -70 1000 -70 1010 {lab=0}
N -70 990 -70 1000 {lab=0}
N -70 910 -70 930 {lab=vn}
N -70 930 20 930 {lab=vn}
N -70 1000 20 1000 {lab=0}
N 20 930 20 940 {lab=vn}
C {vsource.sym} -90 750 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} -90 700 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -90 800 0 0 {name=l2 lab=0}
C {vsource.sym} 30 750 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} 30 700 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} 30 800 0 0 {name=l3 lab=0}
C {lab_pin.sym} 110 700 0 1 {name=p10 sig_type=std_logic lab=vp}
C {code_shown.sym} 30 0 0 0 {name=NGSPICE only_toplevel=false value=".param
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
  dc I0 0 24u 0.1u
  let sweep_current = 0.1u * vector(length(v(out)))
  let ppm = sweep_current * (20 / 24u)
  let adc_code = floor((v(out) / 2.7) * 4095)
set color0=white 
set color1=black  
  plot adc_code vs ppm title '12-bit ADC Code vs Sensor PPM' xlabel 'Sensor PPM' ylabel 'Digital ADC Code'
  plot sweep_current vs ppm title 'Sensor Current vs Sensor PPM' xlabel 'Sensor PPM' ylabel 'Current (A)'
  print sweep_current v(out) adc_code ppm
.endc
"}
C {vsource.sym} 100 760 0 0 {name=V5 value=2.7 savecurrent=false}
C {gnd.sym} 100 810 0 0 {name=l8 lab=0}
C {iopin.sym} 690 950 0 0 {name=p5 lab=out}
C {ipin.sym} 330 970 0 0 {name=p13 lab=vbias}
C {ipin.sym} 310 950 0 0 {name=p14 lab=vp}
C {ipin.sym} 500 870 0 0 {name=p15 lab=vdd}
C {ipin.sym} 300 930 0 0 {name=p16 lab=vn}
C {gnd.sym} 500 1030 0 0 {name=l10 lab=0}
C {symbols/cap_mim_1f5fF.sym} 680 1000 0 0 {name=C6
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 500 960 0 0 {name=x2}
C {symbols/ppolyf_u_1k.sym} 580 770 3 0 {name=R8
W=3e-6
L=21e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 580 700 1 0 {name=C7
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {lab_pin.sym} -70 910 0 1 {name=p12 sig_type=std_logic lab=vn}
C {gnd.sym} -70 1010 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {isource.sym} -70 960 2 0 {name=I0 value=5u}
C {symbols/cap_mim_1f5fF.sym} 20 970 0 0 {name=C1
W=250e-6
L=250e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {devices/code_shown.sym} -610 280 0 0 {name=MODELS1 only_toplevel=true
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
