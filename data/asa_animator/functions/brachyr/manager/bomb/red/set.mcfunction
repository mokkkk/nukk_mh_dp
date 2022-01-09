
# 攻撃用防具立て召喚
execute unless entity @e[type=armor_stand,tag=BrachyRBombRed,distance=0..3] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","BrachyRBombRed","Start"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10291}}]}
execute as @e[type=armor_stand,tag=BrachyRBombRed,tag=Start,distance=0..1] positioned ~ ~5 ~ align y run function asa_animator:brachyr/manager/bomb/check_ground_
execute as @e[type=armor_stand,tag=BrachyRBombRed,tag=Start,distance=0..1] at @s run particle lava ~ ~0.2 ~ 0.7 0.1 0.7 0 5
tag @e[type=armor_stand,tag=BrachyRBombRed,tag=Start] remove Start