# 地上にmarkerセット
summon marker ~ ~ ~ {Tags:["ReusMovePos"]}
execute as @e[type=marker,tag=ReusMovePos,limit=1] at @s align y positioned ~ ~0.1 ~ run function asa_animator:zinogre/manager/check_ground
execute as @e[type=marker,tag=ReusMovePos,limit=1] at @s run tp @s ~ ~2.5 ~

# ポジション差分取得
data modify storage mhdp: Temp.Pos set from entity @e[type=marker,tag=ReusMovePos,limit=1] Pos[1]
execute store result score #reus_mine_y AsaMatrix run data get storage mhdp: Temp.Pos 100
data modify storage mhdp: Temp.Pos set from entity @s Pos[1]
execute store result score #reus_height_target AsaMatrix run data get storage mhdp: Temp.Pos 100
scoreboard players operation #reus_mine_y AsaMatrix -= #reus_height_target AsaMatrix

scoreboard players set #reus_height_target AsaMatrix 30
scoreboard players operation #reus_mine_y AsaMatrix /= #reus_height_target AsaMatrix

# 終了
data remove storage mhdp: Temp.Pos
kill @e[type=marker,tag=ReusMovePos]