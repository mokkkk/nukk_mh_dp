


# ターゲットリセット
tag @e[tag=ReusTarget] remove ReusTarget
tag @e[tag=ReusAttackTarget] remove ReusAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!ReusParts,tag=!ReusTarget,distance=0..50] add ReusTarget
# ターゲット決定
execute if predicate asa_animator:random/070 run tag @e[type=player,tag=ReusTarget,limit=1,sort=random] add ReusAttackTarget
execute unless entity @e[tag=ReusAttackTarget] run tag @e[tag=ReusTarget,limit=1,sort=random] add ReusAttackTarget

# 近距離
execute unless entity @s[tag=IsFlying] if entity @e[tag=ReusAttackTarget,distance=..9] run function asa_animator:reus/manager/range_near

# 中距離
execute unless entity @s[tag=IsFlying] if entity @e[tag=ReusAttackTarget,distance=10..23] run function asa_animator:reus/manager/range_middle

# 遠距離
execute unless entity @s[tag=IsFlying] if entity @e[tag=ReusAttackTarget,distance=24..] run function asa_animator:reus/manager/range_far

# 飛行中
execute if entity @s[tag=IsFlying] run function asa_animator:reus/manager/range_fly

# 終了
tag @s remove ChangeAnm