
particle explosion ~ ~ ~ 0.3 0.3 0.3 0 1 force
particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 5

execute if entity @e[type=!armor_stand,type=!marker,tag=!KushalaParts,distance=0..3] run function asa_animator:kushala/anim/breath/events/damage

scoreboard players add @s AsaMatrix 1
execute unless block ^ ^ ^1 #asa_animator:no_collision run tp @s ~ ~ ~ ~ 0
execute unless block ^ ^ ^1 #asa_animator:no_collision run tag @s add IsTornado
execute if entity @s[scores={AsaMatrix=60..}] run kill @s

tp @s ^ ^ ^1