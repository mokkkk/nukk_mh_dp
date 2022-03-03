
execute if score #mhdp_ruko_combo_count AsaMatrix matches 0 run tag @s add AnmStoneShot
execute if score #mhdp_ruko_combo_count AsaMatrix matches 1 run tag @s add AnmStone
execute if score #mhdp_ruko_combo_count AsaMatrix matches 2 run function asa_animator:ruko/manager/change_normal/_/step
execute if score #mhdp_ruko_combo_count AsaMatrix matches 3.. run tag @s add AnmStoneShot
execute if score #mhdp_ruko_combo_count AsaMatrix matches 3.. run tag @s remove ComboL