
tag @s remove IsThunder
execute as @e[type=armor_stand,tag=ZinogreParts] run data modify entity @s ArmorItems[3].id set value "minecraft:barrier"

# head_u
    execute unless entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10556
    execute if entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10581
# head_l
    execute unless entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=HeadL,limit=1] ArmorItems[3].tag.CustomModelData set value 10557
    execute if entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=HeadL,limit=1] ArmorItems[3].tag.CustomModelData set value 10582
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Neck0,limit=1] ArmorItems[3].tag.CustomModelData set value 10558
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Neck1,limit=1] ArmorItems[3].tag.CustomModelData set value 10559
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Neck2,limit=1] ArmorItems[3].tag.CustomModelData set value 10560
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Body0,limit=1] ArmorItems[3].tag.CustomModelData set value 10561
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Body1,limit=1] ArmorItems[3].tag.CustomModelData set value 10562
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10563
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10564
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10565
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10566
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10567
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10568
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegL3,limit=1] ArmorItems[3].tag.CustomModelData set value 10569
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=LegR3,limit=1] ArmorItems[3].tag.CustomModelData set value 10570
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail0,limit=1] ArmorItems[3].tag.CustomModelData set value 10571
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail1,limit=1] ArmorItems[3].tag.CustomModelData set value 10572
# tail_2
    execute unless entity @s[tag=DestroyTail] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail2,limit=1] ArmorItems[3].tag.CustomModelData set value 10573
    execute if entity @s[tag=DestroyTail] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail2,limit=1] ArmorItems[3].tag.CustomModelData set value 10587
# tail_3
    execute unless entity @s[tag=DestroyTail] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail3,limit=1] ArmorItems[3].tag.CustomModelData set value 10574
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10575
data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10576
# arm_1
    execute unless entity @s[tag=DestroyArmL] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10577
    execute unless entity @s[tag=DestroyArmR] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10578
    execute if entity @s[tag=DestroyArmL] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10583
    execute if entity @s[tag=DestroyArmR] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10584
# arm_2
    execute unless entity @s[tag=DestroyArmL] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10579
    execute unless entity @s[tag=DestroyArmR] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10580
    execute if entity @s[tag=DestroyArmL] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10585
    execute if entity @s[tag=DestroyArmR] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10586
