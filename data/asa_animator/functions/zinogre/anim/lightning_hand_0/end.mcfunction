scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmLHand0
tag @s add AnmLHand1

# ターゲットリセット
tag @e[tag=ZinogreTarget] remove ZinogreTarget
tag @e[tag=ZinogreAttackTarget] remove ZinogreAttackTarget
# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!ZinogreParts,tag=!ZinogreTarget,tag=!NotTarget,tag=!ReiaParts,distance=0..50] add ZinogreTarget
# ターゲット決定
tag @a[tag=ZinogreTarget,tag=!NotTarget,sort=random,limit=1] add ZinogreAttackTarget
execute unless entity @e[tag=ZinogreAttackTarget] run tag @e[tag=ZinogreTarget,sort=random,limit=1] add ZinogreAttackTarget