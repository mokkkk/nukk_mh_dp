
# 攻撃用マーカー召喚
summon armor_stand ~ ~-1.4 ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","ReiaBreath","Start"],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}

execute as @e[type=armor_stand,tag=ReiaBreath,tag=Start] positioned as @s run tp @s ~ ~ ~ ~ ~

tag @e[type=armor_stand,tag=ReiaBreath] remove Start

playsound entity.ghast.shoot master @a ~ ~ ~ 3 1