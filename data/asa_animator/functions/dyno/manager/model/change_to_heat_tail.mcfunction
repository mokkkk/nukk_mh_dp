execute unless entity @s[tag=DestroyTail] as @e[distance=0..30,type=armor_stand,tag=DynoParts,tag=Tail2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10185
execute unless entity @s[tag=DestroyTail] as @e[distance=0..30,type=armor_stand,tag=DynoParts,tag=Tail3] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10186

# execute if entity @s[tag=DestroyHead] as @e[distance=0..20,type=armor_stand,tag=NargaParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10153

execute as @e[distance=0..30,type=armor_stand,tag=DynoParts,tag=Tail3] at @s run particle lava ~ ~ ~ 1 1 1 0 10

tag @s add IsHeatTail
scoreboard players set #mhdp_dyno_actcount_generic AsaMatrix 0