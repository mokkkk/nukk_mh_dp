
scoreboard players add #mhdp_teo_temp AsaMatrix 1

execute if score #mhdp_teo_temp AsaMatrix matches ..2 run particle small_flame ^ ^ ^ 0.2 0.2 0.2 0.05 10
execute if score #mhdp_teo_temp AsaMatrix matches 3..5 run particle flame ^ ^ ^ 0.3 0.3 0.3 0.05 10
execute if score #mhdp_teo_temp AsaMatrix matches 6..8 run particle flame ^ ^ ^ 0.5 0.5 0.5 0.05 15
execute if score #mhdp_teo_temp AsaMatrix matches 9.. run particle flame ^ ^ ^ 0.7 0.7 0.7 0.05 15

execute if score #mhdp_teo_temp AsaMatrix matches 2.. as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,tag=!MhdpHit,distance=..3] run tag @s add MhdpHit

execute if score #mhdp_teo_temp AsaMatrix matches ..20 positioned ^ ^ ^1 unless block ~ ~ ~ #asa_animator:no_collision run scoreboard players set #mhdp_teo_temp AsaMatrix 21
execute if score #mhdp_teo_temp AsaMatrix matches 21 run particle lava ~ ~ ~ 1 0.1 1 0 3
execute if entity @s[scores={AsaMatrix=39..67}] if score #mhdp_teo_temp AsaMatrix matches 21 run particle dust 1 0.569 0.282 1 ~ ~1 ~ 1 1 1 0 20
execute if entity @s[scores={AsaMatrix=49..67}] if score #mhdp_teo_temp AsaMatrix matches 21 run particle dust 1 0.247 0.196 2 ~ ~1 ~ 2 2 2 0 20
execute if score #mhdp_teo_temp AsaMatrix matches ..20 positioned ^ ^ ^1 if block ~ ~ ~ #asa_animator:no_collision run function asa_animator:teo/anim/flame_nova/events/damage_f_