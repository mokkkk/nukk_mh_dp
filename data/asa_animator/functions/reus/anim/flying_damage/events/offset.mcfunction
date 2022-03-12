
# ポジション差分取得
data modify storage mhdp: Temp.Pos set from entity @s Pos[1]
execute store result score #reus_mine_pos AsaMatrix run data get storage mhdp: Temp.Pos 100
scoreboard players operation #reus_mine_pos AsaMatrix += #reus_mine_y AsaMatrix
execute store result entity @s Pos[1] double 0.01 run scoreboard players get #reus_mine_pos AsaMatrix
data remove storage mhdp: Temp.Pos