
scoreboard players add #mhdp_nazuti_temp AsaMatrix 1

execute if score #mhdp_nazuti_temp AsaMatrix matches ..2 run particle dust 0.643 0.322 0.706 2 ^ ^ ^ 0.2 0.2 0.2 0.05 2
execute if score #mhdp_nazuti_temp AsaMatrix matches 3..5 run particle dust 0.643 0.322 0.706 2.5 ^ ^ ^ 0.6 0.6 0.6 0.05 3
execute if score #mhdp_nazuti_temp AsaMatrix matches 6..7 run particle dust 0.643 0.322 0.706 3 ^ ^ ^ 1 1 1 0.05 4
execute if score #mhdp_nazuti_temp AsaMatrix matches 8 run particle dust 0.643 0.322 0.706 3 ^ ^ ^ 1.2 1.2 1.2 0.05 4
execute if score #mhdp_nazuti_temp AsaMatrix matches 9.. run particle dust 0.643 0.322 0.706 3 ^ ^ ^ 1.5 1.5 1.5 0.05 5

execute if score #mhdp_nazuti_temp AsaMatrix matches 4.. positioned ^ ^ ^-2 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,tag=!MhdpHit,distance=..4] run tag @s add MhdpDHit

execute if score #mhdp_nazuti_temp AsaMatrix matches ..13 positioned ^ ^ ^1 if block ~ ~ ~ #asa_animator:no_collision run function asa_animator:nazuti/anim/breath_fog_v/events/damage_f_