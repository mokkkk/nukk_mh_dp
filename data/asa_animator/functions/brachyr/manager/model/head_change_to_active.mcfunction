execute unless entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10255
execute if entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10260

tag @s add ActiveHead