
# 左右確認
execute if predicate asa_animator:random/050 run tag @s add Right

execute if entity @s[tag=Right] run tag @s add AnmFlyMoveR
execute if entity @s[tag=!Right] run tag @s add AnmFlyMoveL

tag @s remove Right