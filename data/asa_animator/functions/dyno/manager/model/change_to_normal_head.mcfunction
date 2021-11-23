execute unless entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=DynoParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10160
execute unless entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=DynoParts,tag=HeadL] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10161
execute as @e[distance=0..30,type=armor_stand,tag=DynoParts,tag=Neck0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10162
execute as @e[distance=0..30,type=armor_stand,tag=DynoParts,tag=Neck1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10163

# execute if entity @s[tag=DestroyHead] as @e[distance=0..20,type=armor_stand,tag=NargaParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10153

tag @s remove IsHeatHead