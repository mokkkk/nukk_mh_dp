
# 地上にmarkerセット
summon marker ^ ^ ^5 {Tags:["DiablosMovePos"]}
execute facing entity @e[tag=DiablosAttackTarget,limit=1] eyes rotated ~ 0 positioned as @e[tag=DiablosAttackTarget] run tp @e[type=marker,tag=DiablosMovePos] ^ ^ ^-2 ~ ~
execute as @e[type=marker,tag=DiablosMovePos,limit=1] at @s align y positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
execute as @e[type=marker,tag=DiablosMovePos,limit=1] at @s run tp @s ^ ^ ^-5

# ポジション差分取得
data merge storage mhdp: {PosTemp:[], MarkerPosTemp:[]}
data modify storage mhdp: PosTemp set from entity @s Pos
data modify storage mhdp: MarkerPosTemp set from entity @e[type=marker,tag=DiablosMovePos,limit=1] Pos

execute store result score #diablos_mine_x AsaMatrix run data get storage mhdp: MarkerPosTemp[0] 100
execute store result score #diablos_height_target AsaMatrix run data get storage mhdp: PosTemp[0] 100
scoreboard players operation #diablos_mine_x AsaMatrix -= #diablos_height_target AsaMatrix

execute store result score #diablos_mine_y AsaMatrix run data get storage mhdp: MarkerPosTemp[1] 100
execute store result score #diablos_height_target AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #diablos_mine_y AsaMatrix -= #diablos_height_target AsaMatrix

execute store result score #diablos_mine_z AsaMatrix run data get storage mhdp: MarkerPosTemp[2] 100
execute store result score #diablos_height_target AsaMatrix run data get storage mhdp: PosTemp[2] 100
scoreboard players operation #diablos_mine_z AsaMatrix -= #diablos_height_target AsaMatrix

scoreboard players set #diablos_height_target AsaMatrix 10
scoreboard players operation #diablos_mine_x AsaMatrix /= #diablos_height_target AsaMatrix
scoreboard players operation #diablos_mine_y AsaMatrix /= #diablos_height_target AsaMatrix
scoreboard players operation #diablos_mine_z AsaMatrix /= #diablos_height_target AsaMatrix

data remove storage mhdp: PosTemp
data remove storage mhdp: MarkerPosTemp

# 終了
kill @e[type=marker,tag=DiablosMovePos]