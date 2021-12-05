
# ポジション差分取得
data merge storage mhdp: {PosTemp:[],MovePosTemp:[0d,0d,0d]}
data modify storage mhdp: PosTemp set from entity @s Pos

execute store result score #brachyr_mine_pos AsaMatrix run data get storage mhdp: PosTemp[0] 100
scoreboard players operation #brachyr_mine_pos AsaMatrix += #brachyr_mine_x AsaMatrix
execute store result storage mhdp: MovePosTemp[0] double 0.01 run scoreboard players get #brachyr_mine_pos AsaMatrix
execute store result score #brachyr_mine_pos AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #brachyr_mine_pos AsaMatrix += #brachyr_mine_y AsaMatrix
execute store result storage mhdp: MovePosTemp[1] double 0.01 run scoreboard players get #brachyr_mine_pos AsaMatrix
execute store result score #brachyr_mine_pos AsaMatrix run data get storage mhdp: PosTemp[2] 100
scoreboard players operation #brachyr_mine_pos AsaMatrix += #brachyr_mine_z AsaMatrix
execute store result storage mhdp: MovePosTemp[2] double 0.01 run scoreboard players get #brachyr_mine_pos AsaMatrix

data modify entity @s Pos set from storage mhdp: MovePosTemp

data remove storage mhdp: PosTemp
data remove storage mhdp: MovePosTemp

particle block grass_block ~ ~ ~ 1 0.1 1 0 3
playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[tag=Phase2] at @s run function asa_animator:brachyr/manager/bomb/red/set