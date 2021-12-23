
particle flame ~ ~1.4 ~ 0.3 0.3 0.3 0 5 force
particle lava ~ ~1.4 ~ 0.3 0.3 0.3 0 1

execute if entity @e[type=!armor_stand,type=!marker,tag=!ReiaParts,distance=0..3] positioned ~ ~1.4 ~ run function asa_animator:reia/anim/breath_3/events/damage

scoreboard players add @s AsaMatrix 1
execute positioned ~ ~1.4 ~ unless block ^ ^ ^1 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 30
execute if entity @s[scores={AsaMatrix=30..}] positioned ~ ~1.4 ~ run function asa_animator:reia/anim/breath_3/events/damage

tp @s ^ ^ ^1