
# プレイヤーとの角度計算
execute rotated as @s rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos0"]}
execute facing entity @e[tag=DiablosAttackTarget,limit=1] feet rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^-1 {Tags:["MhdpRotater","MhdpPos1"]}
execute positioned 0 0 0 positioned as @e[type=marker,tag=MhdpPos0,distance=0..1.2] if entity @e[type=marker,tag=MhdpPos1,distance=0..1] run tag @s add IsBack
execute positioned 0 0 0 run kill @e[type=marker,tag=MhdpRotater,distance=0..1.2]
