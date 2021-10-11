# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/normal/dash/start
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/normal/dash/keyframes/0
execute if score @s AsaMatrix matches 1..4 run tp @s ^0 ^0.075 ^1.25
execute if score @s AsaMatrix matches 5 run function asa_animator:diablos/anim/normal/dash/keyframes/1
execute if score @s AsaMatrix matches 5..8 run tp @s ^0 ^-0.075 ^1.25
execute if score @s AsaMatrix matches 9 run function asa_animator:diablos/anim/normal/dash/keyframes/2
execute if score @s AsaMatrix matches 9..12 run tp @s ^0 ^0.075 ^1.25
execute if score @s AsaMatrix matches 13 run function asa_animator:diablos/anim/normal/dash/keyframes/3
execute if score @s AsaMatrix matches 13..16 run tp @s ^0 ^-0.075 ^1.25
execute if score @s AsaMatrix matches 17.. run function asa_animator:diablos/anim/normal/dash/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

# ターゲットが近くにある場合，停止
execute positioned ^ ^ ^3 if entity @e[type=marker,tag=DiablosDashTarget,distance=0..3.5] run function asa_animator:diablos/anim/normal/dash/events/change

# パーティクル
particle block sand ~ ~0.5 ~ 1 0 1 0 3

# 高度調整
execute at @s positioned ~ ~1 ~ run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.5 ~ ~ ~

execute positioned ^ ^ ^1.25 unless block ~ ~ ~ #asa_animator:no_collision unless block ~ ~1 ~ #asa_animator:no_collision run function asa_animator:diablos/anim/normal/dash/events/change

# 攻撃
execute if entity @e[type=!armor_stand,type=!marker,distance=0..5] run function asa_animator:diablos/anim/normal/dash/events/damage

# 効果音
execute if score @s AsaMatrix matches 4 run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.5
execute if score @s AsaMatrix matches 8 run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.5
execute if score @s AsaMatrix matches 12 run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.5
execute if score @s AsaMatrix matches 16 run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.5