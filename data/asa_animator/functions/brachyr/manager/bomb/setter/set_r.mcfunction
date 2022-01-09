
# 攻撃用防具立て召喚
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","BrachyRBombSetter","Red","Start"],ArmorItems:[{},{},{},{}]}
execute as @e[type=armor_stand,tag=BrachyRBombSetter,tag=Start,distance=0..1] run tp @s ~ ~ ~ ~ 0
tag @e[type=armor_stand,tag=BrachyRBombSetter,tag=Start] remove Start