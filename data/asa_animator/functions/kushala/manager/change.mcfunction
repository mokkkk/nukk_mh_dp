
# ターゲットリセット
tag @e[tag=KushalaTarget] remove KushalaTarget
tag @e[tag=KushalaAttackTarget] remove KushalaAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!KushalaParts,tag=!KushalaTarget,tag=!NotTarget,distance=0..50] add KushalaTarget
# ターゲット決定
tag @a[tag=KushalaTarget,tag=!NotTarget,sort=random,limit=1] add KushalaAttackTarget
execute unless entity @e[tag=KushalaAttackTarget] run tag @e[tag=KushalaTarget,sort=random,limit=1] add KushalaAttackTarget

# 通常時
# execute unless entity @s[tag=AnmCharge] run function asa_animator:kushala/manager/change_normal/change

# 軸合わせ
# execute unless predicate asa_animator:kushala/turn run function asa_animator:kushala/manager/change_normal/_/turn_b

# 強制
tag @s add AnmBiteCL

# 終了
tag @s remove ChangeAnm