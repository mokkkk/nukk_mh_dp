
particle flame ~ ~1.4 ~ 0.3 0.3 0.3 0 5 force
particle lava ~ ~1.4 ~ 0.3 0.3 0.3 0 1
particle dust 1 0.412 0.231 2 ~ ~1.4 ~ 0.3 0.3 0.3 0 1
execute if entity @s[tag=Stop] run particle dust 1 0.412 0.231 3 ~ ~1.4 ~ 0.5 0.5 0.5 0 30

scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=30..}] positioned ~ ~1.4 ~ run function asa_animator:dyno/anim/breath/events/damage

execute unless entity @s[tag=Stop] at @s positioned ~ ~1.4 ~ if block ^ ^ ^1 #asa_animator:no_collision at @s run tp @s ^ ^ ^1
execute unless entity @s[tag=Stop] at @s positioned ~ ~1.4 ~ if block ^ ^ ^1 #asa_animator:no_collision at @s run tp @s ^ ^ ^1
execute at @s positioned ~ ~1.4 ~ unless block ^ ^ ^1 #asa_animator:no_collision run effect give @e[distance=0..2] slowness 1 1 true
execute at @s positioned ~ ~1.4 ~ unless block ^ ^ ^1 #asa_animator:no_collision run tag @s add Stop