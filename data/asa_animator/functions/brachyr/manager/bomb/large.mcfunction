
# 攻撃用防具立て召喚
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","BrachyRBomb","Large","Start"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10243}}]}
execute as @e[type=armor_stand,tag=BrachyRBomb,tag=Start,distance=0..1] positioned ~ ~5 ~ align y run function asa_animator:brachyr/manager/bomb/check_ground_
execute as @e[type=armor_stand,tag=BrachyRBomb,tag=Start,distance=0..1] at @s run particle dust 0.427 0.867 0.467 2 ~ ~0.2 ~ 0.7 0.1 0.7 0 20
tag @e[type=armor_stand,tag=BrachyRBomb,tag=Start] remove Start