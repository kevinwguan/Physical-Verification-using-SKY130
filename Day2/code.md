# Terminal
magic -d XR
netgen -batch lvs "../mag/sky130_fd_sc_hd__and2_1.spice sky130_fd_sc_hd__and2_1" "/usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice sky130_fd_sc_hd__and2_1"

# Magic
cif listall istyle
cif list istyle
cif istyle xxx
gds read /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds
cellname top
cif istyle sky130(vendor)
gds read /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds
cif istyle sky130()
gds read /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds
gds noduplicates
gds noduplicates true
cif istyle sky130(vendor)
gds read /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds
gds noduplicates false
gds read /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds

# Magic 2
port index
port first
port 1 name
port 1 class
port 1 use
lef read /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef
port 1 name
port 1 class
port 1 use
readspice /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
port first
port 1 name
quit

# Magic 3
lef read /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef
port first
port 1 name
port 2 name
port 3 name
port 1 use
port 1 class
readspice /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
port 3 name
load test
getcell sky130_fd_sc_hd__and2_1
gds write test
quit
gds read test
save test
quit
load test
path
gds write test
property
cellname writeable sky130_fd_sc_hd__and2_1 true
gds write test
quit
gds read test
quit
gds readonly true
gds rescale false
gds read /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds
load sky130_fd_sc_hd__and2_1
property

# Magic 4
load sky130_fd_sc_hd__and2_1
extract all
ext2spice lvs
ext2spice
ext2spice cthresh 0
ext2spice
ext2spice cthresh 0.01
ext2spice
ext2sim labels on
ext2sim
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0.01
ext2spice extresist on
ext2spice

# Magic 5
load sky130_fd_sc_hd__and2_1
drc style
drc listall style
drc style drc(full)
drc check
drc why
drc find
load test2
getcell sky130_fd_sc_hd__and2_1
getcell sky130_fd_sc_hd__tapvpwrvgnd_1
save test3

# Magic 6
ext2spice lvs
ext2spice

# Magic 7
load sky130_fd_sc_hd__and2_1
save altered
load altered
erase li
flatten -nolabels xor_test
load sky130_fd_sc_hd__and2_1
xor -nolabels xor_test
load xor_test
load test3
flatten -nolabels xor_test
xor -nolabels xor_test
load xor_test

# Challenges
Match mag files
Match spice files
Test on ideal, with C, and with RC
