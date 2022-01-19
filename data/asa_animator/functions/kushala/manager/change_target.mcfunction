
# ターゲットリセット
tag @e[tag=KushalaTarget] remove KushalaTarget
tag @e[tag=KushalaAttackTarget] remove KushalaAttackTarget
# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!KushalaParts,tag=!KushalaTarget,tag=!NotTarget,distance=0..50] add KushalaTarget
# ターゲット決定
tag @a[tag=KushalaTarget,tag=!NotTarget,sort=random,limit=1] add KushalaAttackTarget
execute unless entity @e[tag=KushalaAttackTarget] run tag @e[tag=KushalaTarget,sort=random,limit=1] add KushalaAttackTarget