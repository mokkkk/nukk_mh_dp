
particle dust 0.98 0.463 0.463 5 ~ ~ ~ 0 0 0 0.02 2 force
particle dust 0.592 0.243 0.243 5 ~ ~ ~ 0.5 0.5 0.5 0.02 4 force

execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=0..3] run function asa_animator:ruko/anim/sp_attack_1/events/shot/damage

scoreboard players add @s AsaMatrix 1
execute unless block ~ ~-1 ~ #asa_animator:no_collision run function asa_animator:ruko/anim/sp_attack_1/events/shot/damage
execute if entity @s[scores={AsaMatrix=100..}] run kill @s

tp @s ~ ~-1 ~