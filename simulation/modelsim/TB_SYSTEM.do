do BB_SYSTEM_run_msim_rtl_verilog.do
onerror {resume}
quietly WaveActivateNextPane {} 0
delete wave *
add wave -noupdate /TB_SYSTEM/eachvec

add wave  -divider NEURON
add wave -noupdate /TB_SYSTEM/TB_SYSTEM_y0_Out
add wave -noupdate -radix Unsigned /TB_SYSTEM/TB_SYSTEM_t0_InBUS
add wave -noupdate -radix Unsigned /TB_SYSTEM/TB_SYSTEM_x0_InBUS
add wave -noupdate -radix Unsigned /TB_SYSTEM/TB_SYSTEM_w0_InBUS
add wave -noupdate -radix Unsigned /TB_SYSTEM/TB_SYSTEM_x1_InBUS
add wave -noupdate -radix Unsigned /TB_SYSTEM/TB_SYSTEM_w1_InBUS
add wave -noupdate -radix Unsigned /TB_SYSTEM/TB_SYSTEM_x2_InBUS
add wave -noupdate -radix Unsigned /TB_SYSTEM/TB_SYSTEM_w2_InBUS
add wave -noupdate -radix Unsigned /TB_SYSTEM/TB_SYSTEM_x3_InBUS
add wave -noupdate -radix Unsigned /TB_SYSTEM/TB_SYSTEM_w3_InBUS

add wave  -divider MULTIPLIER_u0
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_MULTIPLIER_u0/CC_MULTIPLIER_m0_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_MULTIPLIER_u0/CC_MULTIPLIER_m1_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_MULTIPLIER_u0/CC_MULTIPLIER_product_Out

add wave  -divider MULTIPLIER_u1
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_MULTIPLIER_u1/CC_MULTIPLIER_m0_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_MULTIPLIER_u1/CC_MULTIPLIER_m1_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_MULTIPLIER_u1/CC_MULTIPLIER_product_Out

add wave  -divider MULTIPLIER_u2
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_MULTIPLIER_u2/CC_MULTIPLIER_m0_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_MULTIPLIER_u2/CC_MULTIPLIER_m1_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_MULTIPLIER_u2/CC_MULTIPLIER_product_Out

add wave  -divider MULTIPLIER_u3
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_MULTIPLIER_u3/CC_MULTIPLIER_m0_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_MULTIPLIER_u3/CC_MULTIPLIER_m1_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_MULTIPLIER_u3/CC_MULTIPLIER_product_Out

add wave  -divider ADDER_u0
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_ADDER_u0/CC_ADDER_a0_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_ADDER_u0/CC_ADDER_a1_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_ADDER_u0/CC_ADDER_sum_Out

add wave  -divider ADDER_u1
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_ADDER_u1/CC_ADDER_a0_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_ADDER_u1/CC_ADDER_a1_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_ADDER_u1/CC_ADDER_sum_Out

add wave  -divider ADDER_u2
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_ADDER_u2/CC_ADDER_a0_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_ADDER_u2/CC_ADDER_a1_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_ADDER_u2/CC_ADDER_sum_Out

add wave  -divider COMPARATOR_u0
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_COMPARATOR_u2/CC_COMPARATOR_c0_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_COMPARATOR_u2/CC_COMPARATOR_c1_InBUS
add wave  -noupdate -radix Unsigned /TB_SYSTEM/BB_SYSTEM_u0/CC_NEURON_u0/CC_COMPARATOR_u2/CC_COMPARATOR_result_Out


restart
run 1ms

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {319999492 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 445
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
WaveRestoreZoom {59829352 ps} {60892417 ps}
