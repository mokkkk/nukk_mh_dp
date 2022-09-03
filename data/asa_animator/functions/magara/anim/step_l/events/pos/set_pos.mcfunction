
# 地上にmarkerセット
summon marker ^15 ^10 ^5 {Tags:["MagaraMovePos"]}
execute as @e[type=marker,tag=MagaraMovePos,limit=1] at @s align y positioned ~ ~ ~ run function asa_animator:zinogre/manager/check_ground

# ポジション差分取得
data merge storage mhdp: {PosTemp:[], MarkerPosTemp:[]}
data modify storage mhdp: PosTemp set from entity @s Pos
data modify storage mhdp: MarkerPosTemp set from entity @e[type=marker,tag=MagaraMovePos,limit=1] Pos

execute store result score #magara_mine_x AsaMatrix run data get storage mhdp: MarkerPosTemp[0] 100
execute store result score #magara_height_target AsaMatrix run data get storage mhdp: PosTemp[0] 100
scoreboard players operation #magara_mine_x AsaMatrix -= #magara_height_target AsaMatrix

execute store result score #magara_mine_y AsaMatrix run data get storage mhdp: MarkerPosTemp[1] 100
execute store result score #magara_height_target AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #magara_mine_y AsaMatrix -= #magara_height_target AsaMatrix

execute store result score #magara_mine_z AsaMatrix run data get storage mhdp: MarkerPosTemp[2] 100
execute store result score #magara_height_target AsaMatrix run data get storage mhdp: PosTemp[2] 100
scoreboard players operation #magara_mine_z AsaMatrix -= #magara_height_target AsaMatrix

scoreboard players set #magara_height_target AsaMatrix 10
scoreboard players operation #magara_mine_x AsaMatrix /= #magara_height_target AsaMatrix
scoreboard players operation #magara_mine_y AsaMatrix /= #magara_height_target AsaMatrix
scoreboard players operation #magara_mine_z AsaMatrix /= #magara_height_target AsaMatrix

data remove storage mhdp: PosTemp
data remove storage mhdp: MarkerPosTemp

# 終了
kill @e[type=marker,tag=MagaraMovePos]