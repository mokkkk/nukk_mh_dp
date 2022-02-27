
# 地上にmarkerセット
summon marker ^ ^ ^ {Tags:["RukoMovePos"]}
execute as @e[type=marker,tag=RukoMovePos,limit=1] at @s align y positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
execute as @e[type=marker,tag=RukoMovePos,limit=1] at @s run tp @s ~ ~0 ~

# ポジション差分取得
data merge storage mhdp: {PosTemp:[], MarkerPosTemp:[]}
data modify storage mhdp: PosTemp set from entity @s Pos
data modify storage mhdp: MarkerPosTemp set from entity @e[type=marker,tag=RukoMovePos,limit=1] Pos

execute store result score #ruko_mine_y AsaMatrix run data get storage mhdp: MarkerPosTemp[1] 100
execute store result score #ruko_height_target AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #ruko_mine_y AsaMatrix -= #ruko_height_target AsaMatrix

scoreboard players set #ruko_height_target AsaMatrix 5
scoreboard players operation #ruko_mine_y AsaMatrix /= #ruko_height_target AsaMatrix

data remove storage mhdp: PosTemp
data remove storage mhdp: MarkerPosTemp

# 終了
kill @e[type=marker,tag=RukoMovePos]