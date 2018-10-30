onerror {quit -f}
vlib work
vlog -work work aula_181016.vo
vlog -work work aula_181016.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.entrada_vlg_vec_tst
vcd file -direction aula_181016.msim.vcd
vcd add -internal entrada_vlg_vec_tst/*
vcd add -internal entrada_vlg_vec_tst/i1/*
add wave /*
run -all
