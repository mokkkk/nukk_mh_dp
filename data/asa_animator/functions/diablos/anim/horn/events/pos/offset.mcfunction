
# ポジション差分取得
data merge storage mhdp: {PosTemp:[],MovePosTemp:[0d,0d,0d]}
data modify storage mhdp: PosTemp set from entity @s Pos

execute store result score #diablos_mine_pos AsaMatrix run data get storage mhdp: PosTemp[0] 100
scoreboard players operation #diablos_mine_pos AsaMatrix += #diablos_mine_x AsaMatrix
execute store result storage mhdp: MovePosTemp[0] double 0.01 run scoreboard players get #diablos_mine_pos AsaMatrix
execute store result score #diablos_mine_pos AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #diablos_mine_pos AsaMatrix += #diablos_mine_y AsaMatrix
execute store result storage mhdp: MovePosTemp[1] double 0.01 run scoreboard players get #diablos_mine_pos AsaMatrix
execute store result score #diablos_mine_pos AsaMatrix run data get storage mhdp: PosTemp[2] 100
scoreboard players operation #diablos_mine_pos AsaMatrix += #diablos_mine_z AsaMatrix
execute store result storage mhdp: MovePosTemp[2] double 0.01 run scoreboard players get #diablos_mine_pos AsaMatrix

data modify entity @s Pos set from storage mhdp: MovePosTemp

data remove storage mhdp: PosTemp
data remove storage mhdp: MovePosTemp