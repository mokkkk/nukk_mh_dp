
# 地上にmarkerセット
summon marker ~ ~ ~ {Tags:["ReusGroungPos"]}
execute as @e[type=marker,tag=ReusGroungPos,limit=1] at @s run function asa_animator:reus/flying_height/effect/check_ground_pos

# ターゲット高度
execute store result score #reus_height_target AsaMatrix run data get entity @e[tag=ReusGroungPos,limit=1] Pos[1] 100
# 自分高度
execute store result score #reus_height_mine AsaMatrix run data get entity @s Pos[1] 100
kill @e[type=marker,tag=ReusGroungPos]

# 高度差計算
scoreboard players operation #reus_height_mine AsaMatrix -= #reus_height_target AsaMatrix

# 自分が低い：上昇
execute if score #reus_height_mine AsaMatrix matches ..245 run tp @s ^ ^0.05 ^ ~ ~
# 自分が高い：下降
execute if score #reus_height_mine AsaMatrix matches 301.. run tp @s ^ ^-0.05 ^ ~ ~

# ちょうどいい：アニメーション終了
execute if score #reus_height_mine AsaMatrix matches 246..300 run function asa_animator:reus/flying_height/effect/change

