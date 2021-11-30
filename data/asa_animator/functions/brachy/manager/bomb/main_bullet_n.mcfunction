
particle dust 0.478 1 0.408 0.7 ~ ~0.1 ~ 0.3 0.1 0.3 1 1

effect give @a[distance=0..2] slowness 1 2

scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 20 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10238
execute if score @s AsaMatrix matches 40 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10239
execute if score @s AsaMatrix matches 60.. positioned ~ ~1.4 ~ run function asa_animator:brachy/manager/bomb/damage