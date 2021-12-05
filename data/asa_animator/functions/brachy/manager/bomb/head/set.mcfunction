
# 攻撃用防具立て召喚
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","BrachyBombS","Start"],ArmorItems:[{},{},{},{}]}
execute as @e[distance=0..1,type=armor_stand,tag=BrachyBombS,tag=Start] positioned ~ ~5 ~ align y run function asa_animator:brachy/manager/bomb/check_ground_
tag @e[type=armor_stand,tag=BrachyBombS,tag=Start] remove Start