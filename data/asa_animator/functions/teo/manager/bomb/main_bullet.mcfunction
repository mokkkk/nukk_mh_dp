
particle dust 1 0.714 0.341 0.7 ~ ~1.4 ~ 1 1 1 0 5
particle dust 1 0.255 0.255 0.9 ~ ~1.4 ~ 0.6 0.6 0.6 0 5

scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=600..}] positioned ~ ~1.4 ~ run function asa_animator:teo/manager/bomb/damage