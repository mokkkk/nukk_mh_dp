
# ターゲットリセット
tag @e[tag=TeoTarget] remove TeoTarget
tag @e[tag=TeoAttackTarget] remove TeoAttackTarget
# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!TeoParts,tag=!TeoTarget,tag=!NotTarget,distance=0..50] add TeoTarget
# ターゲット決定
tag @a[tag=TeoTarget,tag=!NotTarget,sort=random,limit=1] add TeoAttackTarget
execute unless entity @e[tag=TeoAttackTarget] run tag @e[tag=TeoTarget,sort=random,limit=1] add TeoAttackTarget