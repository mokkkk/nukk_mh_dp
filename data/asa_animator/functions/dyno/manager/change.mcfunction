
# ターゲットリセット
tag @e[tag=DynoTarget] remove DynoTarget
tag @e[tag=DynoAttackTarget] remove DynoAttackTarget
# タイマーリセット
scoreboard players set @s AsaMatrix 0

scoreboard players add #mhdp_dyno_actcount_generic AsaMatrix 1
execute if entity @s[tag=IsHeatHead] run scoreboard players add #mhdp_dyno_actcount_head AsaMatrix 1

# 尻尾煤化
execute if entity @s[tag=IsHeatTail] unless entity @s[tag=IsSootTail] if score #mhdp_dyno_actcount_generic AsaMatrix matches 6.. run function asa_animator:dyno/manager/model/change_to_soot_tail
# 頭部赤熱化
execute if entity @s[tag=IsSootTail] if score #mhdp_dyno_actcount_generic AsaMatrix matches 2.. run tag @s add AnmCharge
# 頭部赤熱化終了
execute if entity @s[tag=IsHeatHead] if score #mhdp_dyno_actcount_head AsaMatrix matches 8.. run function asa_animator:dyno/manager/model/change_to_normal_head

# ターゲット探索
tag @e[type=#asa_animator:attack_target,tag=!DynoParts,tag=!DynoTarget,distance=0..50,tag=!NotTarget] add DynoTarget
# ターゲット決定
tag @a[tag=DynoTarget,limit=1,sort=random,tag=!NotTarget] add DynoAttackTarget
execute unless entity @e[tag=DynoAttackTarget] run tag @e[tag=DynoTarget,limit=1,sort=random] add DynoAttackTarget

# 通常時
execute unless entity @s[tag=AnmCharge] run function asa_animator:dyno/manager/change_normal/change

# 終了
tag @s remove ChangeAnm