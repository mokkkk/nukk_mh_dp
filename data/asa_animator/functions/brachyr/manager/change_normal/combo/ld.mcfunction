
execute if score #mhdp_brachy_combo_count AsaMatrix matches 0 run function asa_animator:brachy/manager/change_normal/_/hook
execute if score #mhdp_brachy_combo_count AsaMatrix matches 1 run function asa_animator:brachy/manager/change_normal/_/punch_l
execute if score #mhdp_brachy_combo_count AsaMatrix matches 2 run tag @s add AnmHead
execute if score #mhdp_brachy_combo_count AsaMatrix matches 3 run tag @s add AnmHeadBomb
execute if score #mhdp_brachy_combo_count AsaMatrix matches 3.. run tag @s remove LComboD