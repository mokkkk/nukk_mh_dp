execute unless entity @s[tag=DestroyArmL] as @e[type=armor_stand,tag=BrachyRParts,tag=ArmL1,distance=0..30] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10256
execute if entity @s[tag=DestroyArmL] as @e[type=armor_stand,tag=BrachyRParts,tag=ArmL1,distance=0..30] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10263

tag @s add ActiveArmL