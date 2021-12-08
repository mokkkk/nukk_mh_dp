execute unless entity @s[tag=DestroyArmR] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10236
execute if entity @s[tag=DestroyArmR] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10262

tag @s remove ActiveArmR