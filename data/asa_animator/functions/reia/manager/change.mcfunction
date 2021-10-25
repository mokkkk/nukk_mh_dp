
# 行動回数増加
# scoreboard players add #mhdp_reia_actcount_phase AsaMatrix 1

# ターゲットリセット
tag @e[tag=ReiaTarget] remove ReiaTarget
tag @e[tag=ReiaAttackTarget] remove ReiaAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!ReiaParts,tag=!ReiaTarget,distance=0..50,tag=!NotTarget,tag=!ReusParts] add ReiaTarget
# ターゲット決定
tag @a[tag=ReiaTarget,limit=1,sort=random,tag=!NotTarget] add ReiaAttackTarget
execute unless entity @a[tag=ReiaAttackTarget] run tag @e[tag=ReiaTarget,limit=1,sort=random] add ReiaAttackTarget

# 軸合わせ
# execute unless predicate asa_animator:reus/turn run tag @s add AnmTurn

# 強制
tag @s add AnmMove

# 終了
tag @s remove ChangeAnm