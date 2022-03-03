
execute if score #mhdp_ruko_combo_count AsaMatrix matches 0 run tag @s add AnmMoveStart
execute if score #mhdp_ruko_combo_count AsaMatrix matches 1 run tag @s add AnmBite
execute if score #mhdp_ruko_combo_count AsaMatrix matches 2.. run tag @s add AnmStepB
execute if score #mhdp_ruko_combo_count AsaMatrix matches 2.. run tag @s remove ComboF