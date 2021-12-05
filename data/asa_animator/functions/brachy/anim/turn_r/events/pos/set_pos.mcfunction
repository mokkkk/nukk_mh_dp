
# 地上にmarkerセット
summon marker ^-7 ^ ^7 {Tags:["BrachyMovePos"]}
execute facing entity @e[tag=BrachyAttackTarget,limit=1] eyes rotated ~ 0 run tp @e[type=marker,tag=BrachyMovePos] ^-8 ^ ^8
# execute facing entity @e[tag=BrachyAttackTarget,limit=1] eyes rotated ~ 0 as @e[tag=BrachyAttackTarget] positioned as @s run tp @e[type=marker,tag=BrachyMovePos] ^7 ^ ^
execute as @e[type=marker,tag=BrachyMovePos,limit=1] at @s align y positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
execute as @e[type=marker,tag=BrachyMovePos,limit=1] at @s run tp @s ~ ~0.12 ~

# ポジション差分取得
data merge storage mhdp: {PosTemp:[], MarkerPosTemp:[]}
data modify storage mhdp: PosTemp set from entity @s Pos
data modify storage mhdp: MarkerPosTemp set from entity @e[type=marker,tag=BrachyMovePos,limit=1] Pos

execute store result score #brachy_mine_x AsaMatrix run data get storage mhdp: MarkerPosTemp[0] 100
execute store result score #brachy_height_target AsaMatrix run data get storage mhdp: PosTemp[0] 100
scoreboard players operation #brachy_mine_x AsaMatrix -= #brachy_height_target AsaMatrix

execute store result score #brachy_mine_y AsaMatrix run data get storage mhdp: MarkerPosTemp[1] 100
execute store result score #brachy_height_target AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #brachy_mine_y AsaMatrix -= #brachy_height_target AsaMatrix

execute store result score #brachy_mine_z AsaMatrix run data get storage mhdp: MarkerPosTemp[2] 100
execute store result score #brachy_height_target AsaMatrix run data get storage mhdp: PosTemp[2] 100
scoreboard players operation #brachy_mine_z AsaMatrix -= #brachy_height_target AsaMatrix

scoreboard players set #brachy_height_target AsaMatrix 13
scoreboard players operation #brachy_mine_x AsaMatrix /= #brachy_height_target AsaMatrix
scoreboard players operation #brachy_mine_y AsaMatrix /= #brachy_height_target AsaMatrix
scoreboard players operation #brachy_mine_z AsaMatrix /= #brachy_height_target AsaMatrix

data remove storage mhdp: PosTemp
data remove storage mhdp: MarkerPosTemp

# 終了
kill @e[type=marker,tag=BrachyMovePos]