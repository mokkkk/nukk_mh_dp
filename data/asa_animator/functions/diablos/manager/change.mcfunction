
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

# 怒り変化
execute if entity @s[tag=StartAnger] unless entity @s[tag=IsAnger] run tag @s add AnmAnger
execute if entity @s[tag=StartAnger] run tag @s remove StartAnger
execute if entity @s[tag=IsAnger] run scoreboard players add #mhdp_diablos_anger_actcount AsaMatrix 1
execute if entity @s[tag=IsAnger] if score #mhdp_diablos_anger_actcount AsaMatrix matches 10.. run tag @s remove IsAnger

# 通常時
execute unless entity @s[tag=AnmAnger] run function asa_animator:diablos/manager/change_normal/change

# 軸合わせ
execute if predicate asa_animator:diablos/turn run tag @s add AnmTurn

# 終了
tag @s remove ChangeAnm