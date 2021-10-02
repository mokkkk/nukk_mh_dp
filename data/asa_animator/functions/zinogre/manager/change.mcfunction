
# ターゲットリセット
tag @e[tag=ZinogreTarget] remove ZinogreTarget
tag @e[tag=ZinogreAttackTarget] remove ZinogreAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0
scoreboard players set #asa_zinogre_kindex AsaMatrix 0
scoreboard players set #asa_zinogre_tick_current AsaMatrix 0
scoreboard players set #asa_zinogre_tick_end AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!ZinogreParts,tag=!ZinogreTarget,distance=0..50,tag=!NotTarget] add ZinogreTarget
# ターゲット決定
tag @a[tag=ZinogreTarget,limit=1,sort=random] add ZinogreAttackTarget
execute unless entity @e[tag=ZinogreAttackTarget] run tag @e[tag=ZinogreTarget,limit=1,sort=random] add ZinogreAttackTarget

# 体力半減時，一度だけ怒り遷移


# 固定
tag @s add AnmHead

# 終了
tag @s remove ChangeAnm