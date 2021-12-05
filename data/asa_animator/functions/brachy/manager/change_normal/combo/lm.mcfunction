
execute if score #mhdp_brachy_combo_count AsaMatrix matches 0 run function asa_animator:brachy/manager/change_normal/_/turn
execute if score #mhdp_brachy_combo_count AsaMatrix matches 1 run function asa_animator:brachy/manager/change_normal/_/turn
execute if score #mhdp_brachy_combo_count AsaMatrix matches 2 run function asa_animator:brachy/manager/change_normal/_/turn
execute if score #mhdp_brachy_combo_count AsaMatrix matches 3 run tag @s add AnmPlanting
execute if score #mhdp_brachy_combo_count AsaMatrix matches 3.. run tag @s remove LComboM