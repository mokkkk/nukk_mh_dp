
# ターゲットリセット
tag @e[tag=DiablosTarget] remove DiablosTarget
tag @e[tag=DiablosAttackTarget] remove DiablosAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!DiablosParts,tag=!DiablosTarget,tag=!NotTarget,distance=0..50] add DiablosTarget
# ターゲット決定
tag @a[tag=DiablosTarget,tag=!NotTarget,sort=random,limit=1] add DiablosAttackTarget
execute unless entity @e[tag=DiablosAttackTarget] run tag @e[tag=DiablosTarget,sort=random,limit=1] add DiablosAttackTarget

# 怒り変化
execute if entity @s[tag=IsAnger] run scoreboard players add #mhdp_diablos_anger_count AsaMatrix 1
execute if entity @s[tag=IsAnger] if score #mhdp_diablos_anger_count AsaMatrix matches 15.. run function asa_animator:diablos/manager/end_anger

# 通常時
execute unless entity @s[tag=AnmAnger] run function asa_animator:diablos/manager/change_normal/change

# 軸合わせ
execute unless predicate asa_animator:diablos/turn run function asa_animator:diablos/manager/change_normal/_/turn_b

# 終了
tag @s remove ChangeAnm