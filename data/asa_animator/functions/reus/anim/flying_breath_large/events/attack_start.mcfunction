# 攻撃用marker
summon marker ~ ~ ~ {Tags:["ReusChargeFPos"]}
execute as @e[type=marker,tag=ReusChargeFPos,distance=0..5] at @s facing entity @e[tag=ReusBreathTarget] feet run tp @s ~ ~ ~ ~ ~
execute as @e[type=marker,tag=ReusChargeFPos,distance=0..5] run data modify storage mhdp: Temp.Rotate set from entity @s Rotation[1]
execute as @e[type=marker,tag=ReusChargeFPos] run tp @s ~ ~ ~ ~18 35
execute as @e[type=marker,tag=ReusChargeFPos,distance=0..5] run data modify entity @s Rotation[1] set from storage mhdp: Temp.Rotate
kill @e[tag=ReusBreathTarget]
data remove storage mhdp: Temp.Rotate