v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 730 -1560 730 -1520 {
lab=in}
N 730 -1560 820 -1560 {
lab=in}
N 630 -1610 630 -1480 {
lab=#net1}
N 630 -1610 1140 -1610 {
lab=#net1}
N 1140 -1610 1140 -1560 {
lab=#net1}
N 1120 -1560 1140 -1560 {
lab=#net1}
N 630 -1420 810 -1420 {
lab=GND}
N 810 -1460 810 -1420 {
lab=GND}
N 730 -1460 810 -1460 {
lab=GND}
N 810 -1460 1140 -1460 {
lab=GND}
N 1140 -1520 1140 -1460 {
lab=GND}
N 1120 -1520 1140 -1520 {
lab=GND}
N 730 -1580 730 -1560 {
lab=in}
N 1120 -1540 1140 -1540 {
lab=out}
C {inverter.sym} 970 -1540 0 0 {name=x1}
C {devices/vsource.sym} 730 -1490 0 0 {name=V1 value="PWL(0 0 20n 0 900n 1.8)"}
C {devices/gnd.sym} 930 -1460 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 630 -1450 0 0 {name=V2 value=1.8}
C {devices/opin.sym} 1140 -1540 0 0 {name=p2 lab=out}
C {devices/opin.sym} 730 -1580 0 0 {name=p1 lab=in}
C {devices/code.sym} 460 -1560 0 0 {name=s4 only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
	tran 1n 1u
	plot v(in) v(out)
.endc
.save all
"}
