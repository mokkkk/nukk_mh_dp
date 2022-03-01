
data modify storage mhdp: Temp.Rotate set from entity @s Rotation[0]
execute at @s facing entity @e[tag=RukoAttackTarget,limit=1] feet run tp @s ~ ~ ~ ~ ~
data modify entity @s Rotation[0] set from storage mhdp: Temp.Rotate
data remove storage mhdp: Temp.Rotate
tag @s add IsMove