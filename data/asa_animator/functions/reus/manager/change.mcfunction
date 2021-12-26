
# 行動回数増加
scoreboard players add #mhdp_reus_actcount_phase AsaMatrix 1

# ターゲットリセット
tag @e[tag=ReusTarget] remove ReusTarget
tag @e[tag=ReusAttackTarget] remove ReusAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!ReusParts,tag=!ReusTarget,distance=0..50,tag=!NotTarget,tag=!ReiaParts] add ReusTarget
# ターゲット決定
tag @a[tag=ReusTarget,limit=1,sort=random,tag=!NotTarget] add ReusAttackTarget
execute unless entity @e[tag=ReusAttackTarget] run tag @e[tag=ReusTarget,limit=1,sort=random] add ReusAttackTarget

# 地上
# execute unless score #mhdp_reus_actcount_phase AsaMatrix matches 6.. unless entity @s[tag=IsFlying] run function asa_animator:reus/manager/change_normal/main
# 地上→飛行
# execute if score #mhdp_reus_actcount_phase AsaMatrix matches 6.. unless entity @s[tag=IsFlying] run function asa_animator:reus/manager/change_phase/land_to_fly
# 飛行中
# execute unless score #mhdp_reus_actcount_phase AsaMatrix matches 8.. if entity @s[tag=IsFlying] run function asa_animator:reus/manager/change_flying/main
# 飛行→地上
# execute if score #mhdp_reus_actcount_phase AsaMatrix matches 8.. if entity @s[tag=IsFlying] run function asa_animator:reus/manager/change_phase/fly_to_land

# 軸合わせ
# execute unless predicate asa_animator:reus/turn run tag @s add AnmTurn

tag @s add AnmTail2

# 終了
tag @s remove ChangeAnm