
# 受けたダメージ計算
data modify storage mhdp: Temp.Health set from entity @s Health
execute store result score #reia_damage AsaMatrix run data get storage mhdp: Temp.Health 100
data remove storage mhdp: Temp.Health
scoreboard players remove #reia_damage AsaMatrix 100000

# ダメージ0.5以下なら無効
execute unless score #reia_damage AsaMatrix matches -251.. at @s run function asa_animator:reia/manager/health/damage

# 体力回復
execute if score #reia_damage AsaMatrix matches -251.. run data merge entity @s {Health:1000f}
# 複数判定への攻撃を無効
execute unless score #reia_damage AsaMatrix matches -251.. run execute as @e[type=slime,tag=ReiaParts] run data merge entity @s {Health:1000f}