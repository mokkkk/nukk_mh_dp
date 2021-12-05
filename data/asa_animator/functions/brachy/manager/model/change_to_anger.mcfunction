execute unless entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10240
execute if entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10247

execute unless entity @s[tag=DestroyArmL] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10241
execute if entity @s[tag=DestroyArmL] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10252

execute unless entity @s[tag=DestroyArmR] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10242
execute if entity @s[tag=DestroyArmR] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10253

tag @s add IsAnger