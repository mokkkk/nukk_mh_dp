
# ターゲットリセット
tag @e[tag=BrachyRTarget] remove BrachyRTarget
tag @e[tag=BrachyRAttackTarget] remove BrachyRAttackTarget
# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!BrachyRParts,tag=!BrachyRTarget,tag=!NotTarget,distance=0..50] add BrachyRTarget
# ターゲット決定
tag @a[tag=BrachyRTarget,tag=!NotTarget,sort=random,limit=1] add BrachyRAttackTarget
execute unless entity @e[tag=BrachyRAttackTarget] run tag @e[tag=BrachyRTarget,sort=random,limit=1] add BrachyRAttackTarget