
# ポジション差分取得
data merge storage mhdp: {PosTemp:[],MovePosTemp:[0d,0d,0d]}
data modify storage mhdp: PosTemp set from entity @s Pos

execute store result score #ruko_mine_pos AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #ruko_mine_pos AsaMatrix += #ruko_mine_y AsaMatrix
execute store result storage mhdp: MovePosTemp[1] double 0.01 run scoreboard players get #ruko_mine_pos AsaMatrix

data modify entity @s Pos[1] set from storage mhdp: MovePosTemp[1]

data remove storage mhdp: PosTemp
data remove storage mhdp: MovePosTemp

particle dust 0.592 0.243 0.243 2 ~ ~1 ~ 1 1 1 0.1 3