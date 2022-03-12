
# 左右確認
execute facing entity @e[tag=RukoAttackTarget,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute if entity @s[tag=Right] run tag @s add AnmClawR
execute if entity @s[tag=!Right] run tag @s add AnmClawL

tag @s remove Right