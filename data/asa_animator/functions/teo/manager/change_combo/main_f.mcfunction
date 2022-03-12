
execute if score #mhdp_teo_combo_count AsaMatrix matches 0 run tag @s add AnmMoveStart
execute if score #mhdp_teo_combo_count AsaMatrix matches 1 run function asa_animator:teo/manager/change_normal/_/bite
execute if score #mhdp_teo_combo_count AsaMatrix matches 2 run function asa_animator:teo/manager/change_normal/_/bitelr
execute if score #mhdp_teo_combo_count AsaMatrix matches 3 run function asa_animator:teo/manager/change_normal/_/jump
execute if score #mhdp_teo_combo_count AsaMatrix matches 4 run tag @s add AnmIgnite
execute if entity @s[tag=IsFire] if score #mhdp_teo_combo_count AsaMatrix matches 3.. run tag @s remove ComboF
execute if entity @s[tag=IsBomb] if score #mhdp_teo_combo_count AsaMatrix matches 4.. run tag @s remove ComboF