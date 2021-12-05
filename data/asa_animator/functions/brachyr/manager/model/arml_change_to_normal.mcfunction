execute unless entity @s[tag=DestroyArmL] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10235
execute if entity @s[tag=DestroyArmL] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10261

tag @s remove ActiveArmL