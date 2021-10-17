
# ターゲットリセット
tag @e[tag=ReusTarget] remove ReusTarget
tag @e[tag=ReusAttackTarget] remove ReusAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!ReusParts,tag=!ReusTarget,distance=0..50,tag=!NotTarget] add ReusTarget
# ターゲット決定
execute if predicate asa_animator:random/070 run tag @e[type=player,tag=ReusTarget,limit=1,sort=random] add ReusAttackTarget
execute unless entity @e[tag=ReusAttackTarget] run tag @e[tag=ReusTarget,limit=1,sort=random] add ReusAttackTarget

# 体力半減時，一度だけ怒り遷移
# execute if score #mhdp_reus_health AsaMatrix matches ..25000 unless entity @s[tag=Angered] run function asa_animator:reus/manager/start_anger_animation
# execute if score #mhdp_reus_angercount AsaMatrix matches 1.. run scoreboard players remove #mhdp_reus_angercount AsaMatrix 1
# execute if score #mhdp_reus_angercount AsaMatrix matches ..0 run tag @s remove IsAnger

# 近距離
# execute unless entity @s[tag=StartAnger] unless entity @s[tag=IsFlying] if entity @e[tag=ReusAttackTarget,distance=..9] run function asa_animator:reus/manager/range_near

# 中距離
# execute unless entity @s[tag=StartAnger] unless entity @s[tag=IsFlying] if entity @e[tag=ReusAttackTarget,distance=10..23] run function asa_animator:reus/manager/range_middle

# 遠距離
# execute unless entity @s[tag=StartAnger] unless entity @s[tag=IsFlying] if entity @e[tag=ReusAttackTarget,distance=24..] run function asa_animator:reus/manager/range_far

# 飛行中
# execute unless entity @s[tag=StartAnger] if entity @s[tag=IsFlying] run function asa_animator:reus/manager/range_fly

# 強制
tag @s add AnmJump

# 終了
tag @s remove ChangeAnm