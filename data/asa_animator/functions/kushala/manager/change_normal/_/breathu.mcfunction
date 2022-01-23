
# 左右確認
execute if score #mhdp_kushala_lv AsaMatrix matches 2 if predicate asa_animator:random/050 run tag @s add AnmBreathU2
execute if entity @s[tag=!AnmBreathU2] run tag @s add AnmBreathU
