
# プレイヤーとの角度計算
execute rotated as @s rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos0"]}
execute facing entity @e[tag=BrachyAttackTarget,limit=1] feet rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^-1 {Tags:["MhdpRotater","MhdpPos1"]}
execute positioned 0 0 0 positioned as @e[type=marker,tag=MhdpPos0,distance=0..2] if entity @e[type=marker,tag=MhdpPos1,distance=0..1] unless entity @s[tag=DestroyTail] run tag @s add AnmTail

execute positioned 0 0 0 run kill @e[type=marker,tag=MhdpRotater,distance=0..2]
execute unless entity @s[tag=AnmTail] if predicate asa_animator:random/050 run function asa_animator:brachy/manager/change_normal/_/punch_r
execute unless entity @s[tag=AnmTail] if predicate asa_animator:brachy/stay run function asa_animator:brachy/manager/change_normal/_/punch_l