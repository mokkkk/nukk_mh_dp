execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=!DestroyHead] if entity @s[tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10040
execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=DestroyHead] if entity @s[tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10296

execute if entity @s[tag=HeadL] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10041
execute if entity @s[tag=Neck0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10042
execute if entity @s[tag=Neck1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10043
execute if entity @s[tag=Neck2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10044
execute if entity @s[tag=Body0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10045
execute if entity @s[tag=Body1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10046
execute if entity @s[tag=LegL0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10047
execute if entity @s[tag=LegR0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10048
execute if entity @s[tag=LegL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10049
execute if entity @s[tag=LegR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10050
execute if entity @s[tag=LegL2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10051
execute if entity @s[tag=LegR2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10052

execute if entity @s[tag=ArmL0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10053
execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=!DestroyArmL] if entity @s[tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10055
execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=!DestroyArmL] if entity @s[tag=ArmL2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10057
execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=DestroyArmL] if entity @s[tag=ArmL1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10299
execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=DestroyArmL] if entity @s[tag=ArmL2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10300

execute if entity @s[tag=ArmR0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10054
execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=!DestroyArmR] if entity @s[tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10056
execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=!DestroyArmR] if entity @s[tag=ArmR2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10058
execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=DestroyArmR] if entity @s[tag=ArmR1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10303
execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=DestroyArmR] if entity @s[tag=ArmR2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10304

execute if entity @s[tag=Tail0] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10059
execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=!DestroyTail] if entity @s[tag=Tail1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10060
execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=DestroyTail] if entity @s[tag=Tail1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10307
execute if entity @e[distance=0..15,type=armor_stand,tag=ZinogreRoot,tag=!DestroyTail] if entity @s[tag=Tail2] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10061