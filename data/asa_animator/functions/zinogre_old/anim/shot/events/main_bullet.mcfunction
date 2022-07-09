
particle end_rod ~ ~ ~ 0 0 0 0 1 force
particle sneeze ~ ~ ~ 0.1 0.1 0.1 0 5 force
# particle dust 0.459 1 0.749 5 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=0..3] run function asa_animator:zinogre/anim/shot/events/damage

scoreboard players add @s AsaMatrix 1
execute unless block ^ ^ ^0.7 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 40
execute if entity @s[scores={AsaMatrix=40..}] run kill @s

execute if entity @s[tag=R] run tp @s ^ ^ ^0.7 ~1 ~
execute if entity @s[tag=L] run tp @s ^ ^ ^0.7 ~-1 ~