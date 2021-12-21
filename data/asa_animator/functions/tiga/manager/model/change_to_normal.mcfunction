execute as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10309
execute as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10326
execute as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10327
execute as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=ArmL2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10328
execute as @e[distance=0..30,type=armor_stand,tag=TigaParts,tag=ArmR2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10329

# execute unless entity @s[tag=DestroyTail] as @e[distance=0..30,type=armor_stand,tag=DynoParts,tag=Tail2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10175
# execute unless entity @s[tag=DestroyTail] as @e[distance=0..30,type=armor_stand,tag=DynoParts,tag=Tail3] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10176

tag @s remove IsAnger
scoreboard players set #mhdp_tiga_actcount_anger AsaMatrix 0