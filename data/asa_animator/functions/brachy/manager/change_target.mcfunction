
# ターゲットリセット
tag @e[tag=BrachyTarget] remove BrachyTarget
tag @e[tag=BrachyAttackTarget] remove BrachyAttackTarget
# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!BrachyParts,tag=!BrachyTarget,tag=!NotTarget,distance=0..50] add BrachyTarget
# ターゲット決定
tag @a[tag=BrachyTarget,tag=!NotTarget,sort=random,limit=1] add BrachyAttackTarget
execute unless entity @e[tag=BrachyAttackTarget] run tag @e[tag=BrachyTarget,sort=random,limit=1] add BrachyAttackTarget