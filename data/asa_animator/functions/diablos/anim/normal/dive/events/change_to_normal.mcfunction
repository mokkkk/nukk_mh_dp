

execute if entity @s[tag=HeadU] unless entity @e[distance=0..20,type=armor_stand,tag=DiablosRoot,tag=DestroyHead] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10018
execute if entity @s[tag=HeadU] if entity @e[distance=0..20,type=armor_stand,tag=DiablosRoot,tag=DestroyHead] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10292

execute if entity @s[tag=HeadL] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10019
execute if entity @s[tag=Neck0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10020
execute if entity @s[tag=Neck1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10021
execute if entity @s[tag=Neck2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10022

execute if entity @s[tag=Body0] unless entity @e[distance=0..20,type=armor_stand,tag=DiablosRoot,tag=DestroyBody] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10023
execute if entity @s[tag=Body0] if entity @e[distance=0..20,type=armor_stand,tag=DiablosRoot,tag=DestroyBody] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10293

execute if entity @s[tag=Body1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10024
execute if entity @s[tag=LegL0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10025
execute if entity @s[tag=LegR0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10028
execute if entity @s[tag=LegL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10026
execute if entity @s[tag=LegR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10029
execute if entity @s[tag=LegL2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10027
execute if entity @s[tag=LegR2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10030

execute if entity @s[tag=WingL0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10034
execute if entity @s[tag=WingR0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10036
execute if entity @s[tag=WingL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10035
execute if entity @s[tag=WingR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10037

execute if entity @s[tag=Tail0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10031
execute if entity @s[tag=Tail1] unless entity @e[distance=0..20,type=armor_stand,tag=DiablosRoot,tag=DestroyTail] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10032
execute if entity @s[tag=Tail2] unless entity @e[distance=0..20,type=armor_stand,tag=DiablosRoot,tag=DestroyTail] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10033
execute if entity @s[tag=Tail1] if entity @e[distance=0..20,type=armor_stand,tag=DiablosRoot,tag=DestroyTail] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10294
execute if entity @s[tag=Tail2] if entity @e[distance=0..20,type=armor_stand,tag=DiablosRoot,tag=DestroyTail] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10084