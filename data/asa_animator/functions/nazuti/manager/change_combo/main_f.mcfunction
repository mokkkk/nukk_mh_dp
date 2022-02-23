
execute if score #mhdp_nazuti_combo_count AsaMatrix matches 0 run tag @s add AnmMoveStart
execute if score #mhdp_nazuti_combo_count AsaMatrix matches 1 run function asa_animator:nazuti/manager/change_normal/_/claw
execute if score #mhdp_nazuti_combo_count AsaMatrix matches 2 run function asa_animator:nazuti/manager/change_normal/_/stealthv2
execute if score #mhdp_nazuti_combo_count AsaMatrix matches 3.. run tag @s add AnmBreathFV
execute if score #mhdp_nazuti_combo_count AsaMatrix matches 3.. run tag @s remove ComboF