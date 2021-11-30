execute unless entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10240
# execute if entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10188
execute as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10241
execute as @e[distance=0..30,type=armor_stand,tag=BrachyParts,tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10242

tag @s add IsAnger
# scoreboard players set #mhdp_dyno_actcount_head AsaMatrix 0