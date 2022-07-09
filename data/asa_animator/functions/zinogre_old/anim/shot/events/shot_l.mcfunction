
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["MonsterShot","ZinogreThunder","A","L","Start"]}
summon marker ~ ~ ~ {Tags:["MonsterShot","ZinogreThunder","B","L","Start"]}

execute as @e[type=marker,tag=ZinogreThunder,tag=A,tag=Start] run tp @s ~ ~0.4 ~ ~-10 ~
execute as @e[type=marker,tag=ZinogreThunder,tag=B,tag=Start] run tp @s ~ ~0.4 ~ ~20 ~

tag @e[type=marker,tag=ZinogreThunder] remove Start

playsound entity.shulker.shoot master @a ~ ~ ~ 3 0.8