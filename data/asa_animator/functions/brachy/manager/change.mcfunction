
# ターゲットリセット
tag @e[tag=BrachyTarget] remove BrachyTarget
tag @e[tag=BrachyAttackTarget] remove BrachyAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[distance=0..50,type=#asa_animator:attack_target,tag=!BrachyParts,tag=!BrachyTarget,tag=!NotTarget] add BrachyTarget
# ターゲット決定
tag @a[tag=BrachyTarget,limit=1,sort=random,tag=!NotTarget] add BrachyAttackTarget
execute unless entity @e[tag=BrachyAttackTarget] run tag @e[tag=BrachyTarget,limit=1,sort=random] add BrachyAttackTarget

# 通常時
# execute unless entity @s[tag=AnmCharge] run function asa_animator:brachy/manager/change_normal/change

# 強制
tag @s add AnmTurnL

# 終了
tag @s remove ChangeAnm