
execute if entity @s[tag=IsHeatTail] run tag @s add AnmTailSwing2
execute if predicate asa_animator:random/020 run tag @s add AnmTailSwing2

# 左右確認
execute unless entity @s[tag=AnmTailSwing2] facing entity @e[limit=1,tag=DynoAttackTarget] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute unless entity @s[tag=AnmTailSwing2] if entity @s[tag=Right] run tag @s add AnmTailSwingR
execute unless entity @s[tag=AnmTailSwing2] unless entity @s[tag=Right] run tag @s add AnmTailSwingL

tag @s remove Right