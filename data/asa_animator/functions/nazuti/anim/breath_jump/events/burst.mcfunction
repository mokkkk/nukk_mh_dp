
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["NazutiBreathJB","Start"]}
execute as @e[type=marker,tag=NazutiBreathJB,tag=Start] at @s run tp @s ~ ~0.5 ~ ~ 0
tag @e[type=marker,tag=NazutiBreathJB] remove Start
summon marker ~ ~ ~ {Tags:["NazutiBreathJB","Start"]}
execute as @e[type=marker,tag=NazutiBreathJB,tag=Start] at @s run tp @s ~ ~0.5 ~ ~30 0
tag @e[type=marker,tag=NazutiBreathJB] remove Start
summon marker ~ ~ ~ {Tags:["NazutiBreathJB","Start"]}
execute as @e[type=marker,tag=NazutiBreathJB,tag=Start] at @s run tp @s ~ ~0.5 ~ ~60 0
tag @e[type=marker,tag=NazutiBreathJB] remove Start
summon marker ~ ~ ~ {Tags:["NazutiBreathJB","Start"]}
execute as @e[type=marker,tag=NazutiBreathJB,tag=Start] at @s run tp @s ~ ~0.5 ~ ~90 0
tag @e[type=marker,tag=NazutiBreathJB] remove Start
summon marker ~ ~ ~ {Tags:["NazutiBreathJB","Start"]}
execute as @e[type=marker,tag=NazutiBreathJB,tag=Start] at @s run tp @s ~ ~0.5 ~ ~120 0
tag @e[type=marker,tag=NazutiBreathJB] remove Start
summon marker ~ ~ ~ {Tags:["NazutiBreathJB","Start"]}
execute as @e[type=marker,tag=NazutiBreathJB,tag=Start] at @s run tp @s ~ ~0.5 ~ ~150 0
tag @e[type=marker,tag=NazutiBreathJB] remove Start
summon marker ~ ~ ~ {Tags:["NazutiBreathJB","Start"]}
execute as @e[type=marker,tag=NazutiBreathJB,tag=Start] at @s run tp @s ~ ~0.5 ~ ~180 0
tag @e[type=marker,tag=NazutiBreathJB] remove Start
summon marker ~ ~ ~ {Tags:["NazutiBreathJB","Start"]}
execute as @e[type=marker,tag=NazutiBreathJB,tag=Start] at @s run tp @s ~ ~0.5 ~ ~210 0
tag @e[type=marker,tag=NazutiBreathJB] remove Start
summon marker ~ ~ ~ {Tags:["NazutiBreathJB","Start"]}
execute as @e[type=marker,tag=NazutiBreathJB,tag=Start] at @s run tp @s ~ ~0.5 ~ ~240 0
tag @e[type=marker,tag=NazutiBreathJB] remove Start
summon marker ~ ~ ~ {Tags:["NazutiBreathJB","Start"]}
execute as @e[type=marker,tag=NazutiBreathJB,tag=Start] at @s run tp @s ~ ~0.5 ~ ~270 0
tag @e[type=marker,tag=NazutiBreathJB] remove Start
summon marker ~ ~ ~ {Tags:["NazutiBreathJB","Start"]}
execute as @e[type=marker,tag=NazutiBreathJB,tag=Start] at @s run tp @s ~ ~0.5 ~ ~300 0
tag @e[type=marker,tag=NazutiBreathJB] remove Start
summon marker ~ ~ ~ {Tags:["NazutiBreathJB","Start"]}
execute as @e[type=marker,tag=NazutiBreathJB,tag=Start] at @s run tp @s ~ ~0.5 ~ ~330 0
tag @e[type=marker,tag=NazutiBreathJB] remove Start

playsound item.bucket.empty_lava master @a ~ ~ ~ 2 0.5
playsound item.bucket.fill_lava master @a ~ ~ ~ 2 0.7

tag @s add IsBurst