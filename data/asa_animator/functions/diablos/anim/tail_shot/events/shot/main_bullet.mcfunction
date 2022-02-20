
particle block sandstone ~ ~0.2 ~ 0.3 0.3 0.3 0 3
scoreboard players add @s AsaMatrix 1

execute unless block ~ ~-1 ~ #asa_animator:no_collision run function asa_animator:diablos/anim/tail_shot/events/shot/damage
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:diablos/anim/tail_shot/events/shot/damage