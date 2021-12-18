
# 召喚
summon armor_stand ~ ~2 ~ {Invisible:1b,Marker:1b,Tags:["MonsterShot","TigaShot","Start"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10085}}]}

execute as @e[distance=0..3,type=armor_stand,tag=TigaShot,tag=Start] at @s facing entity @e[tag=TigaAttackTarget] eyes run tp @s ~ ~ ~ ~ ~
execute if entity @e[distance=..20,tag=TigaAttackTarget] run scoreboard players set @e[distance=0..3,type=armor_stand,tag=TigaShot,tag=Start] AsaMatrix 5
execute unless entity @e[distance=..30,tag=TigaAttackTarget] run scoreboard players set @e[distance=0..3,type=armor_stand,tag=TigaShot,tag=Start] AsaMatrix -5

# 終了
tag @e[distance=0..3,type=armor_stand,tag=TigaShot,tag=Start] remove Start