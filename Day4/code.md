export PDK_ROOT=/usr/local/share/pdk
make mount # enter openlane environment
./flow.tcl -design spm -tag workshop

export PDK_ROOT=/usr/local/share/pdk
make mount
./flow.tcl -interactive
package require openlane
prep -design spm -tag workshop1
run_synthesis
run_floorplan
run_placement
run_cts
run_resizer_timing
run_routing
write_powered_verilog
set_netlist $::env(lvs_result_file_tag).powered.v
run_magic
run_klayout
run_klayout_gds_xor
run_magic_spice_export
run_lvs
run_magic_drc
run_antenna_check
run_lef_cvc
generate_final_summary_report

export PDK_ROOT=/usr/local/share/pdk
make mount
./flow.tcl -design task1 -tag workshop
./flow.tcl -design task1 -tag workshop1 # change config.tcl
./flow.tcl -design task1 -tag workshop2 # change config.tcl

export PDK_ROOT=/usr/local/share/pdk
make mount
./flow.tcl -design task2 -tag workshop
./flow.tcl -interactive
package	require openlane
prep -design task2 -tag workshop
run_magic
run_magic_spice_export
run_lvs
run_magic_drc
generate_final_summary_report
