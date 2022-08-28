
# 地上にmarkerセット
summon marker ^ ^ ^ {Tags:["MagaraMovePos"]}
execute as @e[type=marker,tag=MagaraMovePos,limit=1] at @s align y positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
execute as @e[type=marker,tag=MagaraMovePos,limit=1] at @s run tp @s ~ ~4 ~

# ポジション差分取得
data merge storage mhdp: {PosTemp:[], MarkerPosTemp:[]}
data modify storage mhdp: PosTemp set from entity @s Pos
data modify storage mhdp: MarkerPosTemp set from entity @e[type=marker,tag=MagaraMovePos,limit=1] Pos


execute store result score #magara_mine_y AsaMatrix run data get storage mhdp: MarkerPosTemp[1] 100
execute store result score #magara_height_target AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #magara_mine_y AsaMatrix -= #magara_height_target AsaMatrix

scoreboard players set #magara_height_target AsaMatrix 15
scoreboard players operation #magara_mine_y AsaMatrix /= #magara_height_target AsaMatrix

data remove storage mhdp: PosTemp
data remove storage mhdp: MarkerPosTemp

# 終了
kill @e[type=marker,tag=MagaraMovePos]