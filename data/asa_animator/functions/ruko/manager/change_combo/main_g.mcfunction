
execute if score #mhdp_ruko_combo_count AsaMatrix matches 0 run tag @s add AnmJump
execute if score #mhdp_ruko_combo_count AsaMatrix matches 1 run function asa_animator:ruko/manager/change_normal/_/step
execute if score #mhdp_ruko_combo_count AsaMatrix matches 2.. run tag @s add AnmStoneShot
execute if score #mhdp_ruko_combo_count AsaMatrix matches 2.. run tag @s remove ComboG