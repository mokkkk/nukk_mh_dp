
particle block sandstone ~ ~0.2 ~ 0.3 0.3 0.3 0 3
scoreboard players add @s AsaMatrix 1

execute if entity @e[tag=NazutiTarget,distance=0..2] run function asa_animator:nazuti/anim/tail/events/shot/damage
execute unless block ~ ~-1 ~ #asa_animator:no_collision run function asa_animator:nazuti/anim/tail/events/shot/damage