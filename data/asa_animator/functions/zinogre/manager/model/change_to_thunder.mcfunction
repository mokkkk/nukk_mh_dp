
tag @s add IsThunder
execute as @e[type=armor_stand,tag=ZinogreParts,tag=!Tail3] run data modify entity @s ArmorItems[3].id set value "minecraft:clock"
execute unless entity @s[tag=DestroyTail] as @e[type=armor_stand,tag=ZinogreParts,tag=Tail3] run data modify entity @s ArmorItems[3].id set value "minecraft:clock"

# head_u
    execute unless entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10581
    execute if entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10606
# head_l
    execute unless entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=HeadL,limit=1] ArmorItems[3].tag.CustomModelData set value 10582
    execute if entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=HeadL,limit=1] ArmorItems[3].tag.CustomModelData set value 10607
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Neck0,limit=1] ArmorItems[3].tag.CustomModelData set value 10583
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Neck1,limit=1] ArmorItems[3].tag.CustomModelData set value 10584
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Neck2,limit=1] ArmorItems[3].tag.CustomModelData set value 10585
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Body0,limit=1] ArmorItems[3].tag.CustomModelData set value 10586
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Body1,limit=1] ArmorItems[3].tag.CustomModelData set value 10587
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10588
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10589
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10590
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10591
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10592
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10593
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegL3,limit=1] ArmorItems[3].tag.CustomModelData set value 10594
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegR3,limit=1] ArmorItems[3].tag.CustomModelData set value 10595
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail0,limit=1] ArmorItems[3].tag.CustomModelData set value 10596
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail1,limit=1] ArmorItems[3].tag.CustomModelData set value 10597
# tail_2
    execute unless entity @s[tag=DestroyTail] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail2,limit=1] ArmorItems[3].tag.CustomModelData set value 10598
    execute if entity @s[tag=DestroyTail] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail2,limit=1] ArmorItems[3].tag.CustomModelData set value 10612
# tail_3
    execute unless entity @s[tag=DestroyTail] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail3,limit=1] ArmorItems[3].tag.CustomModelData set value 10599
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10600
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10601
# arm_1
    execute unless entity @s[tag=DestroyArmL] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10602
    execute unless entity @s[tag=DestroyArmR] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10603
    execute if entity @s[tag=DestroyArmL] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10608
    execute if entity @s[tag=DestroyArmR] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10609
# arm_2
    execute unless entity @s[tag=DestroyArmL] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10604
    execute unless entity @s[tag=DestroyArmR] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10605
    execute if entity @s[tag=DestroyArmL] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10610
    execute if entity @s[tag=DestroyArmR] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10611