
execute if score #mhdp_kushala_combo_count AsaMatrix matches 0 run function asa_animator:kushala/manager/change_normal/_/flymove
execute if score #mhdp_kushala_combo_count AsaMatrix matches 1 run tag @s add AnmFlyClawD
execute if score #mhdp_kushala_combo_count AsaMatrix matches 2.. run tag @s add AnmBjb
execute if score #mhdp_kushala_combo_count AsaMatrix matches 2.. run tag @s remove ComboJ