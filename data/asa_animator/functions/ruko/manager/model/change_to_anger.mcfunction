execute unless entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=RukoParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10519
execute if entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=RukoParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10549

data modify entity @e[type=armor_stand,tag=RukoParts,tag=ArmL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10537
data modify entity @e[type=armor_stand,tag=RukoParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10538

data modify entity @e[type=armor_stand,tag=RukoParts,tag=LegL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10530
data modify entity @e[type=armor_stand,tag=RukoParts,tag=LegR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10531
