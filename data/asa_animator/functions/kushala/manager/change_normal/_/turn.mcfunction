
# プレイヤーとの角度計算
execute rotated as @s rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos0"]}
execute facing entity @e[tag=KushalaAttackTarget,limit=1] feet rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos1"]}
execute positioned 0 0 0 positioned as @e[type=marker,tag=MhdpPos0,distance=0..2] if entity @e[type=marker,tag=MhdpPos1,distance=0..1] run tag @s add NoRotate

execute unless entity @s[tag=NoRotate] run tag @s add AnmTurn

execute positioned 0 0 0 run kill @e[type=marker,tag=MhdpRotater,distance=0..2]
tag @s remove NoRotate