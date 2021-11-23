
# 攻撃用マーカー召喚
summon marker ~ ~-1.4 ~ {Tags:["MonsterShot","DynoTailShot","Start"]}

execute as @e[distance=0..3,type=marker,tag=DynoTailShot,tag=Start] positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~
tag @e[distance=0..3,type=marker,tag=DynoTailShot] remove Start