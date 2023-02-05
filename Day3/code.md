DRC -> DRC Report (?)
(s) # select area
(b) # measurement key
Window -> Set grid 0.05um
Window -> Snap-to-grid on # or off
(;) -> box width 0.14um
(;) -> paint m2
move e 0.14um
stret e 0.14um
# shift and arrow keys to strecth
cif see XXX
cif see MCON
feedback why
feedback clear
#2
stret s 2um
box grow c 0.03um
paint m1
box grow e 0.03um
box grow w 0.03um
cif see MCON
cif see VIA1
cif see VIA2
cif see VIA3
cif see VIA4
#3
box size 0.17um 0.17um
paint li
DRC -> DRC complete
drc check
erase m1
#4
nsubstratendiff
nsubstratencontact
box grow c 0.12um
paint li
stret e 1um
stret s 1um
move e 1um
nwell
Device 1 -> deep n-well region
#5
what
cif see XXX
cif see DIFF
cif see POLY
cif see NSDM
cif see PSDM
feedback cl
cif see LVTN
what
cif see HVI
feedback cl
cif see NSDM
cif see HVI
feedback cl
mvpsubratepcontact
mvpsubstratepdiff
cif see NPC
#6
Devices 1 -> default devices
cellname filepath sky130_fd_io__signal_5_sym_hv_local_5term
cellname filepath sky130_fd_io__signal_5_sym_hv_local_5term .
save
property
erase poly
#7
snap internal
scalegrid 1 2
box size 29 29
splitpaint sw ml
copy e 100
side
move w 65
box grow n 1
erase
splitpaint sw m1
cif see VIA2
cif see VIA2
copy e 3um
cif see VIA2
rotate 90
cif see VIA2
#8
addpath seal_test
load advSeal_6um_gen
gds read seal_test/advSeal_6um_gen
property
drc style drc(full)
drc check
#9
getcell sky130_fd_sc_hd__tapvpwrvgnd_1
#10
extract do local
extract all
antennacheck
feedback why
antennacheck debug
antennacheck
feedback clear
extract all
antennacheck debug
antennacheck
see no via2,m3
extract all
antennacheck debug
antennacheck
#11
cif cover MET1
cif cover MET2
gds write excercise_11
gds read exercise_11_fill_pattern
see no *
see allm2
see m2fill
load exercise_11 
see *
box values 0 0 0 0
getcell exercise_11_fill_pattern child 0 0
see no * ; see m2,m2fill
cif cover MET1
cif ostyle density
cif cover MET1
cif cover m1_all
cif cover m2_all
cif cover m3_all
#challenge compare the fill with original
#12
