
execute if score #mhdp_brachy_combo_count AsaMatrix matches 0 run function asa_animator:brachyr/manager/change_normal/_/punch_large
execute if score #mhdp_brachy_combo_count AsaMatrix matches 1.. run function asa_animator:brachyr/manager/change_normal/_/punch_large
execute if score #mhdp_brachy_combo_count AsaMatrix matches 1.. run tag @s remove SComboE