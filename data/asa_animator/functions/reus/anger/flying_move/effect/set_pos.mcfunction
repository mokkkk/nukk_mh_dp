# 移動位置決定
execute if entity @s[tag=TurnBack] at @e[tag=ReusAttackTarget,limit=1] rotated ~ 0 positioned ^ ^3 ^-1 run summon marker ~ ~ ~ {Tags:["ReusMovePos"]}
execute unless entity @s[tag=TurnBack] if entity @s[tag=TurnRight] at @e[tag=ReusAttackTarget,limit=1] rotated ~ 0 positioned ^1 ^3 ^ run summon marker ~ ~ ~ {Tags:["ReusMovePos"]}
execute unless entity @s[tag=TurnBack] unless entity @s[tag=TurnRight] at @e[tag=ReusAttackTarget,limit=1] rotated ~ 0 positioned ^-1 ^3 ^ run summon marker ~ ~ ~ {Tags:["ReusMovePos"]}

# ポジション差分取得
data merge storage mhdp: {PosTemp:[], MarkerPosTemp:[]}
data modify storage mhdp: PosTemp set from entity @s Pos
data modify storage mhdp: MarkerPosTemp set from entity @e[type=marker,tag=ReusMovePos,limit=1] Pos

execute store result score #reus_mine_x AsaMatrix run data get storage mhdp: MarkerPosTemp[0] 100
execute store result score #reus_height_target AsaMatrix run data get storage mhdp: PosTemp[0] 100
scoreboard players operation #reus_mine_x AsaMatrix -= #reus_height_target AsaMatrix

execute store result score #reus_mine_y AsaMatrix run data get storage mhdp: MarkerPosTemp[1] 100
execute store result score #reus_height_target AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #reus_mine_y AsaMatrix -= #reus_height_target AsaMatrix

execute store result score #reus_mine_z AsaMatrix run data get storage mhdp: MarkerPosTemp[2] 100
execute store result score #reus_height_target AsaMatrix run data get storage mhdp: PosTemp[2] 100
scoreboard players operation #reus_mine_z AsaMatrix -= #reus_height_target AsaMatrix

scoreboard players set #reus_height_target AsaMatrix 12
scoreboard players operation #reus_mine_x AsaMatrix /= #reus_height_target AsaMatrix
scoreboard players operation #reus_mine_y AsaMatrix /= #reus_height_target AsaMatrix
scoreboard players operation #reus_mine_z AsaMatrix /= #reus_height_target AsaMatrix

data remove storage mhdp: PosTemp
data remove storage mhdp: MarkerPosTemp

# 終了
kill @e[type=marker,tag=ReusMovePos]