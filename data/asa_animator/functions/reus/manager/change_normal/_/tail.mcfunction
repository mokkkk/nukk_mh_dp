
# 一定確立で2回転
execute if predicate asa_animator:random/020 run tag @s add AnmTail2

# 左右確認
execute unless entity @s[tag=AnmTail2] facing entity @e[limit=1,tag=ReusAttackTarget] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute unless entity @s[tag=AnmTail2] if entity @s[tag=Right] run tag @s add AnmTailR
execute unless entity @s[tag=AnmTail2] unless entity @s[tag=Right] run tag @s add AnmTailL

tag @s remove Right