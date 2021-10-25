
# 行動回数増加
scoreboard players add #mhdp_reia_actcount_phase AsaMatrix 1

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

# 一定回数ごとに，高確率で移動→サマソ使用
execute if score #mhdp_reia_actcount_phase AsaMatrix matches 5.. if predicate asa_animator:random/070 run function asa_animator:reia/manager/change/sault

# 近距離
execute unless entity @s[tag=IsSault] if entity @e[distance=..6,tag=ReiaAttackTarget] run function asa_animator:reia/manager/change/range_near
# 中距離
execute unless entity @s[tag=IsSault] if entity @e[distance=6.1..18,tag=ReiaAttackTarget] run function asa_animator:reia/manager/change/range_middle
# 遠距離
execute unless entity @s[tag=IsSault] if entity @e[distance=18.1..,tag=ReiaAttackTarget] run function asa_animator:reia/manager/change/range_far

# 軸合わせ
execute unless predicate asa_animator:reia/turn run tag @s add AnmTurn

# 終了
tag @s remove ChangeAnm