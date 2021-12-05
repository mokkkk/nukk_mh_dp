
# 攻撃用防具立て召喚
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","BrachyRBombSetter","Red","Start"],ArmorItems:[{},{},{},{}]}
execute as @e[distance=0..1,type=armor_stand,tag=BrachyRBombSetter,tag=Start] run tp @s ~ ~ ~ ~ 0
tag @e[type=armor_stand,tag=BrachyRBombSetter,tag=Start] remove Start