


# ターゲットリセット
tag @e[tag=DiablosTarget] remove DiablosTarget
tag @e[tag=DiablosAttackTarget] remove DiablosAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!DiablosParts,tag=!DiablosTarget,distance=0..50] add DiablosTarget
# ターゲット決定
execute if predicate asa_animator:random/070 run tag @e[type=player,tag=DiablosTarget,limit=1,sort=random] add DiablosAttackTarget
execute unless entity @e[tag=DiablosAttackTarget] run tag @e[tag=DiablosTarget,limit=1,sort=random] add DiablosAttackTarget

# 近距離
execute if entity @e[tag=DiablosAttackTarget,distance=..9] run function asa_animator:diablos/manager/range_near

# 中距離
execute if entity @e[tag=DiablosAttackTarget,distance=10..23] run function asa_animator:diablos/manager/range_middle

# 遠距離
execute if entity @e[tag=DiablosAttackTarget,distance=24..] run function asa_animator:diablos/manager/range_far

# 終了
tag @s remove ChangeAnm