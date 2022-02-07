
execute if score #mhdp_teo_combo_count AsaMatrix matches 0 run function asa_animator:teo/manager/change_normal/_/claw
execute if score #mhdp_teo_combo_count AsaMatrix matches 1.. run function asa_animator:teo/manager/change_normal/_/bite
execute if score #mhdp_teo_combo_count AsaMatrix matches 1.. run tag @s remove ComboA