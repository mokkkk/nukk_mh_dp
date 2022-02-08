
execute if score #mhdp_teo_combo_count AsaMatrix matches 0 run tag @s add AnmDashStart
execute if score #mhdp_teo_combo_count AsaMatrix matches 1 run tag @s add AnmDashStop
execute if score #mhdp_teo_combo_count AsaMatrix matches 2.. run function asa_animator:teo/manager/change_normal/_/jump
execute if score #mhdp_teo_combo_count AsaMatrix matches 2.. run tag @s remove ComboB