
# プレイヤーとの角度計算
execute rotated as @s rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos0"]}
execute facing entity @e[limit=1,tag=BrachyAttackTarget] feet rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos1"]}
execute positioned 0 0 0 positioned as @e[distance=0..2,type=marker,tag=MhdpPos0] if entity @e[distance=0..1.3,type=marker,tag=MhdpPos1] run tag @s add NoRotate

# 左右確認
execute facing entity @e[limit=1,tag=BrachyAttackTarget] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute if entity @s[tag=NoRotate] run tag @s add AnmPunchR
execute unless entity @s[tag=NoRotate] if entity @s[tag=Right] run tag @s add AnmPunchTurnL
execute unless entity @s[tag=NoRotate] unless entity @s[tag=Right] run tag @s add AnmPunchTurnR

execute positioned 0 0 0 run kill @e[distance=0..2,type=marker,tag=MhdpRotater]
tag @s remove NoRotate
tag @s remove Right