# 地上にmarkerセット
summon marker ~ ~ ~ {Tags:["DiablosMovePos"]}
execute as @e[type=marker,tag=DiablosMovePos,limit=1] at @s align y positioned ~ ~0.1 ~ run function asa_animator:diablos/divejump/effect/check_ground_pos
execute as @e[type=marker,tag=DiablosMovePos,limit=1] at @s run tp @s ~ ~1 ~

# ポジション差分取得
execute store result score #diablos_mine_y AsaMatrix run data get entity @e[type=marker,tag=DiablosMovePos,limit=1] Pos[1] 100
execute store result score #diablos_height_target AsaMatrix run data get entity @s Pos[1] 100
scoreboard players operation #diablos_mine_y AsaMatrix -= #diablos_height_target AsaMatrix

scoreboard players set #diablos_height_target AsaMatrix 20
scoreboard players operation #diablos_mine_y AsaMatrix /= #diablos_height_target AsaMatrix

# 終了
kill @e[type=marker,tag=DiablosMovePos]