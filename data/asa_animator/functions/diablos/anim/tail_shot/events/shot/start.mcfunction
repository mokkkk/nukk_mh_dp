
# 召喚
summon armor_stand ~ ~2 ~ {Invisible:1b,Invulnerable:1b,OnGround:0b,Tags:["MonsterShot","DiablosTailShot","Start"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10085}}]}

# Motion代入
execute positioned 0 0 0 align xyz positioned ^ ^ ^1.5 run summon marker ~ ~ ~ {Tags:["MhdpForMotion"]}
data modify storage mhdp: Temp.Pos set from entity @e[type=marker,tag=MhdpForMotion,limit=1] Pos
data modify entity @e[type=armor_stand,tag=DiablosTailShot,tag=Start,limit=1] Motion set from storage mhdp: Temp.Pos
data remove storage mhdp: Temp.Pos

# 終了
tag @e[type=armor_stand,tag=DiablosTailShot,tag=Start] remove Start
kill @e[type=marker,tag=MhdpForMotion]