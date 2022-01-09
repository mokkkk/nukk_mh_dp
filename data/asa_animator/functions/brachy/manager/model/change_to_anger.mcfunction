execute unless entity @s[tag=DestroyHead] as @e[type=armor_stand,tag=BrachyParts,tag=HeadU,distance=0..30] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10240
execute if entity @s[tag=DestroyHead] as @e[type=armor_stand,tag=BrachyParts,tag=HeadU,distance=0..30] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10247

execute unless entity @s[tag=DestroyArmL] as @e[type=armor_stand,tag=BrachyParts,tag=ArmL1,distance=0..30] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10241
execute if entity @s[tag=DestroyArmL] as @e[type=armor_stand,tag=BrachyParts,tag=ArmL1,distance=0..30] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10252

execute unless entity @s[tag=DestroyArmR] as @e[type=armor_stand,tag=BrachyParts,tag=ArmR1,distance=0..30] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10242
execute if entity @s[tag=DestroyArmR] as @e[type=armor_stand,tag=BrachyParts,tag=ArmR1,distance=0..30] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10253

tag @s add IsAnger