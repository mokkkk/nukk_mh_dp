execute unless entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10195
execute if entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10195
execute as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10214
execute as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10215

tag @s remove IsAnger
scoreboard players set #mhdp_brachy_anger_damage AsaMatrix 0