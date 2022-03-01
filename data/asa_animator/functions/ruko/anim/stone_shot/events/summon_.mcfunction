
# 攻撃用マーカー召喚
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","RukoStoneShot","Start"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10543,Rotate:[0f,0f,0f]}}],Pose:{Head:[1f,1f,1f]}}
execute as @e[type=armor_stand,tag=RukoStoneShot,tag=Start] positioned as @s run tp @s ~ ~ ~ ~ 0

tag @e[type=armor_stand,tag=RukoStoneShot] remove Start