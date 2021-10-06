
# ポジション差分取得
execute store result score #zinogre_mine_pos AsaMatrix run data get entity @s Pos[1] 100
scoreboard players operation #zinogre_mine_pos AsaMatrix += #zinogre_mine_y AsaMatrix
execute store result entity @s Pos[1] double 0.01 run scoreboard players get #zinogre_mine_pos AsaMatrix