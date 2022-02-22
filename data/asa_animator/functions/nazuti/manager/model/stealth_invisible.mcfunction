execute as @e[type=armor_stand,tag=NazutiParts] run data modify entity @s ArmorItems[3].id set value "minecraft:barrier"

data modify entity @e[type=armor_stand,tag=NazutiParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=HeadL,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Neck0,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Neck1,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Neck2,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Body0,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Body1,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Tail0,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Tail1,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
execute unless entity @s[tag=DestroyTail] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Tail2,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10084

tag @s add IsInvisible
tag @s add IsInvisible2