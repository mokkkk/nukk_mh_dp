
# プレイヤーとの角度計算
execute rotated as @s rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos0"]}
execute facing entity @e[limit=1,tag=BrachyRAttackTarget] feet rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^-1 {Tags:["MhdpRotater","MhdpPos1"]}
execute positioned 0 0 0 positioned as @e[distance=0..2,type=marker,tag=MhdpPos0] if entity @e[distance=0..1,type=marker,tag=MhdpPos1] unless entity @s[tag=DestroyTail] run tag @s add AnmTail

execute positioned 0 0 0 run kill @e[distance=0..2,type=marker,tag=MhdpRotater]
execute unless entity @s[tag=AnmTail] run function asa_animator:brachyr/manager/change_normal/_/punch