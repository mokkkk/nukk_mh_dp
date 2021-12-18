
# ターゲットリセット
tag @e[tag=TigaTarget] remove TigaTarget
tag @e[tag=TigaAttackTarget] remove TigaAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!TigaParts,tag=!TigaTarget,distance=0..50,tag=!NotTarget] add TigaTarget
# ターゲット決定
tag @a[tag=TigaTarget,limit=1,sort=random,tag=!NotTarget] add TigaAttackTarget
execute unless entity @e[tag=TigaAttackTarget] run tag @e[tag=TigaTarget,limit=1,sort=random] add TigaAttackTarget

# 通常時
# execute unless entity @s[tag=AnmCharge] run function asa_animator:tiga/manager/change_normal/change

# 強制
tag @s add AnmDashStart

# 終了
tag @s remove ChangeAnm