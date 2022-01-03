execute unless entity @s[tag=DestroyHead] as @e[type=armor_stand,tag=BrachyRParts,tag=HeadU,distance=0..30] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10216
execute if entity @s[tag=DestroyHead] as @e[type=armor_stand,tag=BrachyRParts,tag=HeadU,distance=0..30] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10259

tag @s remove ActiveHead