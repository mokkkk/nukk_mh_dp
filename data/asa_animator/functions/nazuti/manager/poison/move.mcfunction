
scoreboard players add @s AsaMatrix 1
execute as @e[type=marker,tag=NazutiPoison,distance=0..40] at @s if block ^ ^ ^0.5 #asa_animator:no_collision run tp @s ^ ^ ^0.5
execute if entity @s[scores={AsaMatrix=60..}] run kill @s