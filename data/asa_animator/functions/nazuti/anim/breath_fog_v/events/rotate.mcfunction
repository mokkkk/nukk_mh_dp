
# 角度取得
data modify storage mhdp: Temp.Rotation set from entity @s Rotation[0]
scoreboard players operation #mhdp_temp_rot0 AsaMatrix = @e[type=marker,tag=NazutiMoveRotate,distance=0..5] AsaMatrix
execute store result score #mhdp_temp_rot1 AsaMatrix store result score @e[type=marker,tag=NazutiMoveRotate,distance=0..5] AsaMatrix run data get storage mhdp: Temp.Rotation 100

# 角度計算
scoreboard players operation #mhdp_temp_rot1 AsaMatrix -= #mhdp_temp_rot0 AsaMatrix
execute store result score #mhdp_temp_rot0 AsaMatrix run data get entity @e[type=marker,tag=NazutiMoveRotate,distance=0..5,limit=1] Rotation[0] 100
scoreboard players operation #mhdp_temp_rot0 AsaMatrix += #mhdp_temp_rot1 AsaMatrix
execute store result entity @e[type=marker,tag=NazutiMoveRotate,distance=0..5,limit=1] Rotation[0] float 0.01 run scoreboard players get #mhdp_temp_rot0 AsaMatrix

# 終了
scoreboard players reset #mhdp_temp_rot0
scoreboard players reset #mhdp_temp_rot1
data remove storage mhdp: Temp.Rotation