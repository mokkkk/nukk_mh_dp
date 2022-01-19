
# 受けたダメージ計算
data modify storage mhdp: Temp.Health set from entity @s Health
execute store result score #kushala_damage AsaMatrix run data get storage mhdp: Temp.Health 100
scoreboard players remove #kushala_damage AsaMatrix 100000
data remove storage mhdp: Temp.Health

# ダメージ0.5以下なら無効
execute unless score #kushala_damage AsaMatrix matches -501.. at @s run function asa_animator:kushala/manager/health/damage

# 体力回復
execute if score #kushala_damage AsaMatrix matches -501.. run data merge entity @s {Health:1000f}
# 複数判定への攻撃を無効
execute unless score #kushala_damage AsaMatrix matches -501.. run execute as @e[type=slime,tag=KushalaParts] run data merge entity @s {Health:1000f}