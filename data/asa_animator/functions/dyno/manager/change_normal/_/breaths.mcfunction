
# 左右確認
execute facing entity @e[limit=1,tag=DynoAttackTarget] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute if entity @s[tag=Right] run tag @s add AnmBreathLStep
execute unless entity @s[tag=Right] run tag @s add AnmBreathRStep

tag @s remove Right