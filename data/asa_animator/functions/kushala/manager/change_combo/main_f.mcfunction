
execute if score #mhdp_kushala_combo_count AsaMatrix matches 0 run tag @s add AnmBjb
execute if score #mhdp_kushala_combo_count AsaMatrix matches 1 run function asa_animator:kushala/manager/change_normal/_/flymove
execute if score #mhdp_kushala_combo_count AsaMatrix matches 2 run tag @s add AnmFlyBreathT3
execute if score #mhdp_kushala_combo_count AsaMatrix matches 3 run function asa_animator:kushala/manager/change_normal/_/end_fly
execute if score #mhdp_kushala_combo_count AsaMatrix matches 4.. run function asa_animator:kushala/manager/change_normal/_/bite
execute if score #mhdp_kushala_combo_count AsaMatrix matches 4.. run tag @s remove ComboF