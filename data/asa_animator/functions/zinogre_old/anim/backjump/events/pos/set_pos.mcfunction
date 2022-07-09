
# 地上にmarkerセット
summon marker ^ ^10 ^-12 {Tags:["ZinogreMovePos"]}
execute as @e[type=marker,tag=ZinogreMovePos,limit=1] at @s align y positioned ~ ~0.1 ~ run function asa_animator:zinogre/manager/check_ground

# ポジション差分取得
data modify storage mhdp: Temp.Pos set from entity @e[type=marker,tag=ZinogreMovePos,limit=1] Pos[1]
execute store result score #zinogre_mine_y AsaMatrix run data get storage mhdp: Temp.Pos 100
data modify storage mhdp: Temp.Pos set from entity @s Pos[1]
execute store result score #zinogre_height_target AsaMatrix run data get storage mhdp: Temp.Pos 100
scoreboard players operation #zinogre_mine_y AsaMatrix -= #zinogre_height_target AsaMatrix

scoreboard players set #zinogre_height_target AsaMatrix 16
scoreboard players operation #zinogre_mine_y AsaMatrix /= #zinogre_height_target AsaMatrix

# 終了
data remove storage mhdp: Temp.Pos
kill @e[type=marker,tag=ZinogreMovePos]