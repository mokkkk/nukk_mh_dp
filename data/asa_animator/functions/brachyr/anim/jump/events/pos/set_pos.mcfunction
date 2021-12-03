
# 地上にmarkerセット
summon marker ^ ^ ^10 {Tags:["BrachyRMovePos"]}
execute facing entity @e[tag=BrachyRAttackTarget,limit=1] eyes rotated ~ 0 as @e[tag=BrachyRAttackTarget] positioned as @s run tp @e[type=marker,tag=BrachyRMovePos] ^ ^ ^-2
execute as @e[type=marker,tag=BrachyRMovePos,limit=1] at @s align y positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
execute as @e[type=marker,tag=BrachyRMovePos,limit=1] at @s run tp @s ~ ~-0.4 ~

# ポジション差分取得
data merge storage mhdp: {PosTemp:[], MarkerPosTemp:[]}
data modify storage mhdp: PosTemp set from entity @s Pos
data modify storage mhdp: MarkerPosTemp set from entity @e[type=marker,tag=BrachyRMovePos,limit=1] Pos

execute store result score #brachyr_mine_x AsaMatrix run data get storage mhdp: MarkerPosTemp[0] 100
execute store result score #brachyr_height_target AsaMatrix run data get storage mhdp: PosTemp[0] 100
scoreboard players operation #brachyr_mine_x AsaMatrix -= #brachyr_height_target AsaMatrix

execute store result score #brachyr_mine_y AsaMatrix run data get storage mhdp: MarkerPosTemp[1] 100
execute store result score #brachyr_height_target AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #brachyr_mine_y AsaMatrix -= #brachyr_height_target AsaMatrix

execute store result score #brachyr_mine_z AsaMatrix run data get storage mhdp: MarkerPosTemp[2] 100
execute store result score #brachyr_height_target AsaMatrix run data get storage mhdp: PosTemp[2] 100
scoreboard players operation #brachyr_mine_z AsaMatrix -= #brachyr_height_target AsaMatrix

scoreboard players set #brachyr_height_target AsaMatrix 24
scoreboard players operation #brachyr_mine_x AsaMatrix /= #brachyr_height_target AsaMatrix
scoreboard players operation #brachyr_mine_y AsaMatrix /= #brachyr_height_target AsaMatrix
scoreboard players operation #brachyr_mine_z AsaMatrix /= #brachyr_height_target AsaMatrix

data remove storage mhdp: PosTemp
data remove storage mhdp: MarkerPosTemp

# 終了
kill @e[type=marker,tag=BrachyRMovePos]