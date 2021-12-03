
particle dust 0.478 1 0.408 0.7 ~ ~0.1 ~ 0.3 0.1 0.3 1 1

effect give @a[distance=0..4] slowness 1 2

scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 33 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10244
execute if score @s AsaMatrix matches 66 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10245
execute if score @s AsaMatrix matches 100.. positioned ~ ~1.4 ~ run function asa_animator:brachy/manager/bomb/damage_large