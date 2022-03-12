
execute if score #mhdp_ruko_combo_count AsaMatrix matches 0 run tag @s add AnmJump
execute if score #mhdp_ruko_combo_count AsaMatrix matches 1.. run function asa_animator:ruko/manager/change_normal/_/bitec
execute if score #mhdp_ruko_combo_count AsaMatrix matches 1.. run tag @s remove ComboC