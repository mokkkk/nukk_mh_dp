execute as @e[distance=0..30,type=armor_stand,tag=ReusParts,tag=WingL0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10350
execute as @e[distance=0..30,type=armor_stand,tag=ReusParts,tag=WingR0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10351
execute as @e[distance=0..30,type=armor_stand,tag=ReusParts,tag=WingL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10352
execute as @e[distance=0..30,type=armor_stand,tag=ReusParts,tag=WingR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10353
execute as @e[distance=0..30,type=armor_stand,tag=ReusParts,tag=WingL2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10354
execute as @e[distance=0..30,type=armor_stand,tag=ReusParts,tag=WingR2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10355

playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 1
tag @s add IsFlying