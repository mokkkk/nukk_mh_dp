
execute if score #mhdp_ruko_combo_count AsaMatrix matches 0 run tag @s add AnmMoveStart
execute if score #mhdp_ruko_combo_count AsaMatrix matches 1 run tag @s add AnmBite
execute if score #mhdp_ruko_combo_count AsaMatrix matches 2 run function asa_animator:ruko/manager/change_normal/_/step
execute if score #mhdp_ruko_combo_count AsaMatrix matches 3 run function asa_animator:ruko/manager/change_normal/_/bite2
execute if score #mhdp_ruko_combo_count AsaMatrix matches 4.. run function asa_animator:ruko/manager/change_normal/_/claw
execute if score #mhdp_ruko_combo_count AsaMatrix matches 4.. run tag @s remove ComboJ