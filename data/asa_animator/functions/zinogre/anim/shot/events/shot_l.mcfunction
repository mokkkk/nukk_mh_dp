
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["MonsterShot","ZinogreThunder","A","L","Start"]}
summon marker ~ ~ ~ {Tags:["MonsterShot","ZinogreThunder","B","L","Start"]}
execute if entity @s[tag=IsThunder] run summon marker ~ ~ ~ {Tags:["MonsterShot","ZinogreThunder","C","L","Start"]}

execute as @e[type=marker,tag=ZinogreThunder,tag=A,tag=Start] rotated ~-10 ~ run tp @s ^ ^0.4 ^3 ~ ~
execute as @e[type=marker,tag=ZinogreThunder,tag=B,tag=Start] rotated ~20 ~ run tp @s ^ ^0.4 ^3 ~ ~
execute if entity @s[tag=IsThunder] as @e[type=marker,tag=ZinogreThunder,tag=C,tag=Start] rotated ~50 ~ run tp @s ^ ^0.4 ^3 ~ ~

execute at @e[type=marker,tag=ZinogreThunder,tag=Start] run particle flash ~ ~ ~ 0.5 0.5 0.5 0 5 force

tag @e[type=marker,tag=ZinogreThunder] remove Start

playsound entity.shulker.shoot master @a ~ ~ ~ 3 0.5
playsound entity.shulker.shoot master @a ~ ~ ~ 3 0.8
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 3 1