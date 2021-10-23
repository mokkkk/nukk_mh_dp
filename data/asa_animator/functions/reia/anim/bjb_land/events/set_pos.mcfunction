
# 地上にmarkerセット
summon marker ^ ^ ^-8 {Tags:["ReiaMovePos"]}
execute as @e[type=marker,tag=ReiaMovePos,limit=1] at @s run tp @s ~ ~5 ~
execute as @e[type=marker,tag=ReiaMovePos,limit=1] at @s align y positioned ~ ~ ~ run function asa_animator:zinogre/manager/check_ground
# markerセット

# ポジション差分取得
data merge storage mhdp: {PosTemp:[], MarkerPosTemp:[]}
data modify storage mhdp: PosTemp set from entity @s Pos
data modify storage mhdp: MarkerPosTemp set from entity @e[type=marker,tag=ReiaMovePos,limit=1] Pos

execute store result score #reia_mine_x AsaMatrix run data get storage mhdp: MarkerPosTemp[0] 100
execute store result score #reia_height_target AsaMatrix run data get storage mhdp: PosTemp[0] 100
scoreboard players operation #reia_mine_x AsaMatrix -= #reia_height_target AsaMatrix

execute store result score #reia_mine_y AsaMatrix run data get storage mhdp: MarkerPosTemp[1] 100
execute store result score #reia_height_target AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #reia_mine_y AsaMatrix -= #reia_height_target AsaMatrix

execute store result score #reia_mine_z AsaMatrix run data get storage mhdp: MarkerPosTemp[2] 100
execute store result score #reia_height_target AsaMatrix run data get storage mhdp: PosTemp[2] 100
scoreboard players operation #reia_mine_z AsaMatrix -= #reia_height_target AsaMatrix

scoreboard players set #reia_height_target AsaMatrix 25
scoreboard players operation #reia_mine_x AsaMatrix /= #reia_height_target AsaMatrix
scoreboard players operation #reia_mine_y AsaMatrix /= #reia_height_target AsaMatrix
scoreboard players operation #reia_mine_z AsaMatrix /= #reia_height_target AsaMatrix

data remove storage mhdp: PosTemp
data remove storage mhdp: MarkerPosTemp

# 終了
kill @e[type=marker,tag=ReiaMovePos]