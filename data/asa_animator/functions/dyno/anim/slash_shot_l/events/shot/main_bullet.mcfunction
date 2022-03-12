
particle lava ~ ~ ~ 0.8 0.8 0.8 0 10
particle flame ~ ~ ~ 0.8 0.8 0.8 0 30 force
particle flame ~ ~ ~ 2 2 2 0.1 30 force

execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DynoParts,distance=0..5] run function asa_animator:dyno/anim/slash_shot_l/events/shot/damage

scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=15..}] run function asa_animator:dyno/anim/slash_shot_l/events/shot/damage
execute if entity @s[scores={AsaMatrix=15..}] run kill @s

execute at @s if block ^ ^ ^1 #asa_animator:no_collision at @s run tp @s ^ ^ ^1
execute at @s if block ^ ^ ^1 #asa_animator:no_collision at @s run tp @s ^ ^ ^1