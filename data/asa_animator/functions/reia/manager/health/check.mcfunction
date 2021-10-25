
# 受けたダメージ計算
execute store result score #reia_damage AsaMatrix run data get entity @s Health 100
scoreboard players remove #reia_damage AsaMatrix 100000

# ダメージ0.5以下なら無効
execute unless score #reia_damage AsaMatrix matches -501.. at @s run function asa_animator:reia/manager/health/damage

# 体力回復
execute if score #reia_damage AsaMatrix matches -501.. run data merge entity @s {Health:1000f}
# 複数判定への攻撃を無効
execute unless score #reia_damage AsaMatrix matches -501.. run execute as @e[type=slime,tag=ReiaParts] run data merge entity @s {Health:1000f}