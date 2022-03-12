
execute store result score #mhdp_ruko_temp_0 AsaMatrix store result score #mhdp_ruko_temp_1 AsaMatrix run scoreboard players add @s AsaMatrix 1

# 6tick毎に通常メテオ
scoreboard players set #mhdp_const_temp AsaMatrix 6
scoreboard players operation #mhdp_ruko_temp_0 AsaMatrix %= #mhdp_const_temp AsaMatrix
# 30tick毎にターゲットメテオ
scoreboard players set #mhdp_const_temp AsaMatrix 30
scoreboard players operation #mhdp_ruko_temp_1 AsaMatrix %= #mhdp_const_temp AsaMatrix

execute if score #mhdp_ruko_temp_0 AsaMatrix matches 0 run spreadplayers ~ ~ 5 20 false @e[type=marker,tag=RukoMeteoPoint]
execute if score #mhdp_ruko_temp_0 AsaMatrix matches 0 at @e[type=marker,tag=RukoMeteoPoint,sort=random,limit=1] positioned ~ ~20 ~ run function asa_animator:ruko/anim/sp_attack_1/events/shot/shot
execute if score #mhdp_ruko_temp_1 AsaMatrix matches 0 at @e[tag=RukoTarget,sort=random,limit=1] rotated ~ 0 positioned ^ ^20 ^ run function asa_animator:ruko/anim/sp_attack_1/events/shot/shot

scoreboard players reset #mhdp_const_temp
scoreboard players reset #mhdp_ruko_temp_0
scoreboard players reset #mhdp_ruko_temp_1

execute if entity @s[scores={AsaMatrix=250..}] run kill @e[type=marker,tag=RukoMeteoPoint]
execute if entity @s[scores={AsaMatrix=250..}] run kill @s

tp @s ~ ~ ~