
# 左右確認
execute facing entity @e[tag=ZinogreAttackTarget,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute if entity @e[tag=ZinogreAttackTarget,distance=..16] run tag @s add Near
execute if entity @s[tag=Right,tag=Near] run tag @s add AnmHandRS
execute if entity @s[tag=Near,tag=!Right] run tag @s add AnmHandLS
execute if entity @s[tag=Right,tag=!Near] run tag @s add AnmHandRSS
execute if entity @s[tag=!Near,tag=!Right] run tag @s add AnmHandLSS

tag @s remove Near
tag @s remove Right