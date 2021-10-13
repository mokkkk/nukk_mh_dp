
# 受けたダメージ計算
execute store result score #diablos_damage AsaMatrix run data get entity @s Health 100
scoreboard players remove #diablos_damage AsaMatrix 100000

# ダメージ0.5以下なら無効
execute unless score #diablos_damage AsaMatrix matches -501.. at @s run function asa_animator:diablos/manager/health/damage

# 体力回復
execute if score #diablos_damage AsaMatrix matches -501.. run data merge entity @s {Health:1000f}
# 複数判定への攻撃を無効
execute unless score #diablos_damage AsaMatrix matches -501.. run execute as @e[type=slime,tag=DiablosParts] run data merge entity @s {Health:1000f}