
execute if entity @s[tag=IsHeatTail] run tag @s add AnmTailSwingJump2
execute if predicate asa_animator:random/020 run tag @s add AnmTailSwingJump2

# 左右確認
execute unless entity @s[tag=AnmTailSwingJump2] facing entity @e[limit=1,tag=DynoAttackTarget] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute unless entity @s[tag=AnmTailSwingJump2] if entity @s[tag=Right] run tag @s add AnmTailSwingJumpL
execute unless entity @s[tag=AnmTailSwingJump2] unless entity @s[tag=Right] run tag @s add AnmTailSwingJumpR

tag @s remove Right