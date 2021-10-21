# 攻撃用marker
summon marker ~ ~ ~ {Tags:["ReusChargeFPos"]}
execute as @e[distance=0..5,type=marker,tag=ReusChargeFPos] at @s facing entity @e[tag=ReusBreathTarget] feet run tp @s ~ ~ ~ ~ ~
execute as @e[distance=0..5,type=marker,tag=ReusChargeFPos] run data modify storage mhdp: Temp.Rotate set from entity @s Rotation[1]
execute as @e[type=marker,tag=ReusChargeFPos] run tp @s ~ ~ ~ ~18 35
execute as @e[distance=0..5,type=marker,tag=ReusChargeFPos] run data modify entity @s Rotation[1] set from storage mhdp: Temp.Rotate
kill @e[tag=ReusBreathTarget]