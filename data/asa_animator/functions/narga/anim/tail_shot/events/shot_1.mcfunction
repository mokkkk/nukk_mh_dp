
# 攻撃用マーカー召喚
summon armor_stand ~ ~-1.4 ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","NargaTail","Start","A"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10149,Rotate:[0f,0f,0f]}}],Pose:{Head:[5f,0f,0f]}}
summon armor_stand ~ ~-1.4 ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","NargaTail","Start","B"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10149,Rotate:[0f,0f,0f]}}],Pose:{Head:[5f,0f,0f]}}
summon armor_stand ~ ~-1.4 ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","NargaTail","Start","C"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10149,Rotate:[0f,0f,0f]}}],Pose:{Head:[5f,0f,0f]}}
summon armor_stand ~ ~-1.4 ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","NargaTail","Start","D"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10149,Rotate:[0f,0f,0f]}}],Pose:{Head:[5f,0f,0f]}}
summon armor_stand ~ ~-1.4 ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","NargaTail","Start","E"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10149,Rotate:[0f,0f,0f]}}],Pose:{Head:[5f,0f,0f]}}

execute as @e[type=armor_stand,tag=NargaTail,tag=Start,tag=A] positioned as @s rotated ~ ~-10 run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,tag=NargaTail,tag=Start,tag=B] positioned as @s rotated ~ ~-5 run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,tag=NargaTail,tag=Start,tag=C] positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,tag=NargaTail,tag=Start,tag=D] positioned as @s rotated ~ ~2 run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,tag=NargaTail,tag=Start,tag=E] positioned as @s rotated ~ ~4 run tp @s ~ ~ ~ ~ ~

execute as @e[distance=0..3,type=armor_stand,tag=NargaTail,tag=Start] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]

tag @e[type=armor_stand,tag=NargaTail] remove Start

particle sweep_attack ~ ~ ~ 1 1 1 0 10
playsound entity.player.attack.sweep master @a ~ ~ ~ 3 0.8
playsound item.trident.throw master @a ~ ~ ~ 3 1.2

kill @e[type=marker,tag=NargaShotTarget]