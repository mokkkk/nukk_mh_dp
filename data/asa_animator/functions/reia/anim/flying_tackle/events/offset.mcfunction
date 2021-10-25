
# ポジション差分取得
data merge storage mhdp: {PosTemp:0d,MovePosTemp:0d}
data modify storage mhdp: PosTemp set from entity @s Pos[1]

execute store result score #reia_mine_pos AsaMatrix run data get storage mhdp: PosTemp 100
scoreboard players operation #reia_mine_pos AsaMatrix += #reia_mine_y AsaMatrix
execute store result storage mhdp: MovePosTemp double 0.01 run scoreboard players get #reia_mine_pos AsaMatrix

data modify entity @s Pos[1] set from storage mhdp: MovePosTemp

data remove storage mhdp: PosTemp
data remove storage mhdp: MovePosTemp