
# 攻撃用マーカー召喚
summon armor_stand ~ ~-1.4 ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","DynoBreath","Start"],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}

execute as @e[type=armor_stand,tag=DynoBreath,tag=Start] positioned ~ ~1.4 ~ run tp @s ~ ~-1.4 ~ ~ ~

tag @e[type=armor_stand,tag=DynoBreath] remove Start

playsound entity.ghast.shoot master @a ~ ~ ~ 3 1
kill @e[tag=DynoBreathTarget]