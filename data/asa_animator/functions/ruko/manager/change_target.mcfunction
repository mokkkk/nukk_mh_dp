
# ターゲットリセット
tag @e[tag=RukoTarget] remove RukoTarget
tag @e[tag=RukoAttackTarget] remove RukoAttackTarget
# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!RukoParts,tag=!RukoTarget,tag=!NotTarget,distance=0..50] add RukoTarget
# ターゲット決定
tag @a[tag=RukoTarget,tag=!NotTarget,sort=random,limit=1] add RukoAttackTarget
execute unless entity @e[tag=RukoAttackTarget] run tag @e[tag=RukoTarget,sort=random,limit=1] add RukoAttackTarget