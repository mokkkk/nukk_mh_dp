
# 地上にmarkerセット
summon marker ^ ^ ^ {Tags:["TeoMovePos"]}
execute as @e[type=marker,tag=TeoMovePos,limit=1] at @s align y positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

# ポジション差分取得
data merge storage mhdp: {PosTemp:[], MarkerPosTemp:[]}
data modify storage mhdp: PosTemp set from entity @s Pos
data modify storage mhdp: MarkerPosTemp set from entity @e[type=marker,tag=TeoMovePos,limit=1] Pos

execute store result score #teo_mine_x AsaMatrix run data get storage mhdp: MarkerPosTemp[0] 100
execute store result score #teo_height_target AsaMatrix run data get storage mhdp: PosTemp[0] 100
scoreboard players operation #teo_mine_x AsaMatrix -= #teo_height_target AsaMatrix

execute store result score #teo_mine_y AsaMatrix run data get storage mhdp: MarkerPosTemp[1] 100
execute store result score #teo_height_target AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #teo_mine_y AsaMatrix -= #teo_height_target AsaMatrix

execute store result score #teo_mine_z AsaMatrix run data get storage mhdp: MarkerPosTemp[2] 100
execute store result score #teo_height_target AsaMatrix run data get storage mhdp: PosTemp[2] 100
scoreboard players operation #teo_mine_z AsaMatrix -= #teo_height_target AsaMatrix

scoreboard players set #teo_height_target AsaMatrix 18
scoreboard players operation #teo_mine_x AsaMatrix /= #teo_height_target AsaMatrix
scoreboard players operation #teo_mine_y AsaMatrix /= #teo_height_target AsaMatrix
scoreboard players operation #teo_mine_z AsaMatrix /= #teo_height_target AsaMatrix

data remove storage mhdp: PosTemp
data remove storage mhdp: MarkerPosTemp

# 終了
kill @e[type=marker,tag=TeoMovePos]