
# ポジション差分取得
data merge storage mhdp: {PosTemp:[],MovePosTemp:[0d,0d,0d]}
data modify storage mhdp: PosTemp set from entity @s Pos

execute store result score #zinogre_mine_pos AsaMatrix run data get storage mhdp: PosTemp[0] 100
scoreboard players operation #zinogre_mine_pos AsaMatrix += #zinogre_mine_x AsaMatrix
execute store result storage mhdp: MovePosTemp[0] double 0.01 run scoreboard players get #zinogre_mine_pos AsaMatrix
execute store result score #zinogre_mine_pos AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #zinogre_mine_pos AsaMatrix += #zinogre_mine_y AsaMatrix
execute store result storage mhdp: MovePosTemp[1] double 0.01 run scoreboard players get #zinogre_mine_pos AsaMatrix
execute store result score #zinogre_mine_pos AsaMatrix run data get storage mhdp: PosTemp[2] 100
scoreboard players operation #zinogre_mine_pos AsaMatrix += #zinogre_mine_z AsaMatrix
execute store result storage mhdp: MovePosTemp[2] double 0.01 run scoreboard players get #zinogre_mine_pos AsaMatrix

data modify entity @s Pos set from storage mhdp: MovePosTemp

data remove storage mhdp: PosTemp
data remove storage mhdp: MovePosTemp

execute if entity @s[tag=IsThunder] at @e[type=armor_stand,tag=ZinogreParts,tag=ArmL2] run particle dust 1 1000000000 1000000000 2 ~ ~1.35 ~ 0.5 0.5 0.5 0 10
execute if entity @s[tag=IsThunder] run particle sneeze ~ ~5 ~ 1 1 1 0.2 40
execute if entity @s[tag=IsThunder] run particle end_rod ~ ~5 ~ 1 1 1 0.2 10