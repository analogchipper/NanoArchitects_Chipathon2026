v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 490 80 510 {lab=vdd}
N 80 580 80 590 {lab=0}
N 80 570 80 580 {lab=0}
N 200 490 200 510 {lab=vbias}
N 200 580 200 590 {lab=0}
N 200 570 200 580 {lab=0}
N 270 590 270 600 {lab=0}
N 270 580 270 590 {lab=0}
N 270 490 270 520 {lab=vp}
N 270 490 280 490 {lab=vp}
N 500 760 520 760 {lab=vbias}
N 480 740 520 740 {lab=vp}
N 670 660 670 690 {lab=vdd}
N 470 720 520 720 {lab=vn}
N 850 560 850 730 {lab=out}
N 780 560 850 560 {lab=out}
N 620 560 720 560 {lab=vn}
N 500 570 500 720 {lab=vn}
N 850 490 850 560 {lab=out}
N 780 490 850 490 {lab=out}
N 620 490 720 490 {lab=vn}
N 620 490 620 560 {lab=vn}
N 720 820 850 820 {lab=0}
N 500 560 500 570 {lab=vn}
N 500 560 620 560 {lab=vn}
N 820 740 860 740 {lab=out}
N 850 740 850 760 {lab=out}
N 850 730 850 740 {lab=out}
N 670 800 670 820 {lab=0}
N 670 820 720 820 {lab=0}
N 750 580 750 820 {lab=0}
N 100 790 100 800 {lab=0}
N 100 780 100 790 {lab=0}
N 100 700 100 720 {lab=vn}
N 100 720 190 720 {lab=vn}
N 100 790 190 790 {lab=0}
N 190 720 190 730 {lab=vn}
C {vsource.sym} 80 540 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} 80 490 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} 80 590 0 0 {name=l2 lab=0}
C {vsource.sym} 200 540 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} 200 490 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} 200 590 0 0 {name=l3 lab=0}
C {lab_pin.sym} 280 490 0 1 {name=p10 sig_type=std_logic lab=vp}
C {code_shown.sym} 200 -210 0 0 {name=NGSPICE only_toplevel=false value=".param
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
  dc I0 0 100u 0.1u
  let sweep_current = 0.1u * vector(length(v(out)))
  let ppm = sweep_current * (50 / 100u)
  let adc_code = floor((v(out) / 2.7) * 4095)
  plot adc_code vs ppm title '12-bit ADC Code vs Sensor PPM' xlabel 'Sensor PPM' ylabel 'Digital ADC Code'
  plot sweep_current vs ppm title 'Sensor Current vs Sensor PPM' xlabel 'Sensor PPM' ylabel 'Current (A)'
  print sweep_current v(out) adc_code ppm
.endc
"}
C {vsource.sym} 270 550 0 0 {name=V5 value=2.7 savecurrent=false}
C {gnd.sym} 270 600 0 0 {name=l8 lab=0}
C {iopin.sym} 860 740 0 0 {name=p5 lab=out}
C {ipin.sym} 500 760 0 0 {name=p13 lab=vbias}
C {ipin.sym} 480 740 0 0 {name=p14 lab=vp}
C {ipin.sym} 670 660 0 0 {name=p15 lab=vdd}
C {ipin.sym} 470 720 0 0 {name=p16 lab=vn}
C {gnd.sym} 670 820 0 0 {name=l10 lab=0}
C {symbols/cap_mim_1f5fF.sym} 850 790 0 0 {name=C6
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 670 750 0 0 {name=x2}
C {symbols/ppolyf_u_1k.sym} 750 560 3 0 {name=R8
W=3e-6
L=21e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 750 490 1 0 {name=C7
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {lab_pin.sym} 100 700 0 1 {name=p12 sig_type=std_logic lab=vn}
C {gnd.sym} 100 800 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {isource.sym} 100 750 2 0 {name=I0 value=5u}
C {symbols/cap_mim_1f5fF.sym} 190 760 0 0 {name=C1
W=250e-6
L=250e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {devices/code_shown.sym} -440 70 0 0 {name=MODELS1 only_toplevel=true
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
