v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -230 -50 -230 -30 {lab=vdd}
N -230 40 -230 50 {lab=0}
N -230 30 -230 40 {lab=0}
N -110 -50 -110 -30 {lab=vbias}
N -110 40 -110 50 {lab=0}
N -110 30 -110 40 {lab=0}
N -40 50 -40 60 {lab=0}
N -40 40 -40 50 {lab=0}
N -40 -50 -40 -20 {lab=vp}
N -40 -50 -30 -50 {lab=vp}
N 190 220 210 220 {lab=vbias}
N 170 200 210 200 {lab=vp}
N 360 120 360 150 {lab=vdd}
N 160 180 210 180 {lab=vn}
N 540 20 540 190 {lab=out}
N 470 20 540 20 {lab=out}
N 310 20 410 20 {lab=vn}
N 190 30 190 180 {lab=vn}
N 540 -50 540 20 {lab=out}
N 470 -50 540 -50 {lab=out}
N 310 -50 410 -50 {lab=vn}
N 310 -50 310 20 {lab=vn}
N 410 280 540 280 {lab=0}
N 190 20 190 30 {lab=vn}
N 190 20 310 20 {lab=vn}
N 510 200 550 200 {lab=out}
N 540 200 540 220 {lab=out}
N 540 190 540 200 {lab=out}
N 360 260 360 280 {lab=0}
N 360 280 410 280 {lab=0}
N 440 40 440 280 {lab=0}
N -210 250 -210 260 {lab=0}
N -210 240 -210 250 {lab=0}
N -210 160 -210 180 {lab=vn}
N -210 180 -120 180 {lab=vn}
N -210 250 -120 250 {lab=0}
N -120 180 -120 190 {lab=vn}
C {vsource.sym} -230 0 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} -230 -50 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -230 50 0 0 {name=l2 lab=0}
C {vsource.sym} -110 0 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -110 -50 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -110 50 0 0 {name=l3 lab=0}
C {lab_pin.sym} -30 -50 0 1 {name=p10 sig_type=std_logic lab=vp}
C {code_shown.sym} 60 -930 0 0 {name=NGSPICE only_toplevel=false value=".param
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
  * Input current set to 24uA for 20ppm verification
  let current_val = 1.5u
  
  alter I0 current_val
  op

  * Math calculations for ADC code (3V range) and Sensor ppm
  let adc_code = floor((v(out) / 2.7) * 4095)
  let ppm = current_val * (20 / 24u)

  * Display the clean single-point results
  print current_val v(out) adc_code ppm
.endc
.end
"}
C {vsource.sym} -40 10 0 0 {name=V5 value=2.7 savecurrent=false}
C {gnd.sym} -40 60 0 0 {name=l8 lab=0}
C {iopin.sym} 550 200 0 0 {name=p5 lab=out}
C {ipin.sym} 190 220 0 0 {name=p13 lab=vbias}
C {ipin.sym} 170 200 0 0 {name=p14 lab=vp}
C {ipin.sym} 360 120 0 0 {name=p15 lab=vdd}
C {ipin.sym} 160 180 0 0 {name=p16 lab=vn}
C {gnd.sym} 360 280 0 0 {name=l10 lab=0}
C {symbols/cap_mim_1f5fF.sym} 540 250 0 0 {name=C6
W=25e-6
L=25e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 360 210 0 0 {name=x2}
C {symbols/ppolyf_u_1k.sym} 440 20 3 0 {name=R8
W=3e-6
L=21e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 440 -50 1 0 {name=C7
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {lab_pin.sym} -210 160 0 1 {name=p12 sig_type=std_logic lab=vn}
C {gnd.sym} -210 260 0 0 {name=l9 lab=0
value="AC -0.5 DC 1.1"}
C {isource.sym} -210 210 2 0 {name=I0 value=5u}
C {symbols/cap_mim_1f5fF.sym} -120 220 0 0 {name=C1
W=250e-6
L=250e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {devices/code_shown.sym} -750 -470 0 0 {name=MODELS1 only_toplevel=true
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
