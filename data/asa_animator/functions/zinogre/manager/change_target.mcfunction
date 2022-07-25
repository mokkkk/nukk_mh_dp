
# ターゲットリセット
tag @e[tag=ZinogreTarget] remove ZinogreTarget
tag @e[tag=ZinogreAttackTarget] remove ZinogreAttackTarget
# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!ZinogreParts,tag=!ZinogreTarget,tag=!NotTarget,distance=0..50] add ZinogreTarget
# ターゲット決定
tag @a[tag=ZinogreTarget,tag=!NotTarget,sort=random,limit=1] add ZinogreAttackTarget
execute unless entity @e[tag=ZinogreAttackTarget] run tag @e[tag=ZinogreTarget,sort=random,limit=1] add ZinogreAttackTarget