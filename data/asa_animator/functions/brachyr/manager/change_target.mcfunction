
# ターゲットリセット
tag @e[tag=BrachyRTarget] remove BrachyRTarget
tag @e[tag=BrachyRAttackTarget] remove BrachyRAttackTarget
# ターゲット探索
tag @e[distance=0..50,type=#asa_animator:attack_target,tag=!BrachyParts,tag=!BrachyRTarget,tag=!NotTarget] add BrachyRTarget
# ターゲット決定
tag @a[tag=BrachyRTarget,limit=1,sort=random,tag=!NotTarget] add BrachyRAttackTarget
execute unless entity @e[tag=BrachyRAttackTarget] run tag @e[tag=BrachyRTarget,limit=1,sort=random] add BrachyRAttackTarget