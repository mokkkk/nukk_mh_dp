execute unless entity @s[tag=DHead] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10195
execute if entity @s[tag=DHead] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10246

execute unless entity @s[tag=DArmL] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10214
execute if entity @s[tag=DArmL] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10250

execute unless entity @s[tag=DArmR] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10215
execute if entity @s[tag=DArmR] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10251

tag @s remove IsAnger
scoreboard players set #mhdp_brachy_anger_damage AsaMatrix 0