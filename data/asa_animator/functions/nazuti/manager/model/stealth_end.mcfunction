# execute unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10482
# execute unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10482
# execute unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10483
# execute unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10483
# execute if entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10421
# execute if entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10421
# execute if entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10422
# execute if entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10422

execute as @e[type=armor_stand,tag=NazutiParts] run data modify entity @s ArmorItems[3].id set value "minecraft:barrier"

data modify entity @e[type=armor_stand,tag=NazutiParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10460
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=HeadL,limit=1] ArmorItems[3].tag.CustomModelData set value 10461
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Neck0,limit=1] ArmorItems[3].tag.CustomModelData set value 10462
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Neck1,limit=1] ArmorItems[3].tag.CustomModelData set value 10463
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Neck2,limit=1] ArmorItems[3].tag.CustomModelData set value 10464
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Body0,limit=1] ArmorItems[3].tag.CustomModelData set value 10465
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Body1,limit=1] ArmorItems[3].tag.CustomModelData set value 10466
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10467
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10468
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10469
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10470
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10471
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=LegR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10472
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Tail0,limit=1] ArmorItems[3].tag.CustomModelData set value 10473
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Tail1,limit=1] ArmorItems[3].tag.CustomModelData set value 10474
execute unless entity @s[tag=DestroyTail] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=Tail2,limit=1] ArmorItems[3].tag.CustomModelData set value 10475
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10476
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10477
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10478
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10479
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10480
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=ArmR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10481
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10482
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10482
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10483
data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10483

tag @s remove IsInvisible
tag @s remove IsInvisible2