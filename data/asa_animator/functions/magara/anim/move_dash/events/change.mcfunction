scoreboard players set @s AsaMatrix 0
tag @s remove AnmMoveDash

# 距離判定
    execute unless entity @e[tag=MagaraAttackTarget,distance=..10] run tag @s add IsFar
# 敵が近い：
    execute if entity @s[tag=!IsFar] if predicate asa_animator:random/050 run tag @s add AnmBite
    execute if entity @s[tag=!IsFar,tag=!AnmBite] run function asa_animator:magara/manager/change_normal/_/bomb
# 敵が遠い：
    execute if entity @s[tag=IsFar] run function asa_animator:magara/manager/change_normal/_/breath

# 終了
    tag @s remove IsFar