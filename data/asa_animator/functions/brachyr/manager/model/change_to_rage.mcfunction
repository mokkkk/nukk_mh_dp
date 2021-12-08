
function asa_animator:brachyr/manager/model/head_change_to_normal
function asa_animator:brachyr/manager/model/arml_change_to_normal
function asa_animator:brachyr/manager/model/armr_change_to_normal
function asa_animator:brachyr/manager/model/tail_change_to_normal

execute unless entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10266
execute if entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10287
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=HeadL] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10267
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=Neck0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10268
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=Neck1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10269
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=Neck2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10270
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=Body0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10271
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=Body1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10272
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=LegL0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10273
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=LegR0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10274
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=LegL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10275
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=LegR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10276
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=LegL2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10277
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=LegR2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10278
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=Tail0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10279
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=Tail1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10280
execute unless entity @s[tag=DestroyTail] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=Tail2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10281
execute if entity @s[tag=DestroyTail] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=Tail2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10290
execute unless entity @s[tag=DestroyTail] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=Tail3] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10282
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=ArmL0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10283
execute as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=ArmR0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10284
execute unless entity @s[tag=DestroyArmL] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10285
execute if entity @s[tag=DestroyArmL] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10288
execute unless entity @s[tag=DestroyArmR] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10286
execute if entity @s[tag=DestroyArmR] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10289

tag @s add Phase2

scoreboard players set #mhdp_brachyr_act_count AsaMatrix 0