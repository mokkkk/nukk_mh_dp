
# 受けたダメージ計算
data modify storage mhdp: Temp.Health set from entity @s Health
execute store result score #reus_damage AsaMatrix run data get storage mhdp: Temp.Health 100
data remove storage mhdp: Temp.Health
scoreboard players remove #reus_damage AsaMatrix 100000

# ダメージ0.5以下なら無効
execute unless score #reus_damage AsaMatrix matches -251.. at @s run function asa_animator:reus/manager/health/damage

# 体力回復
execute if score #reus_damage AsaMatrix matches -251.. run data merge entity @s {Health:1000f}
# 複数判定への攻撃を無効
execute unless score #reus_damage AsaMatrix matches -251.. run execute as @e[type=slime,tag=ReusParts] run data merge entity @s {Health:1000f}