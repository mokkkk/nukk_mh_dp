
particle dust 0.643 0.322 0.706 4 ~ ~ ~ 0.2 0.2 0.2 0 5 force

execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=0..3] run function asa_animator:nazuti/anim/breath_ball/events/damage

scoreboard players add @s AsaMatrix 1
execute unless block ^ ^ ^1 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 30
execute if entity @s[scores={AsaMatrix=30..}] run function asa_animator:nazuti/anim/breath_ball/events/damage

tp @s ^ ^ ^1