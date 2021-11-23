
# ターゲットリセット
tag @e[tag=DynoTarget] remove DynoTarget
tag @e[tag=DynoAttackTarget] remove DynoAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!DynoParts,tag=!DynoTarget,distance=0..50,tag=!NotTarget] add DynoTarget
# ターゲット決定
tag @a[tag=DynoTarget,limit=1,sort=random,tag=!NotTarget] add DynoAttackTarget
execute unless entity @e[tag=DynoAttackTarget] run tag @e[tag=DynoTarget,limit=1,sort=random] add DynoAttackTarget

# 通常時
# execute unless entity @s[tag=IsAnger] run function asa_animator:dyno/manager/change_normal/change

# 強制
tag @s add AnmCharge

# 終了
tag @s remove ChangeAnm