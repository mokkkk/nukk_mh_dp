
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["MonsterShot","NazutiBreathB","Start"]}

execute as @e[type=marker,tag=NazutiBreathB,tag=Start] at @s facing entity @e[type=marker,tag=NazutiBreathTarget] feet run tp @s ~ ~ ~ ~ ~

tag @e[type=marker,tag=NazutiBreathB] remove Start

playsound entity.player.burp master @a ~ ~ ~ 3 0.5
playsound entity.player.burp master @a ~ ~ ~ 3 1.2
playsound block.dispenser.launch master @a ~ ~ ~ 3 0.5