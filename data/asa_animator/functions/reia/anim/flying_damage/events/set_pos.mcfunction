# 地上にmarkerセット
summon marker ~ ~ ~ {Tags:["ReiaMovePos"]}
execute as @e[type=marker,tag=ReiaMovePos,limit=1] at @s align y positioned ~ ~0.1 ~ run function asa_animator:zinogre/manager/check_ground
execute as @e[type=marker,tag=ReiaMovePos,limit=1] at @s run tp @s ~ ~2 ~

# ポジション差分取得
data modify storage mhdp: Temp.Pos set from entity @e[type=marker,tag=ReiaMovePos,limit=1] Pos[1]
execute store result score #reia_mine_y AsaMatrix run data get storage mhdp: Temp.Pos 100
data modify storage mhdp: Temp.Pos set from entity @s Pos[1]
execute store result score #reia_height_target AsaMatrix run data get storage mhdp: Temp.Pos 100
scoreboard players operation #reia_mine_y AsaMatrix -= #reia_height_target AsaMatrix

scoreboard players set #reia_height_target AsaMatrix 8
scoreboard players operation #reia_mine_y AsaMatrix /= #reia_height_target AsaMatrix

# 終了
kill @e[type=marker,tag=ReiaMovePos]