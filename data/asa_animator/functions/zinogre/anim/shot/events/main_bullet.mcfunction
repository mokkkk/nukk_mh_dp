
particle end_rod ~ ~ ~ 0 0 0 0 1 force
particle sneeze ~ ~ ~ 0.8 0.8 0.8 0 30 force
particle dust 1 1000000000 1000000000 5 ~ ~ ~ 0.3 0.3 0.3 0 5 force
execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=0..3.5] run function asa_animator:zinogre/anim/shot/events/damage

scoreboard players add @s AsaMatrix 1
execute unless block ^ ^ ^0.7 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 80
execute if entity @s[scores={AsaMatrix=80..}] run kill @s

execute if entity @s[tag=R] run tp @s ^ ^ ^0.7 ~1 ~
execute if entity @s[tag=L] run tp @s ^ ^ ^0.7 ~-1 ~