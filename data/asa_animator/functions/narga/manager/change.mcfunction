
# ターゲットリセット
tag @e[tag=ZinogreTarget] remove ZinogreTarget
tag @e[tag=ZinogreAttackTarget] remove ZinogreAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!ZinogreParts,tag=!ZinogreTarget,distance=0..50,tag=!NotTarget] add ZinogreTarget
# ターゲット決定
tag @a[tag=ZinogreTarget,limit=1,sort=random,tag=!NotTarget] add ZinogreAttackTarget
execute unless entity @e[tag=ZinogreAttackTarget] run tag @e[tag=ZinogreTarget,limit=1,sort=random] add ZinogreAttackTarget

# 通常時
execute unless entity @s[tag=IsThunder] run function asa_animator:zinogre/manager/change_normal/change
# 超帯電時
execute if entity @s[tag=IsThunder] run function asa_animator:zinogre/manager/change_thunder/change

# 終了
tag @s remove ChangeAnm