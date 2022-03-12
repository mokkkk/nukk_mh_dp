
# 左右確認
execute if score #mhdp_kushala_lv AsaMatrix matches 1 if predicate asa_animator:random/070 run tag @s add StepTurn
execute if score #mhdp_kushala_lv AsaMatrix matches 2.. run tag @s add StepTurn
execute if entity @e[tag=!StepTurn] facing entity @e[tag=KushalaAttackTarget,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right
execute if entity @e[tag=StepTurn] if predicate asa_animator:random/050 run tag @s add Right

execute if entity @s[tag=Right,tag=!StepTurn] run tag @s add AnmSteplL
execute if entity @s[tag=!Right,tag=!StepTurn] run tag @s add AnmStepR
execute if entity @s[tag=Right,tag=StepTurn] run tag @s add AnmStepTR
execute if entity @s[tag=StepTurn,tag=!Right] run tag @s add AnmStepTL

tag @s remove Right
tag @s remove StepTurn