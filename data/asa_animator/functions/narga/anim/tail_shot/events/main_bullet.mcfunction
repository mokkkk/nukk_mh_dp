
# particle flame ~ ~1.4 ~ 0.3 0.3 0.3 0 5 force

execute if entity @e[type=!armor_stand,type=!marker,tag=!NargaParts,distance=0..2.3] positioned ~ ~1.4 ~ run function asa_animator:narga/anim/tail_shot/events/damage

scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=100..}] positioned ~ ~1.4 ~ run function asa_animator:narga/anim/tail_shot/events/damage

execute at @s positioned ~ ~1.4 ~ if block ^ ^ ^0.8 #asa_animator:no_collision at @s run tp @s ^ ^ ^0.8
execute at @s positioned ~ ~1.4 ~ if block ^ ^ ^0.8 #asa_animator:no_collision at @s run tp @s ^ ^ ^0.8