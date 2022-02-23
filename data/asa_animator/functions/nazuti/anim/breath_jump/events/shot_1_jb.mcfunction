
particle dust 0.643 0.322 0.706 4 ~ ~1 ~ 0.7 0.7 0.7 0 5 force
execute if block ^ ^ ^0.7 #asa_animator:no_collision run tp @s ^ ^ ^0.8
execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=0..4] run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=0..4] add MhdpDHit