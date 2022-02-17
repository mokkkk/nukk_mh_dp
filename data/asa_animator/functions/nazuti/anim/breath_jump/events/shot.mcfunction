
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["NazutiBreathJ","Start"]}

execute as @e[type=marker,tag=NazutiBreathJ,tag=Start] at @s run tp @s ~ ~ ~ ~ 90

tag @e[type=marker,tag=NazutiBreathJ] remove Start

playsound entity.player.burp master @a ~ ~ ~ 3 0.5
playsound entity.player.burp master @a ~ ~ ~ 3 1.2
playsound block.dispenser.launch master @a ~ ~ ~ 3 0.5