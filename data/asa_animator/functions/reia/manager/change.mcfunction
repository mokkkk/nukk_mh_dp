
# 行動回数増加
scoreboard players add #mhdp_reia_actcount_phase AsaMatrix 1

# ターゲットリセット
tag @e[tag=ReiaTarget] remove ReiaTarget
tag @e[tag=ReiaAttackTarget] remove ReiaAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!ReiaParts,tag=!ReiaTarget,tag=!NotTarget,tag=!ReiaParts,distance=0..50] add ReiaTarget
# ターゲット決定
tag @a[tag=ReiaTarget,tag=!NotTarget,sort=random,limit=1] add ReiaAttackTarget
execute unless entity @a[tag=ReiaAttackTarget] run tag @e[tag=ReiaTarget,sort=random,limit=1] add ReiaAttackTarget

# 怒り変化
execute if entity @s[tag=IsAnger] run scoreboard players add #mhdp_reia_anger_count AsaMatrix 1
execute if entity @s[tag=IsAnger] if score #mhdp_reia_anger_count AsaMatrix matches 10.. run function asa_animator:reia/manager/end_anger

# 一定回数ごとに，高確率で移動→サマソ使用
execute unless entity @s[tag=DestroyTail] if score #mhdp_reia_actcount_phase AsaMatrix matches 5.. if predicate asa_animator:random/070 run function asa_animator:reia/manager/change/sault

# 通常
execute unless entity @s[tag=IsSault] run function asa_animator:reia/manager/change/main

# 軸合わせ
execute unless predicate asa_animator:reia/turn run function asa_animator:reia/manager/change/_/turn_b

# 終了
tag @s remove ChangeAnm