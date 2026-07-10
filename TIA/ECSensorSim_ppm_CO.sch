v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 50 180 50 200 {lab=vdd}
N 50 270 50 280 {lab=0}
N 50 260 50 270 {lab=0}
N 170 180 170 200 {lab=vbias}
N 170 270 170 280 {lab=0}
N 170 260 170 270 {lab=0}
N 240 280 240 290 {lab=0}
N 240 270 240 280 {lab=0}
N 240 180 240 210 {lab=vp}
N 240 180 250 180 {lab=vp}
N 470 450 490 450 {lab=vbias}
N 450 430 490 430 {lab=vp}
N 640 350 640 380 {lab=vdd}
N 440 410 490 410 {lab=vn}
N 820 250 820 420 {lab=out}
N 750 250 820 250 {lab=out}
N 590 250 690 250 {lab=vn}
N 470 260 470 410 {lab=vn}
N 820 180 820 250 {lab=out}
N 750 180 820 180 {lab=out}
N 590 180 690 180 {lab=vn}
N 590 180 590 250 {lab=vn}
N 690 510 820 510 {lab=0}
N 470 250 470 260 {lab=vn}
N 470 250 590 250 {lab=vn}
N 790 430 830 430 {lab=out}
N 820 430 820 450 {lab=out}
N 820 420 820 430 {lab=out}
N 640 490 640 510 {lab=0}
N 640 510 690 510 {lab=0}
N 720 270 720 510 {lab=0}
N 70 480 70 490 {lab=0}
N 70 470 70 480 {lab=0}
N 70 390 70 410 {lab=vn}
N 70 410 160 410 {lab=vn}
N 70 480 160 480 {lab=0}
N 160 410 160 420 {lab=vn}
C {vsource.sym} 50 230 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} 50 180 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} 50 280 0 0 {name=l2 lab=0}
C {vsource.sym} 170 230 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} 170 180 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} 170 280 0 0 {name=l3 lab=0}
C {lab_pin.sym} 250 180 0 1 {name=p10 sig_type=std_logic lab=vp}
C {code_shown.sym} 240 -550 0 0 {name=NGSPICE only_toplevel=false value=".param
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
  dc I0 0 102u 0.1u
  let sweep_current = 0.1u * vector(length(v(out)))
  let ppm = sweep_current * (1000 / 102u)
  let adc_code = floor((v(out) / 2.7) * 4095)
  plot adc_code vs ppm title '12-bit ADC Code vs Sensor PPM' xlabel 'Sensor PPM' ylabel 'Digital ADC Code'
  plot sweep_current vs ppm title 'Sensor Current vs Sensor PPM' xlabel 'Sensor PPM' ylabel 'Current (A)'
  print sweep_current v(out) adc_code ppm
.endc
"}
C {vsource.sym} 240 240 0 0 {name=V5 value=2.7 savecurrent=false}
C {gnd.sym} 240 290 0 0 {name=l8 lab=0}
C {iopin.sym} 830 430 0 0 {name=p5 lab=out}
C {ipin.sym} 470 450 0 0 {name=p13 lab=vbias}
C {ipin.sym} 450 430 0 0 {name=p14 lab=vp}
C {ipin.sym} 640 350 0 0 {name=p15 lab=vdd}
C {ipin.sym} 440 410 0 0 {name=p16 lab=vn}
C {gnd.sym} 640 510 0 0 {name=l10 lab=0}
C {symbols/cap_mim_1f5fF.sym} 820 480 0 0 {name=C6
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 640 440 0 0 {name=x2}
C {symbols/ppolyf_u_1k.sym} 720 250 3 0 {name=R8
W=3e-6
L=21e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 720 180 1 0 {name=C7
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {lab_pin.sym} 70 390 0 1 {name=p12 sig_type=std_logic lab=vn}
C {gnd.sym} 70 490 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {isource.sym} 70 440 2 0 {name=I0 value=5u}
C {symbols/cap_mim_1f5fF.sym} 160 450 0 0 {name=C1
W=250e-6
L=250e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {devices/code_shown.sym} -470 -240 0 0 {name=MODELS1 only_toplevel=true
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
