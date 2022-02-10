
# 左右確認
execute if predicate asa_animator:random/050 run tag @s add Right
execute if score #mhdp_kushala_lv AsaMatrix matches 2.. run tag @s add StepTurn

execute if entity @s[tag=!StepTurn] run tag @s add AnmEndFly
execute if entity @s[tag=Right,tag=StepTurn] run tag @s add AnmFlyMoveLR
execute if entity @s[tag=StepTurn,tag=!Right] run tag @s add AnmFlyMoveLL

tag @s remove Right
tag @s remove StepTurn