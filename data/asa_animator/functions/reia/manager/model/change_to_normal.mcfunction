execute as @e[distance=0..30,type=armor_stand,tag=ReiaParts,tag=WingL0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10114
execute as @e[distance=0..30,type=armor_stand,tag=ReiaParts,tag=WingR0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10115
execute as @e[distance=0..30,type=armor_stand,tag=ReiaParts,tag=WingL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10116
execute as @e[distance=0..30,type=armor_stand,tag=ReiaParts,tag=WingR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10117
execute as @e[distance=0..30,type=armor_stand,tag=ReiaParts,tag=WingL2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10084
execute as @e[distance=0..30,type=armor_stand,tag=ReiaParts,tag=WingR2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10084

playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 1
tag @s remove IsFlying