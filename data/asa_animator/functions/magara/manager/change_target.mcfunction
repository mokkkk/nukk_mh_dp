
# ターゲットリセット
tag @e[tag=MagaraTarget] remove MagaraTarget
tag @e[tag=MagaraAttackTarget] remove MagaraAttackTarget
# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!MagaraParts,tag=!MagaraTarget,tag=!NotTarget,distance=0..50] add MagaraTarget
# ターゲット決定
tag @a[tag=MagaraTarget,tag=!NotTarget,sort=random,limit=1] add MagaraAttackTarget
execute unless entity @e[tag=MagaraAttackTarget] run tag @e[tag=MagaraTarget,sort=random,limit=1] add MagaraAttackTarget