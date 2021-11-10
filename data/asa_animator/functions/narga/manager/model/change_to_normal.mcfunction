execute as @e[distance=0..20,type=armor_stand,tag=NargaParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10124
execute as @e[distance=0..20,type=armor_stand,tag=NargaParts,tag=Tail1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10137
scoreboard players set #mhdp_narga_anger_damage AsaMatrix 0