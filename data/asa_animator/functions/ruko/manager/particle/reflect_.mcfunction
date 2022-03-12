

playsound item.shield.block master @a ~ ~ ~ 2 1
tag @s add MhdpReflected

# Motion代入
data modify storage mhdp: Temp.Motion set from entity @s Motion
scoreboard players set #mhdp_const_temp AsaMatrix -1
execute store result score #mhdp_motion_temp AsaMatrix run data get storage mhdp: Temp.Motion[0] 100
scoreboard players operation #mhdp_motion_temp AsaMatrix *= #mhdp_const_temp AsaMatrix
execute store result storage mhdp: Temp.Motion[0] double 0.01 run scoreboard players get #mhdp_motion_temp AsaMatrix
execute store result score #mhdp_motion_temp AsaMatrix run data get storage mhdp: Temp.Motion[1] 100
scoreboard players operation #mhdp_motion_temp AsaMatrix *= #mhdp_const_temp AsaMatrix
execute store result storage mhdp: Temp.Motion[1] double 0.01 run scoreboard players get #mhdp_motion_temp AsaMatrix
execute store result score #mhdp_motion_temp AsaMatrix run data get storage mhdp: Temp.Motion[2] 100
scoreboard players operation #mhdp_motion_temp AsaMatrix *= #mhdp_const_temp AsaMatrix
execute store result storage mhdp: Temp.Motion[2] double 0.01 run scoreboard players get #mhdp_motion_temp AsaMatrix
data modify entity @s Motion set from storage mhdp: Temp.Motion

data remove storage mhdp: Temp.Motion
scoreboard players reset #mhdp_const_temp
scoreboard players reset #mhdp_motion_temp