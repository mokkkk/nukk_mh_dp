scoreboard players remove @s AsaMatrix 1
execute positioned ~ ~ ~ run particle flame ~ ~ ~ 0.2 0.2 0.2 0.1 6 force
execute if score @s AsaMatrix matches 1.. if block ~ ~ ~ #asa_animator:no_collision positioned ^ ^ ^1 run function asa_animator:reus/flyingcharge/effect/attack_tp
execute at @s if block ^ ^ ^1.5 #asa_animator:no_collision run tp @s ^ ^ ^1