onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top/clk
add wave -noupdate /top/test_clk
add wave -noupdate /top/itfc/clk
add wave -noupdate /top/itfc/load_en
add wave -noupdate /top/itfc/reset_n
add wave -noupdate /top/itfc/opcode
add wave -noupdate /top/itfc/operand_a
add wave -noupdate /top/itfc/operand_b
add wave -noupdate /top/itfc/write_pointer
add wave -noupdate /top/itfc/read_pointer
add wave -noupdate /top/itfc/instruction_word
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {123 ns}
