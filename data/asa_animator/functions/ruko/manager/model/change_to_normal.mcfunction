execute unless entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=RukoParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10550
execute if entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=RukoParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10555

data modify entity @e[type=armor_stand,tag=RukoParts,tag=ArmL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10553
data modify entity @e[type=armor_stand,tag=RukoParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10554

data modify entity @e[type=armor_stand,tag=RukoParts,tag=LegL2,limit=1] ArmorItems[3].tag.CustomModelData set value 10551
data modify entity @e[type=armor_stand,tag=RukoParts,tag=LegR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10552
