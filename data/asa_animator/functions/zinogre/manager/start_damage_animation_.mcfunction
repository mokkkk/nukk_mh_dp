
# 左右確認
tag @e[tag=ZinogreTarget,limit=1,sort=nearest] add ZinogreRotateTarget
execute facing entity @e[tag=ZinogreRotateTarget,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute if entity @s[tag=Right] run tag @s add AnmDamageR
execute if entity @s[tag=!Right] run tag @s add AnmDamageL

tag @s remove Right
tag @e[tag=ZinogreRotateTarget] remove ZinogreRotateTarget