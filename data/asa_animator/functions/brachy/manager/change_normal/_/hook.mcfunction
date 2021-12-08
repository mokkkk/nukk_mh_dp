
# 左右確認
execute facing entity @e[limit=1,tag=BrachyAttackTarget] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute if entity @s[tag=Right] run tag @s add AnmHookL
execute unless entity @s[tag=Right] run tag @s add AnmHookR

execute positioned 0 0 0 run kill @e[distance=0..2,type=marker,tag=MhdpRotater]
tag @s remove Right