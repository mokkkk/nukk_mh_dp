
scoreboard players add #mhdp_teo_temp AsaMatrix 1

execute if score #mhdp_teo_temp AsaMatrix matches ..2 run particle small_flame ^ ^ ^ 0.2 0.2 0.2 0.05 10
execute if score #mhdp_teo_temp AsaMatrix matches 3..5 run particle flame ^ ^ ^ 0.3 0.3 0.3 0.05 20
execute if score #mhdp_teo_temp AsaMatrix matches 6..7 run particle flame ^ ^ ^ 0.5 0.5 0.5 0.05 30
execute if score #mhdp_teo_temp AsaMatrix matches 8 run particle flame ^ ^ ^ 0.7 0.7 0.7 0.05 30
execute if score #mhdp_teo_temp AsaMatrix matches 9 run particle flame ^ ^ ^ 0.85 0.85 0.85 0.05 30
execute if score #mhdp_teo_temp AsaMatrix matches 10..12 run particle flame ^ ^ ^ 1.1 1.1 1.1 0.05 30

execute if score #mhdp_teo_temp AsaMatrix matches 2.. positioned ^ ^ ^ as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,tag=!MhdpHit,distance=..3] run tag @s add MhdpHit

execute if score #mhdp_teo_temp AsaMatrix matches ..11 positioned ^ ^ ^1 if block ~ ~ ~ #asa_animator:no_collision run function asa_animator:teo/anim/flame_large/events/damage_f_