v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 660 120 670 {lab=0}
N -220 430 -210 430 {lab=vdd}
N -210 430 -210 460 {lab=vdd}
N -210 520 -210 530 {lab=0}
N 120 520 120 540 {lab=vdd}
N 270 630 290 630 {lab=Vd}
N 270 610 290 610 {lab=Vd1}
N 270 590 290 590 {lab=VCTAT}
N 270 570 290 570 {lab=Vref}
C {ipin.sym} -220 430 0 0 {name=p1 lab=vdd}
C {iopin.sym} 290 570 0 0 {name=p2 lab=Vref}
C {vsource.sym} -210 490 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 120 670 0 0 {name=l2 lab=0}
C {gnd.sym} -210 530 0 0 {name=l3 lab=0}
C {lab_pin.sym} 120 520 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {iopin.sym} 290 590 0 0 {name=p4 lab=VCTAT}
C {iopin.sym} 290 610 0 0 {name=p5 lab=Vd1}
C {iopin.sym} 290 630 0 0 {name=p6 lab=Vd}
C {code_shown.sym} 50 220 0 0 {name=NGSPICE only_toplevel=false value="
.param
+RG=65k
.control
save all
foreach rgval 60k 62k 64k 66k 68k 70k
  alterparam RG = $rgval
  reset
  dc temp -40 125 1
  plot v(Vref) title 'RG=$rgval'
end
.endc
"}
C {GF180/xschem/Chipathon/BGR/BGR_BJT.sym} 120 600 0 0 {name=x1}
C {devices/code_shown.sym} -760 190 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
