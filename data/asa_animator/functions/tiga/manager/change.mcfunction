
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
execute unless entity @s[tag=AnmCharge] run function asa_animator:tiga/manager/change_normal/change

# 軸合わせ
execute unless predicate asa_animator:tiga/turn run function asa_animator:tiga/manager/change_normal/_/turn_b

# 怒りカウント消費
execute if entity @s[tag=IsAnger] run scoreboard players add #mhdp_tiga_anger_count AsaMatrix 1
execute if entity @s[tag=IsAnger] if score #mhdp_tiga_anger_count AsaMatrix matches 16.. run function asa_animator:tiga/manager/model/change_to_normal

# 終了
tag @s remove ChangeAnm