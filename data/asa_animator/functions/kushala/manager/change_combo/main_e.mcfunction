
execute if score #mhdp_kushala_combo_count AsaMatrix matches 0 run function asa_animator:kushala/manager/change_normal/_/start_fly
execute if score #mhdp_kushala_combo_count AsaMatrix matches 1 run tag @s add AnmFlyTackle
execute if score #mhdp_kushala_combo_count AsaMatrix matches 2.. run function asa_animator:kushala/manager/change_normal/_/end_fly
execute if score #mhdp_kushala_combo_count AsaMatrix matches 2.. run tag @s remove ComboE