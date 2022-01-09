

execute unless entity @s[tag=DestroyHead] as @e[type=armor_stand,tag=DiablosParts,tag=HeadU,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10018
execute if entity @s[tag=DestroyHead] as @e[type=armor_stand,tag=DiablosParts,tag=HeadU,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10292

execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadL,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10019
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck0,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10020
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck1,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10021
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck2,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10022

execute unless entity @s[tag=DestroyBody] as @e[type=armor_stand,tag=DiablosParts,tag=Body0,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10023
execute if entity @s[tag=DestroyBody] as @e[type=armor_stand,tag=DiablosParts,tag=Body0,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10293

execute as @e[type=armor_stand,tag=DiablosParts,tag=Body1,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10024
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL0,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10025
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR0,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10028
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL1,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10026
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR1,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10029
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL2,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10027
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR2,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10030

execute as @e[type=armor_stand,tag=DiablosParts,tag=WingL0,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10034
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingR0,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10036
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingL1,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10035
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingR1,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10037

execute as @e[type=armor_stand,tag=DiablosParts,tag=Tail0,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10031
execute unless entity @s[tag=DestroyTail] as @e[type=armor_stand,tag=DiablosParts,tag=Tail1,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10032
execute if entity @s[tag=DestroyTail] as @e[type=armor_stand,tag=DiablosParts,tag=Tail1,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10294
execute unless entity @s[tag=DestroyTail] as @e[type=armor_stand,tag=DiablosParts,tag=Tail2,distance=0..20] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10033
