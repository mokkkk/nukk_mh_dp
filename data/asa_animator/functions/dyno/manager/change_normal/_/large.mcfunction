
# プレイヤーとの角度計算
execute rotated as @s rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^-1 {Tags:["MhdpRotater","MhdpPos0"]}
execute facing entity @e[limit=1,tag=DynoAttackTarget] feet rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos1"]}
execute positioned 0 0 0 positioned as @e[distance=0..2,type=marker,tag=MhdpPos0] if entity @e[distance=0..1.6,type=marker,tag=MhdpPos1] run tag @s add Large

# 左右確認
execute if entity @s[tag=Large] facing entity @e[limit=1,tag=DynoAttackTarget] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute unless entity @s[tag=Large] run function asa_animator:dyno/manager/change_normal/_/thrust
execute if entity @s[tag=Large] if entity @s[tag=Right] run tag @s add AnmTailLargeR
execute if entity @s[tag=Large] unless entity @s[tag=Right] run tag @s add AnmTailLargeL

execute positioned 0 0 0 run kill @e[distance=0..2,type=marker,tag=MhdpRotater]
tag @s remove Large
tag @s remove Right