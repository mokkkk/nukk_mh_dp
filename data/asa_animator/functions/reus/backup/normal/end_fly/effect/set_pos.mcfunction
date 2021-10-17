# 地上にmarkerセット
summon marker ~ ~ ~ {Tags:["ReusMovePos"]}
execute as @e[type=marker,tag=ReusMovePos,limit=1] at @s align y positioned ~ ~0.1 ~ run function asa_animator:reus/normal/end_fly/effect/check_ground_pos
execute as @e[type=marker,tag=ReusMovePos,limit=1] at @s run tp @s ~ ~2.5 ~

# ポジション差分取得
execute store result score #reus_mine_y AsaMatrix run data get entity @e[type=marker,tag=ReusMovePos,limit=1] Pos[1] 100
execute store result score #reus_height_target AsaMatrix run data get entity @s Pos[1] 100
scoreboard players operation #reus_mine_y AsaMatrix -= #reus_height_target AsaMatrix

scoreboard players set #reus_height_target AsaMatrix 25
scoreboard players operation #reus_mine_y AsaMatrix /= #reus_height_target AsaMatrix

# 終了
kill @e[type=marker,tag=ReusMovePos]