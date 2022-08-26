
# 左右確認
execute facing entity @e[tag=MagaraAttackTarget,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute if entity @s[tag=Right] run tag @s add AnmBombR
execute if entity @s[tag=!Right] run tag @s add AnmBombL

tag @s remove Right