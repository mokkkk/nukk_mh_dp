
# 受けたダメージ計算
data modify storage mhdp: Temp.Health set from entity @s Health
execute store result score #tiga_damage AsaMatrix run data get storage mhdp: Temp.Health 100
data remove storage mhdp: Temp.Health
scoreboard players remove #tiga_damage AsaMatrix 100000

# ダメージ0.5以下なら無効
execute unless score #tiga_damage AsaMatrix matches -501.. at @s run function asa_animator:tiga/manager/health/damage

# 体力回復
execute if score #tiga_damage AsaMatrix matches -501.. run data merge entity @s {Health:1000f}
# 複数判定への攻撃を無効
execute unless score #tiga_damage AsaMatrix matches -501.. run execute as @e[type=slime,tag=TigaParts] run data merge entity @s {Health:1000f}