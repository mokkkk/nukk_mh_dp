

particle dust 0.643 0.322 0.706 4 ~ ~1 ~ 1 1 1 0 5 force

execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=0..3] run effect give @e[distance=0..3] poison 10 0

scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=300..}] run kill @s
