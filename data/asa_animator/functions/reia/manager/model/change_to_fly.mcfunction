execute as @e[distance=0..30,type=armor_stand,tag=ReiaParts,tag=WingL0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10356
execute as @e[distance=0..30,type=armor_stand,tag=ReiaParts,tag=WingR0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10357
execute as @e[distance=0..30,type=armor_stand,tag=ReiaParts,tag=WingL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10358
execute as @e[distance=0..30,type=armor_stand,tag=ReiaParts,tag=WingR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10359
execute as @e[distance=0..30,type=armor_stand,tag=ReiaParts,tag=WingL2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10360
execute as @e[distance=0..30,type=armor_stand,tag=ReiaParts,tag=WingR2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10361

playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 1
tag @s add IsFlying