
particle dust 0.643 0.322 0.706 4 ~ ~ ~ 0.2 0.2 0.2 0 5 force
scoreboard players add @s AsaMatrix 1
execute unless block ~ ~-1 ~ #asa_animator:no_collision positioned ~ ~ ~ run function asa_animator:nazuti/anim/breath_ball/events/damage
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:nazuti/anim/breath_ball/events/damage