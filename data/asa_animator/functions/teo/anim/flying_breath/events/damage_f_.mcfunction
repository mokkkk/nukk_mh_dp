
scoreboard players add #mhdp_teo_temp AsaMatrix 1

execute if score #mhdp_teo_temp AsaMatrix matches ..2 run particle small_flame ^ ^ ^ 0.2 0.2 0.2 0.05 15
execute if score #mhdp_teo_temp AsaMatrix matches 3.. run particle flame ^ ^ ^ 0.5 0.5 0.5 0.05 15

execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,tag=!MhdpHit,distance=..3] run tag @s add MhdpHit

execute if score #mhdp_teo_temp AsaMatrix matches ..13 positioned ^ ^ ^1 if block ~ ~ ~ #asa_animator:no_collision run function asa_animator:teo/anim/flying_breath/events/damage_f_