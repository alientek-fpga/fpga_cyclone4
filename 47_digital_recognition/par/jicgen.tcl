cd ./output_files
file delete fpga.sof
file copy {*}[glob *.sof] fpga.sof
cd ..
exec quartus_cpf -c jicgen.cof
set_global_assignment -name POST_FLOW_SCRIPT_FILE "quartus_sh:jicgen.tcl"