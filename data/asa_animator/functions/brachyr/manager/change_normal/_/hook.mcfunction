
# 左右確認
execute facing entity @e[tag=BrachyRAttackTarget,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute if entity @s[tag=Right] run tag @s add AnmHookL
execute unless entity @s[tag=Right] run tag @s add AnmHookR

execute positioned 0 0 0 run kill @e[type=marker,tag=MhdpRotater,distance=0..2]
tag @s remove Right