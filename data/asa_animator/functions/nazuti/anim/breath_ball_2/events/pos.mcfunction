
# Pos Marker
data modify storage mhdp: Temp.Pos.Marker set from entity @s Pos
# Pos Target
data modify storage mhdp: Temp.Pos.Target set from entity @e[tag=NazutiAttackTarget,limit=1] Pos
data modify storage mhdp: Temp.Pos.Dest set from storage mhdp: Temp.Pos.Marker
scoreboard players set #mhdp_temp_const AsaMatrix 4

# x
execute store result score #mhdp_temp_pos_m AsaMatrix run data get storage mhdp: Temp.Pos.Marker[0] 100
execute store result score #mhdp_temp_pos_t AsaMatrix run data get storage mhdp: Temp.Pos.Target[0] 100
scoreboard players operation #mhdp_temp_pos_t AsaMatrix -= #mhdp_temp_pos_m AsaMatrix
scoreboard players operation #mhdp_temp_pos_t AsaMatrix *= #mhdp_temp_const AsaMatrix
execute store result storage mhdp: Temp.Pos.Dest[0] double 0.01 run scoreboard players operation #mhdp_temp_pos_m AsaMatrix += #mhdp_temp_pos_t AsaMatrix
# y
execute store result score #mhdp_temp_pos_m AsaMatrix run data get storage mhdp: Temp.Pos.Marker[1] 100
execute store result score #mhdp_temp_pos_t AsaMatrix run data get storage mhdp: Temp.Pos.Target[1] 100
scoreboard players operation #mhdp_temp_pos_t AsaMatrix -= #mhdp_temp_pos_m AsaMatrix
scoreboard players operation #mhdp_temp_pos_t AsaMatrix *= #mhdp_temp_const AsaMatrix
execute store result storage mhdp: Temp.Pos.Dest[1] double 0.01 run scoreboard players operation #mhdp_temp_pos_m AsaMatrix += #mhdp_temp_pos_t AsaMatrix
# z
execute store result score #mhdp_temp_pos_m AsaMatrix run data get storage mhdp: Temp.Pos.Marker[2] 100
execute store result score #mhdp_temp_pos_t AsaMatrix run data get storage mhdp: Temp.Pos.Target[2] 100
scoreboard players operation #mhdp_temp_pos_t AsaMatrix -= #mhdp_temp_pos_m AsaMatrix
scoreboard players operation #mhdp_temp_pos_t AsaMatrix *= #mhdp_temp_const AsaMatrix
execute store result storage mhdp: Temp.Pos.Dest[2] double 0.01 run scoreboard players operation #mhdp_temp_pos_m AsaMatrix += #mhdp_temp_pos_t AsaMatrix

# set
data modify entity @s Pos set from storage mhdp: Temp.Pos.Dest
execute at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

# reset
data remove storage mhdp: Temp.Pos
scoreboard players reset #mhdp_temp_pos_m
scoreboard players reset #mhdp_temp_pos_t
scoreboard players reset #mhdp_temp_const