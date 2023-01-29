onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Lab8Tb/CLOCK_50
add wave -noupdate /Lab8Tb/KEY
add wave -noupdate /Lab8Tb/SW
add wave -noupdate /Lab8Tb/ADC_CONVST
add wave -noupdate /Lab8Tb/ADC_DIN
add wave -noupdate /Lab8Tb/ADC_SCLK
add wave -noupdate /Lab8Tb/U0/U2/select
add wave -noupdate /Lab8Tb/U0/U2/chansel
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3529409 ps} 0}
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
WaveRestoreZoom {0 ps} {13151250 ps}
