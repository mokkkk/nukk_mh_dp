
execute if score #mhdp_zinogre_combo_count AsaMatrix matches 0 run function asa_animator:zinogre/manager/change_normal/_/head
execute if score #mhdp_zinogre_combo_count AsaMatrix matches 1 run tag @s add AnmBStep
execute if score #mhdp_zinogre_combo_count AsaMatrix matches 2.. run tag @s add AnmCharge
execute if score #mhdp_zinogre_combo_count AsaMatrix matches 2.. run tag @s remove ComboTA