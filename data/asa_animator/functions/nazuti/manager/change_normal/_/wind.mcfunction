
# lv1- 確立で敵狙い
execute if score #mhdp_nazuti_lv AsaMatrix matches 1.. if predicate asa_animator:random/050 run tag @s add AnmWindT

execute unless entity @s[tag=AnmWindT] if entity @e[tag=NazutiAttackTarget,distance=..12] run tag @s add AnmWindG
execute if entity @s[tag=!AnmWindT,tag=!AnmWindG] run tag @s add AnmWindS