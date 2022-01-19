
particle explosion ~ ~1.4 ~ 0.3 0.3 0.3 0 1 force
particle cloud ~ ~1.4 ~ 0.3 0.3 0.3 0.1 5

execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..3] positioned ~ ~1.4 ~ run function asa_animator:kushala/anim/breath/events/damage

scoreboard players add @s AsaMatrix 1
execute positioned ~ ~1.4 ~ unless block ^ ^ ^1 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 30
execute if entity @s[scores={AsaMatrix=30..}] positioned ~ ~1.4 ~ run function asa_animator:kushala/anim/breath/events/damage

tp @s ^ ^ ^1