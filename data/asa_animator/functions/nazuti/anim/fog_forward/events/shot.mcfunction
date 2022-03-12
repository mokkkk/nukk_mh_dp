
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["MonsterShot","NazutiBreathB","Start"]}
execute as @e[type=marker,tag=NazutiBreathB,tag=Start] run tp @s ~ ~ ~ ~ 55
tag @e[type=marker,tag=NazutiBreathB] remove Start

summon marker ~ ~ ~ {Tags:["MonsterShot","NazutiBreathB","Start"]}
execute as @e[type=marker,tag=NazutiBreathB,tag=Start] run tp @s ~ ~ ~ ~45 55
tag @e[type=marker,tag=NazutiBreathB] remove Start

summon marker ~ ~ ~ {Tags:["MonsterShot","NazutiBreathB","Start"]}
execute as @e[type=marker,tag=NazutiBreathB,tag=Start] run tp @s ~ ~ ~ ~-45 55
tag @e[type=marker,tag=NazutiBreathB] remove Start

execute if score #mhdp_nazuti_lv AsaMatrix matches 1.. run summon marker ~ ~ ~ {Tags:["MonsterShot","NazutiBreathB","Start"]}
execute as @e[type=marker,tag=NazutiBreathB,tag=Start] run tp @s ~ ~ ~ ~90 55
tag @e[type=marker,tag=NazutiBreathB] remove Start

execute if score #mhdp_nazuti_lv AsaMatrix matches 1.. run summon marker ~ ~ ~ {Tags:["MonsterShot","NazutiBreathB","Start"]}
execute as @e[type=marker,tag=NazutiBreathB,tag=Start] run tp @s ~ ~ ~ ~-90 55
tag @e[type=marker,tag=NazutiBreathB] remove Start

playsound entity.player.burp master @a ~ ~ ~ 3 0.5
playsound entity.player.burp master @a ~ ~ ~ 3 1.2
playsound block.dispenser.launch master @a ~ ~ ~ 3 0.5
