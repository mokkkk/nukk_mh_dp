
# ターゲットリセット
tag @e[tag=BrachyTarget] remove BrachyTarget
tag @e[tag=BrachyAttackTarget] remove BrachyAttackTarget
# ターゲット探索
tag @e[distance=0..50,type=#asa_animator:attack_target,tag=!BrachyParts,tag=!BrachyTarget,tag=!NotTarget] add BrachyTarget
# ターゲット決定
tag @a[tag=BrachyTarget,limit=1,sort=random,tag=!NotTarget] add BrachyAttackTarget
execute unless entity @e[tag=BrachyAttackTarget] run tag @e[tag=BrachyTarget,limit=1,sort=random] add BrachyAttackTarget