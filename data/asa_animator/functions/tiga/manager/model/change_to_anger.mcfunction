execute unless entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10330
execute if entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10336
execute unless entity @s[tag=DestroyArmL] as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10331
execute if entity @s[tag=DestroyArmL] as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10341
execute unless entity @s[tag=DestroyArmR] as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10332
execute if entity @s[tag=DestroyArmR] as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10342
execute unless entity @s[tag=DestroyArmL] as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=ArmL2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10333
execute if entity @s[tag=DestroyArmL] as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=ArmL2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10343
execute unless entity @s[tag=DestroyArmR] as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=ArmR2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10334
execute if entity @s[tag=DestroyArmR] as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=ArmR2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10344

# execute unless entity @s[tag=DestroyTail] as @e[distance=0..30,type=armor_stand,tag=DynoParts,tag=Tail2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10175
# execute unless entity @s[tag=DestroyTail] as @e[distance=0..30,type=armor_stand,tag=DynoParts,tag=Tail3] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10176

tag @s add IsAnger
scoreboard players set #mhdp_tiga_anger_count AsaMatrix 0
scoreboard players set #mhdp_tiga_anger_damage AsaMatrix 0
scoreboard players set #mhdp_tiga_actcount AsaMatrix 12