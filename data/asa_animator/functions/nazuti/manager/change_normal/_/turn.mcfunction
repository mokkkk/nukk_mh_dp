
# プレイヤーとの角度計算
execute rotated as @s rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos0"]}
execute facing entity @e[tag=NazutiAttackTarget,limit=1] feet rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos1"]}
execute positioned 0 0 0 positioned as @e[type=marker,tag=MhdpPos0,distance=0..2] if entity @e[type=marker,tag=MhdpPos1,distance=0..1] run tag @s add NoRotate

execute unless entity @s[tag=NoRotate] run tag @s add AnmTurn

# 左右確認
execute if entity @s[tag=AnmTurn] facing entity @e[tag=NazutiAttackTarget,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add IsTurnRight

execute positioned 0 0 0 run kill @e[type=marker,tag=MhdpRotater,distance=0..2]
tag @s remove NoRotate