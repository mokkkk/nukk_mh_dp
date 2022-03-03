
# ターゲットリセット
tag @e[tag=NazutiTarget] remove NazutiTarget
tag @e[tag=NazutiAttackTarget] remove NazutiAttackTarget
# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!NazutiParts,tag=!NazutiTarget,tag=!NotTarget,distance=0..50] add NazutiTarget
# ターゲット決定
tag @a[tag=NazutiTarget,tag=!NotTarget,sort=random,limit=1] add NazutiAttackTarget
execute unless entity @e[tag=NazutiAttackTarget] run tag @e[tag=NazutiTarget,sort=random,limit=1] add NazutiAttackTarget