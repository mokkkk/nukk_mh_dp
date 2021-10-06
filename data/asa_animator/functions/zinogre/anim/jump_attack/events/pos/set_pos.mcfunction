
# 地上にmarkerセット
execute as @e[tag=ZinogreAttackTarget] positioned as @s run summon marker ^ ^ ^-2 {Tags:["ZinogreMovePos"]}
execute as @e[type=marker,tag=ZinogreMovePos,limit=1] at @s align y positioned ~ ~0.1 ~ run function asa_animator:zinogre/manager/check_ground

# ポジション差分取得
data merge storage mhdp: {PosTemp:[], MarkerPosTemp:[]}
data modify storage mhdp: PosTemp set from entity @s Pos
data modify storage mhdp: MarkerPosTemp set from entity @e[type=marker,tag=ZinogreMovePos,limit=1] Pos

execute store result score #zinogre_mine_x AsaMatrix run data get storage mhdp: MarkerPosTemp[0] 100
execute store result score #zinogre_height_target AsaMatrix run data get storage mhdp: PosTemp[0] 100
scoreboard players operation #zinogre_mine_x AsaMatrix -= #zinogre_height_target AsaMatrix

execute store result score #zinogre_mine_y AsaMatrix run data get storage mhdp: MarkerPosTemp[1] 100
execute store result score #zinogre_height_target AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #zinogre_mine_y AsaMatrix -= #zinogre_height_target AsaMatrix

execute store result score #zinogre_mine_z AsaMatrix run data get storage mhdp: MarkerPosTemp[2] 100
execute store result score #zinogre_height_target AsaMatrix run data get storage mhdp: PosTemp[2] 100
scoreboard players operation #zinogre_mine_z AsaMatrix -= #zinogre_height_target AsaMatrix

scoreboard players set #zinogre_height_target AsaMatrix 15
scoreboard players operation #zinogre_mine_x AsaMatrix /= #zinogre_height_target AsaMatrix
scoreboard players operation #zinogre_mine_y AsaMatrix /= #zinogre_height_target AsaMatrix
scoreboard players operation #zinogre_mine_z AsaMatrix /= #zinogre_height_target AsaMatrix

data remove storage mhdp: PosTemp
data remove storage mhdp: MarkerPosTemp

# 終了
kill @e[type=marker,tag=ZinogreMovePos]