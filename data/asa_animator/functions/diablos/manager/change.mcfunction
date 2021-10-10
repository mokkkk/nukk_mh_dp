
# ターゲットリセット
tag @e[tag=DiablosTarget] remove DiablosTarget
tag @e[tag=DiablosAttackTarget] remove DiablosAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!DiablosParts,tag=!DiablosTarget,distance=0..50,tag=!NotTarget] add DiablosTarget
# ターゲット決定
tag @a[tag=DiablosTarget,limit=1,sort=random] add DiablosAttackTarget
execute unless entity @e[tag=DiablosAttackTarget] run tag @e[tag=DiablosTarget,limit=1,sort=random] add DiablosAttackTarget

# 通常時
# execute unless entity @s[tag=IsThunder] run function asa_animator:diablos/manager/change_normal/change

# 強制
tag @s add AnmHead

# 終了
tag @s remove ChangeAnm