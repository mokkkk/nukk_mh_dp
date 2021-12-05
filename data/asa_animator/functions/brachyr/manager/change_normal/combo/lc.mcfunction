
execute if score #mhdp_brachy_combo_count AsaMatrix matches 0 run function asa_animator:brachyr/manager/change_normal/_/punch
execute if score #mhdp_brachy_combo_count AsaMatrix matches 1 run function asa_animator:brachyr/manager/change_normal/_/turn
execute if score #mhdp_brachy_combo_count AsaMatrix matches 2.. run tag @s add AnmUpper
execute if score #mhdp_brachy_combo_count AsaMatrix matches 2.. run tag @s remove LComboC