
# 受けたダメージ計算
data modify storage mhdp: Temp.Health set from entity @s Health
execute store result score #brachyr_damage AsaMatrix run data get storage mhdp: Temp.Health 100
scoreboard players remove #brachyr_damage AsaMatrix 100000

# ダメージ0.5以下なら無効
execute unless score #brachyr_damage AsaMatrix matches -501.. if entity @e[type=armor_stand,tag=BrachyRRoot,tag=!AnmRage,distance=0..20] at @s run function asa_animator:brachyr/manager/health/damage

# 体力回復
execute if score #brachyr_damage AsaMatrix matches -501.. run data merge entity @s {Health:1000f}
# 複数判定への攻撃を無効
execute unless score #brachyr_damage AsaMatrix matches -501.. unless entity @e[type=armor_stand,tag=BrachyRRoot,tag=AnmDeath] run execute as @e[type=slime,tag=BrachyRParts] run data merge entity @s {Health:1000f}