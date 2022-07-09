
# ターゲットリセット
tag @e[tag=ZinogreTarget] remove ZinogreTarget
tag @e[tag=ZinogreAttackTarget] remove ZinogreAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!ZinogreParts,tag=!ZinogreTarget,tag=!NotTarget,distance=0..50] add ZinogreTarget
# ターゲット決定
tag @a[tag=ZinogreTarget,tag=!NotTarget,sort=random,limit=1] add ZinogreAttackTarget
execute unless entity @e[tag=ZinogreAttackTarget] run tag @e[tag=ZinogreTarget,sort=random,limit=1] add ZinogreAttackTarget

# 通常時
execute unless entity @s[tag=IsThunder] run function asa_animator:zinogre/manager/change_normal/change
# 超帯電時
execute if entity @s[tag=IsThunder] run function asa_animator:zinogre/manager/change_thunder/change

# 終了
tag @s remove ChangeAnm