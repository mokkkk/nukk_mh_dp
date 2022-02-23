execute as @e[type=armor_stand,tag=NazutiParts] run data modify entity @s ArmorItems[3].id set value "minecraft:clock"
execute if entity @s[tag=DestroyTail] as @e[type=armor_stand,tag=NazutiParts,tag=Tail2,limit=1] run data modify entity @s ArmorItems[3].id set value "minecraft:barrier"

execute unless entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10486
execute if entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10516
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=HeadL,limit=1] ArmorItems[3].tag.CustomModelData set value 10487
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Neck0,limit=1] ArmorItems[3].tag.CustomModelData set value 10488
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Neck1,limit=1] ArmorItems[3].tag.CustomModelData set value 10489
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Neck2,limit=1] ArmorItems[3].tag.CustomModelData set value 10490
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Body0,limit=1] ArmorItems[3].tag.CustomModelData set value 10491
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Body1,limit=1] ArmorItems[3].tag.CustomModelData set value 10492
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10493
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10494
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10495
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10496
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10497
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10498
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Tail0,limit=1] ArmorItems[3].tag.CustomModelData set value 10499
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Tail1,limit=1] ArmorItems[3].tag.CustomModelData set value 10500
execute unless entity @s[tag=DestroyTail] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Tail2,limit=1] ArmorItems[3].tag.CustomModelData set value 10501
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10502
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10503
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10504
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10505
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10506
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10507
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10508
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10508
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10509
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10509

tag @s add IsInvisible
tag @s remove IsInvisible2