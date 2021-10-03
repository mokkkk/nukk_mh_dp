
# 地上にmarkerセット
summon marker ^ ^10 ^-12 {Tags:["ZinogreMovePos"]}
execute as @e[type=marker,tag=ZinogreMovePos,limit=1] at @s align y positioned ~ ~0.1 ~ run function asa_animator:zinogre/manager/check_ground

# ポジション差分取得
execute store result score #zinogre_mine_y AsaMatrix run data get entity @e[type=marker,tag=ZinogreMovePos,limit=1] Pos[1] 100

execute store result score #zinogre_height_target AsaMatrix run data get entity @s Pos[1] 100
scoreboard players operation #zinogre_mine_y AsaMatrix -= #zinogre_height_target AsaMatrix

scoreboard players set #zinogre_height_target AsaMatrix 16
scoreboard players operation #zinogre_height_target AsaMatrix *= #asam_const_1000 AsaMatrix
scoreboard players operation #zinogre_height_target AsaMatrix /= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #zinogre_mine_y AsaMatrix /= #zinogre_height_target AsaMatrix

# 終了
kill @e[type=marker,tag=ZinogreMovePos]