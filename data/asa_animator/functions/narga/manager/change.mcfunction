
# ターゲットリセット
tag @e[tag=NargaTarget] remove NargaTarget
tag @e[tag=NargaAttackTarget] remove NargaAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!NargaParts,tag=!NargaTarget,distance=0..50,tag=!NotTarget] add NargaTarget
# ターゲット決定
tag @a[tag=NargaTarget,limit=1,sort=random,tag=!NotTarget] add NargaAttackTarget
execute unless entity @e[tag=NargaAttackTarget] run tag @e[tag=NargaTarget,limit=1,sort=random] add NargaAttackTarget

# 通常時
# execute unless entity @s[tag=IsThunder] run function asa_animator:narga/manager/change_normal/change

# 強制
tag @s add AnmBStep

# 終了
tag @s remove ChangeAnm